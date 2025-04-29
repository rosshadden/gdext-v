module gd

pub struct NavigationRegion2D {
	Node2D
}

pub fn (s &NavigationRegion2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s NavigationRegion2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &NavigationRegion2D) get_rid() RID {
	mut result := RID{}
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("get_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationRegion2D) set_navigation_polygon(navigation_polygon NavigationPolygon) {
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("set_navigation_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1515040758)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&navigation_polygon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationRegion2D) get_navigation_polygon() NavigationPolygon {
	mut result := NavigationPolygon{}
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("get_navigation_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1046532237)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationRegion2D) set_enabled(enabled bool) {
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("set_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationRegion2D) is_enabled() bool {
	mut result := false
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("is_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationRegion2D) set_navigation_map(navigation_map RID) {
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("set_navigation_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&navigation_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationRegion2D) get_navigation_map() RID {
	mut result := RID{}
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("get_navigation_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationRegion2D) set_use_edge_connections(enabled bool) {
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("set_use_edge_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationRegion2D) get_use_edge_connections() bool {
	mut result := false
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("get_use_edge_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationRegion2D) set_navigation_layers(navigation_layers i64) {
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("set_navigation_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&navigation_layers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationRegion2D) get_navigation_layers() i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("get_navigation_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationRegion2D) set_navigation_layer_value(layer_number i64, value bool) {
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("set_navigation_layer_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationRegion2D) get_navigation_layer_value(layer_number i64) bool {
	mut result := false
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("get_navigation_layer_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationRegion2D) get_region_rid() RID {
	mut result := RID{}
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("get_region_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationRegion2D) set_enter_cost(enter_cost f64) {
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("set_enter_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enter_cost)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationRegion2D) get_enter_cost() f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("get_enter_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationRegion2D) set_travel_cost(travel_cost f64) {
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("set_travel_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&travel_cost)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationRegion2D) get_travel_cost() f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("get_travel_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NavigationRegion2D_bake_navigation_polygon_Cfg {
pub:
	on_thread bool
}

pub fn (s &NavigationRegion2D) bake_navigation_polygon(cfg NavigationRegion2D_bake_navigation_polygon_Cfg) {
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("bake_navigation_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.on_thread)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationRegion2D) is_baking() bool {
	mut result := false
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("is_baking")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationRegion2D) get_bounds() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("NavigationRegion2D")
	fnname := StringName.new("get_bounds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
