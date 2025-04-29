module gd

pub struct GLTFLight {
	Resource
}

pub fn (s &GLTFLight) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFLight) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn GLTFLight.from_node(light_node Light3D) GLTFLight {
	mut result := GLTFLight{}
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("from_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3907677874)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&light_node.ptr)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFLight) to_node() Light3D {
	mut result := Light3D{}
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("to_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2040811672)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn GLTFLight.from_dictionary(dictionary Dictionary) GLTFLight {
	mut result := GLTFLight{}
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("from_dictionary")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4057087208)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&dictionary)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFLight) to_dictionary() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("to_dictionary")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFLight) get_color() Color {
	mut result := Color{}
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("get_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200896285)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFLight) set_color(color Color) {
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("set_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFLight) get_intensity() f64 {
	mut result := f64(0)
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("get_intensity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFLight) set_intensity(intensity f64) {
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("set_intensity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&intensity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFLight) get_light_type() string {
	mut result := String{}
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("get_light_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &GLTFLight) set_light_type(light_type string) {
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("set_light_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(light_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFLight) get_range() f64 {
	mut result := f64(0)
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("get_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFLight) set_range(range f64) {
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("set_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&range)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFLight) get_inner_cone_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("get_inner_cone_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFLight) set_inner_cone_angle(inner_cone_angle f64) {
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("set_inner_cone_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&inner_cone_angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFLight) get_outer_cone_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("get_outer_cone_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFLight) set_outer_cone_angle(outer_cone_angle f64) {
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("set_outer_cone_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&outer_cone_angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFLight) get_additional_data(extension_name string) Variant {
	mut result := Variant{}
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("get_additional_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138907829)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(extension_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFLight) set_additional_data(extension_name string, additional_data Variant) {
	classname := StringName.new("GLTFLight")
	fnname := StringName.new("set_additional_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(extension_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&additional_data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
