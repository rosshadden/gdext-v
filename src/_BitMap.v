module gd

pub struct BitMap {
	Resource
}

pub fn (s &BitMap) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s BitMap) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &BitMap) create(size Vector2i) {
	classname := StringName.new("BitMap")
	fnname := StringName.new("create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct BitMap_create_from_image_alpha_Cfg {
pub:
	threshold f64
}

pub fn (s &BitMap) create_from_image_alpha(image Image, cfg BitMap_create_from_image_alpha_Cfg) {
	classname := StringName.new("BitMap")
	fnname := StringName.new("create_from_image_alpha")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 106271684)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&image.ptr)
	args[1] = unsafe{voidptr(&cfg.threshold)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BitMap) set_bitv(position Vector2i, bit bool) {
	classname := StringName.new("BitMap")
	fnname := StringName.new("set_bitv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4153096796)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&bit)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BitMap) set_bit(x i64, y i64, bit bool) {
	classname := StringName.new("BitMap")
	fnname := StringName.new("set_bit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1383440665)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&x)}
	args[1] = unsafe{voidptr(&y)}
	args[2] = unsafe{voidptr(&bit)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BitMap) get_bitv(position Vector2i) bool {
	mut result := false
	classname := StringName.new("BitMap")
	fnname := StringName.new("get_bitv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BitMap) get_bit(x i64, y i64) bool {
	mut result := false
	classname := StringName.new("BitMap")
	fnname := StringName.new("get_bit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&x)}
	args[1] = unsafe{voidptr(&y)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BitMap) set_bit_rect(rect Rect2i, bit bool) {
	classname := StringName.new("BitMap")
	fnname := StringName.new("set_bit_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 472162941)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rect)}
	args[1] = unsafe{voidptr(&bit)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BitMap) get_true_bit_count() i64 {
	mut result := i64(0)
	classname := StringName.new("BitMap")
	fnname := StringName.new("get_true_bit_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BitMap) get_size() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("BitMap")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BitMap) resize(new_size Vector2i) {
	classname := StringName.new("BitMap")
	fnname := StringName.new("resize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&new_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BitMap) grow_mask(pixels i64, rect Rect2i) {
	classname := StringName.new("BitMap")
	fnname := StringName.new("grow_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3317281434)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&pixels)}
	args[1] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BitMap) convert_to_image() Image {
	mut result := Image{}
	classname := StringName.new("BitMap")
	fnname := StringName.new("convert_to_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4190603485)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct BitMap_opaque_to_polygons_Cfg {
pub:
	epsilon f64
}

pub fn (s &BitMap) opaque_to_polygons(rect Rect2i, cfg BitMap_opaque_to_polygons_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("BitMap")
	fnname := StringName.new("opaque_to_polygons")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 48478126)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rect)}
	args[1] = unsafe{voidptr(&cfg.epsilon)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
