module gd

pub struct PopupMenu {
	Popup
}

pub fn (s &PopupMenu) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PopupMenu) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct PopupMenu_activate_item_by_event_Cfg {
pub:
	for_global_only bool
}

pub fn (s &PopupMenu) activate_item_by_event(event InputEvent, cfg PopupMenu_activate_item_by_event_Cfg) bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("activate_item_by_event")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3716412023)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&event.ptr)
	args[1] = unsafe{voidptr(&cfg.for_global_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) set_prefer_native_menu(enabled bool) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_prefer_native_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) is_prefer_native_menu() bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("is_prefer_native_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) is_native_menu() bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("is_native_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PopupMenu_add_item_Cfg {
pub:
	id i64
	accel Key
}

pub fn (s &PopupMenu) add_item(label string, cfg PopupMenu_add_item_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3674230041)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(label)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.id)}
	i64_accel := i64(cfg.accel)
	args[2] = unsafe{voidptr(&i64_accel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_icon_item_Cfg {
pub:
	id i64
	accel Key
}

pub fn (s &PopupMenu) add_icon_item(texture Texture2D, label string, cfg PopupMenu_add_icon_item_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_icon_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1086190128)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	arg_sn1 := String.new(label)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.id)}
	i64_accel := i64(cfg.accel)
	args[3] = unsafe{voidptr(&i64_accel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_check_item_Cfg {
pub:
	id i64
	accel Key
}

pub fn (s &PopupMenu) add_check_item(label string, cfg PopupMenu_add_check_item_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_check_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3674230041)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(label)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.id)}
	i64_accel := i64(cfg.accel)
	args[2] = unsafe{voidptr(&i64_accel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_icon_check_item_Cfg {
pub:
	id i64
	accel Key
}

pub fn (s &PopupMenu) add_icon_check_item(texture Texture2D, label string, cfg PopupMenu_add_icon_check_item_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_icon_check_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1086190128)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	arg_sn1 := String.new(label)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.id)}
	i64_accel := i64(cfg.accel)
	args[3] = unsafe{voidptr(&i64_accel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_radio_check_item_Cfg {
pub:
	id i64
	accel Key
}

pub fn (s &PopupMenu) add_radio_check_item(label string, cfg PopupMenu_add_radio_check_item_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_radio_check_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3674230041)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(label)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.id)}
	i64_accel := i64(cfg.accel)
	args[2] = unsafe{voidptr(&i64_accel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_icon_radio_check_item_Cfg {
pub:
	id i64
	accel Key
}

pub fn (s &PopupMenu) add_icon_radio_check_item(texture Texture2D, label string, cfg PopupMenu_add_icon_radio_check_item_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_icon_radio_check_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1086190128)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	arg_sn1 := String.new(label)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.id)}
	i64_accel := i64(cfg.accel)
	args[3] = unsafe{voidptr(&i64_accel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_multistate_item_Cfg {
pub:
	default_state i64
	id i64
	accel Key
}

pub fn (s &PopupMenu) add_multistate_item(label string, max_states i64, cfg PopupMenu_add_multistate_item_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_multistate_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 150780458)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := String.new(label)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&max_states)}
	args[2] = unsafe{voidptr(&cfg.default_state)}
	args[3] = unsafe{voidptr(&cfg.id)}
	i64_accel := i64(cfg.accel)
	args[4] = unsafe{voidptr(&i64_accel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_shortcut_Cfg {
pub:
	id i64
	global bool
	allow_echo bool
}

pub fn (s &PopupMenu) add_shortcut(shortcut Shortcut, cfg PopupMenu_add_shortcut_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3451850107)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&shortcut.ptr)
	args[1] = unsafe{voidptr(&cfg.id)}
	args[2] = unsafe{voidptr(&cfg.global)}
	args[3] = unsafe{voidptr(&cfg.allow_echo)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_icon_shortcut_Cfg {
pub:
	id i64
	global bool
	allow_echo bool
}

pub fn (s &PopupMenu) add_icon_shortcut(texture Texture2D, shortcut Shortcut, cfg PopupMenu_add_icon_shortcut_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_icon_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2997871092)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	args[1] = voidptr(&shortcut.ptr)
	args[2] = unsafe{voidptr(&cfg.id)}
	args[3] = unsafe{voidptr(&cfg.global)}
	args[4] = unsafe{voidptr(&cfg.allow_echo)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_check_shortcut_Cfg {
pub:
	id i64
	global bool
}

pub fn (s &PopupMenu) add_check_shortcut(shortcut Shortcut, cfg PopupMenu_add_check_shortcut_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_check_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1642193386)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&shortcut.ptr)
	args[1] = unsafe{voidptr(&cfg.id)}
	args[2] = unsafe{voidptr(&cfg.global)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_icon_check_shortcut_Cfg {
pub:
	id i64
	global bool
}

pub fn (s &PopupMenu) add_icon_check_shortcut(texture Texture2D, shortcut Shortcut, cfg PopupMenu_add_icon_check_shortcut_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_icon_check_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3856247530)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	args[1] = voidptr(&shortcut.ptr)
	args[2] = unsafe{voidptr(&cfg.id)}
	args[3] = unsafe{voidptr(&cfg.global)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_radio_check_shortcut_Cfg {
pub:
	id i64
	global bool
}

pub fn (s &PopupMenu) add_radio_check_shortcut(shortcut Shortcut, cfg PopupMenu_add_radio_check_shortcut_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_radio_check_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1642193386)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&shortcut.ptr)
	args[1] = unsafe{voidptr(&cfg.id)}
	args[2] = unsafe{voidptr(&cfg.global)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_icon_radio_check_shortcut_Cfg {
pub:
	id i64
	global bool
}

pub fn (s &PopupMenu) add_icon_radio_check_shortcut(texture Texture2D, shortcut Shortcut, cfg PopupMenu_add_icon_radio_check_shortcut_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_icon_radio_check_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3856247530)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	args[1] = voidptr(&shortcut.ptr)
	args[2] = unsafe{voidptr(&cfg.id)}
	args[3] = unsafe{voidptr(&cfg.global)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_submenu_item_Cfg {
pub:
	id i64
}

pub fn (s &PopupMenu) add_submenu_item(label string, submenu string, cfg PopupMenu_add_submenu_item_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_submenu_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2979222410)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(label)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(submenu)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_submenu_node_item_Cfg {
pub:
	id i64
}

pub fn (s &PopupMenu) add_submenu_node_item(label string, submenu PopupMenu, cfg PopupMenu_add_submenu_node_item_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_submenu_node_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1325455216)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(label)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&submenu.ptr)
	args[2] = unsafe{voidptr(&cfg.id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_text(index i64, text string) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	arg_sn1 := String.new(text)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_text_direction(index i64, direction ControlTextDirection) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1707680378)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	i64_direction := i64(direction)
	args[1] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_language(index i64, language string) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_auto_translate_mode(index i64, mode NodeAutoTranslateMode) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_auto_translate_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 287402019)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	i64_mode := i64(mode)
	args[1] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_icon(index i64, icon Texture2D) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = voidptr(&icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_icon_max_width(index i64, width i64) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_icon_max_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_icon_modulate(index i64, modulate Color) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_icon_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&modulate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_checked(index i64, checked bool) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_checked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&checked)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_id(index i64, id i64) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_accelerator(index i64, accel Key) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_accelerator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2992817551)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	i64_accel := i64(accel)
	args[1] = unsafe{voidptr(&i64_accel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_metadata(index i64, metadata Variant) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&metadata)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_disabled(index i64, disabled bool) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_submenu(index i64, submenu string) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_submenu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	arg_sn1 := String.new(submenu)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_submenu_node(index i64, submenu PopupMenu) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_submenu_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068370740)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = voidptr(&submenu.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_as_separator(index i64, enable bool) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_as_separator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_as_checkable(index i64, enable bool) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_as_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_as_radio_checkable(index i64, enable bool) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_as_radio_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_tooltip(index i64, tooltip string) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	arg_sn1 := String.new(tooltip)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_set_item_shortcut_Cfg {
pub:
	global bool
}

pub fn (s &PopupMenu) set_item_shortcut(index i64, shortcut Shortcut, cfg PopupMenu_set_item_shortcut_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 825127832)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = voidptr(&shortcut.ptr)
	args[2] = unsafe{voidptr(&cfg.global)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_indent(index i64, indent i64) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_indent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&indent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_multistate(index i64, state i64) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_multistate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&state)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_multistate_max(index i64, max_states i64) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_multistate_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&max_states)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_item_shortcut_disabled(index i64, disabled bool) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_shortcut_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) toggle_item_checked(index i64) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("toggle_item_checked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) toggle_item_multistate(index i64) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("toggle_item_multistate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) get_item_text(index i64) string {
	mut result := String{}
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &PopupMenu) get_item_text_direction(index i64) ControlTextDirection {
	mut result := i64(ControlTextDirection.text_direction_inherited)
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235602388)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlTextDirection(result)}
}

pub fn (s &PopupMenu) get_item_language(index i64) string {
	mut result := String{}
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &PopupMenu) get_item_auto_translate_mode(index i64) NodeAutoTranslateMode {
	mut result := i64(NodeAutoTranslateMode.auto_translate_mode_inherit)
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_auto_translate_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 906302372)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NodeAutoTranslateMode(result)}
}

pub fn (s &PopupMenu) get_item_icon(index i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) get_item_icon_max_width(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_icon_max_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) get_item_icon_modulate(index i64) Color {
	mut result := Color{}
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_icon_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) is_item_checked(index i64) bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("is_item_checked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) get_item_id(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) get_item_index(id i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) get_item_accelerator(index i64) Key {
	mut result := i64(Key.key_none)
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_accelerator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 253789942)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Key(result)}
}

pub fn (s &PopupMenu) get_item_metadata(index i64) Variant {
	mut result := Variant{}
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) is_item_disabled(index i64) bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("is_item_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) get_item_submenu(index i64) string {
	mut result := String{}
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_submenu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &PopupMenu) get_item_submenu_node(index i64) PopupMenu {
	mut result := PopupMenu{}
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_submenu_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2100501353)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) is_item_separator(index i64) bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("is_item_separator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) is_item_checkable(index i64) bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("is_item_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) is_item_radio_checkable(index i64) bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("is_item_radio_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) is_item_shortcut_disabled(index i64) bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("is_item_shortcut_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) get_item_tooltip(index i64) string {
	mut result := String{}
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &PopupMenu) get_item_shortcut(index i64) Shortcut {
	mut result := Shortcut{}
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1449483325)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) get_item_indent(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_indent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) get_item_multistate_max(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_multistate_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) get_item_multistate(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_multistate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) set_focused_item(index i64) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_focused_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) get_focused_item() i64 {
	mut result := i64(0)
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_focused_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) set_item_count(count i64) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_item_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) get_item_count() i64 {
	mut result := i64(0)
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_item_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) scroll_to_item(index i64) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("scroll_to_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) remove_item(index i64) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("remove_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_add_separator_Cfg {
pub:
	label string
	id i64
}

pub fn (s &PopupMenu) add_separator(cfg PopupMenu_add_separator_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("add_separator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2266703459)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(cfg.label)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PopupMenu_clear_Cfg {
pub:
	free_submenus bool
}

pub fn (s &PopupMenu) clear(cfg PopupMenu_clear_Cfg) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.free_submenus)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) set_hide_on_item_selection(enable bool) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_hide_on_item_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) is_hide_on_item_selection() bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("is_hide_on_item_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) set_hide_on_checkable_item_selection(enable bool) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_hide_on_checkable_item_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) is_hide_on_checkable_item_selection() bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("is_hide_on_checkable_item_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) set_hide_on_state_item_selection(enable bool) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_hide_on_state_item_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) is_hide_on_state_item_selection() bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("is_hide_on_state_item_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) set_submenu_popup_delay(seconds f64) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_submenu_popup_delay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&seconds)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) get_submenu_popup_delay() f64 {
	mut result := f64(0)
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_submenu_popup_delay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) set_allow_search(allow bool) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_allow_search")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&allow)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) get_allow_search() bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_allow_search")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) is_system_menu() bool {
	mut result := false
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("is_system_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PopupMenu) set_system_menu(system_menu_id NativeMenuSystemMenus) {
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("set_system_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 600639674)
	mut args := unsafe { [1]voidptr{} }
	i64_system_menu_id := i64(system_menu_id)
	args[0] = unsafe{voidptr(&i64_system_menu_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PopupMenu) get_system_menu() NativeMenuSystemMenus {
	mut result := i64(NativeMenuSystemMenus.invalid_menu_id)
	classname := StringName.new("PopupMenu")
	fnname := StringName.new("get_system_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222557358)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NativeMenuSystemMenus(result)}
}
