module gd

pub enum RichTextLabelListType as i64 {
	list_numbers = 0
	list_letters = 1
	list_roman = 2
	list_dots = 3
}

pub enum RichTextLabelMenuItems as i64 {
	menu_copy = 0
	menu_select_all = 1
	menu_max = 2
}

pub enum RichTextLabelMetaUnderline as i64 {
	meta_underline_never = 0
	meta_underline_always = 1
	meta_underline_on_hover = 2
}

pub enum RichTextLabelImageUpdateMask as i64 {
	update_texture = 1
	update_size = 2
	update_color = 4
	update_alignment = 8
	update_region = 16
	update_pad = 32
	update_tooltip = 64
	update_width_in_percent = 128
}

pub struct RichTextLabel {
	Control
}

pub fn (s &RichTextLabel) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RichTextLabel) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RichTextLabel) get_parsed_text() string {
	mut result := String{}
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_parsed_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &RichTextLabel) add_text(text string) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("add_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) set_text(text string) {
	classname := StringName.new("RichTextLabel")
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

@[params]
pub struct RichTextLabel_add_image_Cfg {
pub:
	width i64
	height i64
	color Color
	inline_align InlineAlignment
	region Rect2
	key Variant
	pad bool
	tooltip string
	size_in_percent bool
	alt_text string
}

pub fn (s &RichTextLabel) add_image(image Texture2D, cfg RichTextLabel_add_image_Cfg) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("add_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1389823276)
	mut args := unsafe { [11]voidptr{} }
	args[0] = voidptr(&image.ptr)
	args[1] = unsafe{voidptr(&cfg.width)}
	args[2] = unsafe{voidptr(&cfg.height)}
	args[3] = unsafe{voidptr(&cfg.color)}
	i64_inline_align := i64(cfg.inline_align)
	args[4] = unsafe{voidptr(&i64_inline_align)}
	args[5] = unsafe{voidptr(&cfg.region)}
	args[6] = unsafe{voidptr(&cfg.key)}
	args[7] = unsafe{voidptr(&cfg.pad)}
	arg_sn8 := String.new(cfg.tooltip)
	args[8] = unsafe{voidptr(&arg_sn8)}
	args[9] = unsafe{voidptr(&cfg.size_in_percent)}
	arg_sn10 := String.new(cfg.alt_text)
	args[10] = unsafe{voidptr(&arg_sn10)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn8.deinit()
	arg_sn10.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct RichTextLabel_update_image_Cfg {
pub:
	width i64
	height i64
	color Color
	inline_align InlineAlignment
	region Rect2
	pad bool
	tooltip string
	size_in_percent bool
}

pub fn (s &RichTextLabel) update_image(key Variant, mask RichTextLabelImageUpdateMask, image Texture2D, cfg RichTextLabel_update_image_Cfg) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("update_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 815048486)
	mut args := unsafe { [11]voidptr{} }
	args[0] = unsafe{voidptr(&key)}
	i64_mask := i64(mask)
	args[1] = unsafe{voidptr(&i64_mask)}
	args[2] = voidptr(&image.ptr)
	args[3] = unsafe{voidptr(&cfg.width)}
	args[4] = unsafe{voidptr(&cfg.height)}
	args[5] = unsafe{voidptr(&cfg.color)}
	i64_inline_align := i64(cfg.inline_align)
	args[6] = unsafe{voidptr(&i64_inline_align)}
	args[7] = unsafe{voidptr(&cfg.region)}
	args[8] = unsafe{voidptr(&cfg.pad)}
	arg_sn9 := String.new(cfg.tooltip)
	args[9] = unsafe{voidptr(&arg_sn9)}
	args[10] = unsafe{voidptr(&cfg.size_in_percent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn9.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) newline() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("newline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct RichTextLabel_remove_paragraph_Cfg {
pub:
	no_invalidate bool
}

pub fn (s &RichTextLabel) remove_paragraph(paragraph i64, cfg RichTextLabel_remove_paragraph_Cfg) bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("remove_paragraph")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3262369265)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&paragraph)}
	args[1] = unsafe{voidptr(&cfg.no_invalidate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) invalidate_paragraph(paragraph i64) bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("invalidate_paragraph")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&paragraph)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct RichTextLabel_push_font_Cfg {
pub:
	font_size i64
}

pub fn (s &RichTextLabel) push_font(font Font, cfg RichTextLabel_push_font_Cfg) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2347424842)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&font.ptr)
	args[1] = unsafe{voidptr(&cfg.font_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_font_size(font_size i64) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_font_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_normal() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_bold() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_bold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_bold_italics() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_bold_italics")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_italics() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_italics")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_mono() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_mono")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_color(color Color) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_outline_size(outline_size i64) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_outline_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&outline_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_outline_color(color Color) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_outline_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct RichTextLabel_push_paragraph_Cfg {
pub:
	base_direction ControlTextDirection
	language string
	st_parser TextServerStructuredTextParser
	justification_flags TextServerJustificationFlag
	tab_stops PackedFloat32Array
}

pub fn (s &RichTextLabel) push_paragraph(alignment HorizontalAlignment, cfg RichTextLabel_push_paragraph_Cfg) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_paragraph")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3089306873)
	mut args := unsafe { [6]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	i64_base_direction := i64(cfg.base_direction)
	args[1] = unsafe{voidptr(&i64_base_direction)}
	arg_sn2 := String.new(cfg.language)
	args[2] = unsafe{voidptr(&arg_sn2)}
	i64_st_parser := i64(cfg.st_parser)
	args[3] = unsafe{voidptr(&i64_st_parser)}
	i64_justification_flags := i64(cfg.justification_flags)
	args[4] = unsafe{voidptr(&i64_justification_flags)}
	args[5] = unsafe{voidptr(&cfg.tab_stops)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_indent(level i64) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_indent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&level)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct RichTextLabel_push_list_Cfg {
pub:
	bullet string
}

pub fn (s &RichTextLabel) push_list(level i64, gd_type RichTextLabelListType, capitalize bool, cfg RichTextLabel_push_list_Cfg) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3017143144)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&level)}
	i64_gd_type := i64(gd_type)
	args[1] = unsafe{voidptr(&i64_gd_type)}
	args[2] = unsafe{voidptr(&capitalize)}
	arg_sn3 := String.new(cfg.bullet)
	args[3] = unsafe{voidptr(&arg_sn3)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct RichTextLabel_push_meta_Cfg {
pub:
	underline_mode RichTextLabelMetaUnderline
	tooltip string
}

pub fn (s &RichTextLabel) push_meta(data Variant, cfg RichTextLabel_push_meta_Cfg) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3765356747)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	i64_underline_mode := i64(cfg.underline_mode)
	args[1] = unsafe{voidptr(&i64_underline_mode)}
	arg_sn2 := String.new(cfg.tooltip)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_hint(description string) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_hint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(description)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_language(language string) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(language)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_underline() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_underline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_strikethrough() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_strikethrough")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct RichTextLabel_push_table_Cfg {
pub:
	inline_align InlineAlignment
	align_to_row i64
	name string
}

pub fn (s &RichTextLabel) push_table(columns i64, cfg RichTextLabel_push_table_Cfg) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_table")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3426862026)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&columns)}
	i64_inline_align := i64(cfg.inline_align)
	args[1] = unsafe{voidptr(&i64_inline_align)}
	args[2] = unsafe{voidptr(&cfg.align_to_row)}
	arg_sn3 := String.new(cfg.name)
	args[3] = unsafe{voidptr(&arg_sn3)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct RichTextLabel_push_dropcap_Cfg {
pub:
	dropcap_margins Rect2
	color Color
	outline_size i64
	outline_color Color
}

pub fn (s &RichTextLabel) push_dropcap(gd_string string, font Font, size i64, cfg RichTextLabel_push_dropcap_Cfg) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_dropcap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4061635501)
	mut args := unsafe { [7]voidptr{} }
	arg_sn0 := String.new(gd_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&font.ptr)
	args[2] = unsafe{voidptr(&size)}
	args[3] = unsafe{voidptr(&cfg.dropcap_margins)}
	args[4] = unsafe{voidptr(&cfg.color)}
	args[5] = unsafe{voidptr(&cfg.outline_size)}
	args[6] = unsafe{voidptr(&cfg.outline_color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct RichTextLabel_set_table_column_expand_Cfg {
pub:
	ratio i64
	shrink bool
}

pub fn (s &RichTextLabel) set_table_column_expand(column i64, expand bool, cfg RichTextLabel_set_table_column_expand_Cfg) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_table_column_expand")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 117236061)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&expand)}
	args[2] = unsafe{voidptr(&cfg.ratio)}
	args[3] = unsafe{voidptr(&cfg.shrink)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) set_table_column_name(column i64, name string) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_table_column_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) set_cell_row_background_color(odd_row_bg Color, even_row_bg Color) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_cell_row_background_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3465483165)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&odd_row_bg)}
	args[1] = unsafe{voidptr(&even_row_bg)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) set_cell_border_color(color Color) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_cell_border_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) set_cell_size_override(min_size Vector2, max_size Vector2) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_cell_size_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3108078480)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&min_size)}
	args[1] = unsafe{voidptr(&max_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) set_cell_padding(padding Rect2) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_cell_padding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&padding)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_cell() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_cell")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_fgcolor(fgcolor Color) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_fgcolor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&fgcolor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_bgcolor(bgcolor Color) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_bgcolor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bgcolor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_customfx(effect RichTextEffect, env Dictionary) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_customfx")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2337942958)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&effect.ptr)
	args[1] = unsafe{voidptr(&env)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) push_context() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("push_context")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) pop_context() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("pop_context")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) pop() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("pop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) pop_all() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("pop_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) clear() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_structured_text_bidi_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
	mut args := unsafe { [1]voidptr{} }
	i64_parser := i64(parser)
	args[0] = unsafe{voidptr(&i64_parser)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_structured_text_bidi_override() TextServerStructuredTextParser {
	mut result := i64(TextServerStructuredTextParser.structured_text_default)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_structured_text_bidi_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerStructuredTextParser(result)}
}

pub fn (s &RichTextLabel) set_structured_text_bidi_override_options(gd_args Array) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_structured_text_bidi_override_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_args)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_structured_text_bidi_override_options() Array {
	mut result := Array{}
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_structured_text_bidi_override_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_text_direction(direction ControlTextDirection) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
	mut args := unsafe { [1]voidptr{} }
	i64_direction := i64(direction)
	args[0] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_text_direction() ControlTextDirection {
	mut result := i64(ControlTextDirection.text_direction_inherited)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlTextDirection(result)}
}

pub fn (s &RichTextLabel) set_language(language string) {
	classname := StringName.new("RichTextLabel")
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

pub fn (s &RichTextLabel) get_language() string {
	mut result := String{}
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &RichTextLabel) set_horizontal_alignment(alignment HorizontalAlignment) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_horizontal_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
	mut args := unsafe { [1]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_horizontal_alignment() HorizontalAlignment {
	mut result := i64(HorizontalAlignment.horizontal_alignment_left)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_horizontal_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{HorizontalAlignment(result)}
}

pub fn (s &RichTextLabel) set_vertical_alignment(alignment VerticalAlignment) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_vertical_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1796458609)
	mut args := unsafe { [1]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_vertical_alignment() VerticalAlignment {
	mut result := i64(VerticalAlignment.vertical_alignment_top)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_vertical_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3274884059)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VerticalAlignment(result)}
}

pub fn (s &RichTextLabel) set_justification_flags(justification_flags TextServerJustificationFlag) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_justification_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2877345813)
	mut args := unsafe { [1]voidptr{} }
	i64_justification_flags := i64(justification_flags)
	args[0] = unsafe{voidptr(&i64_justification_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_justification_flags() TextServerJustificationFlag {
	mut result := i64(TextServerJustificationFlag.justification_none)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_justification_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1583363614)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerJustificationFlag(result)}
}

pub fn (s &RichTextLabel) set_tab_stops(tab_stops PackedFloat32Array) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_tab_stops")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_stops)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_tab_stops() PackedFloat32Array {
	mut result := PackedFloat32Array{}
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_tab_stops")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_autowrap_mode(autowrap_mode TextServerAutowrapMode) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_autowrap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289138044)
	mut args := unsafe { [1]voidptr{} }
	i64_autowrap_mode := i64(autowrap_mode)
	args[0] = unsafe{voidptr(&i64_autowrap_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_autowrap_mode() TextServerAutowrapMode {
	mut result := i64(TextServerAutowrapMode.autowrap_off)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_autowrap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549071663)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerAutowrapMode(result)}
}

pub fn (s &RichTextLabel) set_autowrap_trim_flags(autowrap_trim_flags TextServerLineBreakFlag) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_autowrap_trim_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2809697122)
	mut args := unsafe { [1]voidptr{} }
	i64_autowrap_trim_flags := i64(autowrap_trim_flags)
	args[0] = unsafe{voidptr(&i64_autowrap_trim_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_autowrap_trim_flags() TextServerLineBreakFlag {
	mut result := i64(TextServerLineBreakFlag.break_none)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_autowrap_trim_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2340632602)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerLineBreakFlag(result)}
}

pub fn (s &RichTextLabel) set_meta_underline(enable bool) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_meta_underline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) is_meta_underlined() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_meta_underlined")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_hint_underline(enable bool) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_hint_underline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) is_hint_underlined() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_hint_underlined")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_scroll_active(active bool) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_scroll_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&active)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) is_scroll_active() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_scroll_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_scroll_follow(follow bool) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_scroll_follow")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&follow)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) is_scroll_following() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_scroll_following")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_v_scroll_bar() VScrollBar {
	mut result := VScrollBar{}
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_v_scroll_bar")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2630340773)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) scroll_to_line(line i64) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("scroll_to_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) scroll_to_paragraph(paragraph i64) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("scroll_to_paragraph")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&paragraph)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) scroll_to_selection() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("scroll_to_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) set_tab_size(spaces i64) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_tab_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&spaces)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_tab_size() i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_tab_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_fit_content(enabled bool) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_fit_content")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) is_fit_content_enabled() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_fit_content_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_selection_enabled(enabled bool) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_selection_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) is_selection_enabled() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_selection_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_context_menu_enabled(enabled bool) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_context_menu_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) is_context_menu_enabled() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_context_menu_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_shortcut_keys_enabled(enabled bool) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_shortcut_keys_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) is_shortcut_keys_enabled() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_shortcut_keys_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_deselect_on_focus_loss_enabled(enable bool) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_deselect_on_focus_loss_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) is_deselect_on_focus_loss_enabled() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_deselect_on_focus_loss_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_drag_and_drop_selection_enabled(enable bool) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_drag_and_drop_selection_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) is_drag_and_drop_selection_enabled() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_drag_and_drop_selection_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_selection_from() i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_selection_from")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_selection_to() i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_selection_to")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_selection_line_offset() f64 {
	mut result := f64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_selection_line_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) select_all() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("select_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_selected_text() string {
	mut result := String{}
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_selected_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &RichTextLabel) deselect() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("deselect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) parse_bbcode(bbcode string) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("parse_bbcode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(bbcode)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) append_text(bbcode string) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("append_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(bbcode)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_text() string {
	mut result := String{}
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &RichTextLabel) is_ready() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_ready")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) is_finished() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_finished")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_threaded(threaded bool) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_threaded")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&threaded)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) is_threaded() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_threaded")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_progress_bar_delay(delay_ms i64) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_progress_bar_delay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delay_ms)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_progress_bar_delay() i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_progress_bar_delay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_visible_characters(amount i64) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_visible_characters")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_visible_characters() i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_visible_characters")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_visible_characters_behavior() TextServerVisibleCharactersBehavior {
	mut result := i64(TextServerVisibleCharactersBehavior.vc_chars_before_shaping)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_visible_characters_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 258789322)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerVisibleCharactersBehavior(result)}
}

pub fn (s &RichTextLabel) set_visible_characters_behavior(behavior TextServerVisibleCharactersBehavior) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_visible_characters_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3383839701)
	mut args := unsafe { [1]voidptr{} }
	i64_behavior := i64(behavior)
	args[0] = unsafe{voidptr(&i64_behavior)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) set_visible_ratio(ratio f64) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_visible_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_visible_ratio() f64 {
	mut result := f64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_visible_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_character_line(character i64) i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_character_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&character)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_character_paragraph(character i64) i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_character_paragraph")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&character)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_total_character_count() i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_total_character_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_use_bbcode(enable bool) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_use_bbcode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) is_using_bbcode() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_using_bbcode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_line_count() i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_line_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_line_range(line i64) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_line_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3665014314)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_visible_line_count() i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_visible_line_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_paragraph_count() i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_paragraph_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_visible_paragraph_count() i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_visible_paragraph_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_content_height() i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_content_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_content_width() i64 {
	mut result := i64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_content_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_line_offset(line i64) f64 {
	mut result := f64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_line_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4025615559)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) get_paragraph_offset(paragraph i64) f64 {
	mut result := f64(0)
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_paragraph_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4025615559)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&paragraph)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) parse_expressions_for_values(expressions PackedStringArray) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("parse_expressions_for_values")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1522900837)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&expressions)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) set_effects(effects Array) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("set_effects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&effects)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_effects() Array {
	mut result := Array{}
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_effects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) install_effect(effect Variant) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("install_effect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1114965689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&effect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) reload_effects() {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("reload_effects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RichTextLabel) get_menu() PopupMenu {
	mut result := PopupMenu{}
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("get_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 229722558)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) is_menu_visible() bool {
	mut result := false
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("is_menu_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RichTextLabel) menu_option(option i64) {
	classname := StringName.new("RichTextLabel")
	fnname := StringName.new("menu_option")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&option)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
