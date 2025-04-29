module gd

pub struct ScriptExtension {
	Script
}

pub fn (s &ScriptExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ScriptExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IScriptExtensionEditorCanReloadFromFile {
mut:
	editor_can_reload_from_file_() bool
}

pub fn (s &ScriptExtension) gd_editor_can_reload_from_file() bool {
	mut result := false
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_editor_can_reload_from_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionPlaceholderErased {
mut:
	placeholder_erased_(placeholder voidptr)
}

pub fn (s &ScriptExtension) gd_placeholder_erased(placeholder voidptr) {
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_placeholder_erased")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&placeholder)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptExtensionCanInstantiate {
mut:
	can_instantiate_() bool
}

pub fn (s &ScriptExtension) gd_can_instantiate() bool {
	mut result := false
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_can_instantiate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetBaseScript {
mut:
	get_base_script_() Script
}

pub fn (s &ScriptExtension) gd_get_base_script() Script {
	mut result := Script{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_base_script")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 278624046)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetGlobalName {
mut:
	get_global_name_() StringName
}

pub fn (s &ScriptExtension) gd_get_global_name() string {
	mut result := StringName{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_global_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptExtensionInheritsScript {
mut:
	inherits_script_(script Script) bool
}

pub fn (s &ScriptExtension) gd_inherits_script(script Script) bool {
	mut result := false
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_inherits_script")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3669307804)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&script.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetInstanceBaseType {
mut:
	get_instance_base_type_() StringName
}

pub fn (s &ScriptExtension) gd_get_instance_base_type() string {
	mut result := StringName{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_instance_base_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptExtensionInstanceCreate {
mut:
	instance_create_(for_object Object) voidptr
}

pub fn (s &ScriptExtension) gd_instance_create(for_object Object) voidptr {
	mut result := unsafe{nil}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_instance_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1107568780)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&for_object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionPlaceholderInstanceCreate {
mut:
	placeholder_instance_create_(for_object Object) voidptr
}

pub fn (s &ScriptExtension) gd_placeholder_instance_create(for_object Object) voidptr {
	mut result := unsafe{nil}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_placeholder_instance_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1107568780)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&for_object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionInstanceHas {
mut:
	instance_has_(object Object) bool
}

pub fn (s &ScriptExtension) gd_instance_has(object Object) bool {
	mut result := false
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_instance_has")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 397768994)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionHasSourceCode {
mut:
	has_source_code_() bool
}

pub fn (s &ScriptExtension) gd_has_source_code() bool {
	mut result := false
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_has_source_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetSourceCode {
mut:
	get_source_code_() String
}

pub fn (s &ScriptExtension) gd_get_source_code() string {
	mut result := String{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_source_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptExtensionSetSourceCode {
mut:
	set_source_code_(code String)
}

pub fn (s &ScriptExtension) gd_set_source_code(code string) {
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_set_source_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(code)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptExtensionReload {
mut:
	reload_(keep_state bool) GDError
}

pub fn (s &ScriptExtension) gd_reload(keep_state bool) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_reload")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1413768114)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&keep_state)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IScriptExtensionGetDocClassName {
mut:
	get_doc_class_name_() StringName
}

pub fn (s &ScriptExtension) gd_get_doc_class_name() string {
	mut result := StringName{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_doc_class_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptExtensionGetDocumentation {
mut:
	get_documentation_() Array
}

pub fn (s &ScriptExtension) gd_get_documentation() Array {
	mut result := Array{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_documentation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetClassIconPath {
mut:
	get_class_icon_path_() String
}

pub fn (s &ScriptExtension) gd_get_class_icon_path() string {
	mut result := String{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_class_icon_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IScriptExtensionHasMethod {
mut:
	has_method_(method StringName) bool
}

pub fn (s &ScriptExtension) gd_has_method(method string) bool {
	mut result := false
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_has_method")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionHasStaticMethod {
mut:
	has_static_method_(method StringName) bool
}

pub fn (s &ScriptExtension) gd_has_static_method(method string) bool {
	mut result := false
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_has_static_method")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetScriptMethodArgumentCount {
mut:
	get_script_method_argument_count_(method StringName) Variant
}

pub fn (s &ScriptExtension) gd_get_script_method_argument_count(method string) Variant {
	mut result := Variant{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_script_method_argument_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetMethodInfo {
mut:
	get_method_info_(method StringName) Dictionary
}

pub fn (s &ScriptExtension) gd_get_method_info(method string) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_method_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4028089122)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionIsTool {
mut:
	is_tool_() bool
}

pub fn (s &ScriptExtension) gd_is_tool() bool {
	mut result := false
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_is_tool")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionIsValid {
mut:
	is_valid_() bool
}

pub fn (s &ScriptExtension) gd_is_valid() bool {
	mut result := false
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_is_valid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionIsAbstract {
mut:
	is_abstract_() bool
}

pub fn (s &ScriptExtension) gd_is_abstract() bool {
	mut result := false
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_is_abstract")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetLanguage {
mut:
	get_language_() ScriptLanguage
}

pub fn (s &ScriptExtension) gd_get_language() ScriptLanguage {
	mut result := ScriptLanguage{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3096237657)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionHasScriptSignal {
mut:
	has_script_signal_(signal StringName) bool
}

pub fn (s &ScriptExtension) gd_has_script_signal(signal string) bool {
	mut result := false
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_has_script_signal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(signal)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetScriptSignalList {
mut:
	get_script_signal_list_() Array
}

pub fn (s &ScriptExtension) gd_get_script_signal_list() Array {
	mut result := Array{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_script_signal_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionHasPropertyDefaultValue {
mut:
	has_property_default_value_(property StringName) bool
}

pub fn (s &ScriptExtension) gd_has_property_default_value(property string) bool {
	mut result := false
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_has_property_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetPropertyDefaultValue {
mut:
	get_property_default_value_(property StringName) Variant
}

pub fn (s &ScriptExtension) gd_get_property_default_value(property string) Variant {
	mut result := Variant{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_property_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionUpdateExports {
mut:
	update_exports_()
}

pub fn (s &ScriptExtension) gd_update_exports() {
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_update_exports")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IScriptExtensionGetScriptMethodList {
mut:
	get_script_method_list_() Array
}

pub fn (s &ScriptExtension) gd_get_script_method_list() Array {
	mut result := Array{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_script_method_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetScriptPropertyList {
mut:
	get_script_property_list_() Array
}

pub fn (s &ScriptExtension) gd_get_script_property_list() Array {
	mut result := Array{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_script_property_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetMemberLine {
mut:
	get_member_line_(member StringName) i64
}

pub fn (s &ScriptExtension) gd_get_member_line(member string) i64 {
	mut result := i64(0)
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_member_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2458036349)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(member)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetConstants {
mut:
	get_constants_() Dictionary
}

pub fn (s &ScriptExtension) gd_get_constants() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_constants")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetMembers {
mut:
	get_members_() Array
}

pub fn (s &ScriptExtension) gd_get_members() Array {
	mut result := Array{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_members")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionIsPlaceholderFallbackEnabled {
mut:
	is_placeholder_fallback_enabled_() bool
}

pub fn (s &ScriptExtension) gd_is_placeholder_fallback_enabled() bool {
	mut result := false
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_is_placeholder_fallback_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IScriptExtensionGetRpcConfig {
mut:
	get_rpc_config_() Variant
}

pub fn (s &ScriptExtension) gd_get_rpc_config() Variant {
	mut result := Variant{}
	classname := StringName.new("ScriptExtension")
	fnname := StringName.new("_get_rpc_config")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
