# require "immix"
require "./gdnative"

lib LibC
  fun strcpy(dst : UInt8*, src : UInt8*)
end

module APIs
  @@core = uninitialized Gd::GDNativeCoreApiStruct
  @@nativescript = uninitialized Gd::GDNativeExtNativescriptApiStruct

  class_property core
  class_property nativescript
end

fun gdcr_gdnative_init(options : Gd::GDNativeInitOptions*)
  LibC.printf("start gdnative init\n")
  # GC.init
  # LibC.printf("initialized gc\n")
  # LibCrystalMain.__crystal_main(1, ["GDCRLibrary".to_unsafe])

  APIs.core = options.value.api_struct.value

  APIs.core.num_extensions.times do |i|
    case APIs.core.extensions[i].value.type
    when Gd::GDNativeApiTypes::ExtNativescript.value
      APIs.nativescript = APIs.core.extensions[i].as(Gd::GDNativeExtNativescriptApiStruct*).value
    end
  end
  puts "end gdnative init"
end

fun gdcr_gdnative_terminate(options : Gd::GDNativeTerminateOptions*)
  puts "gdnative terminate"
end

fun gdcr_nativescript_init(handle : Void*)
  puts "start nativescript init"
  create = Gd::InstanceCreateFunc.new(
    create_func: ->simple_constructor(Gd::Object, Void*)
  )
  destroy = Gd::InstanceDestroyFunc.new(
    destroy_func: ->simple_destructor(Gd::Object, Void*, Void*)
  )

  APIs.nativescript.register_class.call(handle, "SIMPLE".to_unsafe, "Reference".to_unsafe, create, destroy)

  get_data = Gd::InstanceMethod.new(
    method: ->simple_get_data(Gd::Object, Void*, Void*, Int32, Gd::Variant**)
  )
  attributes = Gd::MethodAttributes.new(
    rpc_type: Gd::MethodRpcMode::Disabled
  )

  APIs.nativescript.register_method.call(handle, "SIMPLE".to_unsafe, "get_data".to_unsafe, attributes, get_data)
  puts "end nativescript init"
end

struct UserDataStruct
  property data : UInt8[256] = StaticArray(UInt8, 256).new(0)
end

def simple_constructor(instance : Gd::Object, method_data : Void*) 
  puts "constructor start"
  user_data = APIs.core.alloc.call(sizeof(UserDataStruct)).as(UserDataStruct*)
  LibC.strcpy(user_data.value.data, "World from Crystal!")

  puts "constructor end"
  user_data.as(Void*)
end

def simple_destructor(instance : Gd::Object, method_data : Void*, user_data : Void*)
  puts "destructor start"
  APIs.core.free.call(user_data)
  puts "destructor end"
end

def simple_get_data(instance : Gd::Object, method_data : Void*, user_data : Void*, num_args : Int32, args : Gd::Variant**)
  puts "get data start"
  data = uninitialized Gd::String
  ret = uninitialized Gd::Variant

  APIs.core.string_new.call(pointerof(data))
  APIs.core.string_parse_utf8.call(pointerof(data), user_data.as(UserDataStruct*).value.data.to_unsafe)
  APIs.core.variant_new_string.call(pointerof(ret), pointerof(data))
  APIs.core.string_destroy.call(pointerof(data))

  puts "get data end"
  ret
end
