module gd

pub enum EditorToasterSeverity as i64 {
	severity_info = 0
	severity_warning = 1
	severity_error = 2
}

pub struct EditorToaster {
	HBoxContainer
}

pub fn (s &EditorToaster) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorToaster) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct EditorToaster_push_toast_Cfg {
pub:
	severity EditorToasterSeverity
	tooltip string
}

pub fn (s &EditorToaster) push_toast(message string, cfg EditorToaster_push_toast_Cfg) {
	classname := StringName.new("EditorToaster")
	fnname := StringName.new("push_toast")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1813923476)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_severity := i64(cfg.severity)
	args[1] = unsafe{voidptr(&i64_severity)}
	arg_sn2 := String.new(cfg.tooltip)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}
