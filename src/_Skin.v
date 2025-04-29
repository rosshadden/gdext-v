module gd

pub struct Skin {
	Resource
}

pub fn (s &Skin) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Skin) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Skin) set_bind_count(bind_count i64) {
	classname := StringName.new("Skin")
	fnname := StringName.new("set_bind_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bind_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skin) get_bind_count() i64 {
	mut result := i64(0)
	classname := StringName.new("Skin")
	fnname := StringName.new("get_bind_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skin) add_bind(bone i64, pose Transform3D) {
	classname := StringName.new("Skin")
	fnname := StringName.new("add_bind")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bone)}
	args[1] = unsafe{voidptr(&pose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skin) add_named_bind(name string, pose Transform3D) {
	classname := StringName.new("Skin")
	fnname := StringName.new("add_named_bind")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3154712474)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&pose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skin) set_bind_pose(bind_index i64, pose Transform3D) {
	classname := StringName.new("Skin")
	fnname := StringName.new("set_bind_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bind_index)}
	args[1] = unsafe{voidptr(&pose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skin) get_bind_pose(bind_index i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("Skin")
	fnname := StringName.new("get_bind_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bind_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skin) set_bind_name(bind_index i64, name string) {
	classname := StringName.new("Skin")
	fnname := StringName.new("set_bind_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bind_index)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skin) get_bind_name(bind_index i64) string {
	mut result := StringName{}
	classname := StringName.new("Skin")
	fnname := StringName.new("get_bind_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bind_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Skin) set_bind_bone(bind_index i64, bone i64) {
	classname := StringName.new("Skin")
	fnname := StringName.new("set_bind_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bind_index)}
	args[1] = unsafe{voidptr(&bone)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skin) get_bind_bone(bind_index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("Skin")
	fnname := StringName.new("get_bind_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bind_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skin) clear_binds() {
	classname := StringName.new("Skin")
	fnname := StringName.new("clear_binds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
