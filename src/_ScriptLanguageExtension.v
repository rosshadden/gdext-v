module gd

pub enum ScriptLanguageExtensionLookupResultType as i64 {
	lookup_result_script_location = 0
	lookup_result_class = 1
	lookup_result_class_constant = 2
	lookup_result_class_property = 3
	lookup_result_class_method = 4
	lookup_result_class_signal = 5
	lookup_result_class_enum = 6
	lookup_result_class_tbd_globalscope = 7
	lookup_result_class_annotation = 8
	lookup_result_local_constant = 9
	lookup_result_local_variable = 10
	lookup_result_max = 11
}

pub enum ScriptLanguageExtensionCodeCompletionLocation as i64 {
	location_local = 0
	location_parent_mask = 256
	location_other_user_code = 512
	location_other = 1024
}

pub enum ScriptLanguageExtensionCodeCompletionKind as i64 {
	code_completion_kind_class = 0
	code_completion_kind_function = 1
	code_completion_kind_signal = 2
	code_completion_kind_variable = 3
	code_completion_kind_member = 4
	code_completion_kind_enum = 5
	code_completion_kind_constant = 6
	code_completion_kind_node_path = 7
	code_completion_kind_file_path = 8
	code_completion_kind_plain_text = 9
	code_completion_kind_max = 10
}

pub struct ScriptLanguageExtension {
	ScriptLanguage
}

pub fn (s &ScriptLanguageExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ScriptLanguageExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IScriptLanguageExtensionGetName {
mut:
	get_name_() String
}

pub fn (s &ScriptLanguageExtension) gd_get_name() string {
	mut result := String{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptLanguageExtensionInit {
mut:
	init_()
}

pub fn (s &ScriptLanguageExtension) gd_init() {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_init")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionGetType {
mut:
	get_type_() String
}

pub fn (s &ScriptLanguageExtension) gd_get_type() string {
	mut result := String{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_get_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptLanguageExtensionGetExtension {
mut:
	get_extension_() String
}

pub fn (s &ScriptLanguageExtension) gd_get_extension() string {
	mut result := String{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_get_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptLanguageExtensionFinish {
mut:
	finish_()
}

pub fn (s &ScriptLanguageExtension) gd_finish() {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_finish")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionGetReservedWords {
mut:
	get_reserved_words_() PackedStringArray
}

pub fn (s &ScriptLanguageExtension) gd_get_reserved_words() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_get_reserved_words")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionIsControlFlowKeyword {
mut:
	is_control_flow_keyword_(keyword String) bool
}

pub fn (s &ScriptLanguageExtension) gd_is_control_flow_keyword(keyword string) bool {
	mut result := false
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_is_control_flow_keyword")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(keyword)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionGetCommentDelimiters {
mut:
	get_comment_delimiters_() PackedStringArray
}

pub fn (s &ScriptLanguageExtension) gd_get_comment_delimiters() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_get_comment_delimiters")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionGetDocCommentDelimiters {
mut:
	get_doc_comment_delimiters_() PackedStringArray
}

pub fn (s &ScriptLanguageExtension) gd_get_doc_comment_delimiters() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_get_doc_comment_delimiters")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionGetStringDelimiters {
mut:
	get_string_delimiters_() PackedStringArray
}

pub fn (s &ScriptLanguageExtension) gd_get_string_delimiters() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_get_string_delimiters")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionMakeTemplate {
mut:
	make_template_(template String, class_name String, base_class_name String) Script
}

pub fn (s &ScriptLanguageExtension) gd_make_template(template string, class_name string, base_class_name string) Script {
	mut result := Script{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_make_template")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3583744548)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(template)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(class_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := String.new(base_class_name)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionGetBuiltInTemplates {
mut:
	get_built_in_templates_(object StringName) Array
}

pub fn (s &ScriptLanguageExtension) gd_get_built_in_templates(object string) Array {
	mut result := Array{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_get_built_in_templates")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3147814860)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(object)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionIsUsingTemplates {
mut:
	is_using_templates_() bool
}

pub fn (s &ScriptLanguageExtension) gd_is_using_templates() bool {
	mut result := false
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_is_using_templates")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionValidate {
mut:
	validate_(script String, path String, validate_functions bool, validate_errors bool, validate_warnings bool, validate_safe_lines bool) Dictionary
}

pub fn (s &ScriptLanguageExtension) gd_validate(script string, path string, validate_functions bool, validate_errors bool, validate_warnings bool, validate_safe_lines bool) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_validate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1697887509)
	mut args := unsafe { [6]voidptr{} }
	arg_sn0 := String.new(script)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&validate_functions)}
	args[3] = unsafe{voidptr(&validate_errors)}
	args[4] = unsafe{voidptr(&validate_warnings)}
	args[5] = unsafe{voidptr(&validate_safe_lines)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionValidatePath {
mut:
	validate_path_(path String) String
}

pub fn (s &ScriptLanguageExtension) gd_validate_path(path string) string {
	mut result := String{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_validate_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptLanguageExtensionCreateScript {
mut:
	create_script_() Object
}

pub fn (s &ScriptLanguageExtension) gd_create_script() Object {
	mut result := Object{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_create_script")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1981248198)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionHasNamedClasses {
mut:
	has_named_classes_() bool
}

pub fn (s &ScriptLanguageExtension) gd_has_named_classes() bool {
	mut result := false
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_has_named_classes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionSupportsBuiltinMode {
mut:
	supports_builtin_mode_() bool
}

pub fn (s &ScriptLanguageExtension) gd_supports_builtin_mode() bool {
	mut result := false
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_supports_builtin_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionSupportsDocumentation {
mut:
	supports_documentation_() bool
}

pub fn (s &ScriptLanguageExtension) gd_supports_documentation() bool {
	mut result := false
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_supports_documentation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionCanInheritFromFile {
mut:
	can_inherit_from_file_() bool
}

pub fn (s &ScriptLanguageExtension) gd_can_inherit_from_file() bool {
	mut result := false
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_can_inherit_from_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionFindFunction {
mut:
	find_function_(function String, code String) i64
}

pub fn (s &ScriptLanguageExtension) gd_find_function(function string, code string) i64 {
	mut result := i64(0)
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_find_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878152881)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(function)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(code)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionMakeFunction {
mut:
	make_function_(class_name String, function_name String, function_args PackedStringArray) String
}

pub fn (s &ScriptLanguageExtension) gd_make_function(class_name string, function_name string, function_args PackedStringArray) string {
	mut result := String{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_make_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1243061914)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(class_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(function_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&function_args)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptLanguageExtensionCanMakeFunction {
mut:
	can_make_function_() bool
}

pub fn (s &ScriptLanguageExtension) gd_can_make_function() bool {
	mut result := false
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_can_make_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionOpenInExternalEditor {
mut:
	open_in_external_editor_(script Script, line i64, column i64) GDError
}

pub fn (s &ScriptLanguageExtension) gd_open_in_external_editor(script Script, line i64, column i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_open_in_external_editor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 552845695)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&script.ptr)
	args[1] = unsafe{voidptr(&line)}
	args[2] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IScriptLanguageExtensionOverridesExternalEditor {
mut:
	overrides_external_editor_() bool
}

pub fn (s &ScriptLanguageExtension) gd_overrides_external_editor() bool {
	mut result := false
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_overrides_external_editor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionPreferredFileNameCasing {
mut:
	preferred_file_name_casing_() ScriptLanguageScriptNameCasing
}

pub fn (s &ScriptLanguageExtension) gd_preferred_file_name_casing() ScriptLanguageScriptNameCasing {
	mut result := i64(ScriptLanguageScriptNameCasing.script_name_casing_auto)
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_preferred_file_name_casing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2969522789)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ScriptLanguageScriptNameCasing(result)}
}

pub interface IScriptLanguageExtensionCompleteCode {
mut:
	complete_code_(code String, path String, owner Object) Dictionary
}

pub fn (s &ScriptLanguageExtension) gd_complete_code(code string, path string, owner Object) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_complete_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 950756616)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(code)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = voidptr(&owner.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionLookupCode {
mut:
	lookup_code_(code String, symbol String, path String, owner Object) Dictionary
}

pub fn (s &ScriptLanguageExtension) gd_lookup_code(code string, symbol string, path string, owner Object) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_lookup_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3143837309)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(code)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(symbol)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = voidptr(&owner.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionAutoIndentCode {
mut:
	auto_indent_code_(code String, from_line i64, to_line i64) String
}

pub fn (s &ScriptLanguageExtension) gd_auto_indent_code(code string, from_line i64, to_line i64) string {
	mut result := String{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_auto_indent_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2531480354)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(code)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&from_line)}
	args[2] = unsafe{voidptr(&to_line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptLanguageExtensionAddGlobalConstant {
mut:
	add_global_constant_(name StringName, value Variant)
}

pub fn (s &ScriptLanguageExtension) gd_add_global_constant(name string, value Variant) {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_add_global_constant")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionAddNamedGlobalConstant {
mut:
	add_named_global_constant_(name StringName, value Variant)
}

pub fn (s &ScriptLanguageExtension) gd_add_named_global_constant(name string, value Variant) {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_add_named_global_constant")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionRemoveNamedGlobalConstant {
mut:
	remove_named_global_constant_(name StringName)
}

pub fn (s &ScriptLanguageExtension) gd_remove_named_global_constant(name string) {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_remove_named_global_constant")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionThreadEnter {
mut:
	thread_enter_()
}

pub fn (s &ScriptLanguageExtension) gd_thread_enter() {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_thread_enter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionThreadExit {
mut:
	thread_exit_()
}

pub fn (s &ScriptLanguageExtension) gd_thread_exit() {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_thread_exit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionDebugGetError {
mut:
	debug_get_error_() String
}

pub fn (s &ScriptLanguageExtension) gd_debug_get_error() string {
	mut result := String{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_debug_get_error")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptLanguageExtensionDebugGetStackLevelCount {
mut:
	debug_get_stack_level_count_() i64
}

pub fn (s &ScriptLanguageExtension) gd_debug_get_stack_level_count() i64 {
	mut result := i64(0)
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_debug_get_stack_level_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionDebugGetStackLevelLine {
mut:
	debug_get_stack_level_line_(level i64) i64
}

pub fn (s &ScriptLanguageExtension) gd_debug_get_stack_level_line(level i64) i64 {
	mut result := i64(0)
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_debug_get_stack_level_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&level)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionDebugGetStackLevelFunction {
mut:
	debug_get_stack_level_function_(level i64) String
}

pub fn (s &ScriptLanguageExtension) gd_debug_get_stack_level_function(level i64) string {
	mut result := String{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_debug_get_stack_level_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&level)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptLanguageExtensionDebugGetStackLevelSource {
mut:
	debug_get_stack_level_source_(level i64) String
}

pub fn (s &ScriptLanguageExtension) gd_debug_get_stack_level_source(level i64) string {
	mut result := String{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_debug_get_stack_level_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&level)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptLanguageExtensionDebugGetStackLevelLocals {
mut:
	debug_get_stack_level_locals_(level i64, max_subitems i64, max_depth i64) Dictionary
}

pub fn (s &ScriptLanguageExtension) gd_debug_get_stack_level_locals(level i64, max_subitems i64, max_depth i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_debug_get_stack_level_locals")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 335235777)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&level)}
	args[1] = unsafe{voidptr(&max_subitems)}
	args[2] = unsafe{voidptr(&max_depth)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionDebugGetStackLevelMembers {
mut:
	debug_get_stack_level_members_(level i64, max_subitems i64, max_depth i64) Dictionary
}

pub fn (s &ScriptLanguageExtension) gd_debug_get_stack_level_members(level i64, max_subitems i64, max_depth i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_debug_get_stack_level_members")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 335235777)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&level)}
	args[1] = unsafe{voidptr(&max_subitems)}
	args[2] = unsafe{voidptr(&max_depth)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionDebugGetStackLevelInstance {
mut:
	debug_get_stack_level_instance_(level i64) voidptr
}

pub fn (s &ScriptLanguageExtension) gd_debug_get_stack_level_instance(level i64) voidptr {
	mut result := unsafe{nil}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_debug_get_stack_level_instance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&level)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionDebugGetGlobals {
mut:
	debug_get_globals_(max_subitems i64, max_depth i64) Dictionary
}

pub fn (s &ScriptLanguageExtension) gd_debug_get_globals(max_subitems i64, max_depth i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_debug_get_globals")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4123630098)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&max_subitems)}
	args[1] = unsafe{voidptr(&max_depth)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionDebugParseStackLevelExpression {
mut:
	debug_parse_stack_level_expression_(level i64, expression String, max_subitems i64, max_depth i64) String
}

pub fn (s &ScriptLanguageExtension) gd_debug_parse_stack_level_expression(level i64, expression string, max_subitems i64, max_depth i64) string {
	mut result := String{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_debug_parse_stack_level_expression")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1135811067)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&level)}
	arg_sn1 := String.new(expression)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&max_subitems)}
	args[3] = unsafe{voidptr(&max_depth)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptLanguageExtensionDebugGetCurrentStackInfo {
mut:
	debug_get_current_stack_info_() Array
}

pub fn (s &ScriptLanguageExtension) gd_debug_get_current_stack_info() Array {
	mut result := Array{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_debug_get_current_stack_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionReloadAllScripts {
mut:
	reload_all_scripts_()
}

pub fn (s &ScriptLanguageExtension) gd_reload_all_scripts() {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_reload_all_scripts")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionReloadScripts {
mut:
	reload_scripts_(scripts Array, soft_reload bool)
}

pub fn (s &ScriptLanguageExtension) gd_reload_scripts(scripts Array, soft_reload bool) {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_reload_scripts")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3156113851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&scripts)}
	args[1] = unsafe{voidptr(&soft_reload)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionReloadToolScript {
mut:
	reload_tool_script_(script Script, soft_reload bool)
}

pub fn (s &ScriptLanguageExtension) gd_reload_tool_script(script Script, soft_reload bool) {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_reload_tool_script")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1957307671)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&script.ptr)
	args[1] = unsafe{voidptr(&soft_reload)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionGetRecognizedExtensions {
mut:
	get_recognized_extensions_() PackedStringArray
}

pub fn (s &ScriptLanguageExtension) gd_get_recognized_extensions() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_get_recognized_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionGetPublicFunctions {
mut:
	get_public_functions_() Array
}

pub fn (s &ScriptLanguageExtension) gd_get_public_functions() Array {
	mut result := Array{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_get_public_functions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionGetPublicConstants {
mut:
	get_public_constants_() Dictionary
}

pub fn (s &ScriptLanguageExtension) gd_get_public_constants() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_get_public_constants")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionGetPublicAnnotations {
mut:
	get_public_annotations_() Array
}

pub fn (s &ScriptLanguageExtension) gd_get_public_annotations() Array {
	mut result := Array{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_get_public_annotations")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionProfilingStart {
mut:
	profiling_start_()
}

pub fn (s &ScriptLanguageExtension) gd_profiling_start() {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_profiling_start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionProfilingStop {
mut:
	profiling_stop_()
}

pub fn (s &ScriptLanguageExtension) gd_profiling_stop() {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_profiling_stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionProfilingSetSaveNativeCalls {
mut:
	profiling_set_save_native_calls_(enable bool)
}

pub fn (s &ScriptLanguageExtension) gd_profiling_set_save_native_calls(enable bool) {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_profiling_set_save_native_calls")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionProfilingGetAccumulatedData {
mut:
	profiling_get_accumulated_data_(info_array &ScriptLanguageExtensionProfilingInfo, info_max i64) i64
}

pub fn (s &ScriptLanguageExtension) gd_profiling_get_accumulated_data(info_array &ScriptLanguageExtensionProfilingInfo, info_max i64) i64 {
	mut result := i64(0)
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_profiling_get_accumulated_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 50157827)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&info_array)}
	args[1] = unsafe{voidptr(&info_max)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionProfilingGetFrameData {
mut:
	profiling_get_frame_data_(info_array &ScriptLanguageExtensionProfilingInfo, info_max i64) i64
}

pub fn (s &ScriptLanguageExtension) gd_profiling_get_frame_data(info_array &ScriptLanguageExtensionProfilingInfo, info_max i64) i64 {
	mut result := i64(0)
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_profiling_get_frame_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 50157827)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&info_array)}
	args[1] = unsafe{voidptr(&info_max)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionFrame {
mut:
	frame_()
}

pub fn (s &ScriptLanguageExtension) gd_frame() {
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptLanguageExtensionHandlesGlobalClassType {
mut:
	handles_global_class_type_(gd_type String) bool
}

pub fn (s &ScriptLanguageExtension) gd_handles_global_class_type(gd_type string) bool {
	mut result := false
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_handles_global_class_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptLanguageExtensionGetGlobalClassName {
mut:
	get_global_class_name_(path String) Dictionary
}

pub fn (s &ScriptLanguageExtension) gd_get_global_class_name(path string) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("ScriptLanguageExtension")
	fnname := StringName.new("_get_global_class_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2248993622)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
