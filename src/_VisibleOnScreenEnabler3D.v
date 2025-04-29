module gd

pub enum VisibleOnScreenEnabler3DEnableMode as i64 {
	enable_mode_inherit = 0
	enable_mode_always = 1
	enable_mode_when_paused = 2
}

pub struct VisibleOnScreenEnabler3D {
	VisibleOnScreenNotifier3D
}

pub fn (s &VisibleOnScreenEnabler3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisibleOnScreenEnabler3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisibleOnScreenEnabler3D) set_enable_mode(mode VisibleOnScreenEnabler3DEnableMode) {
	classname := StringName.new("VisibleOnScreenEnabler3D")
	fnname := StringName.new("set_enable_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 320303646)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisibleOnScreenEnabler3D) get_enable_mode() VisibleOnScreenEnabler3DEnableMode {
	mut result := i64(VisibleOnScreenEnabler3DEnableMode.enable_mode_inherit)
	classname := StringName.new("VisibleOnScreenEnabler3D")
	fnname := StringName.new("get_enable_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3352990031)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisibleOnScreenEnabler3DEnableMode(result)}
}

pub fn (s &VisibleOnScreenEnabler3D) set_enable_node_path(path NodePath) {
	classname := StringName.new("VisibleOnScreenEnabler3D")
	fnname := StringName.new("set_enable_node_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisibleOnScreenEnabler3D) get_enable_node_path() NodePath {
	mut result := NodePath{}
	classname := StringName.new("VisibleOnScreenEnabler3D")
	fnname := StringName.new("get_enable_node_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 277076166)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
