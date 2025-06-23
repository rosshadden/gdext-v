module gdext

import gd

__global (
	gdf = &gd.GDExtensionInterfaceFunctions(unsafe { nil })
)

pub struct GDExt {
	gd.GDExtensionInterfaceFunctions
mut:
	reload Reload
}

pub fn setup(gpaddr fn (&i8) gd.GDExtensionInterfaceFunctionPtr, clp gd.GDExtensionClassLibraryPtr) GDExt {
	C._vinit(0, unsafe { nil })

	gdf = &gd.GDExtensionInterfaceFunctions{
		gpaddr:                                             gpaddr
		clp:                                                clp
		get_godot_version:                                  unsafe { gd.GDExtensionInterfaceGetGodotVersion(gpaddr(c'get_godot_version')) }
		get_godot_version2:                                 unsafe { gd.GDExtensionInterfaceGetGodotVersion2(gpaddr(c'get_godot_version2')) }
		mem_alloc:                                          unsafe { gd.GDExtensionInterfaceMemAlloc(gpaddr(c'mem_alloc')) }
		mem_realloc:                                        unsafe { gd.GDExtensionInterfaceMemRealloc(gpaddr(c'mem_realloc')) }
		mem_free:                                           unsafe { gd.GDExtensionInterfaceMemFree(gpaddr(c'mem_free')) }
		print_error:                                        unsafe { gd.GDExtensionInterfacePrintError(gpaddr(c'print_error')) }
		print_error_with_message:                           unsafe { gd.GDExtensionInterfacePrintErrorWithMessage(gpaddr(c'print_error_with_message')) }
		print_warning:                                      unsafe { gd.GDExtensionInterfacePrintWarning(gpaddr(c'print_warning')) }
		print_warning_with_message:                         unsafe { gd.GDExtensionInterfacePrintWarningWithMessage(gpaddr(c'print_warning_with_message')) }
		print_script_error:                                 unsafe { gd.GDExtensionInterfacePrintScriptError(gpaddr(c'print_script_error')) }
		print_script_error_with_message:                    unsafe { gd.GDExtensionInterfacePrintScriptErrorWithMessage(gpaddr(c'print_script_error_with_message')) }
		get_native_struct_size:                             unsafe { gd.GDExtensionInterfaceGetNativeStructSize(gpaddr(c'get_native_struct_size')) }
		variant_new_copy:                                   unsafe { gd.GDExtensionInterfaceVariantNewCopy(gpaddr(c'variant_new_copy')) }
		variant_new_nil:                                    unsafe { gd.GDExtensionInterfaceVariantNewNil(gpaddr(c'variant_new_nil')) }
		variant_destroy:                                    unsafe { gd.GDExtensionInterfaceVariantDestroy(gpaddr(c'variant_destroy')) }
		variant_call:                                       unsafe { gd.GDExtensionInterfaceVariantCall(gpaddr(c'variant_call')) }
		variant_call_static:                                unsafe { gd.GDExtensionInterfaceVariantCallStatic(gpaddr(c'variant_call_static')) }
		variant_evaluate:                                   unsafe { gd.GDExtensionInterfaceVariantEvaluate(gpaddr(c'variant_evaluate')) }
		variant_set:                                        unsafe { gd.GDExtensionInterfaceVariantSet(gpaddr(c'variant_set')) }
		variant_set_named:                                  unsafe { gd.GDExtensionInterfaceVariantSetNamed(gpaddr(c'variant_set_named')) }
		variant_set_keyed:                                  unsafe { gd.GDExtensionInterfaceVariantSetKeyed(gpaddr(c'variant_set_keyed')) }
		variant_set_indexed:                                unsafe { gd.GDExtensionInterfaceVariantSetIndexed(gpaddr(c'variant_set_indexed')) }
		variant_get:                                        unsafe { gd.GDExtensionInterfaceVariantGet(gpaddr(c'variant_get')) }
		variant_get_named:                                  unsafe { gd.GDExtensionInterfaceVariantGetNamed(gpaddr(c'variant_get_named')) }
		variant_get_keyed:                                  unsafe { gd.GDExtensionInterfaceVariantGetKeyed(gpaddr(c'variant_get_keyed')) }
		variant_get_indexed:                                unsafe { gd.GDExtensionInterfaceVariantGetIndexed(gpaddr(c'variant_get_indexed')) }
		variant_iter_init:                                  unsafe { gd.GDExtensionInterfaceVariantIterInit(gpaddr(c'variant_iter_init')) }
		variant_iter_next:                                  unsafe { gd.GDExtensionInterfaceVariantIterNext(gpaddr(c'variant_iter_next')) }
		variant_iter_get:                                   unsafe { gd.GDExtensionInterfaceVariantIterGet(gpaddr(c'variant_iter_get')) }
		variant_hash:                                       unsafe { gd.GDExtensionInterfaceVariantHash(gpaddr(c'variant_hash')) }
		variant_recursive_hash:                             unsafe { gd.GDExtensionInterfaceVariantRecursiveHash(gpaddr(c'variant_recursive_hash')) }
		variant_hash_compare:                               unsafe { gd.GDExtensionInterfaceVariantHashCompare(gpaddr(c'variant_hash_compare')) }
		variant_booleanize:                                 unsafe { gd.GDExtensionInterfaceVariantBooleanize(gpaddr(c'variant_booleanize')) }
		variant_duplicate:                                  unsafe { gd.GDExtensionInterfaceVariantDuplicate(gpaddr(c'variant_duplicate')) }
		variant_stringify:                                  unsafe { gd.GDExtensionInterfaceVariantStringify(gpaddr(c'variant_stringify')) }
		variant_get_type:                                   unsafe { gd.GDExtensionInterfaceVariantGetType(gpaddr(c'variant_get_type')) }
		variant_has_method:                                 unsafe { gd.GDExtensionInterfaceVariantHasMethod(gpaddr(c'variant_has_method')) }
		variant_has_member:                                 unsafe { gd.GDExtensionInterfaceVariantHasMember(gpaddr(c'variant_has_member')) }
		variant_has_key:                                    unsafe { gd.GDExtensionInterfaceVariantHasKey(gpaddr(c'variant_has_key')) }
		variant_get_type_name:                              unsafe { gd.GDExtensionInterfaceVariantGetTypeName(gpaddr(c'variant_get_type_name')) }
		variant_can_convert:                                unsafe { gd.GDExtensionInterfaceVariantCanConvert(gpaddr(c'variant_can_convert')) }
		variant_can_convert_strict:                         unsafe { gd.GDExtensionInterfaceVariantCanConvertStrict(gpaddr(c'variant_can_convert_strict')) }
		get_variant_from_type_constructor:                  unsafe { gd.GDExtensionInterfaceGetVariantFromTypeConstructor(gpaddr(c'get_variant_from_type_constructor')) }
		get_variant_to_type_constructor:                    unsafe { gd.GDExtensionInterfaceGetVariantToTypeConstructor(gpaddr(c'get_variant_to_type_constructor')) }
		variant_get_ptr_operator_evaluator:                 unsafe { gd.GDExtensionInterfaceVariantGetPtrOperatorEvaluator(gpaddr(c'variant_get_ptr_operator_evaluator')) }
		variant_get_ptr_builtin_method:                     unsafe { gd.GDExtensionInterfaceVariantGetPtrBuiltinMethod(gpaddr(c'variant_get_ptr_builtin_method')) }
		variant_get_ptr_constructor:                        unsafe { gd.GDExtensionInterfaceVariantGetPtrConstructor(gpaddr(c'variant_get_ptr_constructor')) }
		variant_get_ptr_destructor:                         unsafe { gd.GDExtensionInterfaceVariantGetPtrDestructor(gpaddr(c'variant_get_ptr_destructor')) }
		variant_construct:                                  unsafe { gd.GDExtensionInterfaceVariantConstruct(gpaddr(c'variant_construct')) }
		variant_get_ptr_setter:                             unsafe { gd.GDExtensionInterfaceVariantGetPtrSetter(gpaddr(c'variant_get_ptr_setter')) }
		variant_get_ptr_getter:                             unsafe { gd.GDExtensionInterfaceVariantGetPtrGetter(gpaddr(c'variant_get_ptr_getter')) }
		variant_get_ptr_indexed_setter:                     unsafe { gd.GDExtensionInterfaceVariantGetPtrIndexedSetter(gpaddr(c'variant_get_ptr_indexed_setter')) }
		variant_get_ptr_indexed_getter:                     unsafe { gd.GDExtensionInterfaceVariantGetPtrIndexedGetter(gpaddr(c'variant_get_ptr_indexed_getter')) }
		variant_get_ptr_keyed_setter:                       unsafe { gd.GDExtensionInterfaceVariantGetPtrKeyedSetter(gpaddr(c'variant_get_ptr_keyed_setter')) }
		variant_get_ptr_keyed_getter:                       unsafe { gd.GDExtensionInterfaceVariantGetPtrKeyedGetter(gpaddr(c'variant_get_ptr_keyed_getter')) }
		variant_get_ptr_keyed_checker:                      unsafe { gd.GDExtensionInterfaceVariantGetPtrKeyedChecker(gpaddr(c'variant_get_ptr_keyed_checker')) }
		variant_get_constant_value:                         unsafe { gd.GDExtensionInterfaceVariantGetConstantValue(gpaddr(c'variant_get_constant_value')) }
		variant_get_ptr_utility_function:                   unsafe { gd.GDExtensionInterfaceVariantGetPtrUtilityFunction(gpaddr(c'variant_get_ptr_utility_function')) }
		string_new_with_latin1_chars:                       unsafe { gd.GDExtensionInterfaceStringNewWithLatin1Chars(gpaddr(c'string_new_with_latin1_chars')) }
		string_new_with_utf8_chars:                         unsafe { gd.GDExtensionInterfaceStringNewWithUtf8Chars(gpaddr(c'string_new_with_utf8_chars')) }
		string_new_with_utf16_chars:                        unsafe { gd.GDExtensionInterfaceStringNewWithUtf16Chars(gpaddr(c'string_new_with_utf16_chars')) }
		string_new_with_utf32_chars:                        unsafe { gd.GDExtensionInterfaceStringNewWithUtf32Chars(gpaddr(c'string_new_with_utf32_chars')) }
		string_new_with_wide_chars:                         unsafe { gd.GDExtensionInterfaceStringNewWithWideChars(gpaddr(c'string_new_with_wide_chars')) }
		string_new_with_latin1_chars_and_len:               unsafe { gd.GDExtensionInterfaceStringNewWithLatin1CharsAndLen(gpaddr(c'string_new_with_latin1_chars_and_len')) }
		string_new_with_utf8_chars_and_len:                 unsafe { gd.GDExtensionInterfaceStringNewWithUtf8CharsAndLen(gpaddr(c'string_new_with_utf8_chars_and_len')) }
		string_new_with_utf8_chars_and_len2:                unsafe { gd.GDExtensionInterfaceStringNewWithUtf8CharsAndLen2(gpaddr(c'string_new_with_utf8_chars_and_len2')) }
		string_new_with_utf16_chars_and_len:                unsafe { gd.GDExtensionInterfaceStringNewWithUtf16CharsAndLen(gpaddr(c'string_new_with_utf16_chars_and_len')) }
		string_new_with_utf16_chars_and_len2:               unsafe { gd.GDExtensionInterfaceStringNewWithUtf16CharsAndLen2(gpaddr(c'string_new_with_utf16_chars_and_len2')) }
		string_new_with_utf32_chars_and_len:                unsafe { gd.GDExtensionInterfaceStringNewWithUtf32CharsAndLen(gpaddr(c'string_new_with_utf32_chars_and_len')) }
		string_new_with_wide_chars_and_len:                 unsafe { gd.GDExtensionInterfaceStringNewWithWideCharsAndLen(gpaddr(c'string_new_with_wide_chars_and_len')) }
		string_to_latin1_chars:                             unsafe { gd.GDExtensionInterfaceStringToLatin1Chars(gpaddr(c'string_to_latin1_chars')) }
		string_to_utf8_chars:                               unsafe { gd.GDExtensionInterfaceStringToUtf8Chars(gpaddr(c'string_to_utf8_chars')) }
		string_to_utf16_chars:                              unsafe { gd.GDExtensionInterfaceStringToUtf16Chars(gpaddr(c'string_to_utf16_chars')) }
		string_to_utf32_chars:                              unsafe { gd.GDExtensionInterfaceStringToUtf32Chars(gpaddr(c'string_to_utf32_chars')) }
		string_to_wide_chars:                               unsafe { gd.GDExtensionInterfaceStringToWideChars(gpaddr(c'string_to_wide_chars')) }
		string_operator_index:                              unsafe { gd.GDExtensionInterfaceStringOperatorIndex(gpaddr(c'string_operator_index')) }
		string_operator_index_const:                        unsafe { gd.GDExtensionInterfaceStringOperatorIndexConst(gpaddr(c'string_operator_index_const')) }
		string_operator_plus_eq_string:                     unsafe { gd.GDExtensionInterfaceStringOperatorPlusEqString(gpaddr(c'string_operator_plus_eq_string')) }
		string_operator_plus_eq_char:                       unsafe { gd.GDExtensionInterfaceStringOperatorPlusEqChar(gpaddr(c'string_operator_plus_eq_char')) }
		string_operator_plus_eq_cstr:                       unsafe { gd.GDExtensionInterfaceStringOperatorPlusEqCstr(gpaddr(c'string_operator_plus_eq_cstr')) }
		string_operator_plus_eq_wcstr:                      unsafe { gd.GDExtensionInterfaceStringOperatorPlusEqWcstr(gpaddr(c'string_operator_plus_eq_wcstr')) }
		string_operator_plus_eq_c32str:                     unsafe { gd.GDExtensionInterfaceStringOperatorPlusEqC32str(gpaddr(c'string_operator_plus_eq_c32str')) }
		xml_parser_open_buffer:                             unsafe { gd.GDExtensionInterfaceXmlParserOpenBuffer(gpaddr(c'xml_parser_open_buffer')) }
		file_access_store_buffer:                           unsafe { gd.GDExtensionInterfaceFileAccessStoreBuffer(gpaddr(c'file_access_store_buffer')) }
		file_access_get_buffer:                             unsafe { gd.GDExtensionInterfaceFileAccessGetBuffer(gpaddr(c'file_access_get_buffer')) }
		packed_byte_array_operator_index_const:             unsafe { gd.GDExtensionInterfacePackedByteArrayOperatorIndexConst(gpaddr(c'packed_byte_array_operator_index_const')) }
		packed_color_array_operator_index:                  unsafe { gd.GDExtensionInterfacePackedColorArrayOperatorIndex(gpaddr(c'packed_color_array_operator_index')) }
		packed_color_array_operator_index_const:            unsafe { gd.GDExtensionInterfacePackedColorArrayOperatorIndexConst(gpaddr(c'packed_color_array_operator_index_const')) }
		packed_float32_array_operator_index:                unsafe { gd.GDExtensionInterfacePackedFloat32ArrayOperatorIndex(gpaddr(c'packed_float32_array_operator_index')) }
		packed_float32_array_operator_index_const:          unsafe { gd.GDExtensionInterfacePackedFloat32ArrayOperatorIndexConst(gpaddr(c'packed_float32_array_operator_index_const')) }
		packed_float64_array_operator_index:                unsafe { gd.GDExtensionInterfacePackedFloat64ArrayOperatorIndex(gpaddr(c'packed_float64_array_operator_index')) }
		packed_float64_array_operator_index_const:          unsafe { gd.GDExtensionInterfacePackedFloat64ArrayOperatorIndexConst(gpaddr(c'packed_float64_array_operator_index_const')) }
		packed_int32_array_operator_index:                  unsafe { gd.GDExtensionInterfacePackedInt32ArrayOperatorIndex(gpaddr(c'packed_int32_array_operator_index')) }
		packed_int32_array_operator_index_const:            unsafe { gd.GDExtensionInterfacePackedInt32ArrayOperatorIndexConst(gpaddr(c'packed_int32_array_operator_index_const')) }
		packed_int64_array_operator_index:                  unsafe { gd.GDExtensionInterfacePackedInt64ArrayOperatorIndex(gpaddr(c'packed_int64_array_operator_index')) }
		packed_int64_array_operator_index_const:            unsafe { gd.GDExtensionInterfacePackedInt64ArrayOperatorIndexConst(gpaddr(c'packed_int64_array_operator_index_const')) }
		packed_string_array_operator_index:                 unsafe { gd.GDExtensionInterfacePackedStringArrayOperatorIndex(gpaddr(c'packed_string_array_operator_index')) }
		packed_string_array_operator_index_const:           unsafe { gd.GDExtensionInterfacePackedStringArrayOperatorIndexConst(gpaddr(c'packed_string_array_operator_index_const')) }
		packed_vector2_array_operator_index:                unsafe { gd.GDExtensionInterfacePackedVector2ArrayOperatorIndex(gpaddr(c'packed_vector2_array_operator_index')) }
		packed_vector2_array_operator_index_const:          unsafe { gd.GDExtensionInterfacePackedVector2ArrayOperatorIndexConst(gpaddr(c'packed_vector2_array_operator_index_const')) }
		packed_vector3_array_operator_index:                unsafe { gd.GDExtensionInterfacePackedVector3ArrayOperatorIndex(gpaddr(c'packed_vector3_array_operator_index')) }
		packed_vector3_array_operator_index_const:          unsafe { gd.GDExtensionInterfacePackedVector3ArrayOperatorIndexConst(gpaddr(c'packed_vector3_array_operator_index_const')) }
		array_operator_index:                               unsafe { gd.GDExtensionInterfaceArrayOperatorIndex(gpaddr(c'array_operator_index')) }
		array_operator_index_const:                         unsafe { gd.GDExtensionInterfaceArrayOperatorIndexConst(gpaddr(c'array_operator_index_const')) }
		array_ref:                                          unsafe { gd.GDExtensionInterfaceArrayRef(gpaddr(c'array_ref')) }
		array_set_typed:                                    unsafe { gd.GDExtensionInterfaceArraySetTyped(gpaddr(c'array_set_typed')) }
		dictionary_operator_index:                          unsafe { gd.GDExtensionInterfaceDictionaryOperatorIndex(gpaddr(c'dictionary_operator_index')) }
		dictionary_operator_index_const:                    unsafe { gd.GDExtensionInterfaceDictionaryOperatorIndexConst(gpaddr(c'dictionary_operator_index_const')) }
		object_method_bind_call:                            unsafe { gd.GDExtensionInterfaceObjectMethodBindCall(gpaddr(c'object_method_bind_call')) }
		object_method_bind_ptrcall:                         unsafe { gd.GDExtensionInterfaceObjectMethodBindPtrcall(gpaddr(c'object_method_bind_ptrcall')) }
		object_destroy:                                     unsafe { gd.GDExtensionInterfaceObjectDestroy(gpaddr(c'object_destroy')) }
		global_get_singleton:                               unsafe { gd.GDExtensionInterfaceGlobalGetSingleton(gpaddr(c'global_get_singleton')) }
		object_get_instance_binding:                        unsafe { gd.GDExtensionInterfaceObjectGetInstanceBinding(gpaddr(c'object_get_instance_binding')) }
		object_set_instance_binding:                        unsafe { gd.GDExtensionInterfaceObjectSetInstanceBinding(gpaddr(c'object_set_instance_binding')) }
		object_set_instance:                                unsafe { gd.GDExtensionInterfaceObjectSetInstance(gpaddr(c'object_set_instance')) }
		object_get_class_name:                              unsafe { gd.GDExtensionInterfaceObjectGetClassName(gpaddr(c'object_get_class_name')) }
		object_cast_to:                                     unsafe { gd.GDExtensionInterfaceObjectCastTo(gpaddr(c'object_cast_to')) }
		object_get_instance_from_id:                        unsafe { gd.GDExtensionInterfaceObjectGetInstanceFromId(gpaddr(c'object_get_instance_from_id')) }
		object_get_instance_id:                             unsafe { gd.GDExtensionInterfaceObjectGetInstanceId(gpaddr(c'object_get_instance_id')) }
		ref_get_object:                                     unsafe { gd.GDExtensionInterfaceRefGetObject(gpaddr(c'ref_get_object')) }
		ref_set_object:                                     unsafe { gd.GDExtensionInterfaceRefSetObject(gpaddr(c'ref_set_object')) }
		script_instance_create:                             unsafe { gd.GDExtensionInterfaceScriptInstanceCreate(gpaddr(c'script_instance_create')) }
		script_instance_create3:                            unsafe { gd.GDExtensionInterfaceScriptInstanceCreate3(gpaddr(c'script_instance_create3')) }
		classdb_construct_object:                           unsafe { gd.GDExtensionInterfaceClassdbConstructObject(gpaddr(c'classdb_construct_object')) }
		classdb_construct_object2:                          unsafe { gd.GDExtensionInterfaceClassdbConstructObject2(gpaddr(c'classdb_construct_object2')) }
		classdb_get_method_bind:                            unsafe { gd.GDExtensionInterfaceClassdbGetMethodBind(gpaddr(c'classdb_get_method_bind')) }
		classdb_get_class_tag:                              unsafe { gd.GDExtensionInterfaceClassdbGetClassTag(gpaddr(c'classdb_get_class_tag')) }
		classdb_register_extension_class:                   unsafe { gd.GDExtensionInterfaceClassdbRegisterExtensionClass(gpaddr(c'classdb_register_extension_class')) }
		classdb_register_extension_class2:                  unsafe { gd.GDExtensionInterfaceClassdbRegisterExtensionClass2(gpaddr(c'classdb_register_extension_class2')) }
		classdb_register_extension_class3:                  unsafe { gd.GDExtensionInterfaceClassdbRegisterExtensionClass3(gpaddr(c'classdb_register_extension_class3')) }
		classdb_register_extension_class4:                  unsafe { gd.GDExtensionInterfaceClassdbRegisterExtensionClass4(gpaddr(c'classdb_register_extension_class4')) }
		classdb_register_extension_class_method:            unsafe { gd.GDExtensionInterfaceClassdbRegisterExtensionClassMethod(gpaddr(c'classdb_register_extension_class_method')) }
		classdb_register_extension_class_integer_constant:  unsafe { gd.GDExtensionInterfaceClassdbRegisterExtensionClassIntegerConstant(gpaddr(c'classdb_register_extension_class_integer_constant')) }
		classdb_register_extension_class_property:          unsafe { gd.GDExtensionInterfaceClassdbRegisterExtensionClassProperty(gpaddr(c'classdb_register_extension_class_property')) }
		classdb_register_extension_class_property_group:    unsafe { gd.GDExtensionInterfaceClassdbRegisterExtensionClassPropertyGroup(gpaddr(c'classdb_register_extension_class_property_group')) }
		classdb_register_extension_class_property_subgroup: unsafe { gd.GDExtensionInterfaceClassdbRegisterExtensionClassPropertySubgroup(gpaddr(c'classdb_register_extension_class_property_subgroup')) }
		classdb_register_extension_class_signal:            unsafe { gd.GDExtensionInterfaceClassdbRegisterExtensionClassSignal(gpaddr(c'classdb_register_extension_class_signal')) }
		classdb_unregister_extension_class:                 unsafe { gd.GDExtensionInterfaceClassdbUnregisterExtensionClass(gpaddr(c'classdb_unregister_extension_class')) }
		get_library_path:                                   unsafe { gd.GDExtensionInterfaceGetLibraryPath(gpaddr(c'get_library_path')) }
		editor_add_plugin:                                  unsafe { gd.GDExtensionInterfaceEditorAddPlugin(gpaddr(c'editor_add_plugin')) }
		editor_remove_plugin:                               unsafe { gd.GDExtensionInterfaceEditorRemovePlugin(gpaddr(c'editor_remove_plugin')) }
	}

	mut g := GDExt{
		GDExtensionInterfaceFunctions: gdf
	}

	g.enable_hot_reload()

	return g
}
