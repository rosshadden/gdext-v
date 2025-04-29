module gd

pub enum TreeSelectMode as i64 {
	select_single = 0
	select_row = 1
	select_multi = 2
}

pub enum TreeDropModeFlags as i64 {
	drop_mode_disabled = 0
	drop_mode_on_item = 1
	drop_mode_inbetween = 2
}

pub struct Tree {
	Control
}

pub fn (s &Tree) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Tree) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Tree) clear() {
	classname := StringName.new("Tree")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Tree_create_item_Cfg {
pub:
	parent TreeItem
	index i64
}

pub fn (s &Tree) create_item(cfg Tree_create_item_Cfg) TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("Tree")
	fnname := StringName.new("create_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 528467046)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&cfg.parent.ptr)
	args[1] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) get_root() TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("Tree")
	fnname := StringName.new("get_root")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1514277247)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) set_column_custom_minimum_width(column i64, min_width i64) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_column_custom_minimum_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&min_width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) set_column_expand(column i64, expand bool) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_column_expand")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&expand)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) set_column_expand_ratio(column i64, ratio i64) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_column_expand_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) set_column_clip_content(column i64, enable bool) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_column_clip_content")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) is_column_expanding(column i64) bool {
	mut result := false
	classname := StringName.new("Tree")
	fnname := StringName.new("is_column_expanding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) is_column_clipping_content(column i64) bool {
	mut result := false
	classname := StringName.new("Tree")
	fnname := StringName.new("is_column_clipping_content")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) get_column_expand_ratio(column i64) i64 {
	mut result := i64(0)
	classname := StringName.new("Tree")
	fnname := StringName.new("get_column_expand_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) get_column_width(column i64) i64 {
	mut result := i64(0)
	classname := StringName.new("Tree")
	fnname := StringName.new("get_column_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) set_hide_root(enable bool) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_hide_root")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) is_root_hidden() bool {
	mut result := false
	classname := StringName.new("Tree")
	fnname := StringName.new("is_root_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) get_next_selected(from TreeItem) TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("Tree")
	fnname := StringName.new("get_next_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 873446299)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&from.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) get_selected() TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("Tree")
	fnname := StringName.new("get_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1514277247)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) set_selected(item TreeItem, column i64) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2662547442)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&item.ptr)
	args[1] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) get_selected_column() i64 {
	mut result := i64(0)
	classname := StringName.new("Tree")
	fnname := StringName.new("get_selected_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) get_pressed_button() i64 {
	mut result := i64(0)
	classname := StringName.new("Tree")
	fnname := StringName.new("get_pressed_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) set_select_mode(mode TreeSelectMode) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_select_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3223887270)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) get_select_mode() TreeSelectMode {
	mut result := i64(TreeSelectMode.select_single)
	classname := StringName.new("Tree")
	fnname := StringName.new("get_select_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 100748571)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TreeSelectMode(result)}
}

pub fn (s &Tree) deselect_all() {
	classname := StringName.new("Tree")
	fnname := StringName.new("deselect_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) set_columns(amount i64) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_columns")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) get_columns() i64 {
	mut result := i64(0)
	classname := StringName.new("Tree")
	fnname := StringName.new("get_columns")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) get_edited() TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("Tree")
	fnname := StringName.new("get_edited")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1514277247)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) get_edited_column() i64 {
	mut result := i64(0)
	classname := StringName.new("Tree")
	fnname := StringName.new("get_edited_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Tree_edit_selected_Cfg {
pub:
	force_edit bool
}

pub fn (s &Tree) edit_selected(cfg Tree_edit_selected_Cfg) bool {
	mut result := false
	classname := StringName.new("Tree")
	fnname := StringName.new("edit_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2595650253)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.force_edit)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) get_custom_popup_rect() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("Tree")
	fnname := StringName.new("get_custom_popup_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Tree_get_item_area_rect_Cfg {
pub:
	column i64
	button_index i64
}

pub fn (s &Tree) get_item_area_rect(item TreeItem, cfg Tree_get_item_area_rect_Cfg) Rect2 {
	mut result := Rect2{}
	classname := StringName.new("Tree")
	fnname := StringName.new("get_item_area_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 47968679)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&item.ptr)
	args[1] = unsafe{voidptr(&cfg.column)}
	args[2] = unsafe{voidptr(&cfg.button_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) get_item_at_position(position Vector2) TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("Tree")
	fnname := StringName.new("get_item_at_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4193340126)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) get_column_at_position(position Vector2) i64 {
	mut result := i64(0)
	classname := StringName.new("Tree")
	fnname := StringName.new("get_column_at_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) get_drop_section_at_position(position Vector2) i64 {
	mut result := i64(0)
	classname := StringName.new("Tree")
	fnname := StringName.new("get_drop_section_at_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) get_button_id_at_position(position Vector2) i64 {
	mut result := i64(0)
	classname := StringName.new("Tree")
	fnname := StringName.new("get_button_id_at_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) ensure_cursor_is_visible() {
	classname := StringName.new("Tree")
	fnname := StringName.new("ensure_cursor_is_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) set_column_titles_visible(visible bool) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_column_titles_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&visible)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) are_column_titles_visible() bool {
	mut result := false
	classname := StringName.new("Tree")
	fnname := StringName.new("are_column_titles_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) set_column_title(column i64, title string) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_column_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	arg_sn1 := String.new(title)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) get_column_title(column i64) string {
	mut result := String{}
	classname := StringName.new("Tree")
	fnname := StringName.new("get_column_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Tree) set_column_title_alignment(column i64, title_alignment HorizontalAlignment) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_column_title_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3276431499)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	i64_title_alignment := i64(title_alignment)
	args[1] = unsafe{voidptr(&i64_title_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) get_column_title_alignment(column i64) HorizontalAlignment {
	mut result := i64(HorizontalAlignment.horizontal_alignment_left)
	classname := StringName.new("Tree")
	fnname := StringName.new("get_column_title_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4171562184)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{HorizontalAlignment(result)}
}

pub fn (s &Tree) set_column_title_direction(column i64, direction ControlTextDirection) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_column_title_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1707680378)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	i64_direction := i64(direction)
	args[1] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) get_column_title_direction(column i64) ControlTextDirection {
	mut result := i64(ControlTextDirection.text_direction_inherited)
	classname := StringName.new("Tree")
	fnname := StringName.new("get_column_title_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235602388)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlTextDirection(result)}
}

pub fn (s &Tree) set_column_title_language(column i64, language string) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_column_title_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) get_column_title_language(column i64) string {
	mut result := String{}
	classname := StringName.new("Tree")
	fnname := StringName.new("get_column_title_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Tree) get_scroll() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Tree")
	fnname := StringName.new("get_scroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Tree_scroll_to_item_Cfg {
pub:
	center_on_item bool
}

pub fn (s &Tree) scroll_to_item(item TreeItem, cfg Tree_scroll_to_item_Cfg) {
	classname := StringName.new("Tree")
	fnname := StringName.new("scroll_to_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1314737213)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&item.ptr)
	args[1] = unsafe{voidptr(&cfg.center_on_item)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) set_h_scroll_enabled(h_scroll bool) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_h_scroll_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&h_scroll)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) is_h_scroll_enabled() bool {
	mut result := false
	classname := StringName.new("Tree")
	fnname := StringName.new("is_h_scroll_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) set_v_scroll_enabled(h_scroll bool) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_v_scroll_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&h_scroll)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) is_v_scroll_enabled() bool {
	mut result := false
	classname := StringName.new("Tree")
	fnname := StringName.new("is_v_scroll_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) set_hide_folding(hide bool) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_hide_folding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&hide)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) is_folding_hidden() bool {
	mut result := false
	classname := StringName.new("Tree")
	fnname := StringName.new("is_folding_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) set_enable_recursive_folding(enable bool) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_enable_recursive_folding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) is_recursive_folding_enabled() bool {
	mut result := false
	classname := StringName.new("Tree")
	fnname := StringName.new("is_recursive_folding_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) set_drop_mode_flags(flags i64) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_drop_mode_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) get_drop_mode_flags() i64 {
	mut result := i64(0)
	classname := StringName.new("Tree")
	fnname := StringName.new("get_drop_mode_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) set_allow_rmb_select(allow bool) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_allow_rmb_select")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&allow)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) get_allow_rmb_select() bool {
	mut result := false
	classname := StringName.new("Tree")
	fnname := StringName.new("get_allow_rmb_select")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) set_allow_reselect(allow bool) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_allow_reselect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&allow)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) get_allow_reselect() bool {
	mut result := false
	classname := StringName.new("Tree")
	fnname := StringName.new("get_allow_reselect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) set_allow_search(allow bool) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_allow_search")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&allow)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) get_allow_search() bool {
	mut result := false
	classname := StringName.new("Tree")
	fnname := StringName.new("get_allow_search")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tree) set_auto_tooltip(enable bool) {
	classname := StringName.new("Tree")
	fnname := StringName.new("set_auto_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tree) is_auto_tooltip_enabled() bool {
	mut result := false
	classname := StringName.new("Tree")
	fnname := StringName.new("is_auto_tooltip_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
