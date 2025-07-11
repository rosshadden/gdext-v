module gd

// TODO: use the enums generated from api dump

pub enum GDExtensionVariantType {
	type_nil
	type_bool
	type_i64
	type_f64
	type_string
	type_vector2
	type_vector2i
	type_rect2
	type_rect2i
	type_vector3
	type_vector3i
	type_transform2d
	type_vector4
	type_vector4i
	type_plane
	type_quaternion
	type_aabb
	type_basis
	type_transform3d
	type_projection
	type_color
	type_stringname
	type_nodepath
	type_rid
	type_object
	type_callable
	type_signal
	type_dictionary
	type_array
	type_packedbytearray
	type_packedint32array
	type_packedint64array
	type_packedfloat32array
	type_packedfloat64array
	type_packedstringarray
	type_packedvector2array
	type_packedvector3array
	type_packedcolorarray
	type_packedvector4array
	type_variantmax
}

pub enum GDExtensionVariantOperator {
	op_equal
	op_not_equal
	op_less
	op_less_equal
	op_greater
	op_greater_equal
	op_add
	op_subtract
	op_multiply
	op_divide
	op_negate
	op_positive
	op_module
	op_power
	op_shift_left
	op_shift_right
	op_bit_and
	op_bit_or
	op_bit_xor
	op_bit_negate
	op_and
	op_or
	op_xor
	op_not
	op_in
	op_max
}

pub type GDExtensionUninitializedVariantPtr = voidptr
pub type GDExtensionUninitializedStringNamePtr = voidptr
pub type GDExtensionUninitializedStringPtr = voidptr
pub type GDExtensionUninitializedObjectPtr = voidptr
pub type GDExtensionTypePtr = voidptr
pub type GDExtensionConstStringPtr = voidptr
pub type GDExtensionConstTypePtr = voidptr
pub type GDExtensionUninitializedTypePtr = voidptr
pub type GDExtensionMethodBindPtr = voidptr
pub type GDExtensionInt = i64
pub type GDExtensionBool = u8
pub type GDObjectInstanceID = u64
pub type GDExtensionRefPtr = voidptr
pub type GDExtensionConstRefPtr = voidptr

pub enum GDExtensionCallErrorType {
	gdextension_call_ok
	gdextension_call_error_invalid_method
	gdextension_call_error_invalid_argument
	gdextension_call_error_too_many_arguments
	gdextension_call_error_too_few_arguments
	gdextension_call_error_instance_is_null
	gdextension_call_error_method_not_const
}

pub struct GDExtensionCallError {
	error    GDExtensionCallErrorType
	argument int
	expected int
}

pub type GDExtensionVariantFromTypeConstructorFunc = fn (GDExtensionUninitializedVariantPtr, GDExtensionTypePtr)

pub type GDExtensionTypeFromVariantConstructorFunc = fn (GDExtensionUninitializedTypePtr, &Variant)

pub type GDExtensionPtrOperatorEvaluator = fn (GDExtensionConstTypePtr, GDExtensionConstTypePtr, GDExtensionTypePtr)

pub type GDExtensionPtrBuiltInMethod = fn (GDExtensionTypePtr, &GDExtensionConstTypePtr, GDExtensionTypePtr, int)

pub type GDExtensionPtrConstructor = fn (GDExtensionUninitializedTypePtr, &GDExtensionConstTypePtr)

pub type GDExtensionPtrDestructor = fn (GDExtensionTypePtr)

pub type GDExtensionPtrSetter = fn (GDExtensionTypePtr, GDExtensionConstTypePtr)

pub type GDExtensionPtrGetter = fn (GDExtensionConstTypePtr, GDExtensionTypePtr)

pub type GDExtensionPtrIndexedSetter = fn (GDExtensionTypePtr, GDExtensionInt, GDExtensionConstTypePtr)

pub type GDExtensionPtrIndexedGetter = fn (GDExtensionConstTypePtr, GDExtensionInt, GDExtensionTypePtr)

pub type GDExtensionPtrKeyedSetter = fn (GDExtensionTypePtr, GDExtensionConstTypePtr, GDExtensionConstTypePtr)

pub type GDExtensionPtrKeyedGetter = fn (GDExtensionConstTypePtr, GDExtensionConstTypePtr, GDExtensionTypePtr)

pub type GDExtensionPtrKeyedChecker = fn (&Variant, &Variant) u32

pub type GDExtensionPtrUtilityFunction = fn (GDExtensionTypePtr, &GDExtensionConstTypePtr, int)

pub type GDExtensionClassConstructor = fn () &Object

pub type GDExtensionInstanceBindingCreateCallback = fn (voidptr, voidptr) voidptr

pub type GDExtensionInstanceBindingFreeCallback = fn (voidptr, voidptr, voidptr)

pub type GDExtensionInstanceBindingReferenceCallback = fn (voidptr, voidptr, GDExtensionBool) GDExtensionBool

pub struct GDExtensionInstanceBindingCallbacks {
	create_callback    GDExtensionInstanceBindingCreateCallback    = unsafe { nil }
	free_callback      GDExtensionInstanceBindingFreeCallback      = unsafe { nil }
	reference_callback GDExtensionInstanceBindingReferenceCallback = unsafe { nil }
}

pub type GDExtensionClassInstancePtr = voidptr
pub type GDExtensionClassSet = fn (GDExtensionClassInstancePtr, &StringName, &Variant) GDExtensionBool

pub type GDExtensionClassGet = fn (GDExtensionClassInstancePtr, &StringName, &Variant) GDExtensionBool

pub type GDExtensionClassGetRID = fn (GDExtensionClassInstancePtr) u64

pub struct GDExtensionPropertyInfo {
	// TEMP
pub:
	type_       GDExtensionVariantType
	name        &StringName = unsafe { nil }
	class_name  &StringName = unsafe { nil }
	hint        PropertyHint
	hint_string &String = unsafe { nil }
	usage       PropertyUsageFlags
}

pub struct GDExtensionMethodInfo {
	// TEMP
pub:
	name                   &StringName
	return_value           GDExtensionPropertyInfo
	flags                  u32
	id                     int
	argument_count         u32
	arguments              &GDExtensionPropertyInfo
	default_argument_count u32
	default_arguments      &&Variant
}

pub type GDExtensionClassGetPropertyList = fn (GDExtensionClassInstancePtr, &u32) &GDExtensionPropertyInfo

pub type GDExtensionClassFreePropertyList = fn (GDExtensionClassInstancePtr, &GDExtensionPropertyInfo)

pub type GDExtensionClassPropertyCanRevert = fn (GDExtensionClassInstancePtr, &StringName) GDExtensionBool

pub type GDExtensionClassPropertyGetRevert = fn (GDExtensionClassInstancePtr, &StringName, &Variant) GDExtensionBool

pub type GDExtensionClassValidateProperty = fn (GDExtensionClassInstancePtr, &GDExtensionPropertyInfo) GDExtensionBool

pub type GDExtensionClassNotification = fn (GDExtensionClassInstancePtr, int)

pub type GDExtensionClassNotification2 = fn (GDExtensionClassInstancePtr, int, &GDExtensionBool)

pub type GDExtensionClassToString = fn (GDExtensionClassInstancePtr, &GDExtensionBool, &String)

pub type GDExtensionClassReference = fn (GDExtensionClassInstancePtr)

pub type GDExtensionClassUnreference = fn (GDExtensionClassInstancePtr)

pub type GDExtensionClassCallVirtual = fn (GDExtensionClassInstancePtr, &GDExtensionConstTypePtr, GDExtensionTypePtr)

pub type GDExtensionClassCreateInstance = fn (voidptr) &Object

pub type GDExtensionClassCreateInstance2 = fn (voidptr, &GDExtensionBool) &Object

pub type GDExtensionClassFreeInstance = fn (voidptr, GDExtensionClassInstancePtr)

pub type GDExtensionClassRecreateInstance = fn (voidptr, &Object) GDExtensionClassInstancePtr

pub type GDExtensionClassGetVirtual = fn (voidptr, &StringName) GDExtensionClassCallVirtual

pub type GDExtensionClassGetVirtual2 = fn (voidptr, &StringName, int) GDExtensionClassCallVirtual

pub type GDExtensionClassGetVirtualCallData = fn (voidptr, &StringName)

pub type GDExtensionClassGetVirtualCallData2 = fn (voidptr, &StringName, int)

pub type GDExtensionClassCallVirtualWithData = fn (GDExtensionClassInstancePtr, &StringName, voidptr, &GDExtensionConstTypePtr, GDExtensionTypePtr)

pub struct GDExtensionClassCreationInfo {
	is_virtual               GDExtensionBool
	is_abstract              GDExtensionBool
	set_func                 GDExtensionClassSet               = unsafe { nil }
	get_func                 GDExtensionClassGet               = unsafe { nil }
	get_property_list_func   GDExtensionClassGetPropertyList   = unsafe { nil }
	free_property_list_func  GDExtensionClassFreePropertyList  = unsafe { nil }
	property_can_revert_func GDExtensionClassPropertyCanRevert = unsafe { nil }
	property_get_revert_func GDExtensionClassPropertyGetRevert = unsafe { nil }
	notification_func        GDExtensionClassNotification      = unsafe { nil }
	to_string_func           GDExtensionClassToString          = unsafe { nil }
	reference_func           GDExtensionClassReference         = unsafe { nil }
	unreference_func         GDExtensionClassUnreference       = unsafe { nil }
	create_instance_func     GDExtensionClassCreateInstance    = unsafe { nil }
	free_instance_func       GDExtensionClassFreeInstance      = unsafe { nil }
	get_virtual_func         GDExtensionClassGetVirtual        = unsafe { nil }
	get_rid_func             GDExtensionClassGetRID            = unsafe { nil }
	class_userdata           voidptr
}

pub struct GDExtensionClassCreationInfo2 {
	is_virtual                  GDExtensionBool
	is_abstract                 GDExtensionBool
	is_exposed                  GDExtensionBool
	set_func                    GDExtensionClassSet                 = unsafe { nil }
	get_func                    GDExtensionClassGet                 = unsafe { nil }
	get_property_list_func      GDExtensionClassGetPropertyList     = unsafe { nil }
	free_property_list_func     GDExtensionClassFreePropertyList    = unsafe { nil }
	property_can_revert_func    GDExtensionClassPropertyCanRevert   = unsafe { nil }
	property_get_revert_func    GDExtensionClassPropertyGetRevert   = unsafe { nil }
	validate_property_func      GDExtensionClassValidateProperty    = unsafe { nil }
	notification_func           GDExtensionClassNotification2       = unsafe { nil }
	to_string_func              GDExtensionClassToString            = unsafe { nil }
	reference_func              GDExtensionClassReference           = unsafe { nil }
	unreference_func            GDExtensionClassUnreference         = unsafe { nil }
	create_instance_func        GDExtensionClassCreateInstance      = unsafe { nil }
	free_instance_func          GDExtensionClassFreeInstance        = unsafe { nil }
	recreate_instance_func      GDExtensionClassRecreateInstance    = unsafe { nil }
	get_virtual_func            GDExtensionClassGetVirtual          = unsafe { nil }
	get_virtual_call_data_func  GDExtensionClassGetVirtualCallData  = unsafe { nil }
	call_virtual_with_data_func GDExtensionClassCallVirtualWithData = unsafe { nil }
	get_rid_func                GDExtensionClassGetRID              = unsafe { nil }
	class_userdata              voidptr
}

pub struct GDExtensionClassCreationInfo3 {
	is_virtual                  GDExtensionBool
	is_abstract                 GDExtensionBool
	is_exposed                  GDExtensionBool
	is_runtime                  GDExtensionBool
	icon_path                   GDExtensionConstStringPtr
	set_func                    GDExtensionClassSet                 = unsafe { nil }
	get_func                    GDExtensionClassGet                 = unsafe { nil }
	get_property_list_func      GDExtensionClassGetPropertyList     = unsafe { nil }
	free_property_list_func     GDExtensionClassFreePropertyList    = unsafe { nil }
	property_can_revert_func    GDExtensionClassPropertyCanRevert   = unsafe { nil }
	property_get_revert_func    GDExtensionClassPropertyGetRevert   = unsafe { nil }
	validate_property_func      GDExtensionClassValidateProperty    = unsafe { nil }
	notification_func           GDExtensionClassNotification2       = unsafe { nil }
	to_string_func              GDExtensionClassToString            = unsafe { nil }
	reference_func              GDExtensionClassReference           = unsafe { nil }
	unreference_func            GDExtensionClassUnreference         = unsafe { nil }
	create_instance_func        GDExtensionClassCreateInstance      = unsafe { nil }
	free_instance_func          GDExtensionClassFreeInstance        = unsafe { nil }
	recreate_instance_func      GDExtensionClassRecreateInstance    = unsafe { nil }
	get_virtual_func            GDExtensionClassGetVirtual          = unsafe { nil }
	get_virtual_call_data_func  GDExtensionClassGetVirtualCallData  = unsafe { nil }
	call_virtual_with_data_func GDExtensionClassCallVirtualWithData = unsafe { nil }
	get_rid_func                GDExtensionClassGetRID              = unsafe { nil }
	class_userdata              voidptr
}

pub struct GDExtensionClassCreationInfo4 {
	// TEMP
pub:
	is_virtual                  GDExtensionBool
	is_abstract                 GDExtensionBool
	is_exposed                  GDExtensionBool
	is_runtime                  GDExtensionBool
	icon_path                   GDExtensionConstStringPtr
	set_func                    GDExtensionClassSet                 = unsafe { nil }
	get_func                    GDExtensionClassGet                 = unsafe { nil }
	get_property_list_func      GDExtensionClassGetPropertyList     = unsafe { nil }
	free_property_list_func     GDExtensionClassFreePropertyList    = unsafe { nil }
	property_can_revert_func    GDExtensionClassPropertyCanRevert   = unsafe { nil }
	property_get_revert_func    GDExtensionClassPropertyGetRevert   = unsafe { nil }
	validate_property_func      GDExtensionClassValidateProperty    = unsafe { nil }
	notification_func           GDExtensionClassNotification2       = unsafe { nil }
	to_string_func              GDExtensionClassToString            = unsafe { nil }
	reference_func              GDExtensionClassReference           = unsafe { nil }
	unreference_func            GDExtensionClassUnreference         = unsafe { nil }
	create_instance_func        GDExtensionClassCreateInstance2     = unsafe { nil }
	free_instance_func          GDExtensionClassFreeInstance        = unsafe { nil }
	recreate_instance_func      GDExtensionClassRecreateInstance    = unsafe { nil }
	get_virtual_func            GDExtensionClassGetVirtual2         = unsafe { nil }
	get_virtual_call_data_func  GDExtensionClassGetVirtualCallData2 = unsafe { nil }
	call_virtual_with_data_func GDExtensionClassCallVirtualWithData = unsafe { nil }
	class_userdata              voidptr
}

pub type GDExtensionClassLibraryPtr = voidptr

pub enum GDExtensionClassMethodFlags {
	gdextension_method_flag_normal  = 1
	gdextension_method_flag_editor  = 2
	gdextension_method_flag_const   = 4
	gdextension_method_flag_virtual = 8
	gdextension_method_flag_vararg  = 16
	gdextension_method_flag_static  = 32
}

pub enum GDExtensionClassMethodArgumentMetadata {
	gdextension_method_argument_metadata_none
	gdextension_method_argument_metadata_int_is_int8
	gdextension_method_argument_metadata_int_is_int16
	gdextension_method_argument_metadata_int_is_int32
	gdextension_method_argument_metadata_int_is_int64
	gdextension_method_argument_metadata_int_is_uint8
	gdextension_method_argument_metadata_int_is_uint16
	gdextension_method_argument_metadata_int_is_uint32
	gdextension_method_argument_metadata_int_is_uint64
	gdextension_method_argument_metadata_real_is_float
	gdextension_method_argument_metadata_real_is_double
}

pub type GDExtensionClassMethodCall = fn (voidptr, GDExtensionClassInstancePtr, &&Variant, GDExtensionInt, &Variant, &GDExtensionCallError)

pub type GDExtensionClassMethodValidatedCall = fn (voidptr, GDExtensionClassInstancePtr, &&Variant, &Variant)

pub type GDExtensionClassMethodPtrCall = fn (voidptr, GDExtensionClassInstancePtr, &GDExtensionConstTypePtr, GDExtensionTypePtr)

pub struct GDExtensionClassMethodInfo {
	// TEMP
pub:
	name                   &StringName
	method_userdata        voidptr
	call_func              GDExtensionClassMethodCall    = unsafe { nil }
	ptrcall_func           GDExtensionClassMethodPtrCall = unsafe { nil }
	method_flags           GDExtensionClassMethodFlags
	has_return_value       GDExtensionBool
	return_value_info      &GDExtensionPropertyInfo
	return_value_metadata  GDExtensionClassMethodArgumentMetadata
	argument_count         u32
	arguments_info         &GDExtensionPropertyInfo
	arguments_metadata     &GDExtensionClassMethodArgumentMetadata
	default_argument_count u32
	default_arguments      &&Variant
}

pub struct GDExtensionCallableCustomInfo2 {
	callable_userdata       voidptr
	token                   GDExtensionClassLibraryPtr
	object_id               GDObjectInstanceID
	call_func               CallableCustomCall             = unsafe { nil }
	is_valid_func           CallableCustomIsValid          = unsafe { nil }
	free_func               CallableCustomFree             = unsafe { nil }
	hash_func               CallableCustomHash             = unsafe { nil }
	equal_func              CallableCustomEqual            = unsafe { nil }
	less_than_func          CallableCustomLessThan         = unsafe { nil }
	to_string_func          CallableCustomToString         = unsafe { nil }
	get_argument_count_func CallableCustomGetArgumentCount = unsafe { nil }
}

// pub type CallableFn = fn ()

// pub type CallableFn = fn (Variant)

pub type CallableFn = fn (...ToVariant)

@[heap]
struct CallableCtx {
	func CallableFn = unsafe { nil }
}

pub type CallableCustomCall = fn (voidptr, &&Variant, GDExtensionInt, &Variant, &GDExtensionCallError)

pub type CallableCustomIsValid = fn (voidptr) GDExtensionBool

pub type CallableCustomFree = fn (voidptr)

pub type CallableCustomHash = fn (voidptr) u32

pub type CallableCustomEqual = fn (voidptr, voidptr) GDExtensionBool

pub type CallableCustomLessThan = fn (voidptr, voidptr) GDExtensionBool

pub type CallableCustomToString = fn (voidptr, &GDExtensionBool, GDExtensionUninitializedStringPtr)

pub type CallableCustomGetArgumentCount = fn (voidptr, &GDExtensionBool) GDExtensionInt

pub type GDExtensionScriptInstanceDataPtr = usize
pub type GDExtensionScriptInstanceSet = fn (GDExtensionScriptInstanceDataPtr, &StringName, &Variant) GDExtensionBool

pub type GDExtensionScriptInstanceGet = fn (GDExtensionScriptInstanceDataPtr, &StringName, &Variant) GDExtensionBool

pub type GDExtensionScriptInstanceGetPropertyList = fn (GDExtensionScriptInstanceDataPtr, &u32) &GDExtensionPropertyInfo

pub type GDExtensionScriptInstanceFreePropertyList = fn (GDExtensionScriptInstanceDataPtr, &GDExtensionPropertyInfo)

pub type GDExtensionScriptInstanceFreePropertyList2 = fn (GDExtensionScriptInstanceDataPtr, &GDExtensionPropertyInfo, &u32)

pub type GDExtensionScriptInstanceGetClassCategory = fn (GDExtensionScriptInstanceDataPtr, &GDExtensionPropertyInfo) GDExtensionBool

pub type GDExtensionScriptInstanceGetPropertyType = fn (GDExtensionScriptInstanceDataPtr, &StringName, &GDExtensionBool) GDExtensionVariantType

pub type GDExtensionScriptInstanceValidateProperty = fn (GDExtensionScriptInstanceDataPtr, &GDExtensionPropertyInfo) GDExtensionBool

pub type GDExtensionScriptInstancePropertyCanRevert = fn (GDExtensionScriptInstanceDataPtr, &StringName) GDExtensionBool

pub type GDExtensionScriptInstancePropertyGetRevert = fn (GDExtensionScriptInstanceDataPtr, &StringName, &Variant) GDExtensionBool

pub type GDExtensionScriptInstanceGetOwner = fn (GDExtensionScriptInstanceDataPtr) &Object

pub type GDExtensionScriptInstancePropertyStateAdd = fn (&StringName, &Variant, voidptr)

pub type GDExtensionScriptInstanceGetPropertyState = fn (GDExtensionScriptInstanceDataPtr, GDExtensionScriptInstancePropertyStateAdd, voidptr)

pub type GDExtensionScriptInstanceGetMethodList = fn (GDExtensionScriptInstanceDataPtr, &u32) &GDExtensionMethodInfo

pub type GDExtensionScriptInstanceFreeMethodList = fn (GDExtensionScriptInstanceDataPtr, &GDExtensionMethodInfo)

pub type GDExtensionScriptInstanceFreeMethodList2 = fn (GDExtensionScriptInstanceDataPtr, &GDExtensionMethodInfo, &u32)

pub type GDExtensionScriptInstanceHasMethod = fn (GDExtensionScriptInstanceDataPtr, &StringName) GDExtensionBool

pub type GDExtensionScriptInstanceGetMethodArgumentCount = fn (GDExtensionScriptInstanceDataPtr, &StringName, &GDExtensionBool) GDExtensionInt

pub type GDExtensionScriptInstanceCall = fn (GDExtensionScriptInstanceDataPtr, &StringName, &&Variant, GDExtensionInt, &Variant, &GDExtensionCallError)

pub type GDExtensionScriptInstanceNotification = fn (GDExtensionScriptInstanceDataPtr, int)

pub type GDExtensionScriptInstanceNotification2 = fn (GDExtensionScriptInstanceDataPtr, int, &GDExtensionBool)

pub type GDExtensionScriptInstanceToString = fn (GDExtensionScriptInstanceDataPtr, &GDExtensionBool, &String)

pub type GDExtensionScriptInstanceRefCountIncremented = fn (GDExtensionScriptInstanceDataPtr)

pub type GDExtensionScriptInstanceRefCountDecremented = fn (GDExtensionScriptInstanceDataPtr) GDExtensionBool

pub type GDExtensionScriptInstanceGetScript = fn (GDExtensionScriptInstanceDataPtr) &Object

pub type GDExtensionScriptInstanceIsPlaceholder = fn (GDExtensionScriptInstanceDataPtr) GDExtensionBool

pub type GDExtensionScriptLanguagePtr = voidptr
pub type GDExtensionScriptInstanceGetLanguage = fn (GDExtensionScriptInstanceDataPtr) GDExtensionScriptLanguagePtr

pub type GDExtensionScriptInstanceFree = fn (GDExtensionScriptInstanceDataPtr)

pub type GDExtensionScriptInstancePtr = voidptr

pub struct GDExtensionScriptInstanceInfo {
	set_func                  GDExtensionScriptInstanceSet                 = unsafe { nil }
	get_func                  GDExtensionScriptInstanceGet                 = unsafe { nil }
	get_property_list_func    GDExtensionScriptInstanceGetPropertyList     = unsafe { nil }
	free_property_list_func   GDExtensionScriptInstanceFreePropertyList    = unsafe { nil }
	property_can_revert_func  GDExtensionScriptInstancePropertyCanRevert   = unsafe { nil }
	property_get_revert_func  GDExtensionScriptInstancePropertyGetRevert   = unsafe { nil }
	get_owner_func            GDExtensionScriptInstanceGetOwner            = unsafe { nil }
	get_property_state_func   GDExtensionScriptInstanceGetPropertyState    = unsafe { nil }
	get_method_list_func      GDExtensionScriptInstanceGetMethodList       = unsafe { nil }
	free_method_list_func     GDExtensionScriptInstanceFreeMethodList      = unsafe { nil }
	get_property_type_func    GDExtensionScriptInstanceGetPropertyType     = unsafe { nil }
	has_method_func           GDExtensionScriptInstanceHasMethod           = unsafe { nil }
	call_func                 GDExtensionScriptInstanceCall                = unsafe { nil }
	notification_func         GDExtensionScriptInstanceNotification        = unsafe { nil }
	to_string_func            GDExtensionScriptInstanceToString            = unsafe { nil }
	refcount_incremented_func GDExtensionScriptInstanceRefCountIncremented = unsafe { nil }
	refcount_decremented_func GDExtensionScriptInstanceRefCountDecremented = unsafe { nil }
	get_script_func           GDExtensionScriptInstanceGetScript           = unsafe { nil }
	is_placeholder_func       GDExtensionScriptInstanceIsPlaceholder       = unsafe { nil }
	set_fallback_func         GDExtensionScriptInstanceSet                 = unsafe { nil }
	get_fallback_func         GDExtensionScriptInstanceGet                 = unsafe { nil }
	get_language_func         GDExtensionScriptInstanceGetLanguage         = unsafe { nil }
	free_func                 GDExtensionScriptInstanceFree                = unsafe { nil }
}

pub struct GDExtensionScriptInstanceInfo3 {
	set_func                       GDExtensionScriptInstanceSet                    = unsafe { nil }
	get_func                       GDExtensionScriptInstanceGet                    = unsafe { nil }
	get_property_list_func         GDExtensionScriptInstanceGetPropertyList        = unsafe { nil }
	free_property_list_func        GDExtensionScriptInstanceFreePropertyList2      = unsafe { nil }
	get_class_category_func        GDExtensionScriptInstanceGetClassCategory       = unsafe { nil }
	property_can_revert_func       GDExtensionScriptInstancePropertyCanRevert      = unsafe { nil }
	property_get_revert_func       GDExtensionScriptInstancePropertyGetRevert      = unsafe { nil }
	get_owner_func                 GDExtensionScriptInstanceGetOwner               = unsafe { nil }
	get_property_state_func        GDExtensionScriptInstanceGetPropertyState       = unsafe { nil }
	get_method_list_func           GDExtensionScriptInstanceGetMethodList          = unsafe { nil }
	free_method_list_func          GDExtensionScriptInstanceFreeMethodList2        = unsafe { nil }
	get_property_type_func         GDExtensionScriptInstanceGetPropertyType        = unsafe { nil }
	validate_property_func         GDExtensionScriptInstanceValidateProperty       = unsafe { nil }
	has_method_func                GDExtensionScriptInstanceHasMethod              = unsafe { nil }
	get_method_argument_count_func GDExtensionScriptInstanceGetMethodArgumentCount = unsafe { nil }
	call_func                      GDExtensionScriptInstanceCall                   = unsafe { nil }
	notification_func              GDExtensionScriptInstanceNotification2          = unsafe { nil }
	to_string_func                 GDExtensionScriptInstanceToString               = unsafe { nil }
	refcount_incremented_func      GDExtensionScriptInstanceRefCountIncremented    = unsafe { nil }
	refcount_decremented_func      GDExtensionScriptInstanceRefCountDecremented    = unsafe { nil }
	get_script_func                GDExtensionScriptInstanceGetScript              = unsafe { nil }
	is_placeholder_func            GDExtensionScriptInstanceIsPlaceholder          = unsafe { nil }
	set_fallback_func              GDExtensionScriptInstanceSet                    = unsafe { nil }
	get_fallback_func              GDExtensionScriptInstanceGet                    = unsafe { nil }
	get_language_func              GDExtensionScriptInstanceGetLanguage            = unsafe { nil }
	free_func                      GDExtensionScriptInstanceFree                   = unsafe { nil }
}

pub type GDExtensionInitFn = fn (voidptr, GDExtensionInitializationLevel)

pub struct GDExtensionInitialization {
	minimum_initialization_level GDExtensionInitializationLevel
	userdata                     voidptr
pub mut:
	initialize   GDExtensionInitFn = unsafe { nil }
	deinitialize GDExtensionInitFn = unsafe { nil }
}

pub type GDExtensionInterfaceFunctionPtr = fn ()

pub type GDExtensionInterfaceGetProcAddress = fn (&i8) GDExtensionInterfaceFunctionPtr

pub type GDExtensionInitializationFunction = fn (GDExtensionInterfaceGetProcAddress, GDExtensionClassLibraryPtr, &GDExtensionInitialization) GDExtensionBool

pub struct GDExtensionGodotVersion {
pub mut:
	major   u32
	minor   u32
	patch   u32
	string_ &i8 = unsafe { nil }
}

pub struct GDExtensionGodotVersion2 {
pub mut:
	major     u32
	minor     u32
	patch     u32
	hex       u32
	status    &i8
	build     &i8
	hash      &i8
	timestamp u64
	string_   &i8 = unsafe { nil }
}

pub type GDExtensionInterfaceGetGodotVersion = fn (&GDExtensionGodotVersion)

pub type GDExtensionInterfaceGetGodotVersion2 = fn (&GDExtensionGodotVersion2)

pub type GDExtensionInterfaceMemAlloc = fn (usize) voidptr

pub type GDExtensionInterfaceMemRealloc = fn (voidptr, usize) voidptr

pub type GDExtensionInterfaceMemFree = fn (voidptr)

pub type GDExtensionInterfacePrintError = fn (&i8, &i8, &i8, int, GDExtensionBool)

pub type GDExtensionInterfacePrintErrorWithMessage = fn (&i8, &i8, &i8, &i8, int, GDExtensionBool)

pub type GDExtensionInterfacePrintWarning = fn (&i8, &i8, &i8, int, GDExtensionBool)

pub type GDExtensionInterfacePrintWarningWithMessage = fn (&i8, &i8, &i8, &i8, int, GDExtensionBool)

pub type GDExtensionInterfacePrintScriptError = fn (&i8, &i8, &i8, int, GDExtensionBool)

pub type GDExtensionInterfacePrintScriptErrorWithMessage = fn (&i8, &i8, &i8, &i8, int, GDExtensionBool)

pub type GDExtensionInterfaceGetNativeStructSize = fn (&StringName) u64

pub type GDExtensionInterfaceVariantNewCopy = fn (GDExtensionUninitializedVariantPtr, &Variant)

pub type GDExtensionInterfaceVariantNewNil = fn (GDExtensionUninitializedVariantPtr)

pub type GDExtensionInterfaceVariantDestroy = fn (&Variant)

pub type GDExtensionInterfaceVariantCall = fn (&Variant, &StringName, &&Variant, GDExtensionInt, GDExtensionUninitializedVariantPtr, &GDExtensionCallError)

pub type GDExtensionInterfaceVariantCallStatic = fn (GDExtensionVariantType, &StringName, &&Variant, GDExtensionInt, GDExtensionUninitializedVariantPtr, &GDExtensionCallError)

pub type GDExtensionInterfaceVariantEvaluate = fn (GDExtensionVariantOperator, &Variant, &Variant, GDExtensionUninitializedVariantPtr, &GDExtensionBool)

pub type GDExtensionInterfaceVariantSet = fn (&Variant, &Variant, &Variant, &GDExtensionBool)

pub type GDExtensionInterfaceVariantSetNamed = fn (&Variant, &StringName, &Variant, &GDExtensionBool)

pub type GDExtensionInterfaceVariantSetKeyed = fn (&Variant, &Variant, &Variant, &GDExtensionBool)

pub type GDExtensionInterfaceVariantSetIndexed = fn (&Variant, GDExtensionInt, &Variant, &GDExtensionBool, &GDExtensionBool)

pub type GDExtensionInterfaceVariantGet = fn (&Variant, &Variant, GDExtensionUninitializedVariantPtr, &GDExtensionBool)

pub type GDExtensionInterfaceVariantGetNamed = fn (&Variant, &StringName, GDExtensionUninitializedVariantPtr, &GDExtensionBool)

pub type GDExtensionInterfaceVariantGetKeyed = fn (&Variant, &Variant, GDExtensionUninitializedVariantPtr, &GDExtensionBool)

pub type GDExtensionInterfaceVariantGetIndexed = fn (&Variant, GDExtensionInt, GDExtensionUninitializedVariantPtr, &GDExtensionBool, &GDExtensionBool)

pub type GDExtensionInterfaceVariantIterInit = fn (&Variant, GDExtensionUninitializedVariantPtr, &GDExtensionBool) GDExtensionBool

pub type GDExtensionInterfaceVariantIterNext = fn (&Variant, &Variant, &GDExtensionBool) GDExtensionBool

pub type GDExtensionInterfaceVariantIterGet = fn (&Variant, &Variant, GDExtensionUninitializedVariantPtr, &GDExtensionBool)

pub type GDExtensionInterfaceVariantHash = fn (&Variant) GDExtensionInt

pub type GDExtensionInterfaceVariantRecursiveHash = fn (&Variant, GDExtensionInt) GDExtensionInt

pub type GDExtensionInterfaceVariantHashCompare = fn (&Variant, &Variant) GDExtensionBool

pub type GDExtensionInterfaceVariantBooleanize = fn (&Variant) GDExtensionBool

pub type GDExtensionInterfaceVariantDuplicate = fn (&Variant, &Variant, GDExtensionBool)

pub type GDExtensionInterfaceVariantStringify = fn (&Variant, &String)

pub type GDExtensionInterfaceVariantGetType = fn (&Variant) GDExtensionVariantType

pub type GDExtensionInterfaceVariantHasMethod = fn (&Variant, &StringName) GDExtensionBool

pub type GDExtensionInterfaceVariantHasMember = fn (GDExtensionVariantType, &StringName) GDExtensionBool

pub type GDExtensionInterfaceVariantHasKey = fn (&Variant, &Variant, &GDExtensionBool) GDExtensionBool

pub type GDExtensionInterfaceVariantGetTypeName = fn (GDExtensionVariantType, GDExtensionUninitializedStringPtr)

pub type GDExtensionInterfaceVariantCanConvert = fn (GDExtensionVariantType, GDExtensionVariantType) GDExtensionBool

pub type GDExtensionInterfaceVariantCanConvertStrict = fn (GDExtensionVariantType, GDExtensionVariantType) GDExtensionBool

pub type GDExtensionInterfaceGetVariantFromTypeConstructor = fn (GDExtensionVariantType) GDExtensionVariantFromTypeConstructorFunc

pub type GDExtensionInterfaceGetVariantToTypeConstructor = fn (GDExtensionVariantType) GDExtensionTypeFromVariantConstructorFunc

pub type GDExtensionInterfaceVariantGetPtrOperatorEvaluator = fn (GDExtensionVariantOperator, GDExtensionVariantType, GDExtensionVariantType) GDExtensionPtrOperatorEvaluator

pub type GDExtensionInterfaceVariantGetPtrBuiltinMethod = fn (GDExtensionVariantType, &StringName, GDExtensionInt) GDExtensionPtrBuiltInMethod

pub type GDExtensionInterfaceVariantGetPtrConstructor = fn (GDExtensionVariantType, int) GDExtensionPtrConstructor

pub type GDExtensionInterfaceVariantGetPtrDestructor = fn (GDExtensionVariantType) GDExtensionPtrDestructor

pub type GDExtensionInterfaceVariantConstruct = fn (GDExtensionVariantType, GDExtensionUninitializedVariantPtr, &&Variant, int, &GDExtensionCallError)

pub type GDExtensionInterfaceVariantGetPtrSetter = fn (GDExtensionVariantType, &StringName) GDExtensionPtrSetter

pub type GDExtensionInterfaceVariantGetPtrGetter = fn (GDExtensionVariantType, &StringName) GDExtensionPtrGetter

pub type GDExtensionInterfaceVariantGetPtrIndexedSetter = fn (GDExtensionVariantType) GDExtensionPtrIndexedSetter

pub type GDExtensionInterfaceVariantGetPtrIndexedGetter = fn (GDExtensionVariantType) GDExtensionPtrIndexedGetter

pub type GDExtensionInterfaceVariantGetPtrKeyedSetter = fn (GDExtensionVariantType) GDExtensionPtrKeyedSetter

pub type GDExtensionInterfaceVariantGetPtrKeyedGetter = fn (GDExtensionVariantType) GDExtensionPtrKeyedGetter

pub type GDExtensionInterfaceVariantGetPtrKeyedChecker = fn (GDExtensionVariantType) GDExtensionPtrKeyedChecker

pub type GDExtensionInterfaceVariantGetConstantValue = fn (GDExtensionVariantType, &StringName, GDExtensionUninitializedVariantPtr)

pub type GDExtensionInterfaceVariantGetPtrUtilityFunction = fn (&StringName, GDExtensionInt) GDExtensionPtrUtilityFunction

pub type GDExtensionInterfaceStringNewWithLatin1Chars = fn (GDExtensionUninitializedStringPtr, &i8)

pub type GDExtensionInterfaceStringNewWithUtf8Chars = fn (GDExtensionUninitializedStringPtr, &i8)

pub type GDExtensionInterfaceStringNewWithUtf16Chars = fn (GDExtensionUninitializedStringPtr, &i16)

pub type GDExtensionInterfaceStringNewWithUtf32Chars = fn (GDExtensionUninitializedStringPtr, &i32)

pub type GDExtensionInterfaceStringNewWithWideChars = fn (GDExtensionUninitializedStringPtr, &u16)

pub type GDExtensionInterfaceStringNewWithLatin1CharsAndLen = fn (GDExtensionUninitializedStringPtr, &i8, GDExtensionInt)

pub type GDExtensionInterfaceStringNewWithUtf8CharsAndLen = fn (GDExtensionUninitializedStringPtr, &i8, GDExtensionInt)

pub type GDExtensionInterfaceStringNewWithUtf8CharsAndLen2 = fn (GDExtensionUninitializedStringPtr, &i8, GDExtensionInt) GDExtensionInt

pub type GDExtensionInterfaceStringNewWithUtf16CharsAndLen = fn (GDExtensionUninitializedStringPtr, &u16, GDExtensionInt)

pub type GDExtensionInterfaceStringNewWithUtf16CharsAndLen2 = fn (GDExtensionUninitializedStringPtr, &u16, GDExtensionInt, GDExtensionBool) GDExtensionInt

pub type GDExtensionInterfaceStringNewWithUtf32CharsAndLen = fn (GDExtensionUninitializedStringPtr, &u32, GDExtensionInt)

pub type GDExtensionInterfaceStringNewWithWideCharsAndLen = fn (GDExtensionUninitializedStringPtr, &u16, GDExtensionInt)

pub type GDExtensionInterfaceStringToLatin1Chars = fn (&String, &i8, GDExtensionInt) GDExtensionInt

pub type GDExtensionInterfaceStringToUtf8Chars = fn (&String, &i8, GDExtensionInt) GDExtensionInt

pub type GDExtensionInterfaceStringToUtf16Chars = fn (&String, &u16, GDExtensionInt) GDExtensionInt

pub type GDExtensionInterfaceStringToUtf32Chars = fn (&String, &u32, GDExtensionInt) GDExtensionInt

pub type GDExtensionInterfaceStringToWideChars = fn (&String, &u16, GDExtensionInt) GDExtensionInt

pub type GDExtensionInterfaceStringOperatorIndex = fn (&String, GDExtensionInt) &u32

pub type GDExtensionInterfaceStringOperatorIndexConst = fn (&String, GDExtensionInt) &u32

pub type GDExtensionInterfaceStringOperatorPlusEqString = fn (&String, &String)

pub type GDExtensionInterfaceStringOperatorPlusEqChar = fn (&String, u32)

pub type GDExtensionInterfaceStringOperatorPlusEqCstr = fn (&String, &i8)

pub type GDExtensionInterfaceStringOperatorPlusEqWcstr = fn (&String, &u16)

pub type GDExtensionInterfaceStringOperatorPlusEqC32str = fn (&String, &u32)

pub type GDExtensionInterfaceXmlParserOpenBuffer = fn (&Object, &u8, usize) GDExtensionInt

pub type GDExtensionInterfaceFileAccessStoreBuffer = fn (&Object, &u8, u64)

pub type GDExtensionInterfaceFileAccessGetBuffer = fn (&Object, &u8, u64) u64

pub type GDExtensionInterfacePackedByteArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &u8

pub type GDExtensionInterfacePackedColorArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) GDExtensionTypePtr

pub type GDExtensionInterfacePackedColorArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) GDExtensionTypePtr

pub type GDExtensionInterfacePackedFloat32ArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) &f32

pub type GDExtensionInterfacePackedFloat32ArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &f32

pub type GDExtensionInterfacePackedFloat64ArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) &f64

pub type GDExtensionInterfacePackedFloat64ArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &f64

pub type GDExtensionInterfacePackedInt32ArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) &int

pub type GDExtensionInterfacePackedInt32ArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &int

pub type GDExtensionInterfacePackedInt64ArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) &i64

pub type GDExtensionInterfacePackedInt64ArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &i64

pub type GDExtensionInterfacePackedStringArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) &String

pub type GDExtensionInterfacePackedStringArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &String

pub type GDExtensionInterfacePackedVector2ArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) GDExtensionTypePtr

pub type GDExtensionInterfacePackedVector2ArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) GDExtensionTypePtr

pub type GDExtensionInterfacePackedVector3ArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) GDExtensionTypePtr

pub type GDExtensionInterfacePackedVector3ArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) GDExtensionTypePtr

pub type GDExtensionInterfaceArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) &Variant

pub type GDExtensionInterfaceArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &Variant

pub type GDExtensionInterfaceArrayRef = fn (GDExtensionTypePtr, GDExtensionConstTypePtr)

pub type GDExtensionInterfaceArraySetTyped = fn (GDExtensionTypePtr, GDExtensionVariantType, &StringName, &Variant)

pub type GDExtensionInterfaceDictionaryOperatorIndex = fn (GDExtensionTypePtr, &Variant) &Variant

pub type GDExtensionInterfaceDictionaryOperatorIndexConst = fn (GDExtensionConstTypePtr, &Variant) &Variant

pub type GDExtensionInterfaceObjectMethodBindCall = fn (GDExtensionMethodBindPtr, &Object, &&Variant, GDExtensionInt, GDExtensionUninitializedVariantPtr, &GDExtensionCallError)

pub type GDExtensionInterfaceObjectMethodBindPtrcall = fn (GDExtensionMethodBindPtr, &Object, &GDExtensionConstTypePtr, GDExtensionTypePtr)

pub type GDExtensionInterfaceObjectDestroy = fn (&Object)

pub type GDExtensionInterfaceGlobalGetSingleton = fn (&StringName) &Object

pub type GDExtensionInterfaceObjectGetInstanceBinding = fn (&Object, voidptr, &GDExtensionInstanceBindingCallbacks) voidptr

pub type GDExtensionInterfaceObjectSetInstanceBinding = fn (&Object, voidptr, voidptr, &GDExtensionInstanceBindingCallbacks)

pub type GDExtensionInterfaceObjectSetInstance = fn (&Object, &StringName, GDExtensionClassInstancePtr)

pub type GDExtensionInterfaceObjectGetClassName = fn (&Object, GDExtensionClassLibraryPtr, GDExtensionUninitializedStringNamePtr) GDExtensionBool

pub type GDExtensionInterfaceObjectCastTo = fn (&Object, voidptr) &Object

pub type GDExtensionInterfaceObjectGetInstanceFromId = fn (GDObjectInstanceID) &Object

pub type GDExtensionInterfaceObjectGetInstanceId = fn (&Object) GDObjectInstanceID

pub type GDExtensionInterfaceRefGetObject = fn (GDExtensionConstRefPtr) &Object

pub type GDExtensionInterfaceRefSetObject = fn (GDExtensionRefPtr, &Object)

pub type GDExtensionInterfaceScriptInstanceCreate = fn (&GDExtensionScriptInstanceInfo, GDExtensionScriptInstanceDataPtr) GDExtensionScriptInstancePtr

pub type GDExtensionInterfaceScriptInstanceCreate3 = fn (&GDExtensionScriptInstanceInfo3, GDExtensionScriptInstanceDataPtr) GDExtensionScriptInstancePtr

pub type GDExtensionInterfaceCallableCustomCreate2 = fn (GDExtensionUninitializedTypePtr, &GDExtensionCallableCustomInfo2)

pub type GDExtensionInterfaceClassdbConstructObject = fn (&StringName) &Object

pub type GDExtensionInterfaceClassdbConstructObject2 = fn (&StringName) &Object

pub type GDExtensionInterfaceClassdbGetMethodBind = fn (&StringName, &StringName, GDExtensionInt) GDExtensionMethodBindPtr

pub type GDExtensionInterfaceClassdbGetClassTag = fn (&StringName) voidptr

pub type GDExtensionInterfaceClassdbRegisterExtensionClass = fn (GDExtensionClassLibraryPtr, &StringName, &StringName, &GDExtensionClassCreationInfo)

pub type GDExtensionInterfaceClassdbRegisterExtensionClass2 = fn (GDExtensionClassLibraryPtr, &StringName, &StringName, &GDExtensionClassCreationInfo2)

pub type GDExtensionInterfaceClassdbRegisterExtensionClass3 = fn (GDExtensionClassLibraryPtr, &StringName, &StringName, &GDExtensionClassCreationInfo3)

pub type GDExtensionInterfaceClassdbRegisterExtensionClass4 = fn (GDExtensionClassLibraryPtr, &StringName, &StringName, &GDExtensionClassCreationInfo4)

pub type GDExtensionInterfaceClassdbRegisterExtensionClassMethod = fn (GDExtensionClassLibraryPtr, &StringName, &GDExtensionClassMethodInfo)

pub type GDExtensionInterfaceClassdbRegisterExtensionClassIntegerConstant = fn (GDExtensionClassLibraryPtr, &StringName, &StringName, &StringName, GDExtensionInt, GDExtensionBool)

pub type GDExtensionInterfaceClassdbRegisterExtensionClassProperty = fn (GDExtensionClassLibraryPtr, &StringName, &GDExtensionPropertyInfo, &StringName, &StringName)

pub type GDExtensionInterfaceClassdbRegisterExtensionClassPropertyGroup = fn (GDExtensionClassLibraryPtr, &StringName, &String, &String)

pub type GDExtensionInterfaceClassdbRegisterExtensionClassPropertySubgroup = fn (GDExtensionClassLibraryPtr, &StringName, &String, &String)

pub type GDExtensionInterfaceClassdbRegisterExtensionClassSignal = fn (GDExtensionClassLibraryPtr, &StringName, &StringName, &GDExtensionPropertyInfo, GDExtensionInt)

pub type GDExtensionInterfaceClassdbUnregisterExtensionClass = fn (GDExtensionClassLibraryPtr, &StringName)

pub type GDExtensionInterfaceGetLibraryPath = fn (GDExtensionClassLibraryPtr, GDExtensionUninitializedStringPtr)

pub type GDExtensionInterfaceEditorAddPlugin = fn (&StringName)

pub type GDExtensionInterfaceEditorRemovePlugin = fn (&StringName)

@[heap]
pub struct GDExtensionInterfaceFunctions {
pub:
	gpaddr                                             fn (&i8) GDExtensionInterfaceFunctionPtr                 @[required]
	clp                                                GDExtensionClassLibraryPtr                               @[required]
	get_godot_version                                  GDExtensionInterfaceGetGodotVersion                      @[required]
	get_godot_version2                                 GDExtensionInterfaceGetGodotVersion2                     @[required]
	mem_alloc                                          GDExtensionInterfaceMemAlloc                             @[required]
	mem_realloc                                        GDExtensionInterfaceMemRealloc                           @[required]
	mem_free                                           GDExtensionInterfaceMemFree                              @[required]
	print_error                                        GDExtensionInterfacePrintError                           @[required]
	print_error_with_message                           GDExtensionInterfacePrintErrorWithMessage                @[required]
	print_warning                                      GDExtensionInterfacePrintWarning                         @[required]
	print_warning_with_message                         GDExtensionInterfacePrintWarningWithMessage              @[required]
	print_script_error                                 GDExtensionInterfacePrintScriptError                     @[required]
	print_script_error_with_message                    GDExtensionInterfacePrintScriptErrorWithMessage          @[required]
	get_native_struct_size                             GDExtensionInterfaceGetNativeStructSize                  @[required]
	variant_new_copy                                   GDExtensionInterfaceVariantNewCopy                       @[required]
	variant_new_nil                                    GDExtensionInterfaceVariantNewNil                        @[required]
	variant_destroy                                    GDExtensionInterfaceVariantDestroy                       @[required]
	variant_call                                       GDExtensionInterfaceVariantCall                          @[required]
	variant_call_static                                GDExtensionInterfaceVariantCallStatic                    @[required]
	variant_evaluate                                   GDExtensionInterfaceVariantEvaluate                      @[required]
	variant_set                                        GDExtensionInterfaceVariantSet                           @[required]
	variant_set_named                                  GDExtensionInterfaceVariantSetNamed                      @[required]
	variant_set_keyed                                  GDExtensionInterfaceVariantSetKeyed                      @[required]
	variant_set_indexed                                GDExtensionInterfaceVariantSetIndexed                    @[required]
	variant_get                                        GDExtensionInterfaceVariantGet                           @[required]
	variant_get_named                                  GDExtensionInterfaceVariantGetNamed                      @[required]
	variant_get_keyed                                  GDExtensionInterfaceVariantGetKeyed                      @[required]
	variant_get_indexed                                GDExtensionInterfaceVariantGetIndexed                    @[required]
	variant_iter_init                                  GDExtensionInterfaceVariantIterInit                      @[required]
	variant_iter_next                                  GDExtensionInterfaceVariantIterNext                      @[required]
	variant_iter_get                                   GDExtensionInterfaceVariantIterGet                       @[required]
	variant_hash                                       GDExtensionInterfaceVariantHash                          @[required]
	variant_recursive_hash                             GDExtensionInterfaceVariantRecursiveHash                 @[required]
	variant_hash_compare                               GDExtensionInterfaceVariantHashCompare                   @[required]
	variant_booleanize                                 GDExtensionInterfaceVariantBooleanize                    @[required]
	variant_duplicate                                  GDExtensionInterfaceVariantDuplicate                     @[required]
	variant_stringify                                  GDExtensionInterfaceVariantStringify                     @[required]
	variant_get_type                                   GDExtensionInterfaceVariantGetType                       @[required]
	variant_has_method                                 GDExtensionInterfaceVariantHasMethod                     @[required]
	variant_has_member                                 GDExtensionInterfaceVariantHasMember                     @[required]
	variant_has_key                                    GDExtensionInterfaceVariantHasKey                        @[required]
	variant_get_type_name                              GDExtensionInterfaceVariantGetTypeName                   @[required]
	variant_can_convert                                GDExtensionInterfaceVariantCanConvert                    @[required]
	variant_can_convert_strict                         GDExtensionInterfaceVariantCanConvertStrict              @[required]
	get_variant_from_type_constructor                  GDExtensionInterfaceGetVariantFromTypeConstructor        @[required]
	get_variant_to_type_constructor                    GDExtensionInterfaceGetVariantToTypeConstructor          @[required]
	variant_get_ptr_operator_evaluator                 GDExtensionInterfaceVariantGetPtrOperatorEvaluator       @[required]
	variant_get_ptr_builtin_method                     GDExtensionInterfaceVariantGetPtrBuiltinMethod           @[required]
	variant_get_ptr_constructor                        GDExtensionInterfaceVariantGetPtrConstructor             @[required]
	variant_get_ptr_destructor                         GDExtensionInterfaceVariantGetPtrDestructor              @[required]
	variant_construct                                  GDExtensionInterfaceVariantConstruct                     @[required]
	variant_get_ptr_setter                             GDExtensionInterfaceVariantGetPtrSetter                  @[required]
	variant_get_ptr_getter                             GDExtensionInterfaceVariantGetPtrGetter                  @[required]
	variant_get_ptr_indexed_setter                     GDExtensionInterfaceVariantGetPtrIndexedSetter           @[required]
	variant_get_ptr_indexed_getter                     GDExtensionInterfaceVariantGetPtrIndexedGetter           @[required]
	variant_get_ptr_keyed_setter                       GDExtensionInterfaceVariantGetPtrKeyedSetter             @[required]
	variant_get_ptr_keyed_getter                       GDExtensionInterfaceVariantGetPtrKeyedGetter             @[required]
	variant_get_ptr_keyed_checker                      GDExtensionInterfaceVariantGetPtrKeyedChecker            @[required]
	variant_get_constant_value                         GDExtensionInterfaceVariantGetConstantValue              @[required]
	variant_get_ptr_utility_function                   GDExtensionInterfaceVariantGetPtrUtilityFunction         @[required]
	string_new_with_latin1_chars                       GDExtensionInterfaceStringNewWithLatin1Chars             @[required]
	string_new_with_utf8_chars                         GDExtensionInterfaceStringNewWithUtf8Chars               @[required]
	string_new_with_utf16_chars                        GDExtensionInterfaceStringNewWithUtf16Chars              @[required]
	string_new_with_utf32_chars                        GDExtensionInterfaceStringNewWithUtf32Chars              @[required]
	string_new_with_wide_chars                         GDExtensionInterfaceStringNewWithWideChars               @[required]
	string_new_with_latin1_chars_and_len               GDExtensionInterfaceStringNewWithLatin1CharsAndLen       @[required]
	string_new_with_utf8_chars_and_len                 GDExtensionInterfaceStringNewWithUtf8CharsAndLen         @[required]
	string_new_with_utf8_chars_and_len2                GDExtensionInterfaceStringNewWithUtf8CharsAndLen2        @[required]
	string_new_with_utf16_chars_and_len                GDExtensionInterfaceStringNewWithUtf16CharsAndLen        @[required]
	string_new_with_utf16_chars_and_len2               GDExtensionInterfaceStringNewWithUtf16CharsAndLen2       @[required]
	string_new_with_utf32_chars_and_len                GDExtensionInterfaceStringNewWithUtf32CharsAndLen        @[required]
	string_new_with_wide_chars_and_len                 GDExtensionInterfaceStringNewWithWideCharsAndLen         @[required]
	string_to_latin1_chars                             GDExtensionInterfaceStringToLatin1Chars                  @[required]
	string_to_utf8_chars                               GDExtensionInterfaceStringToUtf8Chars                    @[required]
	string_to_utf16_chars                              GDExtensionInterfaceStringToUtf16Chars                   @[required]
	string_to_utf32_chars                              GDExtensionInterfaceStringToUtf32Chars                   @[required]
	string_to_wide_chars                               GDExtensionInterfaceStringToWideChars                    @[required]
	string_operator_index                              GDExtensionInterfaceStringOperatorIndex                  @[required]
	string_operator_index_const                        GDExtensionInterfaceStringOperatorIndexConst             @[required]
	string_operator_plus_eq_string                     GDExtensionInterfaceStringOperatorPlusEqString           @[required]
	string_operator_plus_eq_char                       GDExtensionInterfaceStringOperatorPlusEqChar             @[required]
	string_operator_plus_eq_cstr                       GDExtensionInterfaceStringOperatorPlusEqCstr             @[required]
	string_operator_plus_eq_wcstr                      GDExtensionInterfaceStringOperatorPlusEqWcstr            @[required]
	string_operator_plus_eq_c32str                     GDExtensionInterfaceStringOperatorPlusEqC32str           @[required]
	xml_parser_open_buffer                             GDExtensionInterfaceXmlParserOpenBuffer                  @[required]
	file_access_store_buffer                           GDExtensionInterfaceFileAccessStoreBuffer                @[required]
	file_access_get_buffer                             GDExtensionInterfaceFileAccessGetBuffer                  @[required]
	packed_byte_array_operator_index_const             GDExtensionInterfacePackedByteArrayOperatorIndexConst    @[required]
	packed_color_array_operator_index                  GDExtensionInterfacePackedColorArrayOperatorIndex        @[required]
	packed_color_array_operator_index_const            GDExtensionInterfacePackedColorArrayOperatorIndexConst   @[required]
	packed_float32_array_operator_index                GDExtensionInterfacePackedFloat32ArrayOperatorIndex      @[required]
	packed_float32_array_operator_index_const          GDExtensionInterfacePackedFloat32ArrayOperatorIndexConst @[required]
	packed_float64_array_operator_index                GDExtensionInterfacePackedFloat64ArrayOperatorIndex      @[required]
	packed_float64_array_operator_index_const          GDExtensionInterfacePackedFloat64ArrayOperatorIndexConst @[required]
	packed_int32_array_operator_index                  GDExtensionInterfacePackedInt32ArrayOperatorIndex        @[required]
	packed_int32_array_operator_index_const            GDExtensionInterfacePackedInt32ArrayOperatorIndexConst   @[required]
	packed_int64_array_operator_index                  GDExtensionInterfacePackedInt64ArrayOperatorIndex        @[required]
	packed_int64_array_operator_index_const            GDExtensionInterfacePackedInt64ArrayOperatorIndexConst   @[required]
	packed_string_array_operator_index                 GDExtensionInterfacePackedStringArrayOperatorIndex       @[required]
	packed_string_array_operator_index_const           GDExtensionInterfacePackedStringArrayOperatorIndexConst  @[required]
	packed_vector2_array_operator_index                GDExtensionInterfacePackedVector2ArrayOperatorIndex      @[required]
	packed_vector2_array_operator_index_const          GDExtensionInterfacePackedVector2ArrayOperatorIndexConst @[required]
	packed_vector3_array_operator_index                GDExtensionInterfacePackedVector3ArrayOperatorIndex      @[required]
	packed_vector3_array_operator_index_const          GDExtensionInterfacePackedVector3ArrayOperatorIndexConst @[required]
	array_operator_index                               GDExtensionInterfaceArrayOperatorIndex                   @[required]
	array_operator_index_const                         GDExtensionInterfaceArrayOperatorIndexConst              @[required]
	array_ref                                          GDExtensionInterfaceArrayRef                                      @[required]
	array_set_typed                                    GDExtensionInterfaceArraySetTyped                                 @[required]
	dictionary_operator_index                          GDExtensionInterfaceDictionaryOperatorIndex                       @[required]
	dictionary_operator_index_const                    GDExtensionInterfaceDictionaryOperatorIndexConst                  @[required]
	object_method_bind_call                            GDExtensionInterfaceObjectMethodBindCall                          @[required]
	object_method_bind_ptrcall                         GDExtensionInterfaceObjectMethodBindPtrcall                       @[required]
	object_destroy                                     GDExtensionInterfaceObjectDestroy                                 @[required]
	global_get_singleton                               GDExtensionInterfaceGlobalGetSingleton                            @[required]
	object_get_instance_binding                        GDExtensionInterfaceObjectGetInstanceBinding                      @[required]
	object_set_instance_binding                        GDExtensionInterfaceObjectSetInstanceBinding                      @[required]
	object_set_instance                                GDExtensionInterfaceObjectSetInstance                             @[required]
	object_get_class_name                              GDExtensionInterfaceObjectGetClassName                            @[required]
	object_cast_to                                     GDExtensionInterfaceObjectCastTo                                  @[required]
	object_get_instance_from_id                        GDExtensionInterfaceObjectGetInstanceFromId                       @[required]
	object_get_instance_id                             GDExtensionInterfaceObjectGetInstanceId                           @[required]
	ref_get_object                                     GDExtensionInterfaceRefGetObject                                  @[required]
	ref_set_object                                     GDExtensionInterfaceRefSetObject                                  @[required]
	script_instance_create                             GDExtensionInterfaceScriptInstanceCreate                          @[required]
	script_instance_create3                            GDExtensionInterfaceScriptInstanceCreate3                         @[required]
	callable_custom_create2                            GDExtensionInterfaceCallableCustomCreate2                         @[required]
	classdb_construct_object                           GDExtensionInterfaceClassdbConstructObject                        @[required]
	classdb_construct_object2                          GDExtensionInterfaceClassdbConstructObject2                       @[required]
	classdb_get_method_bind                            GDExtensionInterfaceClassdbGetMethodBind                          @[required]
	classdb_get_class_tag                              GDExtensionInterfaceClassdbGetClassTag                            @[required]
	classdb_register_extension_class                   GDExtensionInterfaceClassdbRegisterExtensionClass                 @[required]
	classdb_register_extension_class2                  GDExtensionInterfaceClassdbRegisterExtensionClass2                @[required]
	classdb_register_extension_class3                  GDExtensionInterfaceClassdbRegisterExtensionClass3                @[required]
	classdb_register_extension_class4                  GDExtensionInterfaceClassdbRegisterExtensionClass4                @[required]
	classdb_register_extension_class_method            GDExtensionInterfaceClassdbRegisterExtensionClassMethod           @[required]
	classdb_register_extension_class_integer_constant  GDExtensionInterfaceClassdbRegisterExtensionClassIntegerConstant  @[required]
	classdb_register_extension_class_property          GDExtensionInterfaceClassdbRegisterExtensionClassProperty         @[required]
	classdb_register_extension_class_property_group    GDExtensionInterfaceClassdbRegisterExtensionClassPropertyGroup    @[required]
	classdb_register_extension_class_property_subgroup GDExtensionInterfaceClassdbRegisterExtensionClassPropertySubgroup @[required]
	classdb_register_extension_class_signal            GDExtensionInterfaceClassdbRegisterExtensionClassSignal           @[required]
	classdb_unregister_extension_class                 GDExtensionInterfaceClassdbUnregisterExtensionClass               @[required]
	get_library_path                                   GDExtensionInterfaceGetLibraryPath     @[required]
	editor_add_plugin                                  GDExtensionInterfaceEditorAddPlugin    @[required]
	editor_remove_plugin                               GDExtensionInterfaceEditorRemovePlugin @[required]
}

pub struct Class {
	godot_class bool = true
}

// HACK: using this to distinguish user-defined classes
pub interface IClass {
	// ptr voidptr
	godot_class bool
}
