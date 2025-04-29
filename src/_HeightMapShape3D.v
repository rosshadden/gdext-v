module gd

pub struct HeightMapShape3D {
	Shape3D
}

pub fn (s &HeightMapShape3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s HeightMapShape3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &HeightMapShape3D) set_map_width(width i64) {
	classname := StringName.new("HeightMapShape3D")
	fnname := StringName.new("set_map_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &HeightMapShape3D) get_map_width() i64 {
	mut result := i64(0)
	classname := StringName.new("HeightMapShape3D")
	fnname := StringName.new("get_map_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &HeightMapShape3D) set_map_depth(height i64) {
	classname := StringName.new("HeightMapShape3D")
	fnname := StringName.new("set_map_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&height)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &HeightMapShape3D) get_map_depth() i64 {
	mut result := i64(0)
	classname := StringName.new("HeightMapShape3D")
	fnname := StringName.new("get_map_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &HeightMapShape3D) set_map_data(data PackedFloat32Array) {
	classname := StringName.new("HeightMapShape3D")
	fnname := StringName.new("set_map_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &HeightMapShape3D) get_map_data() PackedFloat32Array {
	mut result := PackedFloat32Array{}
	classname := StringName.new("HeightMapShape3D")
	fnname := StringName.new("get_map_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &HeightMapShape3D) get_min_height() f64 {
	mut result := f64(0)
	classname := StringName.new("HeightMapShape3D")
	fnname := StringName.new("get_min_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &HeightMapShape3D) get_max_height() f64 {
	mut result := f64(0)
	classname := StringName.new("HeightMapShape3D")
	fnname := StringName.new("get_max_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &HeightMapShape3D) update_map_data_from_image(image Image, height_min f64, height_max f64) {
	classname := StringName.new("HeightMapShape3D")
	fnname := StringName.new("update_map_data_from_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2636652979)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&image.ptr)
	args[1] = unsafe{voidptr(&height_min)}
	args[2] = unsafe{voidptr(&height_max)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
