module gd

pub enum TextEditMenuItems as i64 {
	menu_cut = 0
	menu_copy = 1
	menu_paste = 2
	menu_clear = 3
	menu_select_all = 4
	menu_undo = 5
	menu_redo = 6
	menu_submenu_text_dir = 7
	menu_dir_inherited = 8
	menu_dir_auto = 9
	menu_dir_ltr = 10
	menu_dir_rtl = 11
	menu_display_ucc = 12
	menu_submenu_insert_ucc = 13
	menu_insert_lrm = 14
	menu_insert_rlm = 15
	menu_insert_lre = 16
	menu_insert_rle = 17
	menu_insert_lro = 18
	menu_insert_rlo = 19
	menu_insert_pdf = 20
	menu_insert_alm = 21
	menu_insert_lri = 22
	menu_insert_rli = 23
	menu_insert_fsi = 24
	menu_insert_pdi = 25
	menu_insert_zwj = 26
	menu_insert_zwnj = 27
	menu_insert_wj = 28
	menu_insert_shy = 29
	menu_emoji_and_symbol = 30
	menu_max = 31
}

pub enum TextEditEditAction as i64 {
	action_none = 0
	action_typing = 1
	action_backspace = 2
	action_delete = 3
}

pub enum TextEditSearchFlags as i64 {
	search_match_case = 1
	search_whole_words = 2
	search_backwards = 4
}

pub enum TextEditCaretType as i64 {
	caret_type_line = 0
	caret_type_block = 1
}

pub enum TextEditSelectionMode as i64 {
	selection_mode_none = 0
	selection_mode_shift = 1
	selection_mode_pointer = 2
	selection_mode_word = 3
	selection_mode_line = 4
}

pub enum TextEditLineWrappingMode as i64 {
	line_wrapping_none = 0
	line_wrapping_boundary = 1
}

pub enum TextEditGutterType as i64 {
	gutter_type_string = 0
	gutter_type_icon = 1
	gutter_type_custom = 2
}

pub struct TextEdit {
	Control
}

pub fn (s &TextEdit) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TextEdit) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ITextEditHandleUnicodeInput {
mut:
	handle_unicode_input_(unicode_char i64, caret_index i64)
}

pub fn (s &TextEdit) gd_handle_unicode_input(unicode_char i64, caret_index i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("_handle_unicode_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&unicode_char)}
	args[1] = unsafe{voidptr(&caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextEditBackspace {
mut:
	backspace_(caret_index i64)
}

pub fn (s &TextEdit) gd_backspace(caret_index i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("_backspace")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextEditCut {
mut:
	cut_(caret_index i64)
}

pub fn (s &TextEdit) gd_cut(caret_index i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("_cut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextEditCopy {
mut:
	copy_(caret_index i64)
}

pub fn (s &TextEdit) gd_copy(caret_index i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("_copy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextEditPaste {
mut:
	paste_(caret_index i64)
}

pub fn (s &TextEdit) gd_paste(caret_index i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("_paste")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextEditPastePrimaryClipboard {
mut:
	paste_primary_clipboard_(caret_index i64)
}

pub fn (s &TextEdit) gd_paste_primary_clipboard(caret_index i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("_paste_primary_clipboard")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) has_ime_text() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("has_ime_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) cancel_ime() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("cancel_ime")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) apply_ime() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("apply_ime")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) set_editable(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_editable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_editable() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_editable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_text_direction(direction ControlTextDirection) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
	mut args := unsafe { [1]voidptr{} }
	i64_direction := i64(direction)
	args[0] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_text_direction() ControlTextDirection {
	mut result := i64(ControlTextDirection.text_direction_inherited)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlTextDirection(result)}
}

pub fn (s &TextEdit) set_language(language string) {
	classname := StringName.new("TextEdit")
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

pub fn (s &TextEdit) get_language() string {
	mut result := String{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TextEdit) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_structured_text_bidi_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
	mut args := unsafe { [1]voidptr{} }
	i64_parser := i64(parser)
	args[0] = unsafe{voidptr(&i64_parser)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_structured_text_bidi_override() TextServerStructuredTextParser {
	mut result := i64(TextServerStructuredTextParser.structured_text_default)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_structured_text_bidi_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerStructuredTextParser(result)}
}

pub fn (s &TextEdit) set_structured_text_bidi_override_options(gd_args Array) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_structured_text_bidi_override_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_args)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_structured_text_bidi_override_options() Array {
	mut result := Array{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_structured_text_bidi_override_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_tab_size(size i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_tab_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_tab_size() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_tab_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_indent_wrapped_lines(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_indent_wrapped_lines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_indent_wrapped_lines() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_indent_wrapped_lines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_tab_input_mode(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_tab_input_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_tab_input_mode() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_tab_input_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_overtype_mode_enabled(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_overtype_mode_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_overtype_mode_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_overtype_mode_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_context_menu_enabled(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_context_menu_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_context_menu_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_context_menu_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_emoji_menu_enabled(enable bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_emoji_menu_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_emoji_menu_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_emoji_menu_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_shortcut_keys_enabled(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_shortcut_keys_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_shortcut_keys_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_shortcut_keys_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_virtual_keyboard_enabled(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_virtual_keyboard_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_virtual_keyboard_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_virtual_keyboard_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_middle_mouse_paste_enabled(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_middle_mouse_paste_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_middle_mouse_paste_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_middle_mouse_paste_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_empty_selection_clipboard_enabled(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_empty_selection_clipboard_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_empty_selection_clipboard_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_empty_selection_clipboard_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) clear() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) set_text(text string) {
	classname := StringName.new("TextEdit")
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

pub fn (s &TextEdit) get_text() string {
	mut result := String{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TextEdit) get_line_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_placeholder(text string) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_placeholder() string {
	mut result := String{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TextEdit) set_line(line i64, new_text string) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	arg_sn1 := String.new(new_text)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_line(line i64) string {
	mut result := String{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TextEdit) get_line_with_ime(line i64) string {
	mut result := String{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_with_ime")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct TextEdit_get_line_width_Cfg {
pub:
	wrap_index i64
}

pub fn (s &TextEdit) get_line_width(line i64, cfg TextEdit_get_line_width_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 688195400)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&cfg.wrap_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_line_height() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_indent_level(line i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_indent_level")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_first_non_whitespace_column(line i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_first_non_whitespace_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) swap_lines(from_line i64, to_line i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("swap_lines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_line)}
	args[1] = unsafe{voidptr(&to_line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) insert_line_at(line i64, text string) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("insert_line_at")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	arg_sn1 := String.new(text)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_remove_line_at_Cfg {
pub:
	move_carets_down bool
}

pub fn (s &TextEdit) remove_line_at(line i64, cfg TextEdit_remove_line_at_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("remove_line_at")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 972357352)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&cfg.move_carets_down)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_insert_text_at_caret_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) insert_text_at_caret(text string, cfg TextEdit_insert_text_at_caret_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("insert_text_at_caret")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2697778442)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_insert_text_Cfg {
pub:
	before_selection_begin bool
	before_selection_end bool
}

pub fn (s &TextEdit) insert_text(text string, line i64, column i64, cfg TextEdit_insert_text_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("insert_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1881564334)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&line)}
	args[2] = unsafe{voidptr(&column)}
	args[3] = unsafe{voidptr(&cfg.before_selection_begin)}
	args[4] = unsafe{voidptr(&cfg.before_selection_end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) remove_text(from_line i64, from_column i64, to_line i64, to_column i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("remove_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4275841770)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&from_line)}
	args[1] = unsafe{voidptr(&from_column)}
	args[2] = unsafe{voidptr(&to_line)}
	args[3] = unsafe{voidptr(&to_column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_last_unhidden_line() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_last_unhidden_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_next_visible_line_offset_from(line i64, visible_amount i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_next_visible_line_offset_from")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&visible_amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_next_visible_line_index_offset_from(line i64, wrap_index i64, visible_amount i64) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_next_visible_line_index_offset_from")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3386475622)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&wrap_index)}
	args[2] = unsafe{voidptr(&visible_amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_backspace_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) backspace(cfg TextEdit_backspace_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("backspace")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_cut_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) cut(cfg TextEdit_cut_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("cut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_copy_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) copy(cfg TextEdit_copy_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("copy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_paste_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) paste(cfg TextEdit_paste_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("paste")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_paste_primary_clipboard_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) paste_primary_clipboard(cfg TextEdit_paste_primary_clipboard_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("paste_primary_clipboard")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) start_action(action TextEditEditAction) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("start_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2834827583)
	mut args := unsafe { [1]voidptr{} }
	i64_action := i64(action)
	args[0] = unsafe{voidptr(&i64_action)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) end_action() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("end_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) begin_complex_operation() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("begin_complex_operation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) end_complex_operation() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("end_complex_operation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) has_undo() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("has_undo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) has_redo() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("has_redo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) undo() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("undo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) redo() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("redo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) clear_undo_history() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("clear_undo_history")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) tag_saved_version() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("tag_saved_version")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_version() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_version")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_saved_version() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_saved_version")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_search_text(search_text string) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_search_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(search_text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) set_search_flags(flags i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_search_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) search(text string, flags i64, from_line i64, from_column i64) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("search")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1203739136)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&flags)}
	args[2] = unsafe{voidptr(&from_line)}
	args[3] = unsafe{voidptr(&from_column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_tooltip_request_func(callback Callable) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_tooltip_request_func")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_local_mouse_pos() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_local_mouse_pos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_word_at_pos(position Vector2) string {
	mut result := String{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_word_at_pos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3674420000)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct TextEdit_get_line_column_at_pos_Cfg {
pub:
	clamp_line bool
	clamp_column bool
}

pub fn (s &TextEdit) get_line_column_at_pos(position Vector2i, cfg TextEdit_get_line_column_at_pos_Cfg) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_column_at_pos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3472935744)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&cfg.clamp_line)}
	args[2] = unsafe{voidptr(&cfg.clamp_column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_pos_at_line_column(line i64, column i64) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_pos_at_line_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 410388347)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_rect_at_line_column(line i64, column i64) Rect2i {
	mut result := Rect2i{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_rect_at_line_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3256618057)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_minimap_line_at_pos(position Vector2i) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_minimap_line_at_pos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) is_dragging_cursor() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_dragging_cursor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_is_mouse_over_selection_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) is_mouse_over_selection(edges bool, cfg TextEdit_is_mouse_over_selection_Cfg) bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_mouse_over_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1840282309)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&edges)}
	args[1] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_caret_type(gd_type TextEditCaretType) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_caret_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1211596914)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_caret_type() TextEditCaretType {
	mut result := i64(TextEditCaretType.caret_type_line)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_caret_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2830252959)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextEditCaretType(result)}
}

pub fn (s &TextEdit) set_caret_blink_enabled(enable bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_caret_blink_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_caret_blink_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_caret_blink_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_caret_blink_interval(interval f64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_caret_blink_interval")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&interval)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_caret_blink_interval() f64 {
	mut result := f64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_caret_blink_interval")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_draw_caret_when_editable_disabled(enable bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_draw_caret_when_editable_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_drawing_caret_when_editable_disabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_drawing_caret_when_editable_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_move_caret_on_right_click_enabled(enable bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_move_caret_on_right_click_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_move_caret_on_right_click_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_move_caret_on_right_click_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_caret_mid_grapheme_enabled(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_caret_mid_grapheme_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_caret_mid_grapheme_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_caret_mid_grapheme_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_multiple_carets_enabled(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_multiple_carets_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_multiple_carets_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_multiple_carets_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) add_caret(line i64, column i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("add_caret")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 50157827)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) remove_caret(caret i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("remove_caret")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&caret)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) remove_secondary_carets() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("remove_secondary_carets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_caret_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_caret_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) add_caret_at_carets(below bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("add_caret_at_carets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&below)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_get_sorted_carets_Cfg {
pub:
	include_ignored_carets bool
}

pub fn (s &TextEdit) get_sorted_carets(cfg TextEdit_get_sorted_carets_Cfg) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_sorted_carets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2131714034)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.include_ignored_carets)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_collapse_carets_Cfg {
pub:
	inclusive bool
}

pub fn (s &TextEdit) collapse_carets(from_line i64, from_column i64, to_line i64, to_column i64, cfg TextEdit_collapse_carets_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("collapse_carets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 228654177)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&from_line)}
	args[1] = unsafe{voidptr(&from_column)}
	args[2] = unsafe{voidptr(&to_line)}
	args[3] = unsafe{voidptr(&to_column)}
	args[4] = unsafe{voidptr(&cfg.inclusive)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) merge_overlapping_carets() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("merge_overlapping_carets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) begin_multicaret_edit() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("begin_multicaret_edit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) end_multicaret_edit() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("end_multicaret_edit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_in_mulitcaret_edit() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_in_mulitcaret_edit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) multicaret_edit_ignore_caret(caret_index i64) bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("multicaret_edit_ignore_caret")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_is_caret_visible_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) is_caret_visible(cfg TextEdit_is_caret_visible_Cfg) bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_caret_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1051549951)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_get_caret_draw_pos_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_caret_draw_pos(cfg TextEdit_get_caret_draw_pos_Cfg) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_caret_draw_pos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 478253731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_set_caret_line_Cfg {
pub:
	adjust_viewport bool
	can_be_hidden bool
	wrap_index i64
	caret_index i64
}

pub fn (s &TextEdit) set_caret_line(line i64, cfg TextEdit_set_caret_line_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_caret_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1302582944)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&cfg.adjust_viewport)}
	args[2] = unsafe{voidptr(&cfg.can_be_hidden)}
	args[3] = unsafe{voidptr(&cfg.wrap_index)}
	args[4] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_get_caret_line_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_caret_line(cfg TextEdit_get_caret_line_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_caret_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_set_caret_column_Cfg {
pub:
	adjust_viewport bool
	caret_index i64
}

pub fn (s &TextEdit) set_caret_column(column i64, cfg TextEdit_set_caret_column_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_caret_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3796796178)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&cfg.adjust_viewport)}
	args[2] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_get_caret_column_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_caret_column(cfg TextEdit_get_caret_column_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_caret_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_get_caret_wrap_index_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_caret_wrap_index(cfg TextEdit_get_caret_wrap_index_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_caret_wrap_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_get_word_under_caret_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_word_under_caret(cfg TextEdit_get_word_under_caret_Cfg) string {
	mut result := String{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_word_under_caret")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3929349208)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TextEdit) set_use_default_word_separators(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_use_default_word_separators")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_default_word_separators_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_default_word_separators_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_use_custom_word_separators(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_use_custom_word_separators")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_custom_word_separators_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_custom_word_separators_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_custom_word_separators(custom_word_separators string) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_custom_word_separators")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(custom_word_separators)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_custom_word_separators() string {
	mut result := String{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_custom_word_separators")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TextEdit) set_selecting_enabled(enable bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_selecting_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_selecting_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_selecting_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_deselect_on_focus_loss_enabled(enable bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_deselect_on_focus_loss_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_deselect_on_focus_loss_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_deselect_on_focus_loss_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_drag_and_drop_selection_enabled(enable bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_drag_and_drop_selection_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_drag_and_drop_selection_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_drag_and_drop_selection_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_selection_mode(mode TextEditSelectionMode) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_selection_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1658801786)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_selection_mode() TextEditSelectionMode {
	mut result := i64(TextEditSelectionMode.selection_mode_none)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_selection_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3750106938)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextEditSelectionMode(result)}
}

pub fn (s &TextEdit) select_all() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("select_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_select_word_under_caret_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) select_word_under_caret(cfg TextEdit_select_word_under_caret_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("select_word_under_caret")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) add_selection_for_next_occurrence() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("add_selection_for_next_occurrence")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) skip_selection_for_next_occurrence() {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("skip_selection_for_next_occurrence")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_gd_select_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) gd_select(origin_line i64, origin_column i64, caret_line i64, caret_column i64, cfg TextEdit_gd_select_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("select")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2560984452)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&origin_line)}
	args[1] = unsafe{voidptr(&origin_column)}
	args[2] = unsafe{voidptr(&caret_line)}
	args[3] = unsafe{voidptr(&caret_column)}
	args[4] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_has_selection_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) has_selection(cfg TextEdit_has_selection_Cfg) bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("has_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2824505868)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_get_selected_text_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_selected_text(cfg TextEdit_get_selected_text_Cfg) string {
	mut result := String{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_selected_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2309358862)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct TextEdit_get_selection_at_line_column_Cfg {
pub:
	include_edges bool
	only_selections bool
}

pub fn (s &TextEdit) get_selection_at_line_column(line i64, column i64, cfg TextEdit_get_selection_at_line_column_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_selection_at_line_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1810224333)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&column)}
	args[2] = unsafe{voidptr(&cfg.include_edges)}
	args[3] = unsafe{voidptr(&cfg.only_selections)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_get_line_ranges_from_carets_Cfg {
pub:
	only_selections bool
	merge_adjacent bool
}

pub fn (s &TextEdit) get_line_ranges_from_carets(cfg TextEdit_get_line_ranges_from_carets_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_ranges_from_carets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2393089247)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.only_selections)}
	args[1] = unsafe{voidptr(&cfg.merge_adjacent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_get_selection_origin_line_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_selection_origin_line(cfg TextEdit_get_selection_origin_line_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_selection_origin_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_get_selection_origin_column_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_selection_origin_column(cfg TextEdit_get_selection_origin_column_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_selection_origin_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_set_selection_origin_line_Cfg {
pub:
	can_be_hidden bool
	wrap_index i64
	caret_index i64
}

pub fn (s &TextEdit) set_selection_origin_line(line i64, cfg TextEdit_set_selection_origin_line_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_selection_origin_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 195434140)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&cfg.can_be_hidden)}
	args[2] = unsafe{voidptr(&cfg.wrap_index)}
	args[3] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_set_selection_origin_column_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) set_selection_origin_column(column i64, cfg TextEdit_set_selection_origin_column_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_selection_origin_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230941749)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_get_selection_from_line_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_selection_from_line(cfg TextEdit_get_selection_from_line_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_selection_from_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_get_selection_from_column_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_selection_from_column(cfg TextEdit_get_selection_from_column_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_selection_from_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_get_selection_to_line_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_selection_to_line(cfg TextEdit_get_selection_to_line_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_selection_to_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_get_selection_to_column_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_selection_to_column(cfg TextEdit_get_selection_to_column_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_selection_to_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_is_caret_after_selection_origin_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) is_caret_after_selection_origin(cfg TextEdit_is_caret_after_selection_origin_Cfg) bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_caret_after_selection_origin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1051549951)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_deselect_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) deselect(cfg TextEdit_deselect_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("deselect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_delete_selection_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) delete_selection(cfg TextEdit_delete_selection_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("delete_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) set_line_wrapping_mode(mode TextEditLineWrappingMode) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_line_wrapping_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2525115309)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_line_wrapping_mode() TextEditLineWrappingMode {
	mut result := i64(TextEditLineWrappingMode.line_wrapping_none)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_wrapping_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3562716114)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextEditLineWrappingMode(result)}
}

pub fn (s &TextEdit) set_autowrap_mode(autowrap_mode TextServerAutowrapMode) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_autowrap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289138044)
	mut args := unsafe { [1]voidptr{} }
	i64_autowrap_mode := i64(autowrap_mode)
	args[0] = unsafe{voidptr(&i64_autowrap_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_autowrap_mode() TextServerAutowrapMode {
	mut result := i64(TextServerAutowrapMode.autowrap_off)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_autowrap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549071663)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerAutowrapMode(result)}
}

pub fn (s &TextEdit) is_line_wrapped(line i64) bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_line_wrapped")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_line_wrap_count(line i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_wrap_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_line_wrap_index_at_column(line i64, column i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_wrap_index_at_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_line_wrapped_text(line i64) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_wrapped_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 647634434)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_smooth_scroll_enabled(enable bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_smooth_scroll_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_smooth_scroll_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_smooth_scroll_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_v_scroll_bar() VScrollBar {
	mut result := VScrollBar{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_v_scroll_bar")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3226026593)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_h_scroll_bar() HScrollBar {
	mut result := HScrollBar{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_h_scroll_bar")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3774687988)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_v_scroll(value f64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_v_scroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_v_scroll() f64 {
	mut result := f64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_v_scroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_h_scroll(value i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_h_scroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_h_scroll() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_h_scroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_scroll_past_end_of_file_enabled(enable bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_scroll_past_end_of_file_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_scroll_past_end_of_file_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_scroll_past_end_of_file_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_v_scroll_speed(speed f64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_v_scroll_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&speed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_v_scroll_speed() f64 {
	mut result := f64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_v_scroll_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_fit_content_height_enabled(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_fit_content_height_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_fit_content_height_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_fit_content_height_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_fit_content_width_enabled(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_fit_content_width_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_fit_content_width_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_fit_content_width_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_get_scroll_pos_for_line_Cfg {
pub:
	wrap_index i64
}

pub fn (s &TextEdit) get_scroll_pos_for_line(line i64, cfg TextEdit_get_scroll_pos_for_line_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_scroll_pos_for_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3929084198)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&cfg.wrap_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_set_line_as_first_visible_Cfg {
pub:
	wrap_index i64
}

pub fn (s &TextEdit) set_line_as_first_visible(line i64, cfg TextEdit_set_line_as_first_visible_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_line_as_first_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230941749)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&cfg.wrap_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_first_visible_line() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_first_visible_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_set_line_as_center_visible_Cfg {
pub:
	wrap_index i64
}

pub fn (s &TextEdit) set_line_as_center_visible(line i64, cfg TextEdit_set_line_as_center_visible_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_line_as_center_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230941749)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&cfg.wrap_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_set_line_as_last_visible_Cfg {
pub:
	wrap_index i64
}

pub fn (s &TextEdit) set_line_as_last_visible(line i64, cfg TextEdit_set_line_as_last_visible_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_line_as_last_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230941749)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&cfg.wrap_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_last_full_visible_line() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_last_full_visible_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_last_full_visible_line_wrap_index() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_last_full_visible_line_wrap_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_visible_line_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_visible_line_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_visible_line_count_in_range(from_line i64, to_line i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_visible_line_count_in_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_line)}
	args[1] = unsafe{voidptr(&to_line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_total_visible_line_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_total_visible_line_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_adjust_viewport_to_caret_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) adjust_viewport_to_caret(cfg TextEdit_adjust_viewport_to_caret_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("adjust_viewport_to_caret")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextEdit_center_viewport_to_caret_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) center_viewport_to_caret(cfg TextEdit_center_viewport_to_caret_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("center_viewport_to_caret")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) set_draw_minimap(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_draw_minimap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_drawing_minimap() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_drawing_minimap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_minimap_width(width i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_minimap_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_minimap_width() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_minimap_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_minimap_visible_lines() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_minimap_visible_lines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_add_gutter_Cfg {
pub:
	at i64
}

pub fn (s &TextEdit) add_gutter(cfg TextEdit_add_gutter_Cfg) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("add_gutter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.at)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) remove_gutter(gutter i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("remove_gutter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gutter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_gutter_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_gutter_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_gutter_name(gutter i64, name string) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_gutter_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gutter)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_gutter_name(gutter i64) string {
	mut result := String{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_gutter_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gutter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TextEdit) set_gutter_type(gutter i64, gd_type TextEditGutterType) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_gutter_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1088959071)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gutter)}
	i64_gd_type := i64(gd_type)
	args[1] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_gutter_type(gutter i64) TextEditGutterType {
	mut result := i64(TextEditGutterType.gutter_type_string)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_gutter_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1159699127)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gutter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextEditGutterType(result)}
}

pub fn (s &TextEdit) set_gutter_width(gutter i64, width i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_gutter_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gutter)}
	args[1] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_gutter_width(gutter i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_gutter_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gutter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_gutter_draw(gutter i64, draw bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_gutter_draw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gutter)}
	args[1] = unsafe{voidptr(&draw)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_gutter_drawn(gutter i64) bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_gutter_drawn")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gutter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_gutter_clickable(gutter i64, clickable bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_gutter_clickable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gutter)}
	args[1] = unsafe{voidptr(&clickable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_gutter_clickable(gutter i64) bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_gutter_clickable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gutter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_gutter_overwritable(gutter i64, overwritable bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_gutter_overwritable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gutter)}
	args[1] = unsafe{voidptr(&overwritable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_gutter_overwritable(gutter i64) bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_gutter_overwritable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gutter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) merge_gutters(from_line i64, to_line i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("merge_gutters")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_line)}
	args[1] = unsafe{voidptr(&to_line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) set_gutter_custom_draw(column i64, draw_callback Callable) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_gutter_custom_draw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 957362965)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&draw_callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_total_gutter_width() i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_total_gutter_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_line_gutter_metadata(line i64, gutter i64, metadata Variant) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_line_gutter_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2060538656)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&gutter)}
	args[2] = unsafe{voidptr(&metadata)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_line_gutter_metadata(line i64, gutter i64) Variant {
	mut result := Variant{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_gutter_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 678354945)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&gutter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_line_gutter_text(line i64, gutter i64, text string) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_line_gutter_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285447957)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&gutter)}
	arg_sn2 := String.new(text)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_line_gutter_text(line i64, gutter i64) string {
	mut result := String{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_gutter_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1391810591)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&gutter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TextEdit) set_line_gutter_icon(line i64, gutter i64, icon Texture2D) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_line_gutter_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 176101966)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&gutter)}
	args[2] = voidptr(&icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_line_gutter_icon(line i64, gutter i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_gutter_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2584904275)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&gutter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_line_gutter_item_color(line i64, gutter i64, color Color) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_line_gutter_item_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3733378741)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&gutter)}
	args[2] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_line_gutter_item_color(line i64, gutter i64) Color {
	mut result := Color{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_gutter_item_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2165839948)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&gutter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_line_gutter_clickable(line i64, gutter i64, clickable bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_line_gutter_clickable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1383440665)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&gutter)}
	args[2] = unsafe{voidptr(&clickable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_line_gutter_clickable(line i64, gutter i64) bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_line_gutter_clickable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&gutter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_line_background_color(line i64, color Color) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_line_background_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_line_background_color(line i64) Color {
	mut result := Color{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_line_background_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_syntax_highlighter(syntax_highlighter SyntaxHighlighter) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_syntax_highlighter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2765644541)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&syntax_highlighter.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_syntax_highlighter() SyntaxHighlighter {
	mut result := SyntaxHighlighter{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_syntax_highlighter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2721131626)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_highlight_current_line(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_highlight_current_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_highlight_current_line_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_highlight_current_line_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_highlight_all_occurrences(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_highlight_all_occurrences")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_highlight_all_occurrences_enabled() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_highlight_all_occurrences_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_draw_control_chars() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_draw_control_chars")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_draw_control_chars(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_draw_control_chars")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) set_draw_tabs(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_draw_tabs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_drawing_tabs() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_drawing_tabs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) set_draw_spaces(enabled bool) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("set_draw_spaces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) is_drawing_spaces() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_drawing_spaces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) get_menu() PopupMenu {
	mut result := PopupMenu{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 229722558)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) is_menu_visible() bool {
	mut result := false
	classname := StringName.new("TextEdit")
	fnname := StringName.new("is_menu_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextEdit) menu_option(option i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("menu_option")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&option)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) adjust_carets_after_edit(caret i64, from_line i64, from_col i64, to_line i64, to_col i64) {
	classname := StringName.new("TextEdit")
	fnname := StringName.new("adjust_carets_after_edit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1770277138)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&caret)}
	args[1] = unsafe{voidptr(&from_line)}
	args[2] = unsafe{voidptr(&from_col)}
	args[3] = unsafe{voidptr(&to_line)}
	args[4] = unsafe{voidptr(&to_col)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextEdit) get_caret_index_edit_order() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_caret_index_edit_order")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_get_selection_line_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_selection_line(cfg TextEdit_get_selection_line_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_selection_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextEdit_get_selection_column_Cfg {
pub:
	caret_index i64
}

pub fn (s &TextEdit) get_selection_column(cfg TextEdit_get_selection_column_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TextEdit")
	fnname := StringName.new("get_selection_column")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.caret_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
