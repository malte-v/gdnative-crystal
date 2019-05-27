lib Gd
  type Object = Void*

  alias ClassConstructor = (-> Object)
  alias CString = UInt8*
  alias WChar = Int32
  alias PluginscriptInstanceData = Void
  alias PluginscriptLanguageData = Void
  alias PluginscriptScriptData = Void
  alias PoolByteArrayReadAccess = PoolArrayReadAccess
  alias PoolByteArrayWriteAccess = PoolArrayWriteAccess
  alias PoolColorArrayReadAccess = PoolArrayReadAccess
  alias PoolColorArrayWriteAccess = PoolArrayWriteAccess
  alias PoolIntArrayReadAccess = PoolArrayReadAccess
  alias PoolIntArrayWriteAccess = PoolArrayWriteAccess
  alias PoolRealArrayReadAccess = PoolArrayReadAccess
  alias PoolRealArrayWriteAccess = PoolArrayWriteAccess
  alias PoolStringArrayReadAccess = PoolArrayReadAccess
  alias PoolStringArrayWriteAccess = PoolArrayWriteAccess
  alias PoolVector2ArrayReadAccess = PoolArrayReadAccess
  alias PoolVector2ArrayWriteAccess = PoolArrayWriteAccess
  alias PoolVector3ArrayReadAccess = PoolArrayReadAccess
  alias PoolVector3ArrayWriteAccess = PoolArrayWriteAccess
  alias NativeCallCb = (Void*, Array* -> Variant)

  enum GDNativeApiTypes
    Core            = 0
    ExtNativescript = 1
    ExtPluginscript = 2
    ExtAndroid      = 3
    ExtARVR         = 4
    ExtVideodecoder = 5
    ExtNet          = 6
  end
  enum Error
    Ok                      =  0
    Failed                  =  1
    Unavailable             =  2
    Unconfigured            =  3
    Unauthorized            =  4
    ParameterRangeError     =  5
    OutOfMemory             =  6
    FileNotFound            =  7
    FileBadDrive            =  8
    FileBadPath             =  9
    FileNoPermission        = 10
    FileAlreadyInUse        = 11
    FileCantOpen            = 12
    FileCantWrite           = 13
    FileCantRead            = 14
    FileUnrecognized        = 15
    FileCorrupt             = 16
    FileMissingDependencies = 17
    FileEof                 = 18
    CantOpen                = 19
    CantCreate              = 20
    QueryFailed             = 21
    AlreadyInUse            = 22
    Locked                  = 23
    Timeout                 = 24
    CantConnect             = 25
    CantResolve             = 26
    ConnectionError         = 27
    CantAcquireResource     = 28
    CantFork                = 29
    InvalidData             = 30
    InvalidParameter        = 31
    AlreadyExists           = 32
    DoesNotExist            = 33
    DatabaseCantRead        = 34
    DatabaseCantWrite       = 35
    CompilationFailed       = 36
    MethodNotFound          = 37
    LinkFailed              = 38
    ScriptFailed            = 39
    CyclicLink              = 40
    InvalidDeclaration      = 41
    DuplicateSymbol         = 42
    ParseError              = 43
    Busy                    = 44
    Skip                    = 45
    Help                    = 46
    Bug                     = 47
    PrinterOnFire           = 48
  end
  enum MethodRpcMode
    Disabled = 0
    Remote   = 1
    Sync     = 2
    Master   = 3
    Slave    = 4
  end
  enum PropertyHint
    None                  =  0
    Range                 =  1
    ExpRange              =  2
    Enum                  =  3
    ExpEasing             =  4
    Length                =  5
    SpriteFrame           =  6
    KeyAccel              =  7
    Flags                 =  8
    Layers2DRender        =  9
    Layers2DPhysics       = 10
    Layers3DRender        = 11
    Layers3DPhysics       = 12
    File                  = 13
    Dir                   = 14
    GlobalFile            = 15
    GlobalDir             = 16
    ResourceType          = 17
    MultilineText         = 18
    ColorNoAlpha          = 19
    ImageCompressLossy    = 20
    ImageCompressLossless = 21
    ObjectId              = 22
    TypeString            = 23
    NodePathToEditedNode  = 24
    MethodOfVariantType   = 25
    MethodOfBaseType      = 26
    MethodOfInstance      = 27
    MethodOfScript        = 28
    PropertyOfVariantType = 29
    PropertyOfBaseType    = 30
    PropertyOfInstance    = 31
    PropertyOfScript      = 32
    Max                   = 33
  end
  enum PropertyUsageFlags
    Storage             =     1
    Editor              =     2
    Network             =     4
    EditorHelper        =     8
    Checkable           =    16
    Checked             =    32
    Internationalized   =    64
    Group               =   128
    Category            =   256
    StoreIfNonzero      =   512
    StoreIfNonone       =  1024
    NoInstanceState     =  2048
    RestartIfChanged    =  4096
    ScriptVariable      =  8192
    StoreIfNull         = 16384
    AnimateAsTrigger    = 32768
    UpdateAllIfModified = 65536
    Default             =     7
    DefaultIntl         =    71
    Noeditor            =     5
  end
  enum VariantCallResult
    Ok               = 0
    InvalidMethod    = 1
    InvalidArgument  = 2
    TooManyArguments = 3
    TooFewArguments  = 4
    InstanceIsNull   = 5
  end
  enum VariantType
    Nil              =  0
    Bool             =  1
    Int              =  2
    Real             =  3
    String           =  4
    Vector2          =  5
    Rect2            =  6
    Vector3          =  7
    Transform2D      =  8
    Plane            =  9
    Quat             = 10
    AABB             = 11
    Basis            = 12
    Transform        = 13
    Color            = 14
    NodePath         = 15
    Rid              = 16
    Object           = 17
    Dictionary       = 18
    Array            = 19
    PoolByteArray    = 20
    PoolIntArray     = 21
    PoolRealArray    = 22
    PoolStringArray  = 23
    PoolVector2Array = 24
    PoolVector3Array = 25
    PoolColorArray   = 26
  end
  enum Vector3Axis
    X = 0
    Y = 1
    Z = 2
  end

  struct AABB
    _dont_touch_that : UInt8[24]
  end

  struct Array
    _dont_touch_that : UInt8[8]
  end

  struct ARVRInterfaceGDNative
    constructor : (Object -> Void)
    destructor : (Void* -> Void)
    get_name : (Void* -> String)
    get_capabilities : (Void* -> Int32)
    get_anchor_detection_is_enabled : (Void* -> Bool)
    set_anchor_detection_is_enabled : (Void*, Bool -> Void)
    is_stereo : (Void* -> Bool)
    is_initialized : (Void* -> Bool)
    initialize : (Void* -> Bool)
    uninitialize : (Void* -> Void)
    get_render_targetsize : (Void* -> Vector2)
    get_transform_for_eye : (Void*, Int32, Transform* -> Transform)
    fill_projection_for_eye : (Void*, Float32*, Int32, Float32, Float32, Float32 -> Void)
    commit_for_eye : (Void*, Int32, Rid*, Rect2* -> Void)
    process : (Void* -> Void)
  end

  struct Basis
    _dont_touch_that : UInt8[36]
  end

  struct CharString
    _dont_touch_that : UInt8[8]
  end

  struct Color
    _dont_touch_that : UInt8[16]
  end

  struct Dictionary
    _dont_touch_that : UInt8[8]
  end

  struct GDNativeApiStruct
    type : UInt32
    version : GDNativeApiVersion
    next : GDNativeApiStruct*
  end

  struct GDNativeApiVersion
    major : UInt32
    minor : UInt32
  end

  struct GDNativeCoreApiStruct
    type : UInt32
    version : GDNativeApiVersion
    next : GDNativeApiStruct*
    num_extensions : UInt32
    extensions : GDNativeApiStruct**
    color_new_rgba : (Color*, Float32, Float32, Float32, Float32 -> Void)
    color_new_rgb : (Color*, Float32, Float32, Float32 -> Void)
    color_get_r : (Color* -> Float32)
    color_set_r : (Color*, Float32 -> Void)
    color_get_g : (Color* -> Float32)
    color_set_g : (Color*, Float32 -> Void)
    color_get_b : (Color* -> Float32)
    color_set_b : (Color*, Float32 -> Void)
    color_get_a : (Color* -> Float32)
    color_set_a : (Color*, Float32 -> Void)
    color_get_h : (Color* -> Float32)
    color_get_s : (Color* -> Float32)
    color_get_v : (Color* -> Float32)
    color_as_string : (Color* -> String)
    color_to_rgba32 : (Color* -> Int32)
    color_to_argb32 : (Color* -> Int32)
    color_gray : (Color* -> Float32)
    color_inverted : (Color* -> Color)
    color_contrasted : (Color* -> Color)
    color_linear_interpolate : (Color*, Color*, Float32 -> Color)
    color_blend : (Color*, Color* -> Color)
    color_to_html : (Color*, Bool -> String)
    color_operator_equal : (Color*, Color* -> Bool)
    color_operator_less : (Color*, Color* -> Bool)
    vector2_new : (Vector2*, Float32, Float32 -> Void)
    vector2_as_string : (Vector2* -> String)
    vector2_normalized : (Vector2* -> Vector2)
    vector2_length : (Vector2* -> Float32)
    vector2_angle : (Vector2* -> Float32)
    vector2_length_squared : (Vector2* -> Float32)
    vector2_is_normalized : (Vector2* -> Bool)
    vector2_distance_to : (Vector2*, Vector2* -> Float32)
    vector2_distance_squared_to : (Vector2*, Vector2* -> Float32)
    vector2_angle_to : (Vector2*, Vector2* -> Float32)
    vector2_angle_to_point : (Vector2*, Vector2* -> Float32)
    vector2_linear_interpolate : (Vector2*, Vector2*, Float32 -> Vector2)
    vector2_cubic_interpolate : (Vector2*, Vector2*, Vector2*, Vector2*, Float32 -> Vector2)
    vector2_rotated : (Vector2*, Float32 -> Vector2)
    vector2_tangent : (Vector2* -> Vector2)
    vector2_floor : (Vector2* -> Vector2)
    vector2_snapped : (Vector2*, Vector2* -> Vector2)
    vector2_aspect : (Vector2* -> Float32)
    vector2_dot : (Vector2*, Vector2* -> Float32)
    vector2_slide : (Vector2*, Vector2* -> Vector2)
    vector2_bounce : (Vector2*, Vector2* -> Vector2)
    vector2_reflect : (Vector2*, Vector2* -> Vector2)
    vector2_abs : (Vector2* -> Vector2)
    vector2_clamped : (Vector2*, Float32 -> Vector2)
    vector2_operator_add : (Vector2*, Vector2* -> Vector2)
    vector2_operator_subtract : (Vector2*, Vector2* -> Vector2)
    vector2_operator_multiply_vector : (Vector2*, Vector2* -> Vector2)
    vector2_operator_multiply_scalar : (Vector2*, Float32 -> Vector2)
    vector2_operator_divide_vector : (Vector2*, Vector2* -> Vector2)
    vector2_operator_divide_scalar : (Vector2*, Float32 -> Vector2)
    vector2_operator_equal : (Vector2*, Vector2* -> Bool)
    vector2_operator_less : (Vector2*, Vector2* -> Bool)
    vector2_operator_neg : (Vector2* -> Vector2)
    vector2_set_x : (Vector2*, Float32 -> Void)
    vector2_set_y : (Vector2*, Float32 -> Void)
    vector2_get_x : (Vector2* -> Float32)
    vector2_get_y : (Vector2* -> Float32)
    quat_new : (Quat*, Float32, Float32, Float32, Float32 -> Void)
    quat_new_with_axis_angle : (Quat*, Vector3*, Float32 -> Void)
    quat_get_x : (Quat* -> Float32)
    quat_set_x : (Quat*, Float32 -> Void)
    quat_get_y : (Quat* -> Float32)
    quat_set_y : (Quat*, Float32 -> Void)
    quat_get_z : (Quat* -> Float32)
    quat_set_z : (Quat*, Float32 -> Void)
    quat_get_w : (Quat* -> Float32)
    quat_set_w : (Quat*, Float32 -> Void)
    quat_as_string : (Quat* -> String)
    quat_length : (Quat* -> Float32)
    quat_length_squared : (Quat* -> Float32)
    quat_normalized : (Quat* -> Quat)
    quat_is_normalized : (Quat* -> Bool)
    quat_inverse : (Quat* -> Quat)
    quat_dot : (Quat*, Quat* -> Float32)
    quat_xform : (Quat*, Vector3* -> Vector3)
    quat_slerp : (Quat*, Quat*, Float32 -> Quat)
    quat_slerpni : (Quat*, Quat*, Float32 -> Quat)
    quat_cubic_slerp : (Quat*, Quat*, Quat*, Quat*, Float32 -> Quat)
    quat_operator_multiply : (Quat*, Float32 -> Quat)
    quat_operator_add : (Quat*, Quat* -> Quat)
    quat_operator_subtract : (Quat*, Quat* -> Quat)
    quat_operator_divide : (Quat*, Float32 -> Quat)
    quat_operator_equal : (Quat*, Quat* -> Bool)
    quat_operator_neg : (Quat* -> Quat)
    basis_new_with_rows : (Basis*, Vector3*, Vector3*, Vector3* -> Void)
    basis_new_with_axis_and_angle : (Basis*, Vector3*, Float32 -> Void)
    basis_new_with_euler : (Basis*, Vector3* -> Void)
    basis_as_string : (Basis* -> String)
    basis_inverse : (Basis* -> Basis)
    basis_transposed : (Basis* -> Basis)
    basis_orthonormalized : (Basis* -> Basis)
    basis_determinant : (Basis* -> Float32)
    basis_rotated : (Basis*, Vector3*, Float32 -> Basis)
    basis_scaled : (Basis*, Vector3* -> Basis)
    basis_get_scale : (Basis* -> Vector3)
    basis_get_euler : (Basis* -> Vector3)
    basis_tdotx : (Basis*, Vector3* -> Float32)
    basis_tdoty : (Basis*, Vector3* -> Float32)
    basis_tdotz : (Basis*, Vector3* -> Float32)
    basis_xform : (Basis*, Vector3* -> Vector3)
    basis_xform_inv : (Basis*, Vector3* -> Vector3)
    basis_get_orthogonal_index : (Basis* -> Int32)
    basis_new : (Basis* -> Void)
    basis_new_with_euler_quat : (Basis*, Quat* -> Void)
    basis_get_elements : (Basis*, Vector3* -> Void)
    basis_get_axis : (Basis*, Int32 -> Vector3)
    basis_set_axis : (Basis*, Int32, Vector3* -> Void)
    basis_get_row : (Basis*, Int32 -> Vector3)
    basis_set_row : (Basis*, Int32, Vector3* -> Void)
    basis_operator_equal : (Basis*, Basis* -> Bool)
    basis_operator_add : (Basis*, Basis* -> Basis)
    basis_operator_subtract : (Basis*, Basis* -> Basis)
    basis_operator_multiply_vector : (Basis*, Basis* -> Basis)
    basis_operator_multiply_scalar : (Basis*, Float32 -> Basis)
    vector3_new : (Vector3*, Float32, Float32, Float32 -> Void)
    vector3_as_string : (Vector3* -> String)
    vector3_min_axis : (Vector3* -> Int32)
    vector3_max_axis : (Vector3* -> Int32)
    vector3_length : (Vector3* -> Float32)
    vector3_length_squared : (Vector3* -> Float32)
    vector3_is_normalized : (Vector3* -> Bool)
    vector3_normalized : (Vector3* -> Vector3)
    vector3_inverse : (Vector3* -> Vector3)
    vector3_snapped : (Vector3*, Vector3* -> Vector3)
    vector3_rotated : (Vector3*, Vector3*, Float32 -> Vector3)
    vector3_linear_interpolate : (Vector3*, Vector3*, Float32 -> Vector3)
    vector3_cubic_interpolate : (Vector3*, Vector3*, Vector3*, Vector3*, Float32 -> Vector3)
    vector3_dot : (Vector3*, Vector3* -> Float32)
    vector3_cross : (Vector3*, Vector3* -> Vector3)
    vector3_outer : (Vector3*, Vector3* -> Basis)
    vector3_to_diagonal_matrix : (Vector3* -> Basis)
    vector3_abs : (Vector3* -> Vector3)
    vector3_floor : (Vector3* -> Vector3)
    vector3_ceil : (Vector3* -> Vector3)
    vector3_distance_to : (Vector3*, Vector3* -> Float32)
    vector3_distance_squared_to : (Vector3*, Vector3* -> Float32)
    vector3_angle_to : (Vector3*, Vector3* -> Float32)
    vector3_slide : (Vector3*, Vector3* -> Vector3)
    vector3_bounce : (Vector3*, Vector3* -> Vector3)
    vector3_reflect : (Vector3*, Vector3* -> Vector3)
    vector3_operator_add : (Vector3*, Vector3* -> Vector3)
    vector3_operator_subtract : (Vector3*, Vector3* -> Vector3)
    vector3_operator_multiply_vector : (Vector3*, Vector3* -> Vector3)
    vector3_operator_multiply_scalar : (Vector3*, Float32 -> Vector3)
    vector3_operator_divide_vector : (Vector3*, Vector3* -> Vector3)
    vector3_operator_divide_scalar : (Vector3*, Float32 -> Vector3)
    vector3_operator_equal : (Vector3*, Vector3* -> Bool)
    vector3_operator_less : (Vector3*, Vector3* -> Bool)
    vector3_operator_neg : (Vector3* -> Vector3)
    vector3_set_axis : (Vector3*, Vector3Axis, Float32 -> Void)
    vector3_get_axis : (Vector3*, Vector3Axis -> Float32)
    pool_byte_array_new : (PoolByteArray* -> Void)
    pool_byte_array_new_copy : (PoolByteArray*, PoolByteArray* -> Void)
    pool_byte_array_new_with_array : (PoolByteArray*, Array* -> Void)
    pool_byte_array_append : (PoolByteArray*, UInt8 -> Void)
    pool_byte_array_append_array : (PoolByteArray*, PoolByteArray* -> Void)
    pool_byte_array_insert : (PoolByteArray*, Int32, UInt8 -> Error)
    pool_byte_array_invert : (PoolByteArray* -> Void)
    pool_byte_array_push_back : (PoolByteArray*, UInt8 -> Void)
    pool_byte_array_remove : (PoolByteArray*, Int32 -> Void)
    pool_byte_array_resize : (PoolByteArray*, Int32 -> Void)
    pool_byte_array_read : (PoolByteArray* -> PoolByteArrayReadAccess*)
    pool_byte_array_write : (PoolByteArray* -> PoolByteArrayWriteAccess*)
    pool_byte_array_set : (PoolByteArray*, Int32, UInt8 -> Void)
    pool_byte_array_get : (PoolByteArray*, Int32 -> UInt8)
    pool_byte_array_size : (PoolByteArray* -> Int32)
    pool_byte_array_destroy : (PoolByteArray* -> Void)
    pool_int_array_new : (PoolIntArray* -> Void)
    pool_int_array_new_copy : (PoolIntArray*, PoolIntArray* -> Void)
    pool_int_array_new_with_array : (PoolIntArray*, Array* -> Void)
    pool_int_array_append : (PoolIntArray*, Int32 -> Void)
    pool_int_array_append_array : (PoolIntArray*, PoolIntArray* -> Void)
    pool_int_array_insert : (PoolIntArray*, Int32, Int32 -> Error)
    pool_int_array_invert : (PoolIntArray* -> Void)
    pool_int_array_push_back : (PoolIntArray*, Int32 -> Void)
    pool_int_array_remove : (PoolIntArray*, Int32 -> Void)
    pool_int_array_resize : (PoolIntArray*, Int32 -> Void)
    pool_int_array_read : (PoolIntArray* -> PoolIntArrayReadAccess*)
    pool_int_array_write : (PoolIntArray* -> PoolIntArrayWriteAccess*)
    pool_int_array_set : (PoolIntArray*, Int32, Int32 -> Void)
    pool_int_array_get : (PoolIntArray*, Int32 -> Int32)
    pool_int_array_size : (PoolIntArray* -> Int32)
    pool_int_array_destroy : (PoolIntArray* -> Void)
    pool_real_array_new : (PoolRealArray* -> Void)
    pool_real_array_new_copy : (PoolRealArray*, PoolRealArray* -> Void)
    pool_real_array_new_with_array : (PoolRealArray*, Array* -> Void)
    pool_real_array_append : (PoolRealArray*, Float32 -> Void)
    pool_real_array_append_array : (PoolRealArray*, PoolRealArray* -> Void)
    pool_real_array_insert : (PoolRealArray*, Int32, Float32 -> Error)
    pool_real_array_invert : (PoolRealArray* -> Void)
    pool_real_array_push_back : (PoolRealArray*, Float32 -> Void)
    pool_real_array_remove : (PoolRealArray*, Int32 -> Void)
    pool_real_array_resize : (PoolRealArray*, Int32 -> Void)
    pool_real_array_read : (PoolRealArray* -> PoolRealArrayReadAccess*)
    pool_real_array_write : (PoolRealArray* -> PoolRealArrayWriteAccess*)
    pool_real_array_set : (PoolRealArray*, Int32, Float32 -> Void)
    pool_real_array_get : (PoolRealArray*, Int32 -> Float32)
    pool_real_array_size : (PoolRealArray* -> Int32)
    pool_real_array_destroy : (PoolRealArray* -> Void)
    pool_string_array_new : (PoolStringArray* -> Void)
    pool_string_array_new_copy : (PoolStringArray*, PoolStringArray* -> Void)
    pool_string_array_new_with_array : (PoolStringArray*, Array* -> Void)
    pool_string_array_append : (PoolStringArray*, String* -> Void)
    pool_string_array_append_array : (PoolStringArray*, PoolStringArray* -> Void)
    pool_string_array_insert : (PoolStringArray*, Int32, String* -> Error)
    pool_string_array_invert : (PoolStringArray* -> Void)
    pool_string_array_push_back : (PoolStringArray*, String* -> Void)
    pool_string_array_remove : (PoolStringArray*, Int32 -> Void)
    pool_string_array_resize : (PoolStringArray*, Int32 -> Void)
    pool_string_array_read : (PoolStringArray* -> PoolStringArrayReadAccess*)
    pool_string_array_write : (PoolStringArray* -> PoolStringArrayWriteAccess*)
    pool_string_array_set : (PoolStringArray*, Int32, String* -> Void)
    pool_string_array_get : (PoolStringArray*, Int32 -> String)
    pool_string_array_size : (PoolStringArray* -> Int32)
    pool_string_array_destroy : (PoolStringArray* -> Void)
    pool_vector2_array_new : (PoolVector2Array* -> Void)
    pool_vector2_array_new_copy : (PoolVector2Array*, PoolVector2Array* -> Void)
    pool_vector2_array_new_with_array : (PoolVector2Array*, Array* -> Void)
    pool_vector2_array_append : (PoolVector2Array*, Vector2* -> Void)
    pool_vector2_array_append_array : (PoolVector2Array*, PoolVector2Array* -> Void)
    pool_vector2_array_insert : (PoolVector2Array*, Int32, Vector2* -> Error)
    pool_vector2_array_invert : (PoolVector2Array* -> Void)
    pool_vector2_array_push_back : (PoolVector2Array*, Vector2* -> Void)
    pool_vector2_array_remove : (PoolVector2Array*, Int32 -> Void)
    pool_vector2_array_resize : (PoolVector2Array*, Int32 -> Void)
    pool_vector2_array_read : (PoolVector2Array* -> PoolVector2ArrayReadAccess*)
    pool_vector2_array_write : (PoolVector2Array* -> PoolVector2ArrayWriteAccess*)
    pool_vector2_array_set : (PoolVector2Array*, Int32, Vector2* -> Void)
    pool_vector2_array_get : (PoolVector2Array*, Int32 -> Vector2)
    pool_vector2_array_size : (PoolVector2Array* -> Int32)
    pool_vector2_array_destroy : (PoolVector2Array* -> Void)
    pool_vector3_array_new : (PoolVector3Array* -> Void)
    pool_vector3_array_new_copy : (PoolVector3Array*, PoolVector3Array* -> Void)
    pool_vector3_array_new_with_array : (PoolVector3Array*, Array* -> Void)
    pool_vector3_array_append : (PoolVector3Array*, Vector3* -> Void)
    pool_vector3_array_append_array : (PoolVector3Array*, PoolVector3Array* -> Void)
    pool_vector3_array_insert : (PoolVector3Array*, Int32, Vector3* -> Error)
    pool_vector3_array_invert : (PoolVector3Array* -> Void)
    pool_vector3_array_push_back : (PoolVector3Array*, Vector3* -> Void)
    pool_vector3_array_remove : (PoolVector3Array*, Int32 -> Void)
    pool_vector3_array_resize : (PoolVector3Array*, Int32 -> Void)
    pool_vector3_array_read : (PoolVector3Array* -> PoolVector3ArrayReadAccess*)
    pool_vector3_array_write : (PoolVector3Array* -> PoolVector3ArrayWriteAccess*)
    pool_vector3_array_set : (PoolVector3Array*, Int32, Vector3* -> Void)
    pool_vector3_array_get : (PoolVector3Array*, Int32 -> Vector3)
    pool_vector3_array_size : (PoolVector3Array* -> Int32)
    pool_vector3_array_destroy : (PoolVector3Array* -> Void)
    pool_color_array_new : (PoolColorArray* -> Void)
    pool_color_array_new_copy : (PoolColorArray*, PoolColorArray* -> Void)
    pool_color_array_new_with_array : (PoolColorArray*, Array* -> Void)
    pool_color_array_append : (PoolColorArray*, Color* -> Void)
    pool_color_array_append_array : (PoolColorArray*, PoolColorArray* -> Void)
    pool_color_array_insert : (PoolColorArray*, Int32, Color* -> Error)
    pool_color_array_invert : (PoolColorArray* -> Void)
    pool_color_array_push_back : (PoolColorArray*, Color* -> Void)
    pool_color_array_remove : (PoolColorArray*, Int32 -> Void)
    pool_color_array_resize : (PoolColorArray*, Int32 -> Void)
    pool_color_array_read : (PoolColorArray* -> PoolColorArrayReadAccess*)
    pool_color_array_write : (PoolColorArray* -> PoolColorArrayWriteAccess*)
    pool_color_array_set : (PoolColorArray*, Int32, Color* -> Void)
    pool_color_array_get : (PoolColorArray*, Int32 -> Color)
    pool_color_array_size : (PoolColorArray* -> Int32)
    pool_color_array_destroy : (PoolColorArray* -> Void)
    pool_byte_array_read_access_copy : (PoolByteArrayReadAccess* -> PoolByteArrayReadAccess*)
    pool_byte_array_read_access_ptr : (PoolByteArrayReadAccess* -> UInt8*)
    pool_byte_array_read_access_operator_assign : (PoolByteArrayReadAccess*, PoolByteArrayReadAccess* -> Void)
    pool_byte_array_read_access_destroy : (PoolByteArrayReadAccess* -> Void)
    pool_int_array_read_access_copy : (PoolIntArrayReadAccess* -> PoolIntArrayReadAccess*)
    pool_int_array_read_access_ptr : (PoolIntArrayReadAccess* -> Int32*)
    pool_int_array_read_access_operator_assign : (PoolIntArrayReadAccess*, PoolIntArrayReadAccess* -> Void)
    pool_int_array_read_access_destroy : (PoolIntArrayReadAccess* -> Void)
    pool_real_array_read_access_copy : (PoolRealArrayReadAccess* -> PoolRealArrayReadAccess*)
    pool_real_array_read_access_ptr : (PoolRealArrayReadAccess* -> Float32*)
    pool_real_array_read_access_operator_assign : (PoolRealArrayReadAccess*, PoolRealArrayReadAccess* -> Void)
    pool_real_array_read_access_destroy : (PoolRealArrayReadAccess* -> Void)
    pool_string_array_read_access_copy : (PoolStringArrayReadAccess* -> PoolStringArrayReadAccess*)
    pool_string_array_read_access_ptr : (PoolStringArrayReadAccess* -> String*)
    pool_string_array_read_access_operator_assign : (PoolStringArrayReadAccess*, PoolStringArrayReadAccess* -> Void)
    pool_string_array_read_access_destroy : (PoolStringArrayReadAccess* -> Void)
    pool_vector2_array_read_access_copy : (PoolVector2ArrayReadAccess* -> PoolVector2ArrayReadAccess*)
    pool_vector2_array_read_access_ptr : (PoolVector2ArrayReadAccess* -> Vector2*)
    pool_vector2_array_read_access_operator_assign : (PoolVector2ArrayReadAccess*, PoolVector2ArrayReadAccess* -> Void)
    pool_vector2_array_read_access_destroy : (PoolVector2ArrayReadAccess* -> Void)
    pool_vector3_array_read_access_copy : (PoolVector3ArrayReadAccess* -> PoolVector3ArrayReadAccess*)
    pool_vector3_array_read_access_ptr : (PoolVector3ArrayReadAccess* -> Vector3*)
    pool_vector3_array_read_access_operator_assign : (PoolVector3ArrayReadAccess*, PoolVector3ArrayReadAccess* -> Void)
    pool_vector3_array_read_access_destroy : (PoolVector3ArrayReadAccess* -> Void)
    pool_color_array_read_access_copy : (PoolColorArrayReadAccess* -> PoolColorArrayReadAccess*)
    pool_color_array_read_access_ptr : (PoolColorArrayReadAccess* -> Color*)
    pool_color_array_read_access_operator_assign : (PoolColorArrayReadAccess*, PoolColorArrayReadAccess* -> Void)
    pool_color_array_read_access_destroy : (PoolColorArrayReadAccess* -> Void)
    pool_byte_array_write_access_copy : (PoolByteArrayWriteAccess* -> PoolByteArrayWriteAccess*)
    pool_byte_array_write_access_ptr : (PoolByteArrayWriteAccess* -> UInt8*)
    pool_byte_array_write_access_operator_assign : (PoolByteArrayWriteAccess*, PoolByteArrayWriteAccess* -> Void)
    pool_byte_array_write_access_destroy : (PoolByteArrayWriteAccess* -> Void)
    pool_int_array_write_access_copy : (PoolIntArrayWriteAccess* -> PoolIntArrayWriteAccess*)
    pool_int_array_write_access_ptr : (PoolIntArrayWriteAccess* -> Int32*)
    pool_int_array_write_access_operator_assign : (PoolIntArrayWriteAccess*, PoolIntArrayWriteAccess* -> Void)
    pool_int_array_write_access_destroy : (PoolIntArrayWriteAccess* -> Void)
    pool_real_array_write_access_copy : (PoolRealArrayWriteAccess* -> PoolRealArrayWriteAccess*)
    pool_real_array_write_access_ptr : (PoolRealArrayWriteAccess* -> Float32*)
    pool_real_array_write_access_operator_assign : (PoolRealArrayWriteAccess*, PoolRealArrayWriteAccess* -> Void)
    pool_real_array_write_access_destroy : (PoolRealArrayWriteAccess* -> Void)
    pool_string_array_write_access_copy : (PoolStringArrayWriteAccess* -> PoolStringArrayWriteAccess*)
    pool_string_array_write_access_ptr : (PoolStringArrayWriteAccess* -> String*)
    pool_string_array_write_access_operator_assign : (PoolStringArrayWriteAccess*, PoolStringArrayWriteAccess* -> Void)
    pool_string_array_write_access_destroy : (PoolStringArrayWriteAccess* -> Void)
    pool_vector2_array_write_access_copy : (PoolVector2ArrayWriteAccess* -> PoolVector2ArrayWriteAccess*)
    pool_vector2_array_write_access_ptr : (PoolVector2ArrayWriteAccess* -> Vector2*)
    pool_vector2_array_write_access_operator_assign : (PoolVector2ArrayWriteAccess*, PoolVector2ArrayWriteAccess* -> Void)
    pool_vector2_array_write_access_destroy : (PoolVector2ArrayWriteAccess* -> Void)
    pool_vector3_array_write_access_copy : (PoolVector3ArrayWriteAccess* -> PoolVector3ArrayWriteAccess*)
    pool_vector3_array_write_access_ptr : (PoolVector3ArrayWriteAccess* -> Vector3*)
    pool_vector3_array_write_access_operator_assign : (PoolVector3ArrayWriteAccess*, PoolVector3ArrayWriteAccess* -> Void)
    pool_vector3_array_write_access_destroy : (PoolVector3ArrayWriteAccess* -> Void)
    pool_color_array_write_access_copy : (PoolColorArrayWriteAccess* -> PoolColorArrayWriteAccess*)
    pool_color_array_write_access_ptr : (PoolColorArrayWriteAccess* -> Color*)
    pool_color_array_write_access_operator_assign : (PoolColorArrayWriteAccess*, PoolColorArrayWriteAccess* -> Void)
    pool_color_array_write_access_destroy : (PoolColorArrayWriteAccess* -> Void)
    array_new : (Array* -> Void)
    array_new_copy : (Array*, Array* -> Void)
    array_new_pool_color_array : (Array*, PoolColorArray* -> Void)
    array_new_pool_vector3_array : (Array*, PoolVector3Array* -> Void)
    array_new_pool_vector2_array : (Array*, PoolVector2Array* -> Void)
    array_new_pool_string_array : (Array*, PoolStringArray* -> Void)
    array_new_pool_real_array : (Array*, PoolRealArray* -> Void)
    array_new_pool_int_array : (Array*, PoolIntArray* -> Void)
    array_new_pool_byte_array : (Array*, PoolByteArray* -> Void)
    array_set : (Array*, Int32, Variant* -> Void)
    array_get : (Array*, Int32 -> Variant)
    array_operator_index : (Array*, Int32 -> Variant)
    array_operator_index_const : (Array*, Int32 -> Variant)
    array_append : (Array*, Variant* -> Void)
    array_clear : (Array* -> Void)
    array_count : (Array*, Variant* -> Int32)
    array_empty : (Array* -> Bool)
    array_erase : (Array*, Variant* -> Void)
    array_front : (Array* -> Variant)
    array_back : (Array* -> Variant)
    array_find : (Array*, Variant*, Int32 -> Int32)
    array_find_last : (Array*, Variant* -> Int32)
    array_has : (Array*, Variant* -> Bool)
    array_hash : (Array* -> Int32)
    array_insert : (Array*, Int32, Variant* -> Void)
    array_invert : (Array* -> Void)
    array_pop_back : (Array* -> Variant)
    array_pop_front : (Array* -> Variant)
    array_push_back : (Array*, Variant* -> Void)
    array_push_front : (Array*, Variant* -> Void)
    array_remove : (Array*, Int32 -> Void)
    array_resize : (Array*, Int32 -> Void)
    array_rfind : (Array*, Variant*, Int32 -> Int32)
    array_size : (Array* -> Int32)
    array_sort : (Array* -> Void)
    array_sort_custom : (Array*, Object, String* -> Void)
    array_bsearch : (Array*, Variant*, Bool -> Int32)
    array_bsearch_custom : (Array*, Variant*, Object, String*, Bool -> Int32)
    array_destroy : (Array* -> Void)
    dictionary_new : (Dictionary* -> Void)
    dictionary_new_copy : (Dictionary*, Dictionary* -> Void)
    dictionary_destroy : (Dictionary* -> Void)
    dictionary_size : (Dictionary* -> Int32)
    dictionary_empty : (Dictionary* -> Bool)
    dictionary_clear : (Dictionary* -> Void)
    dictionary_has : (Dictionary*, Variant* -> Bool)
    dictionary_has_all : (Dictionary*, Array* -> Bool)
    dictionary_erase : (Dictionary*, Variant* -> Void)
    dictionary_hash : (Dictionary* -> Int32)
    dictionary_keys : (Dictionary* -> Array)
    dictionary_values : (Dictionary* -> Array)
    dictionary_get : (Dictionary*, Variant* -> Variant)
    dictionary_set : (Dictionary*, Variant*, Variant* -> Void)
    dictionary_operator_index : (Dictionary*, Variant* -> Variant)
    dictionary_operator_index_const : (Dictionary*, Variant* -> Variant)
    dictionary_next : (Dictionary*, Variant* -> Variant)
    dictionary_operator_equal : (Dictionary*, Dictionary* -> Bool)
    dictionary_to_json : (Dictionary* -> String)
    node_path_new : (NodePath*, String* -> Void)
    node_path_new_copy : (NodePath*, NodePath* -> Void)
    node_path_destroy : (NodePath* -> Void)
    node_path_as_string : (NodePath* -> String)
    node_path_is_absolute : (NodePath* -> Bool)
    node_path_get_name_count : (NodePath* -> Int32)
    node_path_get_name : (NodePath*, Int32 -> String)
    node_path_get_subname_count : (NodePath* -> Int32)
    node_path_get_subname : (NodePath*, Int32 -> String)
    node_path_get_concatenated_subnames : (NodePath* -> String)
    node_path_is_empty : (NodePath* -> Bool)
    node_path_operator_equal : (NodePath*, NodePath* -> Bool)
    plane_new_with_reals : (Plane*, Float32, Float32, Float32, Float32 -> Void)
    plane_new_with_vectors : (Plane*, Vector3*, Vector3*, Vector3* -> Void)
    plane_new_with_normal : (Plane*, Vector3*, Float32 -> Void)
    plane_as_string : (Plane* -> String)
    plane_normalized : (Plane* -> Plane)
    plane_center : (Plane* -> Vector3)
    plane_get_any_point : (Plane* -> Vector3)
    plane_is_point_over : (Plane*, Vector3* -> Bool)
    plane_distance_to : (Plane*, Vector3* -> Float32)
    plane_has_point : (Plane*, Vector3*, Float32 -> Bool)
    plane_project : (Plane*, Vector3* -> Vector3)
    plane_intersect_3 : (Plane*, Vector3*, Plane*, Plane* -> Bool)
    plane_intersects_ray : (Plane*, Vector3*, Vector3*, Vector3* -> Bool)
    plane_intersects_segment : (Plane*, Vector3*, Vector3*, Vector3* -> Bool)
    plane_operator_neg : (Plane* -> Plane)
    plane_operator_equal : (Plane*, Plane* -> Bool)
    plane_set_normal : (Plane*, Vector3* -> Void)
    plane_get_normal : (Plane* -> Vector3)
    plane_get_d : (Plane* -> Float32)
    plane_set_d : (Plane*, Float32 -> Void)
    rect2_new_with_position_and_size : (Rect2*, Vector2*, Vector2* -> Void)
    rect2_new : (Rect2*, Float32, Float32, Float32, Float32 -> Void)
    rect2_as_string : (Rect2* -> String)
    rect2_get_area : (Rect2* -> Float32)
    rect2_intersects : (Rect2*, Rect2* -> Bool)
    rect2_encloses : (Rect2*, Rect2* -> Bool)
    rect2_has_no_area : (Rect2* -> Bool)
    rect2_clip : (Rect2*, Rect2* -> Rect2)
    rect2_merge : (Rect2*, Rect2* -> Rect2)
    rect2_has_point : (Rect2*, Vector2* -> Bool)
    rect2_grow : (Rect2*, Float32 -> Rect2)
    rect2_expand : (Rect2*, Vector2* -> Rect2)
    rect2_operator_equal : (Rect2*, Rect2* -> Bool)
    rect2_get_position : (Rect2* -> Vector2)
    rect2_get_size : (Rect2* -> Vector2)
    rect2_set_position : (Rect2*, Vector2* -> Void)
    rect2_set_size : (Rect2*, Vector2* -> Void)
    aabb_new : (AABB*, Vector3*, Vector3* -> Void)
    aabb_get_position : (AABB* -> Vector3)
    aabb_set_position : (AABB*, Vector3* -> Void)
    aabb_get_size : (AABB* -> Vector3)
    aabb_set_size : (AABB*, Vector3* -> Void)
    aabb_as_string : (AABB* -> String)
    aabb_get_area : (AABB* -> Float32)
    aabb_has_no_area : (AABB* -> Bool)
    aabb_has_no_surface : (AABB* -> Bool)
    aabb_intersects : (AABB*, AABB* -> Bool)
    aabb_encloses : (AABB*, AABB* -> Bool)
    aabb_merge : (AABB*, AABB* -> AABB)
    aabb_intersection : (AABB*, AABB* -> AABB)
    aabb_intersects_plane : (AABB*, Plane* -> Bool)
    aabb_intersects_segment : (AABB*, Vector3*, Vector3* -> Bool)
    aabb_has_point : (AABB*, Vector3* -> Bool)
    aabb_get_support : (AABB*, Vector3* -> Vector3)
    aabb_get_longest_axis : (AABB* -> Vector3)
    aabb_get_longest_axis_index : (AABB* -> Int32)
    aabb_get_longest_axis_size : (AABB* -> Float32)
    aabb_get_shortest_axis : (AABB* -> Vector3)
    aabb_get_shortest_axis_index : (AABB* -> Int32)
    aabb_get_shortest_axis_size : (AABB* -> Float32)
    aabb_expand : (AABB*, Vector3* -> AABB)
    aabb_grow : (AABB*, Float32 -> AABB)
    aabb_get_endpoint : (AABB*, Int32 -> Vector3)
    aabb_operator_equal : (AABB*, AABB* -> Bool)
    rid_new : (Rid* -> Void)
    rid_get_id : (Rid* -> Int32)
    rid_new_with_resource : (Rid*, Object -> Void)
    rid_operator_equal : (Rid*, Rid* -> Bool)
    rid_operator_less : (Rid*, Rid* -> Bool)
    transform_new_with_axis_origin : (Transform*, Vector3*, Vector3*, Vector3*, Vector3* -> Void)
    transform_new : (Transform*, Basis*, Vector3* -> Void)
    transform_get_basis : (Transform* -> Basis)
    transform_set_basis : (Transform*, Basis* -> Void)
    transform_get_origin : (Transform* -> Vector3)
    transform_set_origin : (Transform*, Vector3* -> Void)
    transform_as_string : (Transform* -> String)
    transform_inverse : (Transform* -> Transform)
    transform_affine_inverse : (Transform* -> Transform)
    transform_orthonormalized : (Transform* -> Transform)
    transform_rotated : (Transform*, Vector3*, Float32 -> Transform)
    transform_scaled : (Transform*, Vector3* -> Transform)
    transform_translated : (Transform*, Vector3* -> Transform)
    transform_looking_at : (Transform*, Vector3*, Vector3* -> Transform)
    transform_xform_plane : (Transform*, Plane* -> Plane)
    transform_xform_inv_plane : (Transform*, Plane* -> Plane)
    transform_new_identity : (Transform* -> Void)
    transform_operator_equal : (Transform*, Transform* -> Bool)
    transform_operator_multiply : (Transform*, Transform* -> Transform)
    transform_xform_vector3 : (Transform*, Vector3* -> Vector3)
    transform_xform_inv_vector3 : (Transform*, Vector3* -> Vector3)
    transform_xform_aabb : (Transform*, AABB* -> AABB)
    transform_xform_inv_aabb : (Transform*, AABB* -> AABB)
    transform2d_new : (Transform2d*, Float32, Vector2* -> Void)
    transform2d_new_axis_origin : (Transform2d*, Vector2*, Vector2*, Vector2* -> Void)
    transform2d_as_string : (Transform2d* -> String)
    transform2d_inverse : (Transform2d* -> Transform2d)
    transform2d_affine_inverse : (Transform2d* -> Transform2d)
    transform2d_get_rotation : (Transform2d* -> Float32)
    transform2d_get_origin : (Transform2d* -> Vector2)
    transform2d_get_scale : (Transform2d* -> Vector2)
    transform2d_orthonormalized : (Transform2d* -> Transform2d)
    transform2d_rotated : (Transform2d*, Float32 -> Transform2d)
    transform2d_scaled : (Transform2d*, Vector2* -> Transform2d)
    transform2d_translated : (Transform2d*, Vector2* -> Transform2d)
    transform2d_xform_vector2 : (Transform2d*, Vector2* -> Vector2)
    transform2d_xform_inv_vector2 : (Transform2d*, Vector2* -> Vector2)
    transform2d_basis_xform_vector2 : (Transform2d*, Vector2* -> Vector2)
    transform2d_basis_xform_inv_vector2 : (Transform2d*, Vector2* -> Vector2)
    transform2d_interpolate_with : (Transform2d*, Transform2d*, Float32 -> Transform2d)
    transform2d_operator_equal : (Transform2d*, Transform2d* -> Bool)
    transform2d_operator_multiply : (Transform2d*, Transform2d* -> Transform2d)
    transform2d_new_identity : (Transform2d* -> Void)
    transform2d_xform_rect2 : (Transform2d*, Rect2* -> Rect2)
    transform2d_xform_inv_rect2 : (Transform2d*, Rect2* -> Rect2)
    variant_get_type : (Variant* -> VariantType)
    variant_new_copy : (Variant*, Variant* -> Void)
    variant_new_nil : (Variant* -> Void)
    variant_new_bool : (Variant*, Bool -> Void)
    variant_new_uint : (Variant*, UInt64 -> Void)
    variant_new_int : (Variant*, Int64 -> Void)
    variant_new_real : (Variant*, Float64 -> Void)
    variant_new_string : (Variant*, String* -> Void)
    variant_new_vector2 : (Variant*, Vector2* -> Void)
    variant_new_rect2 : (Variant*, Rect2* -> Void)
    variant_new_vector3 : (Variant*, Vector3* -> Void)
    variant_new_transform2d : (Variant*, Transform2d* -> Void)
    variant_new_plane : (Variant*, Plane* -> Void)
    variant_new_quat : (Variant*, Quat* -> Void)
    variant_new_aabb : (Variant*, AABB* -> Void)
    variant_new_basis : (Variant*, Basis* -> Void)
    variant_new_transform : (Variant*, Transform* -> Void)
    variant_new_color : (Variant*, Color* -> Void)
    variant_new_node_path : (Variant*, NodePath* -> Void)
    variant_new_rid : (Variant*, Rid* -> Void)
    variant_new_object : (Variant*, Object -> Void)
    variant_new_dictionary : (Variant*, Dictionary* -> Void)
    variant_new_array : (Variant*, Array* -> Void)
    variant_new_pool_byte_array : (Variant*, PoolByteArray* -> Void)
    variant_new_pool_int_array : (Variant*, PoolIntArray* -> Void)
    variant_new_pool_real_array : (Variant*, PoolRealArray* -> Void)
    variant_new_pool_string_array : (Variant*, PoolStringArray* -> Void)
    variant_new_pool_vector2_array : (Variant*, PoolVector2Array* -> Void)
    variant_new_pool_vector3_array : (Variant*, PoolVector3Array* -> Void)
    variant_new_pool_color_array : (Variant*, PoolColorArray* -> Void)
    variant_as_bool : (Variant* -> Bool)
    variant_as_uint : (Variant* -> UInt64)
    variant_as_int : (Variant* -> Int64)
    variant_as_real : (Variant* -> Float64)
    variant_as_string : (Variant* -> String)
    variant_as_vector2 : (Variant* -> Vector2)
    variant_as_rect2 : (Variant* -> Rect2)
    variant_as_vector3 : (Variant* -> Vector3)
    variant_as_transform2d : (Variant* -> Transform2d)
    variant_as_plane : (Variant* -> Plane)
    variant_as_quat : (Variant* -> Quat)
    variant_as_aabb : (Variant* -> AABB)
    variant_as_basis : (Variant* -> Basis)
    variant_as_transform : (Variant* -> Transform)
    variant_as_color : (Variant* -> Color)
    variant_as_node_path : (Variant* -> NodePath)
    variant_as_rid : (Variant* -> Rid)
    variant_as_object : (Variant* -> Object)
    variant_as_dictionary : (Variant* -> Dictionary)
    variant_as_array : (Variant* -> Array)
    variant_as_pool_byte_array : (Variant* -> PoolByteArray)
    variant_as_pool_int_array : (Variant* -> PoolIntArray)
    variant_as_pool_real_array : (Variant* -> PoolRealArray)
    variant_as_pool_string_array : (Variant* -> PoolStringArray)
    variant_as_pool_vector2_array : (Variant* -> PoolVector2Array)
    variant_as_pool_vector3_array : (Variant* -> PoolVector3Array)
    variant_as_pool_color_array : (Variant* -> PoolColorArray)
    variant_call : (Variant*, String*, Variant**, Int32, VariantCallError* -> Variant)
    variant_has_method : (Variant*, String* -> Bool)
    variant_operator_equal : (Variant*, Variant* -> Bool)
    variant_operator_less : (Variant*, Variant* -> Bool)
    variant_hash_compare : (Variant*, Variant* -> Bool)
    variant_booleanize : (Variant* -> Bool)
    variant_destroy : (Variant* -> Void)
    char_string_length : (CharString* -> Int32)
    char_string_get_data : (CharString* -> CString)
    char_string_destroy : (CharString* -> Void)
    string_new : (String* -> Void)
    string_new_copy : (String*, String* -> Void)
    string_new_with_wide_string : (String*, WChar*, Int32 -> Void)
    string_operator_index : (String*, Int32 -> WChar*)
    string_operator_index_const : (String*, Int32 -> WChar*)
    string_wide_str : (String* -> WChar*)
    string_operator_equal : (String*, String* -> Bool)
    string_operator_less : (String*, String* -> Bool)
    string_operator_plus : (String*, String* -> String)
    string_length : (String* -> Int32)
    string_casecmp_to : (String*, String* -> UInt8)
    string_nocasecmp_to : (String*, String* -> UInt8)
    string_naturalnocasecmp_to : (String*, String* -> UInt8)
    string_begins_with : (String*, String* -> Bool)
    string_begins_with_char_array : (String*, CString -> Bool)
    string_bigrams : (String* -> Array)
    string_chr : (WChar -> String)
    string_ends_with : (String*, String* -> Bool)
    string_find : (String*, String -> Int32)
    string_find_from : (String*, String, Int32 -> Int32)
    string_findmk : (String*, Array* -> Int32)
    string_findmk_from : (String*, Array*, Int32 -> Int32)
    string_findmk_from_in_place : (String*, Array*, Int32, Int32* -> Int32)
    string_findn : (String*, String -> Int32)
    string_findn_from : (String*, String, Int32 -> Int32)
    string_find_last : (String*, String -> Int32)
    string_format : (String*, Variant* -> String)
    string_format_with_custom_placeholder : (String*, Variant*, CString -> String)
    string_hex_encode_buffer : (UInt8*, Int32 -> String)
    string_hex_to_int : (String* -> Int32)
    string_hex_to_int_without_prefix : (String* -> Int32)
    string_insert : (String*, Int32, String -> String)
    string_is_numeric : (String* -> Bool)
    string_is_subsequence_of : (String*, String* -> Bool)
    string_is_subsequence_ofi : (String*, String* -> Bool)
    string_lpad : (String*, Int32 -> String)
    string_lpad_with_custom_character : (String*, Int32, String -> String)
    string_match : (String*, String* -> Bool)
    string_matchn : (String*, String* -> Bool)
    string_md5 : (UInt8* -> String)
    string_num : (Float64 -> String)
    string_num_int64 : (Int64, Int32 -> String)
    string_num_int64_capitalized : (Int64, Int32, Bool -> String)
    string_num_real : (Float64 -> String)
    string_num_scientific : (Float64 -> String)
    string_num_with_decimals : (Float64, Int32 -> String)
    string_pad_decimals : (String*, Int32 -> String)
    string_pad_zeros : (String*, Int32 -> String)
    string_replace_first : (String*, String, String -> String)
    string_replace : (String*, String, String -> String)
    string_replacen : (String*, String, String -> String)
    string_rfind : (String*, String -> Int32)
    string_rfindn : (String*, String -> Int32)
    string_rfind_from : (String*, String, Int32 -> Int32)
    string_rfindn_from : (String*, String, Int32 -> Int32)
    string_rpad : (String*, Int32 -> String)
    string_rpad_with_custom_character : (String*, Int32, String -> String)
    string_similarity : (String*, String* -> Float32)
    string_sprintf : (String*, Array*, Bool* -> String)
    string_substr : (String*, Int32, Int32 -> String)
    string_to_double : (String* -> Float64)
    string_to_float : (String* -> Float32)
    string_to_int : (String* -> Int32)
    string_camelcase_to_underscore : (String* -> String)
    string_camelcase_to_underscore_lowercased : (String* -> String)
    string_capitalize : (String* -> String)
    string_char_to_double : (CString -> Float64)
    string_char_to_int : (CString -> Int32)
    string_wchar_to_int : (WChar* -> Int64)
    string_char_to_int_with_len : (CString, Int32 -> Int32)
    string_char_to_int64_with_len : (WChar*, Int32 -> Int64)
    string_hex_to_int64 : (String* -> Int64)
    string_hex_to_int64_with_prefix : (String* -> Int64)
    string_to_int64 : (String* -> Int64)
    string_unicode_char_to_double : (WChar*, WChar** -> Float64)
    string_get_slice_count : (String*, String -> Int32)
    string_get_slice : (String*, String, Int32 -> String)
    string_get_slicec : (String*, WChar, Int32 -> String)
    string_split : (String*, String* -> Array)
    string_split_allow_empty : (String*, String* -> Array)
    string_split_floats : (String*, String* -> Array)
    string_split_floats_allows_empty : (String*, String* -> Array)
    string_split_floats_mk : (String*, Array* -> Array)
    string_split_floats_mk_allows_empty : (String*, Array* -> Array)
    string_split_ints : (String*, String* -> Array)
    string_split_ints_allows_empty : (String*, String* -> Array)
    string_split_ints_mk : (String*, Array* -> Array)
    string_split_ints_mk_allows_empty : (String*, Array* -> Array)
    string_split_spaces : (String* -> Array)
    string_char_lowercase : (WChar -> WChar)
    string_char_uppercase : (WChar -> WChar)
    string_to_lower : (String* -> String)
    string_to_upper : (String* -> String)
    string_get_basename : (String* -> String)
    string_get_extension : (String* -> String)
    string_left : (String*, Int32 -> String)
    string_ord_at : (String*, Int32 -> WChar*)
    string_plus_file : (String*, String* -> String)
    string_right : (String*, Int32 -> String)
    string_strip_edges : (String*, Bool, Bool -> String)
    string_strip_escapes : (String* -> String)
    string_erase : (String*, Int32, Int32 -> Void)
    string_ascii : (String* -> CharString)
    string_ascii_extended : (String* -> CharString)
    string_utf8 : (String* -> CharString)
    string_parse_utf8 : (String*, CString -> Bool)
    string_parse_utf8_with_len : (String*, CString, Int32 -> Bool)
    string_chars_to_utf8 : (CString -> String)
    string_chars_to_utf8_with_len : (CString, Int32 -> String)
    string_hash : (String* -> UInt32)
    string_hash64 : (String* -> UInt64)
    string_hash_chars : (CString -> UInt32)
    string_hash_chars_with_len : (CString, Int32 -> UInt32)
    string_hash_utf8_chars : (WChar* -> UInt32)
    string_hash_utf8_chars_with_len : (WChar*, Int32 -> UInt32)
    string_md5_buffer : (String* -> PoolByteArray)
    string_md5_text : (String* -> String)
    string_sha256_buffer : (String* -> PoolByteArray)
    string_sha256_text : (String* -> String)
    string_empty : (String* -> Bool)
    string_get_base_dir : (String* -> String)
    string_get_file : (String* -> String)
    string_humanize_size : (LibC::SizeT -> String)
    string_is_abs_path : (String* -> Bool)
    string_is_rel_path : (String* -> Bool)
    string_is_resource_file : (String* -> Bool)
    string_path_to : (String*, String* -> String)
    string_path_to_file : (String*, String* -> String)
    string_simplify_path : (String* -> String)
    string_c_escape : (String* -> String)
    string_c_escape_multiline : (String* -> String)
    string_c_unescape : (String* -> String)
    string_http_escape : (String* -> String)
    string_http_unescape : (String* -> String)
    string_json_escape : (String* -> String)
    string_word_wrap : (String*, Int32 -> String)
    string_xml_escape : (String* -> String)
    string_xml_escape_with_quotes : (String* -> String)
    string_xml_unescape : (String* -> String)
    string_percent_decode : (String* -> String)
    string_percent_encode : (String* -> String)
    string_is_valid_float : (String* -> Bool)
    string_is_valid_hex_number : (String*, Bool -> Bool)
    string_is_valid_html_color : (String* -> Bool)
    string_is_valid_identifier : (String* -> Bool)
    string_is_valid_integer : (String* -> Bool)
    string_is_valid_ip_address : (String* -> Bool)
    string_destroy : (String* -> Void)
    string_name_new : (StringName*, String* -> Void)
    string_name_new_data : (StringName*, CString -> Void)
    string_name_get_name : (StringName* -> String)
    string_name_get_hash : (StringName* -> UInt32)
    string_name_get_data_unique_pointer : (StringName* -> Void*)
    string_name_operator_equal : (StringName*, StringName* -> Bool)
    string_name_operator_less : (StringName*, StringName* -> Bool)
    string_name_destroy : (StringName* -> Void*)
    object_destroy : (Object -> Void)
    global_get_singleton : (CString -> Object)
    method_bind_get_method : (CString, CString -> MethodBind*)
    method_bind_ptrcall : (MethodBind*, Object, Void**, Void* -> Void)
    method_bind_call : (MethodBind*, Object, Variant**, Int32, VariantCallError* -> Variant)
    get_class_constructor : (CString -> ClassConstructor)
    get_global_constants : (-> Dictionary)
    register_native_call_type : (CString, NativeCallCb -> Void)
    alloc : (Int32 -> Void*)
    realloc : (Void*, Int32 -> Void*)
    free : (Void* -> Void)
    print_error : (CString, CString, CString, Int32 -> Void)
    print_warning : (CString, CString, CString, Int32 -> Void)
    print : (String* -> Void)
  end

  struct GDNativeExtARVRApiStruct
    type : UInt32
    version : GDNativeApiVersion
    next : GDNativeApiStruct*
    arvr_register_interface : (ARVRInterfaceGDNative* -> Void)
    arvr_get_worldscale : (-> Float32)
    arvr_get_reference_frame : (-> Transform)
    arvr_blit : (Int32, Rid*, Rect2* -> Void)
    arvr_get_texid : (Rid* -> Int32)
    arvr_add_controller : (CString, Int32, Bool, Bool -> Int32)
    arvr_remove_controller : (Int32 -> Void)
    arvr_set_controller_transform : (Int32, Transform*, Bool, Bool -> Void)
    arvr_set_controller_button : (Int32, Int32, Bool -> Void)
    arvr_set_controller_axis : (Int32, Int32, Float32, Bool -> Void)
    arvr_get_controller_rumble : (Int32 -> Float32)
  end

  struct GDNativeExtNativescript11ApiStruct
    type : UInt32
    version : GDNativeApiVersion
    next : GDNativeApiStruct*
    set_method_argument_information : (Void*, CString, CString, Int32, MethodArg* -> Void)
    set_class_documentation : (Void*, CString, String -> Void)
    set_method_documentation : (Void*, CString, CString, String -> Void)
    set_property_documentation : (Void*, CString, CString, String -> Void)
    set_signal_documentation : (Void*, CString, CString, String -> Void)
    set_global_type_tag : (Int32, CString, Void* -> Void)
    get_global_type_tag : (Int32, CString -> Void*)
    set_type_tag : (Void*, CString, Void* -> Void)
    get_type_tag : (Object -> Void)
    register_instance_binding_data_functions : (InstanceBindingFunctions -> Int32)
    unregister_instance_binding_data_functions : (Int32 -> Void*)
    get_instance_binding_data : (Int32, Object -> Void*)
  end

  struct GDNativeExtNativescriptApiStruct
    type : UInt32
    version : GDNativeApiVersion
    next : GDNativeApiStruct*
    register_class : (Void*, CString, CString, InstanceCreateFunc, InstanceDestroyFunc -> Void)
    register_tool_class : (Void*, CString, CString, InstanceCreateFunc, InstanceDestroyFunc -> Void)
    register_method : (Void*, CString, CString, MethodAttributes, InstanceMethod -> Void)
    register_property : (Void*, CString, CString, PropertyAttributes*, PropertySetFunc, PropertyGetFunc -> Void)
    register_signal : (Void*, CString, Signal* -> Void)
    get_userdata : (Object -> Void)
  end

  struct GDNativeExtPluginscriptApiStruct
    type : UInt32
    version : GDNativeApiVersion
    next : GDNativeApiStruct*
    pluginscript_register_language : (PluginscriptLanguageDesc* -> Void)
  end

  struct GDNativeInitOptions
    in_editor : Bool
    core_api_hash : UInt64
    editor_api_hash : UInt64
    no_api_hash : UInt64
    report_version_mismatch : (Object, CString, GDNativeApiVersion, GDNativeApiVersion -> Void)
    report_loading_error : (Object, CString -> Void)
    gd_native_library : Object
    api_struct : GDNativeCoreApiStruct*
    active_library_path : String*
  end

  struct GDNativeTerminateOptions
    in_editor : Bool
  end

  struct InstanceBindingFunctions
    alloc_instance_binding_data : (Void*, Void*, Object -> Void*)
    free_instance_binding_data : (Void*, Void* -> Void)
    data : Void*
    free_func : (Void* -> Void)
  end

  struct InstanceCreateFunc
    create_func : (Object, Void* -> Void*)
    method_data : Void*
    free_func : (Void* -> Void)
  end

  struct InstanceDestroyFunc
    destroy_func : (Object, Void*, Void* -> Void)
    method_data : Void*
    free_func : (Void* -> Void)
  end

  struct InstanceMethod
    method : (Object, Void*, Void*, Int32, Variant** -> Variant)
    method_data : Void*
    free_func : (Void* -> Void)
  end

  struct MethodArg
    name : String
    type : VariantType
    hint : PropertyHint
    hint_string : String
  end

  struct MethodAttributes
    rpc_type : MethodRpcMode
  end

  struct MethodBind
    _dont_touch_that : UInt8[1]
  end

  struct NodePath
    _dont_touch_that : UInt8[8]
  end

  struct Plane
    _dont_touch_that : UInt8[16]
  end

  struct PluginscriptInstanceDesc
    init : (PluginscriptScriptData*, Object -> PluginscriptInstanceData*)
    finish : (PluginscriptInstanceData* -> Void)
    set_prop : (PluginscriptInstanceData*, String*, Variant* -> Bool)
    get_prop : (PluginscriptInstanceData*, String*, Variant* -> Bool)
    call_method : (PluginscriptInstanceData*, StringName*, Variant**, Int32, VariantCallError* -> Variant)
    notification : (PluginscriptInstanceData*, Int32 -> Void)
    get_rpc_mode : (PluginscriptInstanceData*, String* -> MethodRpcMode)
    get_rset_mode : (PluginscriptInstanceData*, String* -> MethodRpcMode)
    refcount_incremented : (PluginscriptInstanceData* -> Void)
    refcount_decremented : (PluginscriptInstanceData* -> Bool)
  end

  struct PluginscriptLanguageDesc
    name : CString
    type : CString
    extension : CString
    recognized_extensions : CString*
    init : (-> PluginscriptLanguageData*)
    finish : (PluginscriptLanguageData* -> Void)
    reserved_words : CString*
    comment_delimiters : CString*
    string_delimiters : CString*
    has_named_classes : Bool
    supports_builtin_mode : Bool
    get_template_source_code : (PluginscriptLanguageData*, String*, String* -> String)
    validate : (PluginscriptLanguageData*, String*, Int32*, Int32*, String*, String*, PoolStringArray* -> Bool)
    find_function : (PluginscriptLanguageData*, String*, String* -> Int32)
    make_function : (PluginscriptLanguageData*, String*, String*, PoolStringArray* -> String)
    complete_code : (PluginscriptLanguageData*, String*, String*, Object, Array*, Bool*, String* -> Error)
    auto_indent_code : (PluginscriptLanguageData*, String*, Int32, Int32 -> Void)
    add_global_constant : (PluginscriptLanguageData*, String*, Variant* -> Void)
    debug_get_error : (PluginscriptLanguageData* -> String)
    debug_get_stack_level_count : (PluginscriptLanguageData* -> Int32)
    debug_get_stack_level_line : (PluginscriptLanguageData*, Int32 -> Int32)
    debug_get_stack_level_function : (PluginscriptLanguageData*, Int32 -> String)
    debug_get_stack_level_source : (PluginscriptLanguageData*, Int32 -> String)
    debug_get_stack_level_locals : (PluginscriptLanguageData*, Int32, PoolStringArray*, Array*, Int32, Int32 -> Void)
    debug_get_stack_level_members : (PluginscriptLanguageData*, Int32, PoolStringArray*, Array*, Int32, Int32 -> Void)
    debug_get_globals : (PluginscriptLanguageData*, PoolStringArray*, Array*, Int32, Int32 -> Void)
    debug_parse_stack_level_expression : (PluginscriptLanguageData*, Int32, String*, Int32, Int32 -> String)
    get_public_functions : (PluginscriptLanguageData*, Array* -> Void)
    get_public_constants : (PluginscriptLanguageData*, Dictionary* -> Void)
    profiling_start : (PluginscriptLanguageData* -> Void)
    profiling_stop : (PluginscriptLanguageData* -> Void)
    profiling_get_accumulated_data : (PluginscriptLanguageData*, PluginscriptProfilingData*, Int32 -> Int32)
    profiling_get_frame_data : (PluginscriptLanguageData*, PluginscriptProfilingData*, Int32 -> Int32)
    profiling_frame : (PluginscriptLanguageData* -> Void)
    script_desc : PluginscriptScriptDesc
  end

  struct PluginscriptProfilingData
    signature : StringName
    call_count : Int32
    total_time : Int32
    self_time : Int32
  end

  struct PluginscriptScriptDesc
    init : (PluginscriptLanguageData*, String*, String*, Error* -> PluginscriptScriptManifest)
    finish : (PluginscriptScriptData* -> Void)
    instance_desc : PluginscriptInstanceDesc
  end

  struct PluginscriptScriptManifest
    data : PluginscriptScriptData*
    name : StringName
    is_tool : Bool
    base : StringName
    member_lines : Dictionary
    methods : Array
    signals : Array
    properties : Array
  end

  struct PoolArrayReadAccess
    _dont_touch_that : UInt8[1]
  end

  struct PoolArrayWriteAccess
    _dont_touch_that : UInt8[1]
  end

  struct PoolByteArray
    _dont_touch_that : UInt8[8]
  end

  struct PoolColorArray
    _dont_touch_that : UInt8[8]
  end

  struct PoolIntArray
    _dont_touch_that : UInt8[8]
  end

  struct PoolRealArray
    _dont_touch_that : UInt8[8]
  end

  struct PoolStringArray
    _dont_touch_that : UInt8[8]
  end

  struct PoolVector2Array
    _dont_touch_that : UInt8[8]
  end

  struct PoolVector3Array
    _dont_touch_that : UInt8[8]
  end

  struct PropertyAttributes
    rset_type : MethodRpcMode
    type : Int32
    hint : PropertyHint
    hint_string : String
    usage : PropertyUsageFlags
    default_value : Variant
  end

  struct PropertyGetFunc
    get_func : (Object, Void*, Void* -> Variant)
    method_data : Void*
    free_func : (Void* -> Void)
  end

  struct PropertySetFunc
    set_func : (Object, Void*, Void*, Variant* -> Void)
    method_data : Void*
    free_func : (Void* -> Void)
  end

  struct Quat
    _dont_touch_that : UInt8[16]
  end

  struct Rect2
    _dont_touch_that : UInt8[16]
  end

  struct Rid
    _dont_touch_that : UInt8[8]
  end

  struct Signal
    name : String
    num_args : Int32
    args : SignalArgument*
    num_default_args : Int32
    default_args : Variant*
  end

  struct SignalArgument
    name : String
    type : Int32
    hint : PropertyHint
    hint_string : String
    usage : PropertyUsageFlags
    default_value : Variant
  end

  struct String
    _dont_touch_that : UInt8[8]
  end

  struct StringName
    _dont_touch_that : UInt8[8]
  end

  struct Transform
    _dont_touch_that : UInt8[48]
  end

  struct Transform2d
    _dont_touch_that : UInt8[24]
  end

  struct Variant
    _dont_touch_that : UInt8[24]
  end

  struct VariantCallError
    error : VariantCallResult
    argument : Int32
    expected : VariantType
  end

  struct Vector2
    _dont_touch_that : UInt8[8]
  end

  struct Vector3
    _dont_touch_that : UInt8[12]
  end
end
