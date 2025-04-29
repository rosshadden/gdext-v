module gd

pub enum NativeMenuFeature as i64 {
	feature_global_menu = 0
	feature_popup_menu = 1
	feature_open_close_callback = 2
	feature_hover_callback = 3
	feature_key_callback = 4
}

pub enum NativeMenuSystemMenus as i64 {
	invalid_menu_id = 0
	main_menu_id = 1
	application_menu_id = 2
	window_menu_id = 3
	help_menu_id = 4
	dock_menu_id = 5
}

pub struct NativeMenu {
	Object
}

pub fn NativeMenu.get_singleton() NativeMenu {
	sn := StringName.new("NativeMenu")
	result := NativeMenu{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &NativeMenu) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s NativeMenu) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &NativeMenu) has_feature(feature NativeMenuFeature) bool {
	mut result := false
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("has_feature")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1708975490)
	mut args := unsafe { [1]voidptr{} }
	i64_feature := i64(feature)
	args[0] = unsafe{voidptr(&i64_feature)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) has_system_menu(menu_id NativeMenuSystemMenus) bool {
	mut result := false
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("has_system_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 718213027)
	mut args := unsafe { [1]voidptr{} }
	i64_menu_id := i64(menu_id)
	args[0] = unsafe{voidptr(&i64_menu_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) get_system_menu(menu_id NativeMenuSystemMenus) RID {
	mut result := RID{}
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_system_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 469707506)
	mut args := unsafe { [1]voidptr{} }
	i64_menu_id := i64(menu_id)
	args[0] = unsafe{voidptr(&i64_menu_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) get_system_menu_name(menu_id NativeMenuSystemMenus) string {
	mut result := String{}
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_system_menu_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1281499290)
	mut args := unsafe { [1]voidptr{} }
	i64_menu_id := i64(menu_id)
	args[0] = unsafe{voidptr(&i64_menu_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &NativeMenu) create_menu() RID {
	mut result := RID{}
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("create_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) has_menu(rid RID) bool {
	mut result := false
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("has_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) free_menu(rid RID) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("free_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) get_size(rid RID) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2440833711)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) popup(rid RID, position Vector2i) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("popup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2450610377)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_interface_direction(rid RID, is_rtl bool) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_interface_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&is_rtl)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_popup_open_callback(rid RID, callback Callable) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_popup_open_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) get_popup_open_callback(rid RID) Callable {
	mut result := Callable{}
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_popup_open_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3170603026)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) set_popup_close_callback(rid RID, callback Callable) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_popup_close_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) get_popup_close_callback(rid RID) Callable {
	mut result := Callable{}
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_popup_close_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3170603026)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) set_minimum_width(rid RID, width f64) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_minimum_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) get_minimum_width(rid RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_minimum_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) is_opened(rid RID) bool {
	mut result := false
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("is_opened")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NativeMenu_add_submenu_item_Cfg {
pub:
	tag Variant
	index i64
}

pub fn (s &NativeMenu) add_submenu_item(rid RID, label string, submenu_rid RID, cfg NativeMenu_add_submenu_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("add_submenu_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1002030223)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	arg_sn1 := String.new(label)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&submenu_rid)}
	args[3] = unsafe{voidptr(&cfg.tag)}
	args[4] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NativeMenu_add_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &NativeMenu) add_item(rid RID, label string, cfg NativeMenu_add_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("add_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 980552939)
	mut args := unsafe { [7]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	arg_sn1 := String.new(label)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.callback)}
	args[3] = unsafe{voidptr(&cfg.key_callback)}
	args[4] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[5] = unsafe{voidptr(&i64_accelerator)}
	args[6] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NativeMenu_add_check_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &NativeMenu) add_check_item(rid RID, label string, cfg NativeMenu_add_check_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("add_check_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 980552939)
	mut args := unsafe { [7]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	arg_sn1 := String.new(label)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.callback)}
	args[3] = unsafe{voidptr(&cfg.key_callback)}
	args[4] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[5] = unsafe{voidptr(&i64_accelerator)}
	args[6] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NativeMenu_add_icon_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &NativeMenu) add_icon_item(rid RID, icon Texture2D, label string, cfg NativeMenu_add_icon_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("add_icon_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1372188274)
	mut args := unsafe { [8]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = voidptr(&icon.ptr)
	arg_sn2 := String.new(label)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.callback)}
	args[4] = unsafe{voidptr(&cfg.key_callback)}
	args[5] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[6] = unsafe{voidptr(&i64_accelerator)}
	args[7] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NativeMenu_add_icon_check_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &NativeMenu) add_icon_check_item(rid RID, icon Texture2D, label string, cfg NativeMenu_add_icon_check_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("add_icon_check_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1372188274)
	mut args := unsafe { [8]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = voidptr(&icon.ptr)
	arg_sn2 := String.new(label)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.callback)}
	args[4] = unsafe{voidptr(&cfg.key_callback)}
	args[5] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[6] = unsafe{voidptr(&i64_accelerator)}
	args[7] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NativeMenu_add_radio_check_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &NativeMenu) add_radio_check_item(rid RID, label string, cfg NativeMenu_add_radio_check_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("add_radio_check_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 980552939)
	mut args := unsafe { [7]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	arg_sn1 := String.new(label)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.callback)}
	args[3] = unsafe{voidptr(&cfg.key_callback)}
	args[4] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[5] = unsafe{voidptr(&i64_accelerator)}
	args[6] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NativeMenu_add_icon_radio_check_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &NativeMenu) add_icon_radio_check_item(rid RID, icon Texture2D, label string, cfg NativeMenu_add_icon_radio_check_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("add_icon_radio_check_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1372188274)
	mut args := unsafe { [8]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = voidptr(&icon.ptr)
	arg_sn2 := String.new(label)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.callback)}
	args[4] = unsafe{voidptr(&cfg.key_callback)}
	args[5] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[6] = unsafe{voidptr(&i64_accelerator)}
	args[7] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NativeMenu_add_multistate_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &NativeMenu) add_multistate_item(rid RID, label string, max_states i64, default_state i64, cfg NativeMenu_add_multistate_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("add_multistate_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2674635658)
	mut args := unsafe { [9]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	arg_sn1 := String.new(label)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&max_states)}
	args[3] = unsafe{voidptr(&default_state)}
	args[4] = unsafe{voidptr(&cfg.callback)}
	args[5] = unsafe{voidptr(&cfg.key_callback)}
	args[6] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[7] = unsafe{voidptr(&i64_accelerator)}
	args[8] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NativeMenu_add_separator_Cfg {
pub:
	index i64
}

pub fn (s &NativeMenu) add_separator(rid RID, cfg NativeMenu_add_separator_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("add_separator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 448810126)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) find_item_index_with_text(rid RID, text string) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("find_item_index_with_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1362438794)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	arg_sn1 := String.new(text)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) find_item_index_with_tag(rid RID, tag Variant) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("find_item_index_with_tag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1260085030)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&tag)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) find_item_index_with_submenu(rid RID, submenu_rid RID) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("find_item_index_with_submenu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 893635918)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&submenu_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) is_item_checked(rid RID, idx i64) bool {
	mut result := false
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("is_item_checked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3120086654)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) is_item_checkable(rid RID, idx i64) bool {
	mut result := false
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("is_item_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3120086654)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) is_item_radio_checkable(rid RID, idx i64) bool {
	mut result := false
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("is_item_radio_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3120086654)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) get_item_callback(rid RID, idx i64) Callable {
	mut result := Callable{}
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_item_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639989698)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) get_item_key_callback(rid RID, idx i64) Callable {
	mut result := Callable{}
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_item_key_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639989698)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) get_item_tag(rid RID, idx i64) Variant {
	mut result := Variant{}
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_item_tag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4069510997)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) get_item_text(rid RID, idx i64) string {
	mut result := String{}
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_item_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1464764419)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &NativeMenu) get_item_submenu(rid RID, idx i64) RID {
	mut result := RID{}
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_item_submenu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1066463050)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) get_item_accelerator(rid RID, idx i64) Key {
	mut result := i64(Key.key_none)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_item_accelerator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 316800700)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Key(result)}
}

pub fn (s &NativeMenu) is_item_disabled(rid RID, idx i64) bool {
	mut result := false
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("is_item_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3120086654)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) is_item_hidden(rid RID, idx i64) bool {
	mut result := false
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("is_item_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3120086654)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) get_item_tooltip(rid RID, idx i64) string {
	mut result := String{}
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_item_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1464764419)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &NativeMenu) get_item_state(rid RID, idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_item_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) get_item_max_states(rid RID, idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_item_max_states")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) get_item_icon(rid RID, idx i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_item_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3391850701)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) get_item_indentation_level(rid RID, idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_item_indentation_level")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) set_item_checked(rid RID, idx i64, checked bool) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_checked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2658558584)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&checked)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_checkable(rid RID, idx i64, checkable bool) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2658558584)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&checkable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_radio_checkable(rid RID, idx i64, checkable bool) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_radio_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2658558584)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&checkable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_callback(rid RID, idx i64, callback Callable) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2779810226)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_hover_callbacks(rid RID, idx i64, callback Callable) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_hover_callbacks")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2779810226)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_key_callback(rid RID, idx i64, key_callback Callable) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_key_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2779810226)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&key_callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_tag(rid RID, idx i64, tag Variant) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_tag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2706844827)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&tag)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_text(rid RID, idx i64, text string) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4153150897)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	arg_sn2 := String.new(text)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_submenu(rid RID, idx i64, submenu_rid RID) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_submenu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2310537182)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&submenu_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_accelerator(rid RID, idx i64, keycode Key) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_accelerator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 786300043)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	i64_keycode := i64(keycode)
	args[2] = unsafe{voidptr(&i64_keycode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_disabled(rid RID, idx i64, disabled bool) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2658558584)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_hidden(rid RID, idx i64, hidden bool) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2658558584)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&hidden)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_tooltip(rid RID, idx i64, tooltip string) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4153150897)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	arg_sn2 := String.new(tooltip)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_state(rid RID, idx i64, state i64) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&state)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_max_states(rid RID, idx i64, max_states i64) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_max_states")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&max_states)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_icon(rid RID, idx i64, icon Texture2D) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1388763257)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = voidptr(&icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) set_item_indentation_level(rid RID, idx i64, level i64) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("set_item_indentation_level")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&level)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) get_item_count(rid RID) i64 {
	mut result := i64(0)
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("get_item_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) is_system_menu(rid RID) bool {
	mut result := false
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("is_system_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NativeMenu) remove_item(rid RID, idx i64) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("remove_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NativeMenu) clear(rid RID) {
	classname := StringName.new("NativeMenu")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
