module gd

pub struct SubViewportContainer {
	Container
}

pub fn (s &SubViewportContainer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SubViewportContainer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ISubViewportContainerPropagateInputEvent {
mut:
	propagate_input_event_(event InputEvent) bool
}

pub fn (s &SubViewportContainer) gd_propagate_input_event(event InputEvent) bool {
	mut result := false
	classname := StringName.new("SubViewportContainer")
	fnname := StringName.new("_propagate_input_event")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3738334489)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&event.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SubViewportContainer) set_stretch(enable bool) {
	classname := StringName.new("SubViewportContainer")
	fnname := StringName.new("set_stretch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SubViewportContainer) is_stretch_enabled() bool {
	mut result := false
	classname := StringName.new("SubViewportContainer")
	fnname := StringName.new("is_stretch_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SubViewportContainer) set_stretch_shrink(amount i64) {
	classname := StringName.new("SubViewportContainer")
	fnname := StringName.new("set_stretch_shrink")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SubViewportContainer) get_stretch_shrink() i64 {
	mut result := i64(0)
	classname := StringName.new("SubViewportContainer")
	fnname := StringName.new("get_stretch_shrink")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SubViewportContainer) set_mouse_target(amount bool) {
	classname := StringName.new("SubViewportContainer")
	fnname := StringName.new("set_mouse_target")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SubViewportContainer) is_mouse_target_enabled() bool {
	mut result := false
	classname := StringName.new("SubViewportContainer")
	fnname := StringName.new("is_mouse_target_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
