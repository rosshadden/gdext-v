module gd

pub struct Font {
	Resource
}

pub fn (s &Font) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Font) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Font) set_fallbacks(fallbacks Array) {
	classname := StringName.new("Font")
	fnname := StringName.new("set_fallbacks")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&fallbacks)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Font) get_fallbacks() Array {
	mut result := Array{}
	classname := StringName.new("Font")
	fnname := StringName.new("get_fallbacks")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Font_find_variation_Cfg {
pub:
	face_index i64
	strength f64
	transform Transform2D
	spacing_top i64
	spacing_bottom i64
	spacing_space i64
	spacing_glyph i64
	baseline_offset f64
}

pub fn (s &Font) find_variation(variation_coordinates Dictionary, cfg Font_find_variation_Cfg) RID {
	mut result := RID{}
	classname := StringName.new("Font")
	fnname := StringName.new("find_variation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2553855095)
	mut args := unsafe { [9]voidptr{} }
	args[0] = unsafe{voidptr(&variation_coordinates)}
	args[1] = unsafe{voidptr(&cfg.face_index)}
	args[2] = unsafe{voidptr(&cfg.strength)}
	args[3] = unsafe{voidptr(&cfg.transform)}
	args[4] = unsafe{voidptr(&cfg.spacing_top)}
	args[5] = unsafe{voidptr(&cfg.spacing_bottom)}
	args[6] = unsafe{voidptr(&cfg.spacing_space)}
	args[7] = unsafe{voidptr(&cfg.spacing_glyph)}
	args[8] = unsafe{voidptr(&cfg.baseline_offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Font) get_rids() Array {
	mut result := Array{}
	classname := StringName.new("Font")
	fnname := StringName.new("get_rids")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Font_get_height_Cfg {
pub:
	font_size i64
}

pub fn (s &Font) get_height(cfg Font_get_height_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("Font")
	fnname := StringName.new("get_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.font_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Font_get_ascent_Cfg {
pub:
	font_size i64
}

pub fn (s &Font) get_ascent(cfg Font_get_ascent_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("Font")
	fnname := StringName.new("get_ascent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.font_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Font_get_descent_Cfg {
pub:
	font_size i64
}

pub fn (s &Font) get_descent(cfg Font_get_descent_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("Font")
	fnname := StringName.new("get_descent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.font_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Font_get_underline_position_Cfg {
pub:
	font_size i64
}

pub fn (s &Font) get_underline_position(cfg Font_get_underline_position_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("Font")
	fnname := StringName.new("get_underline_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.font_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Font_get_underline_thickness_Cfg {
pub:
	font_size i64
}

pub fn (s &Font) get_underline_thickness(cfg Font_get_underline_thickness_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("Font")
	fnname := StringName.new("get_underline_thickness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.font_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Font) get_font_name() string {
	mut result := String{}
	classname := StringName.new("Font")
	fnname := StringName.new("get_font_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Font) get_font_style_name() string {
	mut result := String{}
	classname := StringName.new("Font")
	fnname := StringName.new("get_font_style_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Font) get_ot_name_strings() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Font")
	fnname := StringName.new("get_ot_name_strings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Font) get_font_style() TextServerFontStyle {
	mut result := i64(TextServerFontStyle.font_bold)
	classname := StringName.new("Font")
	fnname := StringName.new("get_font_style")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2520224254)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerFontStyle(result)}
}

pub fn (s &Font) get_font_weight() i64 {
	mut result := i64(0)
	classname := StringName.new("Font")
	fnname := StringName.new("get_font_weight")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Font) get_font_stretch() i64 {
	mut result := i64(0)
	classname := StringName.new("Font")
	fnname := StringName.new("get_font_stretch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Font) get_spacing(spacing TextServerSpacingType) i64 {
	mut result := i64(0)
	classname := StringName.new("Font")
	fnname := StringName.new("get_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1310880908)
	mut args := unsafe { [1]voidptr{} }
	i64_spacing := i64(spacing)
	args[0] = unsafe{voidptr(&i64_spacing)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Font) get_opentype_features() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Font")
	fnname := StringName.new("get_opentype_features")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Font) set_cache_capacity(single_line i64, multi_line i64) {
	classname := StringName.new("Font")
	fnname := StringName.new("set_cache_capacity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&single_line)}
	args[1] = unsafe{voidptr(&multi_line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Font_get_string_size_Cfg {
pub:
	alignment HorizontalAlignment
	width f64
	font_size i64
	justification_flags TextServerJustificationFlag
	direction TextServerDirection
	orientation TextServerOrientation
}

pub fn (s &Font) get_string_size(text string, cfg Font_get_string_size_Cfg) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Font")
	fnname := StringName.new("get_string_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1868866121)
	mut args := unsafe { [7]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_alignment := i64(cfg.alignment)
	args[1] = unsafe{voidptr(&i64_alignment)}
	args[2] = unsafe{voidptr(&cfg.width)}
	args[3] = unsafe{voidptr(&cfg.font_size)}
	i64_justification_flags := i64(cfg.justification_flags)
	args[4] = unsafe{voidptr(&i64_justification_flags)}
	i64_direction := i64(cfg.direction)
	args[5] = unsafe{voidptr(&i64_direction)}
	i64_orientation := i64(cfg.orientation)
	args[6] = unsafe{voidptr(&i64_orientation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Font_get_multiline_string_size_Cfg {
pub:
	alignment HorizontalAlignment
	width f64
	font_size i64
	max_lines i64
	brk_flags TextServerLineBreakFlag
	justification_flags TextServerJustificationFlag
	direction TextServerDirection
	orientation TextServerOrientation
}

pub fn (s &Font) get_multiline_string_size(text string, cfg Font_get_multiline_string_size_Cfg) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Font")
	fnname := StringName.new("get_multiline_string_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 519636710)
	mut args := unsafe { [9]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_alignment := i64(cfg.alignment)
	args[1] = unsafe{voidptr(&i64_alignment)}
	args[2] = unsafe{voidptr(&cfg.width)}
	args[3] = unsafe{voidptr(&cfg.font_size)}
	args[4] = unsafe{voidptr(&cfg.max_lines)}
	i64_brk_flags := i64(cfg.brk_flags)
	args[5] = unsafe{voidptr(&i64_brk_flags)}
	i64_justification_flags := i64(cfg.justification_flags)
	args[6] = unsafe{voidptr(&i64_justification_flags)}
	i64_direction := i64(cfg.direction)
	args[7] = unsafe{voidptr(&i64_direction)}
	i64_orientation := i64(cfg.orientation)
	args[8] = unsafe{voidptr(&i64_orientation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Font_draw_string_Cfg {
pub:
	alignment HorizontalAlignment
	width f64
	font_size i64
	modulate Color
	justification_flags TextServerJustificationFlag
	direction TextServerDirection
	orientation TextServerOrientation
}

pub fn (s &Font) draw_string(canvas_item RID, pos Vector2, text string, cfg Font_draw_string_Cfg) {
	classname := StringName.new("Font")
	fnname := StringName.new("draw_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1983721962)
	mut args := unsafe { [10]voidptr{} }
	args[0] = unsafe{voidptr(&canvas_item)}
	args[1] = unsafe{voidptr(&pos)}
	arg_sn2 := String.new(text)
	args[2] = unsafe{voidptr(&arg_sn2)}
	i64_alignment := i64(cfg.alignment)
	args[3] = unsafe{voidptr(&i64_alignment)}
	args[4] = unsafe{voidptr(&cfg.width)}
	args[5] = unsafe{voidptr(&cfg.font_size)}
	args[6] = unsafe{voidptr(&cfg.modulate)}
	i64_justification_flags := i64(cfg.justification_flags)
	args[7] = unsafe{voidptr(&i64_justification_flags)}
	i64_direction := i64(cfg.direction)
	args[8] = unsafe{voidptr(&i64_direction)}
	i64_orientation := i64(cfg.orientation)
	args[9] = unsafe{voidptr(&i64_orientation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Font_draw_multiline_string_Cfg {
pub:
	alignment HorizontalAlignment
	width f64
	font_size i64
	max_lines i64
	modulate Color
	brk_flags TextServerLineBreakFlag
	justification_flags TextServerJustificationFlag
	direction TextServerDirection
	orientation TextServerOrientation
}

pub fn (s &Font) draw_multiline_string(canvas_item RID, pos Vector2, text string, cfg Font_draw_multiline_string_Cfg) {
	classname := StringName.new("Font")
	fnname := StringName.new("draw_multiline_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171506176)
	mut args := unsafe { [12]voidptr{} }
	args[0] = unsafe{voidptr(&canvas_item)}
	args[1] = unsafe{voidptr(&pos)}
	arg_sn2 := String.new(text)
	args[2] = unsafe{voidptr(&arg_sn2)}
	i64_alignment := i64(cfg.alignment)
	args[3] = unsafe{voidptr(&i64_alignment)}
	args[4] = unsafe{voidptr(&cfg.width)}
	args[5] = unsafe{voidptr(&cfg.font_size)}
	args[6] = unsafe{voidptr(&cfg.max_lines)}
	args[7] = unsafe{voidptr(&cfg.modulate)}
	i64_brk_flags := i64(cfg.brk_flags)
	args[8] = unsafe{voidptr(&i64_brk_flags)}
	i64_justification_flags := i64(cfg.justification_flags)
	args[9] = unsafe{voidptr(&i64_justification_flags)}
	i64_direction := i64(cfg.direction)
	args[10] = unsafe{voidptr(&i64_direction)}
	i64_orientation := i64(cfg.orientation)
	args[11] = unsafe{voidptr(&i64_orientation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Font_draw_string_outline_Cfg {
pub:
	alignment HorizontalAlignment
	width f64
	font_size i64
	size i64
	modulate Color
	justification_flags TextServerJustificationFlag
	direction TextServerDirection
	orientation TextServerOrientation
}

pub fn (s &Font) draw_string_outline(canvas_item RID, pos Vector2, text string, cfg Font_draw_string_outline_Cfg) {
	classname := StringName.new("Font")
	fnname := StringName.new("draw_string_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 623754045)
	mut args := unsafe { [11]voidptr{} }
	args[0] = unsafe{voidptr(&canvas_item)}
	args[1] = unsafe{voidptr(&pos)}
	arg_sn2 := String.new(text)
	args[2] = unsafe{voidptr(&arg_sn2)}
	i64_alignment := i64(cfg.alignment)
	args[3] = unsafe{voidptr(&i64_alignment)}
	args[4] = unsafe{voidptr(&cfg.width)}
	args[5] = unsafe{voidptr(&cfg.font_size)}
	args[6] = unsafe{voidptr(&cfg.size)}
	args[7] = unsafe{voidptr(&cfg.modulate)}
	i64_justification_flags := i64(cfg.justification_flags)
	args[8] = unsafe{voidptr(&i64_justification_flags)}
	i64_direction := i64(cfg.direction)
	args[9] = unsafe{voidptr(&i64_direction)}
	i64_orientation := i64(cfg.orientation)
	args[10] = unsafe{voidptr(&i64_orientation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Font_draw_multiline_string_outline_Cfg {
pub:
	alignment HorizontalAlignment
	width f64
	font_size i64
	max_lines i64
	size i64
	modulate Color
	brk_flags TextServerLineBreakFlag
	justification_flags TextServerJustificationFlag
	direction TextServerDirection
	orientation TextServerOrientation
}

pub fn (s &Font) draw_multiline_string_outline(canvas_item RID, pos Vector2, text string, cfg Font_draw_multiline_string_outline_Cfg) {
	classname := StringName.new("Font")
	fnname := StringName.new("draw_multiline_string_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3206388178)
	mut args := unsafe { [13]voidptr{} }
	args[0] = unsafe{voidptr(&canvas_item)}
	args[1] = unsafe{voidptr(&pos)}
	arg_sn2 := String.new(text)
	args[2] = unsafe{voidptr(&arg_sn2)}
	i64_alignment := i64(cfg.alignment)
	args[3] = unsafe{voidptr(&i64_alignment)}
	args[4] = unsafe{voidptr(&cfg.width)}
	args[5] = unsafe{voidptr(&cfg.font_size)}
	args[6] = unsafe{voidptr(&cfg.max_lines)}
	args[7] = unsafe{voidptr(&cfg.size)}
	args[8] = unsafe{voidptr(&cfg.modulate)}
	i64_brk_flags := i64(cfg.brk_flags)
	args[9] = unsafe{voidptr(&i64_brk_flags)}
	i64_justification_flags := i64(cfg.justification_flags)
	args[10] = unsafe{voidptr(&i64_justification_flags)}
	i64_direction := i64(cfg.direction)
	args[11] = unsafe{voidptr(&i64_direction)}
	i64_orientation := i64(cfg.orientation)
	args[12] = unsafe{voidptr(&i64_orientation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Font) get_char_size(gd_char i64, font_size i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Font")
	fnname := StringName.new("get_char_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_char)}
	args[1] = unsafe{voidptr(&font_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Font_draw_char_Cfg {
pub:
	modulate Color
}

pub fn (s &Font) draw_char(canvas_item RID, pos Vector2, gd_char i64, font_size i64, cfg Font_draw_char_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("Font")
	fnname := StringName.new("draw_char")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3815617597)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&canvas_item)}
	args[1] = unsafe{voidptr(&pos)}
	args[2] = unsafe{voidptr(&gd_char)}
	args[3] = unsafe{voidptr(&font_size)}
	args[4] = unsafe{voidptr(&cfg.modulate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Font_draw_char_outline_Cfg {
pub:
	size i64
	modulate Color
}

pub fn (s &Font) draw_char_outline(canvas_item RID, pos Vector2, gd_char i64, font_size i64, cfg Font_draw_char_outline_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("Font")
	fnname := StringName.new("draw_char_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 209525354)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&canvas_item)}
	args[1] = unsafe{voidptr(&pos)}
	args[2] = unsafe{voidptr(&gd_char)}
	args[3] = unsafe{voidptr(&font_size)}
	args[4] = unsafe{voidptr(&cfg.size)}
	args[5] = unsafe{voidptr(&cfg.modulate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Font) has_char(gd_char i64) bool {
	mut result := false
	classname := StringName.new("Font")
	fnname := StringName.new("has_char")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_char)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Font) get_supported_chars() string {
	mut result := String{}
	classname := StringName.new("Font")
	fnname := StringName.new("get_supported_chars")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Font) is_language_supported(language string) bool {
	mut result := false
	classname := StringName.new("Font")
	fnname := StringName.new("is_language_supported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(language)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Font) is_script_supported(script string) bool {
	mut result := false
	classname := StringName.new("Font")
	fnname := StringName.new("is_script_supported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(script)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Font) get_supported_feature_list() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Font")
	fnname := StringName.new("get_supported_feature_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Font) get_supported_variation_list() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Font")
	fnname := StringName.new("get_supported_variation_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Font) get_face_count() i64 {
	mut result := i64(0)
	classname := StringName.new("Font")
	fnname := StringName.new("get_face_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
