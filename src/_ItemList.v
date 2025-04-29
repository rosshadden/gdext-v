module gd

pub enum ItemListIconMode as i64 {
	icon_mode_top = 0
	icon_mode_left = 1
}

pub enum ItemListSelectMode as i64 {
	select_single = 0
	select_multi = 1
	select_toggle = 2
}

pub struct ItemList {
	Control
}

pub fn (s &ItemList) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ItemList) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct ItemList_add_item_Cfg {
pub:
	icon Texture2D
	selectable bool
}

pub fn (s &ItemList) add_item(text string, cfg ItemList_add_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("ItemList")
	fnname := StringName.new("add_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 359861678)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&cfg.icon.ptr)
	args[2] = unsafe{voidptr(&cfg.selectable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ItemList_add_icon_item_Cfg {
pub:
	selectable bool
}

pub fn (s &ItemList) add_icon_item(icon Texture2D, cfg ItemList_add_icon_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("ItemList")
	fnname := StringName.new("add_icon_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4256579627)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&icon.ptr)
	args[1] = unsafe{voidptr(&cfg.selectable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_item_text(idx i64, text string) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	arg_sn1 := String.new(text)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_item_text(idx i64) string {
	mut result := String{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &ItemList) set_item_icon(idx i64, icon Texture2D) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = voidptr(&icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_item_icon(idx i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_item_text_direction(idx i64, direction ControlTextDirection) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1707680378)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	i64_direction := i64(direction)
	args[1] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_item_text_direction(idx i64) ControlTextDirection {
	mut result := i64(ControlTextDirection.text_direction_inherited)
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235602388)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlTextDirection(result)}
}

pub fn (s &ItemList) set_item_language(idx i64, language string) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_item_language(idx i64) string {
	mut result := String{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &ItemList) set_item_auto_translate_mode(idx i64, mode NodeAutoTranslateMode) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_auto_translate_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 287402019)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	i64_mode := i64(mode)
	args[1] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_item_auto_translate_mode(idx i64) NodeAutoTranslateMode {
	mut result := i64(NodeAutoTranslateMode.auto_translate_mode_inherit)
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_auto_translate_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 906302372)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NodeAutoTranslateMode(result)}
}

pub fn (s &ItemList) set_item_icon_transposed(idx i64, transposed bool) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_icon_transposed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&transposed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) is_item_icon_transposed(idx i64) bool {
	mut result := false
	classname := StringName.new("ItemList")
	fnname := StringName.new("is_item_icon_transposed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_item_icon_region(idx i64, rect Rect2) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_icon_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1356297692)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_item_icon_region(idx i64) Rect2 {
	mut result := Rect2{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_icon_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3327874267)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_item_icon_modulate(idx i64, modulate Color) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_icon_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&modulate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_item_icon_modulate(idx i64) Color {
	mut result := Color{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_icon_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_item_selectable(idx i64, selectable bool) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_selectable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&selectable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) is_item_selectable(idx i64) bool {
	mut result := false
	classname := StringName.new("ItemList")
	fnname := StringName.new("is_item_selectable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_item_disabled(idx i64, disabled bool) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) is_item_disabled(idx i64) bool {
	mut result := false
	classname := StringName.new("ItemList")
	fnname := StringName.new("is_item_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_item_metadata(idx i64, metadata Variant) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&metadata)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_item_metadata(idx i64) Variant {
	mut result := Variant{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_item_custom_bg_color(idx i64, custom_bg_color Color) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_custom_bg_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&custom_bg_color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_item_custom_bg_color(idx i64) Color {
	mut result := Color{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_custom_bg_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_item_custom_fg_color(idx i64, custom_fg_color Color) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_custom_fg_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&custom_fg_color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_item_custom_fg_color(idx i64) Color {
	mut result := Color{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_custom_fg_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ItemList_get_item_rect_Cfg {
pub:
	expand bool
}

pub fn (s &ItemList) get_item_rect(idx i64, cfg ItemList_get_item_rect_Cfg) Rect2 {
	mut result := Rect2{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 159227807)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&cfg.expand)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_item_tooltip_enabled(idx i64, enable bool) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_tooltip_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) is_item_tooltip_enabled(idx i64) bool {
	mut result := false
	classname := StringName.new("ItemList")
	fnname := StringName.new("is_item_tooltip_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_item_tooltip(idx i64, tooltip string) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	arg_sn1 := String.new(tooltip)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_item_tooltip(idx i64) string {
	mut result := String{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct ItemList_gd_select_Cfg {
pub:
	single bool
}

pub fn (s &ItemList) gd_select(idx i64, cfg ItemList_gd_select_Cfg) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("select")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 972357352)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&cfg.single)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) deselect(idx i64) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("deselect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) deselect_all() {
	classname := StringName.new("ItemList")
	fnname := StringName.new("deselect_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) is_selected(idx i64) bool {
	mut result := false
	classname := StringName.new("ItemList")
	fnname := StringName.new("is_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) get_selected_items() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_selected_items")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) move_item(from_idx i64, to_idx i64) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("move_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_idx)}
	args[1] = unsafe{voidptr(&to_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) set_item_count(count i64) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_item_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_item_count() i64 {
	mut result := i64(0)
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) remove_item(idx i64) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("remove_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) clear() {
	classname := StringName.new("ItemList")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) sort_items_by_text() {
	classname := StringName.new("ItemList")
	fnname := StringName.new("sort_items_by_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) set_fixed_column_width(width i64) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_fixed_column_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_fixed_column_width() i64 {
	mut result := i64(0)
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_fixed_column_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_same_column_width(enable bool) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_same_column_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) is_same_column_width() bool {
	mut result := false
	classname := StringName.new("ItemList")
	fnname := StringName.new("is_same_column_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_max_text_lines(lines i64) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_max_text_lines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&lines)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_max_text_lines() i64 {
	mut result := i64(0)
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_max_text_lines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_max_columns(amount i64) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_max_columns")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_max_columns() i64 {
	mut result := i64(0)
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_max_columns")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_select_mode(mode ItemListSelectMode) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_select_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 928267388)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_select_mode() ItemListSelectMode {
	mut result := i64(ItemListSelectMode.select_single)
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_select_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1191945842)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ItemListSelectMode(result)}
}

pub fn (s &ItemList) set_icon_mode(mode ItemListIconMode) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_icon_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2025053633)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_icon_mode() ItemListIconMode {
	mut result := i64(ItemListIconMode.icon_mode_top)
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_icon_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3353929232)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ItemListIconMode(result)}
}

pub fn (s &ItemList) set_fixed_icon_size(size Vector2i) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_fixed_icon_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_fixed_icon_size() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_fixed_icon_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_icon_scale(scale f64) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_icon_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_icon_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_icon_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_allow_rmb_select(allow bool) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_allow_rmb_select")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&allow)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_allow_rmb_select() bool {
	mut result := false
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_allow_rmb_select")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_allow_reselect(allow bool) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_allow_reselect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&allow)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_allow_reselect() bool {
	mut result := false
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_allow_reselect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_allow_search(allow bool) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_allow_search")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&allow)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_allow_search() bool {
	mut result := false
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_allow_search")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_auto_width(enable bool) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_auto_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) has_auto_width() bool {
	mut result := false
	classname := StringName.new("ItemList")
	fnname := StringName.new("has_auto_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_auto_height(enable bool) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_auto_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) has_auto_height() bool {
	mut result := false
	classname := StringName.new("ItemList")
	fnname := StringName.new("has_auto_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) is_anything_selected() bool {
	mut result := false
	classname := StringName.new("ItemList")
	fnname := StringName.new("is_anything_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ItemList_get_item_at_position_Cfg {
pub:
	exact bool
}

pub fn (s &ItemList) get_item_at_position(position Vector2, cfg ItemList_get_item_at_position_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_item_at_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2300324924)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&cfg.exact)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) ensure_current_is_visible() {
	classname := StringName.new("ItemList")
	fnname := StringName.new("ensure_current_is_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_v_scroll_bar() VScrollBar {
	mut result := VScrollBar{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_v_scroll_bar")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2630340773)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) get_h_scroll_bar() HScrollBar {
	mut result := HScrollBar{}
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_h_scroll_bar")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4004517983)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) set_text_overrun_behavior(overrun_behavior TextServerOverrunBehavior) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_text_overrun_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1008890932)
	mut args := unsafe { [1]voidptr{} }
	i64_overrun_behavior := i64(overrun_behavior)
	args[0] = unsafe{voidptr(&i64_overrun_behavior)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) get_text_overrun_behavior() TextServerOverrunBehavior {
	mut result := i64(TextServerOverrunBehavior.overrun_no_trimming)
	classname := StringName.new("ItemList")
	fnname := StringName.new("get_text_overrun_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3779142101)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerOverrunBehavior(result)}
}

pub fn (s &ItemList) set_wraparound_items(enable bool) {
	classname := StringName.new("ItemList")
	fnname := StringName.new("set_wraparound_items")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ItemList) has_wraparound_items() bool {
	mut result := false
	classname := StringName.new("ItemList")
	fnname := StringName.new("has_wraparound_items")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ItemList) force_update_list_size() {
	classname := StringName.new("ItemList")
	fnname := StringName.new("force_update_list_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
