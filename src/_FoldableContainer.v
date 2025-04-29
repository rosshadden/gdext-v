module gd

pub enum FoldableContainerTitlePosition as i64 {
	position_top = 0
	position_bottom = 1
}

pub struct FoldableContainer {
	Container
}

pub fn (s &FoldableContainer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s FoldableContainer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &FoldableContainer) fold() {
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("fold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FoldableContainer) expand() {
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("expand")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FoldableContainer) set_folded(folded bool) {
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("set_folded")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&folded)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FoldableContainer) is_folded() bool {
	mut result := false
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("is_folded")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FoldableContainer) set_foldable_group(button_group FoldableGroup) {
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("set_foldable_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3001390597)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&button_group.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FoldableContainer) get_foldable_group() FoldableGroup {
	mut result := FoldableGroup{}
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("get_foldable_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 66499518)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FoldableContainer) set_text(text string) {
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("set_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FoldableContainer) get_text() string {
	mut result := String{}
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("get_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &FoldableContainer) set_title_alignment(alignment HorizontalAlignment) {
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("set_title_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
	mut args := unsafe { [1]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FoldableContainer) get_title_alignment() HorizontalAlignment {
	mut result := i64(HorizontalAlignment.horizontal_alignment_left)
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("get_title_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{HorizontalAlignment(result)}
}

pub fn (s &FoldableContainer) set_language(language string) {
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("set_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(language)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FoldableContainer) get_language() string {
	mut result := String{}
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("get_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &FoldableContainer) set_text_direction(text_direction ControlTextDirection) {
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("set_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
	mut args := unsafe { [1]voidptr{} }
	i64_text_direction := i64(text_direction)
	args[0] = unsafe{voidptr(&i64_text_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FoldableContainer) get_text_direction() ControlTextDirection {
	mut result := i64(ControlTextDirection.text_direction_inherited)
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("get_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlTextDirection(result)}
}

pub fn (s &FoldableContainer) set_text_overrun_behavior(overrun_behavior TextServerOverrunBehavior) {
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("set_text_overrun_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1008890932)
	mut args := unsafe { [1]voidptr{} }
	i64_overrun_behavior := i64(overrun_behavior)
	args[0] = unsafe{voidptr(&i64_overrun_behavior)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FoldableContainer) get_text_overrun_behavior() TextServerOverrunBehavior {
	mut result := i64(TextServerOverrunBehavior.overrun_no_trimming)
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("get_text_overrun_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3779142101)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerOverrunBehavior(result)}
}

pub fn (s &FoldableContainer) set_title_position(title_position FoldableContainerTitlePosition) {
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("set_title_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2276829442)
	mut args := unsafe { [1]voidptr{} }
	i64_title_position := i64(title_position)
	args[0] = unsafe{voidptr(&i64_title_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FoldableContainer) get_title_position() FoldableContainerTitlePosition {
	mut result := i64(FoldableContainerTitlePosition.position_top)
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("get_title_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3028840207)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{FoldableContainerTitlePosition(result)}
}

pub fn (s &FoldableContainer) add_title_bar_control(control Control) {
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("add_title_bar_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FoldableContainer) remove_title_bar_control(control Control) {
	classname := StringName.new("FoldableContainer")
	fnname := StringName.new("remove_title_bar_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
