module gd

pub struct InputEventScreenDrag {
	InputEventFromWindow
}

pub fn (s &InputEventScreenDrag) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s InputEventScreenDrag) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &InputEventScreenDrag) set_index(index i64) {
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("set_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventScreenDrag) get_index() i64 {
	mut result := i64(0)
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("get_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventScreenDrag) set_tilt(tilt Vector2) {
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("set_tilt")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tilt)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventScreenDrag) get_tilt() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("get_tilt")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventScreenDrag) set_pressure(pressure f64) {
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("set_pressure")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pressure)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventScreenDrag) get_pressure() f64 {
	mut result := f64(0)
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("get_pressure")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventScreenDrag) set_pen_inverted(pen_inverted bool) {
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("set_pen_inverted")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pen_inverted)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventScreenDrag) get_pen_inverted() bool {
	mut result := false
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("get_pen_inverted")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventScreenDrag) set_position(position Vector2) {
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("set_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventScreenDrag) get_position() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventScreenDrag) set_relative(relative Vector2) {
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("set_relative")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&relative)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventScreenDrag) get_relative() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("get_relative")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventScreenDrag) set_screen_relative(relative Vector2) {
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("set_screen_relative")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&relative)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventScreenDrag) get_screen_relative() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("get_screen_relative")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventScreenDrag) set_velocity(velocity Vector2) {
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("set_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventScreenDrag) get_velocity() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("get_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventScreenDrag) set_screen_velocity(velocity Vector2) {
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("set_screen_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventScreenDrag) get_screen_velocity() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("InputEventScreenDrag")
	fnname := StringName.new("get_screen_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
