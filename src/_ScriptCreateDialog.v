module gd

pub struct ScriptCreateDialog {
	ConfirmationDialog
}

pub fn (s &ScriptCreateDialog) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ScriptCreateDialog) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct ScriptCreateDialog_config_Cfg {
pub:
	built_in_enabled bool
	load_enabled bool
}

pub fn (s &ScriptCreateDialog) config(inherits string, path string, cfg ScriptCreateDialog_config_Cfg) {
	classname := StringName.new("ScriptCreateDialog")
	fnname := StringName.new("config")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 869314288)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(inherits)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.built_in_enabled)}
	args[3] = unsafe{voidptr(&cfg.load_enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}
