module gd

__global (
	gdf = &GDExtensionInterfaceFunctions(unsafe { nil })
)

pub fn get_gdf() &GDExtensionInterfaceFunctions {
	if gdf == unsafe { nil } {
		panic('GDExtensionInterfaceFunctions is not initialized. Call setup_lib first.')
	}
	return gdf
}

pub fn String.new(str string) String {
	result := String{}
	gdf.string_new_with_utf8_chars_and_len2(voidptr(&result), str.str, str.len)
	return result
}

pub fn StringName.new(str string) StringName {
	s := String.new(str)
	defer { s.deinit() }
	return StringName.new2(s)
}

pub fn NodePath.new(path string) NodePath {
	s := String.new(path)
	defer { s.deinit() }
	return NodePath.new2(s)
}

pub fn (s &StringName) to_v() string {
	pba := s.to_utf8_buffer()
	defer { pba.deinit() }
	length := pba.size()
	mut array := []u8{cap: int(length)}
	for i in 0 .. length {
		array << u8(pba.index(i))
	}
	return array.bytestr()
}

pub fn (s &String) to_v() string {
	pba := s.to_utf8_buffer()
	defer { pba.deinit() }
	length := pba.size()
	mut array := []u8{cap: int(length)}
	for i in 0 .. length {
		array << u8(pba.index(i))
	}
	return array.bytestr()
}

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
