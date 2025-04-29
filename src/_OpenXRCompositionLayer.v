module gd

pub enum OpenXRCompositionLayerFilter as i64 {
	filter_nearest = 0
	filter_linear = 1
	filter_cubic = 2
}

pub enum OpenXRCompositionLayerMipmapMode as i64 {
	mipmap_mode_disabled = 0
	mipmap_mode_nearest = 1
	mipmap_mode_linear = 2
}

pub enum OpenXRCompositionLayerWrap as i64 {
	wrap_clamp_to_border = 0
	wrap_clamp_to_edge = 1
	wrap_repeat = 2
	wrap_mirrored_repeat = 3
	wrap_mirror_clamp_to_edge = 4
}

pub enum OpenXRCompositionLayerSwizzle as i64 {
	swizzle_red = 0
	swizzle_green = 1
	swizzle_blue = 2
	swizzle_alpha = 3
	swizzle_zero = 4
	swizzle_one = 5
}

pub struct OpenXRCompositionLayer {
	Node3D
}

pub fn (s &OpenXRCompositionLayer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRCompositionLayer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRCompositionLayer) set_layer_viewport(viewport SubViewport) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_layer_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3888077664)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&viewport.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_layer_viewport() SubViewport {
	mut result := SubViewport{}
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_layer_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3750751911)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayer) set_use_android_surface(enable bool) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_use_android_surface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_use_android_surface() bool {
	mut result := false
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_use_android_surface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayer) set_android_surface_size(size Vector2i) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_android_surface_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_android_surface_size() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_android_surface_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayer) set_enable_hole_punch(enable bool) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_enable_hole_punch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_enable_hole_punch() bool {
	mut result := false
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_enable_hole_punch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayer) set_sort_order(order i64) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_sort_order")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&order)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_sort_order() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_sort_order")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayer) set_alpha_blend(enabled bool) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_alpha_blend")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_alpha_blend() bool {
	mut result := false
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_alpha_blend")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayer) get_android_surface() JavaObject {
	mut result := JavaObject{}
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_android_surface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3277089691)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayer) is_natively_supported() bool {
	mut result := false
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("is_natively_supported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayer) set_min_filter(mode OpenXRCompositionLayerFilter) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_min_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3653437593)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_min_filter() OpenXRCompositionLayerFilter {
	mut result := i64(OpenXRCompositionLayerFilter.filter_nearest)
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_min_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 845677307)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRCompositionLayerFilter(result)}
}

pub fn (s &OpenXRCompositionLayer) set_mag_filter(mode OpenXRCompositionLayerFilter) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_mag_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3653437593)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_mag_filter() OpenXRCompositionLayerFilter {
	mut result := i64(OpenXRCompositionLayerFilter.filter_nearest)
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_mag_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 845677307)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRCompositionLayerFilter(result)}
}

pub fn (s &OpenXRCompositionLayer) set_mipmap_mode(mode OpenXRCompositionLayerMipmapMode) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_mipmap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3271133183)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_mipmap_mode() OpenXRCompositionLayerMipmapMode {
	mut result := i64(OpenXRCompositionLayerMipmapMode.mipmap_mode_disabled)
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_mipmap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3962697095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRCompositionLayerMipmapMode(result)}
}

pub fn (s &OpenXRCompositionLayer) set_horizontal_wrap(mode OpenXRCompositionLayerWrap) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_horizontal_wrap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 15634990)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_horizontal_wrap() OpenXRCompositionLayerWrap {
	mut result := i64(OpenXRCompositionLayerWrap.wrap_clamp_to_border)
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_horizontal_wrap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2798816834)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRCompositionLayerWrap(result)}
}

pub fn (s &OpenXRCompositionLayer) set_vertical_wrap(mode OpenXRCompositionLayerWrap) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_vertical_wrap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 15634990)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_vertical_wrap() OpenXRCompositionLayerWrap {
	mut result := i64(OpenXRCompositionLayerWrap.wrap_clamp_to_border)
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_vertical_wrap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2798816834)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRCompositionLayerWrap(result)}
}

pub fn (s &OpenXRCompositionLayer) set_red_swizzle(mode OpenXRCompositionLayerSwizzle) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_red_swizzle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 741598951)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_red_swizzle() OpenXRCompositionLayerSwizzle {
	mut result := i64(OpenXRCompositionLayerSwizzle.swizzle_red)
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_red_swizzle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2334776767)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRCompositionLayerSwizzle(result)}
}

pub fn (s &OpenXRCompositionLayer) set_green_swizzle(mode OpenXRCompositionLayerSwizzle) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_green_swizzle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 741598951)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_green_swizzle() OpenXRCompositionLayerSwizzle {
	mut result := i64(OpenXRCompositionLayerSwizzle.swizzle_red)
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_green_swizzle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2334776767)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRCompositionLayerSwizzle(result)}
}

pub fn (s &OpenXRCompositionLayer) set_blue_swizzle(mode OpenXRCompositionLayerSwizzle) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_blue_swizzle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 741598951)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_blue_swizzle() OpenXRCompositionLayerSwizzle {
	mut result := i64(OpenXRCompositionLayerSwizzle.swizzle_red)
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_blue_swizzle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2334776767)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRCompositionLayerSwizzle(result)}
}

pub fn (s &OpenXRCompositionLayer) set_alpha_swizzle(mode OpenXRCompositionLayerSwizzle) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_alpha_swizzle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 741598951)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_alpha_swizzle() OpenXRCompositionLayerSwizzle {
	mut result := i64(OpenXRCompositionLayerSwizzle.swizzle_red)
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_alpha_swizzle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2334776767)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRCompositionLayerSwizzle(result)}
}

pub fn (s &OpenXRCompositionLayer) set_max_anisotropy(value f64) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_max_anisotropy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_max_anisotropy() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_max_anisotropy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayer) set_border_color(color Color) {
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("set_border_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayer) get_border_color() Color {
	mut result := Color{}
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("get_border_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayer) intersects_ray(origin Vector3, direction Vector3) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("OpenXRCompositionLayer")
	fnname := StringName.new("intersects_ray")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1091262597)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&origin)}
	args[1] = unsafe{voidptr(&direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
