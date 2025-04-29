module gd

pub struct StyleBox {
	Resource
}

pub fn (s &StyleBox) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s StyleBox) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IStyleBoxDraw {
mut:
	draw_(to_canvas_item RID, rect Rect2)
}

pub fn (s &StyleBox) gd_draw(to_canvas_item RID, rect Rect2) {
	classname := StringName.new("StyleBox")
	fnname := StringName.new("_draw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2275962004)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&to_canvas_item)}
	args[1] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IStyleBoxGetDrawRect {
mut:
	get_draw_rect_(rect Rect2) Rect2
}

pub fn (s &StyleBox) gd_get_draw_rect(rect Rect2) Rect2 {
	mut result := Rect2{}
	classname := StringName.new("StyleBox")
	fnname := StringName.new("_get_draw_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 408950903)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IStyleBoxGetMinimumSize {
mut:
	get_minimum_size_() Vector2
}

pub fn (s &StyleBox) gd_get_minimum_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("StyleBox")
	fnname := StringName.new("_get_minimum_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IStyleBoxTestMask {
mut:
	test_mask_(point Vector2, rect Rect2) bool
}

pub fn (s &StyleBox) gd_test_mask(point Vector2, rect Rect2) bool {
	mut result := false
	classname := StringName.new("StyleBox")
	fnname := StringName.new("_test_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3735564539)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	args[1] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBox) get_minimum_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("StyleBox")
	fnname := StringName.new("get_minimum_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBox) set_content_margin(margin Side, offset f64) {
	classname := StringName.new("StyleBox")
	fnname := StringName.new("set_content_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290182280)
	mut args := unsafe { [2]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	args[1] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBox) set_content_margin_all(offset f64) {
	classname := StringName.new("StyleBox")
	fnname := StringName.new("set_content_margin_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBox) get_content_margin(margin Side) f64 {
	mut result := f64(0)
	classname := StringName.new("StyleBox")
	fnname := StringName.new("get_content_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
	mut args := unsafe { [1]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBox) get_margin(margin Side) f64 {
	mut result := f64(0)
	classname := StringName.new("StyleBox")
	fnname := StringName.new("get_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
	mut args := unsafe { [1]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBox) get_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("StyleBox")
	fnname := StringName.new("get_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBox) draw(canvas_item RID, rect Rect2) {
	classname := StringName.new("StyleBox")
	fnname := StringName.new("draw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2275962004)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&canvas_item)}
	args[1] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBox) get_current_item_drawn() CanvasItem {
	mut result := CanvasItem{}
	classname := StringName.new("StyleBox")
	fnname := StringName.new("get_current_item_drawn")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3213695180)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBox) test_mask(point Vector2, rect Rect2) bool {
	mut result := false
	classname := StringName.new("StyleBox")
	fnname := StringName.new("test_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3735564539)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	args[1] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
