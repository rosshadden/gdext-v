module gd

pub struct MainLoop {
	Object
}

pub fn (s &MainLoop) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MainLoop) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IMainLoopInitialize {
mut:
	initialize_()
}

pub fn (s &MainLoop) gd_initialize() {
	classname := StringName.new("MainLoop")
	fnname := StringName.new("_initialize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IMainLoopPhysicsProcess {
mut:
	physics_process_(delta f64) bool
}

pub fn (s &MainLoop) gd_physics_process(delta f64) bool {
	mut result := false
	classname := StringName.new("MainLoop")
	fnname := StringName.new("_physics_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 330693286)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMainLoopProcess {
mut:
	process_(delta f64) bool
}

pub fn (s &MainLoop) gd_process(delta f64) bool {
	mut result := false
	classname := StringName.new("MainLoop")
	fnname := StringName.new("_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 330693286)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMainLoopFinalize {
mut:
	finalize_()
}

pub fn (s &MainLoop) gd_finalize() {
	classname := StringName.new("MainLoop")
	fnname := StringName.new("_finalize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
