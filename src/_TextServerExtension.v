module gd

pub struct TextServerExtension {
	TextServer
}

pub fn (s &TextServerExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TextServerExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ITextServerExtensionHasFeature {
mut:
	has_feature_(feature TextServerFeature) bool
}

pub fn (s &TextServerExtension) gd_has_feature(feature TextServerFeature) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_has_feature")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3967367083)
	mut args := unsafe { [1]voidptr{} }
	i64_feature := i64(feature)
	args[0] = unsafe{voidptr(&i64_feature)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionGetName {
mut:
	get_name_() String
}

pub fn (s &TextServerExtension) gd_get_name() string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionGetFeatures {
mut:
	get_features_() i64
}

pub fn (s &TextServerExtension) gd_get_features() i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_get_features")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFreeRid {
mut:
	free_rid_(rid RID)
}

pub fn (s &TextServerExtension) gd_free_rid(rid RID) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_free_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionHas {
mut:
	has_(rid RID) bool
}

pub fn (s &TextServerExtension) gd_has(rid RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_has")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionLoadSupportData {
mut:
	load_support_data_(filename String) bool
}

pub fn (s &TextServerExtension) gd_load_support_data(filename string) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_load_support_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(filename)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionGetSupportDataFilename {
mut:
	get_support_data_filename_() String
}

pub fn (s &TextServerExtension) gd_get_support_data_filename() string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_get_support_data_filename")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionGetSupportDataInfo {
mut:
	get_support_data_info_() String
}

pub fn (s &TextServerExtension) gd_get_support_data_info() string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_get_support_data_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionSaveSupportData {
mut:
	save_support_data_(filename String) bool
}

pub fn (s &TextServerExtension) gd_save_support_data(filename string) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_save_support_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(filename)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionGetSupportData {
mut:
	get_support_data_() PackedByteArray
}

pub fn (s &TextServerExtension) gd_get_support_data() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_get_support_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionIsLocaleRightToLeft {
mut:
	is_locale_right_to_left_(locale String) bool
}

pub fn (s &TextServerExtension) gd_is_locale_right_to_left(locale string) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_is_locale_right_to_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(locale)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionNameToTag {
mut:
	name_to_tag_(name String) i64
}

pub fn (s &TextServerExtension) gd_name_to_tag(name string) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_name_to_tag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionTagToName {
mut:
	tag_to_name_(tag i64) String
}

pub fn (s &TextServerExtension) gd_tag_to_name(tag i64) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_tag_to_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tag)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionCreateFont {
mut:
	create_font_() RID
}

pub fn (s &TextServerExtension) gd_create_font() RID {
	mut result := RID{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_create_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionCreateFontLinkedVariation {
mut:
	create_font_linked_variation_(font_rid RID) RID
}

pub fn (s &TextServerExtension) gd_create_font_linked_variation(font_rid RID) RID {
	mut result := RID{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_create_font_linked_variation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 41030802)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetData {
mut:
	font_set_data_(font_rid RID, data PackedByteArray)
}

pub fn (s &TextServerExtension) gd_font_set_data(font_rid RID, data PackedByteArray) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1355495400)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontSetDataPtr {
mut:
	font_set_data_ptr_(font_rid RID, data_ptr &u8, data_size i64)
}

pub fn (s &TextServerExtension) gd_font_set_data_ptr(font_rid RID, data_ptr &u8, data_size i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_data_ptr")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&data_ptr)}
	args[2] = unsafe{voidptr(&data_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontSetFaceIndex {
mut:
	font_set_face_index_(font_rid RID, face_index i64)
}

pub fn (s &TextServerExtension) gd_font_set_face_index(font_rid RID, face_index i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_face_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&face_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetFaceIndex {
mut:
	font_get_face_index_(font_rid RID) i64
}

pub fn (s &TextServerExtension) gd_font_get_face_index(font_rid RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_face_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontGetFaceCount {
mut:
	font_get_face_count_(font_rid RID) i64
}

pub fn (s &TextServerExtension) gd_font_get_face_count(font_rid RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_face_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetStyle {
mut:
	font_set_style_(font_rid RID, style TextServerFontStyle)
}

pub fn (s &TextServerExtension) gd_font_set_style(font_rid RID, style TextServerFontStyle) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_style")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 898466325)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	i64_style := i64(style)
	args[1] = unsafe{voidptr(&i64_style)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetStyle {
mut:
	font_get_style_(font_rid RID) TextServerFontStyle
}

pub fn (s &TextServerExtension) gd_font_get_style(font_rid RID) TextServerFontStyle {
	mut result := i64(TextServerFontStyle.font_bold)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_style")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3082502592)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerFontStyle(result)}
}

pub interface ITextServerExtensionFontSetName {
mut:
	font_set_name_(font_rid RID, name String)
}

pub fn (s &TextServerExtension) gd_font_set_name(font_rid RID, name string) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetName {
mut:
	font_get_name_(font_rid RID) String
}

pub fn (s &TextServerExtension) gd_font_get_name(font_rid RID) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionFontGetOtNameStrings {
mut:
	font_get_ot_name_strings_(font_rid RID) Dictionary
}

pub fn (s &TextServerExtension) gd_font_get_ot_name_strings(font_rid RID) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_ot_name_strings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetStyleName {
mut:
	font_set_style_name_(font_rid RID, name_style String)
}

pub fn (s &TextServerExtension) gd_font_set_style_name(font_rid RID, name_style string) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_style_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	arg_sn1 := String.new(name_style)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetStyleName {
mut:
	font_get_style_name_(font_rid RID) String
}

pub fn (s &TextServerExtension) gd_font_get_style_name(font_rid RID) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_style_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionFontSetWeight {
mut:
	font_set_weight_(font_rid RID, weight i64)
}

pub fn (s &TextServerExtension) gd_font_set_weight(font_rid RID, weight i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_weight")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&weight)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetWeight {
mut:
	font_get_weight_(font_rid RID) i64
}

pub fn (s &TextServerExtension) gd_font_get_weight(font_rid RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_weight")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetStretch {
mut:
	font_set_stretch_(font_rid RID, stretch i64)
}

pub fn (s &TextServerExtension) gd_font_set_stretch(font_rid RID, stretch i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_stretch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&stretch)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetStretch {
mut:
	font_get_stretch_(font_rid RID) i64
}

pub fn (s &TextServerExtension) gd_font_get_stretch(font_rid RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_stretch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetAntialiasing {
mut:
	font_set_antialiasing_(font_rid RID, antialiasing TextServerFontAntialiasing)
}

pub fn (s &TextServerExtension) gd_font_set_antialiasing(font_rid RID, antialiasing TextServerFontAntialiasing) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_antialiasing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 958337235)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	i64_antialiasing := i64(antialiasing)
	args[1] = unsafe{voidptr(&i64_antialiasing)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetAntialiasing {
mut:
	font_get_antialiasing_(font_rid RID) TextServerFontAntialiasing
}

pub fn (s &TextServerExtension) gd_font_get_antialiasing(font_rid RID) TextServerFontAntialiasing {
	mut result := i64(TextServerFontAntialiasing.font_antialiasing_none)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_antialiasing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3389420495)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerFontAntialiasing(result)}
}

pub interface ITextServerExtensionFontSetDisableEmbeddedBitmaps {
mut:
	font_set_disable_embedded_bitmaps_(font_rid RID, disable_embedded_bitmaps bool)
}

pub fn (s &TextServerExtension) gd_font_set_disable_embedded_bitmaps(font_rid RID, disable_embedded_bitmaps bool) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_disable_embedded_bitmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&disable_embedded_bitmaps)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetDisableEmbeddedBitmaps {
mut:
	font_get_disable_embedded_bitmaps_(font_rid RID) bool
}

pub fn (s &TextServerExtension) gd_font_get_disable_embedded_bitmaps(font_rid RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_disable_embedded_bitmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetGenerateMipmaps {
mut:
	font_set_generate_mipmaps_(font_rid RID, generate_mipmaps bool)
}

pub fn (s &TextServerExtension) gd_font_set_generate_mipmaps(font_rid RID, generate_mipmaps bool) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_generate_mipmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&generate_mipmaps)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetGenerateMipmaps {
mut:
	font_get_generate_mipmaps_(font_rid RID) bool
}

pub fn (s &TextServerExtension) gd_font_get_generate_mipmaps(font_rid RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_generate_mipmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetMultichannelSignedDistanceField {
mut:
	font_set_multichannel_signed_distance_field_(font_rid RID, msdf bool)
}

pub fn (s &TextServerExtension) gd_font_set_multichannel_signed_distance_field(font_rid RID, msdf bool) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_multichannel_signed_distance_field")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&msdf)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontIsMultichannelSignedDistanceField {
mut:
	font_is_multichannel_signed_distance_field_(font_rid RID) bool
}

pub fn (s &TextServerExtension) gd_font_is_multichannel_signed_distance_field(font_rid RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_is_multichannel_signed_distance_field")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetMsdfPixelRange {
mut:
	font_set_msdf_pixel_range_(font_rid RID, msdf_pixel_range i64)
}

pub fn (s &TextServerExtension) gd_font_set_msdf_pixel_range(font_rid RID, msdf_pixel_range i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_msdf_pixel_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&msdf_pixel_range)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetMsdfPixelRange {
mut:
	font_get_msdf_pixel_range_(font_rid RID) i64
}

pub fn (s &TextServerExtension) gd_font_get_msdf_pixel_range(font_rid RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_msdf_pixel_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetMsdfSize {
mut:
	font_set_msdf_size_(font_rid RID, msdf_size i64)
}

pub fn (s &TextServerExtension) gd_font_set_msdf_size(font_rid RID, msdf_size i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_msdf_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&msdf_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetMsdfSize {
mut:
	font_get_msdf_size_(font_rid RID) i64
}

pub fn (s &TextServerExtension) gd_font_get_msdf_size(font_rid RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_msdf_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetFixedSize {
mut:
	font_set_fixed_size_(font_rid RID, fixed_size i64)
}

pub fn (s &TextServerExtension) gd_font_set_fixed_size(font_rid RID, fixed_size i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_fixed_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&fixed_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetFixedSize {
mut:
	font_get_fixed_size_(font_rid RID) i64
}

pub fn (s &TextServerExtension) gd_font_get_fixed_size(font_rid RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_fixed_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetFixedSizeScaleMode {
mut:
	font_set_fixed_size_scale_mode_(font_rid RID, fixed_size_scale_mode TextServerFixedSizeScaleMode)
}

pub fn (s &TextServerExtension) gd_font_set_fixed_size_scale_mode(font_rid RID, fixed_size_scale_mode TextServerFixedSizeScaleMode) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_fixed_size_scale_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1029390307)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	i64_fixed_size_scale_mode := i64(fixed_size_scale_mode)
	args[1] = unsafe{voidptr(&i64_fixed_size_scale_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetFixedSizeScaleMode {
mut:
	font_get_fixed_size_scale_mode_(font_rid RID) TextServerFixedSizeScaleMode
}

pub fn (s &TextServerExtension) gd_font_get_fixed_size_scale_mode(font_rid RID) TextServerFixedSizeScaleMode {
	mut result := i64(TextServerFixedSizeScaleMode.fixed_size_scale_disable)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_fixed_size_scale_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4113120379)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerFixedSizeScaleMode(result)}
}

pub interface ITextServerExtensionFontSetAllowSystemFallback {
mut:
	font_set_allow_system_fallback_(font_rid RID, allow_system_fallback bool)
}

pub fn (s &TextServerExtension) gd_font_set_allow_system_fallback(font_rid RID, allow_system_fallback bool) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_allow_system_fallback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&allow_system_fallback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontIsAllowSystemFallback {
mut:
	font_is_allow_system_fallback_(font_rid RID) bool
}

pub fn (s &TextServerExtension) gd_font_is_allow_system_fallback(font_rid RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_is_allow_system_fallback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetForceAutohinter {
mut:
	font_set_force_autohinter_(font_rid RID, force_autohinter bool)
}

pub fn (s &TextServerExtension) gd_font_set_force_autohinter(font_rid RID, force_autohinter bool) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_force_autohinter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&force_autohinter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontIsForceAutohinter {
mut:
	font_is_force_autohinter_(font_rid RID) bool
}

pub fn (s &TextServerExtension) gd_font_is_force_autohinter(font_rid RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_is_force_autohinter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetModulateColorGlyphs {
mut:
	font_set_modulate_color_glyphs_(font_rid RID, modulate bool)
}

pub fn (s &TextServerExtension) gd_font_set_modulate_color_glyphs(font_rid RID, modulate bool) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_modulate_color_glyphs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&modulate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontIsModulateColorGlyphs {
mut:
	font_is_modulate_color_glyphs_(font_rid RID) bool
}

pub fn (s &TextServerExtension) gd_font_is_modulate_color_glyphs(font_rid RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_is_modulate_color_glyphs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetHinting {
mut:
	font_set_hinting_(font_rid RID, hinting TextServerHinting)
}

pub fn (s &TextServerExtension) gd_font_set_hinting(font_rid RID, hinting TextServerHinting) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_hinting")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1520010864)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	i64_hinting := i64(hinting)
	args[1] = unsafe{voidptr(&i64_hinting)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetHinting {
mut:
	font_get_hinting_(font_rid RID) TextServerHinting
}

pub fn (s &TextServerExtension) gd_font_get_hinting(font_rid RID) TextServerHinting {
	mut result := i64(TextServerHinting.hinting_none)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_hinting")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3971592737)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerHinting(result)}
}

pub interface ITextServerExtensionFontSetSubpixelPositioning {
mut:
	font_set_subpixel_positioning_(font_rid RID, subpixel_positioning TextServerSubpixelPositioning)
}

pub fn (s &TextServerExtension) gd_font_set_subpixel_positioning(font_rid RID, subpixel_positioning TextServerSubpixelPositioning) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_subpixel_positioning")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3830459669)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	i64_subpixel_positioning := i64(subpixel_positioning)
	args[1] = unsafe{voidptr(&i64_subpixel_positioning)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetSubpixelPositioning {
mut:
	font_get_subpixel_positioning_(font_rid RID) TextServerSubpixelPositioning
}

pub fn (s &TextServerExtension) gd_font_get_subpixel_positioning(font_rid RID) TextServerSubpixelPositioning {
	mut result := i64(TextServerSubpixelPositioning.subpixel_positioning_disabled)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_subpixel_positioning")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2752233671)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerSubpixelPositioning(result)}
}

pub interface ITextServerExtensionFontSetKeepRoundingRemainders {
mut:
	font_set_keep_rounding_remainders_(font_rid RID, keep_rounding_remainders bool)
}

pub fn (s &TextServerExtension) gd_font_set_keep_rounding_remainders(font_rid RID, keep_rounding_remainders bool) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_keep_rounding_remainders")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&keep_rounding_remainders)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetKeepRoundingRemainders {
mut:
	font_get_keep_rounding_remainders_(font_rid RID) bool
}

pub fn (s &TextServerExtension) gd_font_get_keep_rounding_remainders(font_rid RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_keep_rounding_remainders")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetEmbolden {
mut:
	font_set_embolden_(font_rid RID, strength f64)
}

pub fn (s &TextServerExtension) gd_font_set_embolden(font_rid RID, strength f64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_embolden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&strength)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetEmbolden {
mut:
	font_get_embolden_(font_rid RID) f64
}

pub fn (s &TextServerExtension) gd_font_get_embolden(font_rid RID) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_embolden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetSpacing {
mut:
	font_set_spacing_(font_rid RID, spacing TextServerSpacingType, value i64)
}

pub fn (s &TextServerExtension) gd_font_set_spacing(font_rid RID, spacing TextServerSpacingType, value i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1307259930)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	i64_spacing := i64(spacing)
	args[1] = unsafe{voidptr(&i64_spacing)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetSpacing {
mut:
	font_get_spacing_(font_rid RID, spacing TextServerSpacingType) i64
}

pub fn (s &TextServerExtension) gd_font_get_spacing(font_rid RID, spacing TextServerSpacingType) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1213653558)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	i64_spacing := i64(spacing)
	args[1] = unsafe{voidptr(&i64_spacing)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetBaselineOffset {
mut:
	font_set_baseline_offset_(font_rid RID, baseline_offset f64)
}

pub fn (s &TextServerExtension) gd_font_set_baseline_offset(font_rid RID, baseline_offset f64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_baseline_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&baseline_offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetBaselineOffset {
mut:
	font_get_baseline_offset_(font_rid RID) f64
}

pub fn (s &TextServerExtension) gd_font_get_baseline_offset(font_rid RID) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_baseline_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetTransform {
mut:
	font_set_transform_(font_rid RID, transform Transform2D)
}

pub fn (s &TextServerExtension) gd_font_set_transform(font_rid RID, transform Transform2D) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetTransform {
mut:
	font_get_transform_(font_rid RID) Transform2D
}

pub fn (s &TextServerExtension) gd_font_get_transform(font_rid RID) Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 213527486)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetVariationCoordinates {
mut:
	font_set_variation_coordinates_(font_rid RID, variation_coordinates Dictionary)
}

pub fn (s &TextServerExtension) gd_font_set_variation_coordinates(font_rid RID, variation_coordinates Dictionary) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_variation_coordinates")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1217542888)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&variation_coordinates)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetVariationCoordinates {
mut:
	font_get_variation_coordinates_(font_rid RID) Dictionary
}

pub fn (s &TextServerExtension) gd_font_get_variation_coordinates(font_rid RID) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_variation_coordinates")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetOversampling {
mut:
	font_set_oversampling_(font_rid RID, oversampling f64)
}

pub fn (s &TextServerExtension) gd_font_set_oversampling(font_rid RID, oversampling f64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_oversampling")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&oversampling)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetOversampling {
mut:
	font_get_oversampling_(font_rid RID) f64
}

pub fn (s &TextServerExtension) gd_font_get_oversampling(font_rid RID) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_oversampling")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontGetSizeCacheList {
mut:
	font_get_size_cache_list_(font_rid RID) Array
}

pub fn (s &TextServerExtension) gd_font_get_size_cache_list(font_rid RID) Array {
	mut result := Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_size_cache_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontClearSizeCache {
mut:
	font_clear_size_cache_(font_rid RID)
}

pub fn (s &TextServerExtension) gd_font_clear_size_cache(font_rid RID) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_clear_size_cache")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontRemoveSizeCache {
mut:
	font_remove_size_cache_(font_rid RID, size Vector2i)
}

pub fn (s &TextServerExtension) gd_font_remove_size_cache(font_rid RID, size Vector2i) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_remove_size_cache")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2450610377)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontSetAscent {
mut:
	font_set_ascent_(font_rid RID, size i64, ascent f64)
}

pub fn (s &TextServerExtension) gd_font_set_ascent(font_rid RID, size i64, ascent f64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_ascent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&ascent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetAscent {
mut:
	font_get_ascent_(font_rid RID, size i64) f64
}

pub fn (s &TextServerExtension) gd_font_get_ascent(font_rid RID, size i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_ascent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetDescent {
mut:
	font_set_descent_(font_rid RID, size i64, descent f64)
}

pub fn (s &TextServerExtension) gd_font_set_descent(font_rid RID, size i64, descent f64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_descent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&descent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetDescent {
mut:
	font_get_descent_(font_rid RID, size i64) f64
}

pub fn (s &TextServerExtension) gd_font_get_descent(font_rid RID, size i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_descent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetUnderlinePosition {
mut:
	font_set_underline_position_(font_rid RID, size i64, underline_position f64)
}

pub fn (s &TextServerExtension) gd_font_set_underline_position(font_rid RID, size i64, underline_position f64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_underline_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&underline_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetUnderlinePosition {
mut:
	font_get_underline_position_(font_rid RID, size i64) f64
}

pub fn (s &TextServerExtension) gd_font_get_underline_position(font_rid RID, size i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_underline_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetUnderlineThickness {
mut:
	font_set_underline_thickness_(font_rid RID, size i64, underline_thickness f64)
}

pub fn (s &TextServerExtension) gd_font_set_underline_thickness(font_rid RID, size i64, underline_thickness f64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_underline_thickness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&underline_thickness)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetUnderlineThickness {
mut:
	font_get_underline_thickness_(font_rid RID, size i64) f64
}

pub fn (s &TextServerExtension) gd_font_get_underline_thickness(font_rid RID, size i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_underline_thickness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetScale {
mut:
	font_set_scale_(font_rid RID, size i64, scale f64)
}

pub fn (s &TextServerExtension) gd_font_set_scale(font_rid RID, size i64, scale f64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetScale {
mut:
	font_get_scale_(font_rid RID, size i64) f64
}

pub fn (s &TextServerExtension) gd_font_get_scale(font_rid RID, size i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontGetTextureCount {
mut:
	font_get_texture_count_(font_rid RID, size Vector2i) i64
}

pub fn (s &TextServerExtension) gd_font_get_texture_count(font_rid RID, size Vector2i) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_texture_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1311001310)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontClearTextures {
mut:
	font_clear_textures_(font_rid RID, size Vector2i)
}

pub fn (s &TextServerExtension) gd_font_clear_textures(font_rid RID, size Vector2i) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_clear_textures")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2450610377)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontRemoveTexture {
mut:
	font_remove_texture_(font_rid RID, size Vector2i, texture_index i64)
}

pub fn (s &TextServerExtension) gd_font_remove_texture(font_rid RID, size Vector2i, texture_index i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_remove_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3810512262)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&texture_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontSetTextureImage {
mut:
	font_set_texture_image_(font_rid RID, size Vector2i, texture_index i64, image Image)
}

pub fn (s &TextServerExtension) gd_font_set_texture_image(font_rid RID, size Vector2i, texture_index i64, image Image) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_texture_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2354485091)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&texture_index)}
	args[3] = voidptr(&image.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetTextureImage {
mut:
	font_get_texture_image_(font_rid RID, size Vector2i, texture_index i64) Image
}

pub fn (s &TextServerExtension) gd_font_get_texture_image(font_rid RID, size Vector2i, texture_index i64) Image {
	mut result := Image{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_texture_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2451761155)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&texture_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetTextureOffsets {
mut:
	font_set_texture_offsets_(font_rid RID, size Vector2i, texture_index i64, offset PackedInt32Array)
}

pub fn (s &TextServerExtension) gd_font_set_texture_offsets(font_rid RID, size Vector2i, texture_index i64, offset PackedInt32Array) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_texture_offsets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3005398047)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&texture_index)}
	args[3] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetTextureOffsets {
mut:
	font_get_texture_offsets_(font_rid RID, size Vector2i, texture_index i64) PackedInt32Array
}

pub fn (s &TextServerExtension) gd_font_get_texture_offsets(font_rid RID, size Vector2i, texture_index i64) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_texture_offsets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3420028887)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&texture_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontGetGlyphList {
mut:
	font_get_glyph_list_(font_rid RID, size Vector2i) PackedInt32Array
}

pub fn (s &TextServerExtension) gd_font_get_glyph_list(font_rid RID, size Vector2i) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_glyph_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 46086620)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontClearGlyphs {
mut:
	font_clear_glyphs_(font_rid RID, size Vector2i)
}

pub fn (s &TextServerExtension) gd_font_clear_glyphs(font_rid RID, size Vector2i) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_clear_glyphs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2450610377)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontRemoveGlyph {
mut:
	font_remove_glyph_(font_rid RID, size Vector2i, glyph i64)
}

pub fn (s &TextServerExtension) gd_font_remove_glyph(font_rid RID, size Vector2i, glyph i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_remove_glyph")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3810512262)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetGlyphAdvance {
mut:
	font_get_glyph_advance_(font_rid RID, size i64, glyph i64) Vector2
}

pub fn (s &TextServerExtension) gd_font_get_glyph_advance(font_rid RID, size i64, glyph i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_glyph_advance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2555689501)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetGlyphAdvance {
mut:
	font_set_glyph_advance_(font_rid RID, size i64, glyph i64, advance Vector2)
}

pub fn (s &TextServerExtension) gd_font_set_glyph_advance(font_rid RID, size i64, glyph i64, advance Vector2) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_glyph_advance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3219397315)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph)}
	args[3] = unsafe{voidptr(&advance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetGlyphOffset {
mut:
	font_get_glyph_offset_(font_rid RID, size Vector2i, glyph i64) Vector2
}

pub fn (s &TextServerExtension) gd_font_get_glyph_offset(font_rid RID, size Vector2i, glyph i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_glyph_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 513728628)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetGlyphOffset {
mut:
	font_set_glyph_offset_(font_rid RID, size Vector2i, glyph i64, offset Vector2)
}

pub fn (s &TextServerExtension) gd_font_set_glyph_offset(font_rid RID, size Vector2i, glyph i64, offset Vector2) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_glyph_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1812632090)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph)}
	args[3] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetGlyphSize {
mut:
	font_get_glyph_size_(font_rid RID, size Vector2i, glyph i64) Vector2
}

pub fn (s &TextServerExtension) gd_font_get_glyph_size(font_rid RID, size Vector2i, glyph i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_glyph_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 513728628)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetGlyphSize {
mut:
	font_set_glyph_size_(font_rid RID, size Vector2i, glyph i64, gl_size Vector2)
}

pub fn (s &TextServerExtension) gd_font_set_glyph_size(font_rid RID, size Vector2i, glyph i64, gl_size Vector2) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_glyph_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1812632090)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph)}
	args[3] = unsafe{voidptr(&gl_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetGlyphUvRect {
mut:
	font_get_glyph_uv_rect_(font_rid RID, size Vector2i, glyph i64) Rect2
}

pub fn (s &TextServerExtension) gd_font_get_glyph_uv_rect(font_rid RID, size Vector2i, glyph i64) Rect2 {
	mut result := Rect2{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_glyph_uv_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2274268786)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetGlyphUvRect {
mut:
	font_set_glyph_uv_rect_(font_rid RID, size Vector2i, glyph i64, uv_rect Rect2)
}

pub fn (s &TextServerExtension) gd_font_set_glyph_uv_rect(font_rid RID, size Vector2i, glyph i64, uv_rect Rect2) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_glyph_uv_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1973324081)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph)}
	args[3] = unsafe{voidptr(&uv_rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetGlyphTextureIdx {
mut:
	font_get_glyph_texture_idx_(font_rid RID, size Vector2i, glyph i64) i64
}

pub fn (s &TextServerExtension) gd_font_get_glyph_texture_idx(font_rid RID, size Vector2i, glyph i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_glyph_texture_idx")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4292800474)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetGlyphTextureIdx {
mut:
	font_set_glyph_texture_idx_(font_rid RID, size Vector2i, glyph i64, texture_idx i64)
}

pub fn (s &TextServerExtension) gd_font_set_glyph_texture_idx(font_rid RID, size Vector2i, glyph i64, texture_idx i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_glyph_texture_idx")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4254580980)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph)}
	args[3] = unsafe{voidptr(&texture_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetGlyphTextureRid {
mut:
	font_get_glyph_texture_rid_(font_rid RID, size Vector2i, glyph i64) RID
}

pub fn (s &TextServerExtension) gd_font_get_glyph_texture_rid(font_rid RID, size Vector2i, glyph i64) RID {
	mut result := RID{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_glyph_texture_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1451696141)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontGetGlyphTextureSize {
mut:
	font_get_glyph_texture_size_(font_rid RID, size Vector2i, glyph i64) Vector2
}

pub fn (s &TextServerExtension) gd_font_get_glyph_texture_size(font_rid RID, size Vector2i, glyph i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_glyph_texture_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 513728628)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontGetGlyphContours {
mut:
	font_get_glyph_contours_(font_rid RID, size i64, index i64) Dictionary
}

pub fn (s &TextServerExtension) gd_font_get_glyph_contours(font_rid RID, size i64, index i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_glyph_contours")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2903964473)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontGetKerningList {
mut:
	font_get_kerning_list_(font_rid RID, size i64) Array
}

pub fn (s &TextServerExtension) gd_font_get_kerning_list(font_rid RID, size i64) Array {
	mut result := Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_kerning_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1778388067)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontClearKerningMap {
mut:
	font_clear_kerning_map_(font_rid RID, size i64)
}

pub fn (s &TextServerExtension) gd_font_clear_kerning_map(font_rid RID, size i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_clear_kerning_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontRemoveKerning {
mut:
	font_remove_kerning_(font_rid RID, size i64, glyph_pair Vector2i)
}

pub fn (s &TextServerExtension) gd_font_remove_kerning(font_rid RID, size i64, glyph_pair Vector2i) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_remove_kerning")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2141860016)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph_pair)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontSetKerning {
mut:
	font_set_kerning_(font_rid RID, size i64, glyph_pair Vector2i, kerning Vector2)
}

pub fn (s &TextServerExtension) gd_font_set_kerning(font_rid RID, size i64, glyph_pair Vector2i, kerning Vector2) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_kerning")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3630965883)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph_pair)}
	args[3] = unsafe{voidptr(&kerning)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetKerning {
mut:
	font_get_kerning_(font_rid RID, size i64, glyph_pair Vector2i) Vector2
}

pub fn (s &TextServerExtension) gd_font_get_kerning(font_rid RID, size i64, glyph_pair Vector2i) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_kerning")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1019980169)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph_pair)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontGetGlyphIndex {
mut:
	font_get_glyph_index_(font_rid RID, size i64, gd_char i64, variation_selector i64) i64
}

pub fn (s &TextServerExtension) gd_font_get_glyph_index(font_rid RID, size i64, gd_char i64, variation_selector i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_glyph_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1765635060)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&gd_char)}
	args[3] = unsafe{voidptr(&variation_selector)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontGetCharFromGlyphIndex {
mut:
	font_get_char_from_glyph_index_(font_rid RID, size i64, glyph_index i64) i64
}

pub fn (s &TextServerExtension) gd_font_get_char_from_glyph_index(font_rid RID, size i64, glyph_index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_char_from_glyph_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2156738276)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&glyph_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontHasChar {
mut:
	font_has_char_(font_rid RID, gd_char i64) bool
}

pub fn (s &TextServerExtension) gd_font_has_char(font_rid RID, gd_char i64) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_has_char")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3120086654)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&gd_char)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontGetSupportedChars {
mut:
	font_get_supported_chars_(font_rid RID) String
}

pub fn (s &TextServerExtension) gd_font_get_supported_chars(font_rid RID) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_supported_chars")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionFontGetSupportedGlyphs {
mut:
	font_get_supported_glyphs_(font_rid RID) PackedInt32Array
}

pub fn (s &TextServerExtension) gd_font_get_supported_glyphs(font_rid RID) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_supported_glyphs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 788230395)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontRenderRange {
mut:
	font_render_range_(font_rid RID, size Vector2i, start i64, end i64)
}

pub fn (s &TextServerExtension) gd_font_render_range(font_rid RID, size Vector2i, start i64, end i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_render_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4254580980)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&start)}
	args[3] = unsafe{voidptr(&end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontRenderGlyph {
mut:
	font_render_glyph_(font_rid RID, size Vector2i, index i64)
}

pub fn (s &TextServerExtension) gd_font_render_glyph(font_rid RID, size Vector2i, index i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_render_glyph")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3810512262)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontDrawGlyph {
mut:
	font_draw_glyph_(font_rid RID, canvas RID, size i64, pos Vector2, index i64, color Color)
}

pub fn (s &TextServerExtension) gd_font_draw_glyph(font_rid RID, canvas RID, size i64, pos Vector2, index i64, color Color) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_draw_glyph")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 309868464)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&canvas)}
	args[2] = unsafe{voidptr(&size)}
	args[3] = unsafe{voidptr(&pos)}
	args[4] = unsafe{voidptr(&index)}
	args[5] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontDrawGlyphOutline {
mut:
	font_draw_glyph_outline_(font_rid RID, canvas RID, size i64, outline_size i64, pos Vector2, index i64, color Color)
}

pub fn (s &TextServerExtension) gd_font_draw_glyph_outline(font_rid RID, canvas RID, size i64, outline_size i64, pos Vector2, index i64, color Color) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_draw_glyph_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3090733778)
	mut args := unsafe { [7]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&canvas)}
	args[2] = unsafe{voidptr(&size)}
	args[3] = unsafe{voidptr(&outline_size)}
	args[4] = unsafe{voidptr(&pos)}
	args[5] = unsafe{voidptr(&index)}
	args[6] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontIsLanguageSupported {
mut:
	font_is_language_supported_(font_rid RID, language String) bool
}

pub fn (s &TextServerExtension) gd_font_is_language_supported(font_rid RID, language string) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_is_language_supported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3199320846)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetLanguageSupportOverride {
mut:
	font_set_language_support_override_(font_rid RID, language String, supported bool)
}

pub fn (s &TextServerExtension) gd_font_set_language_support_override(font_rid RID, language string, supported bool) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_language_support_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2313957094)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&supported)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetLanguageSupportOverride {
mut:
	font_get_language_support_override_(font_rid RID, language String) bool
}

pub fn (s &TextServerExtension) gd_font_get_language_support_override(font_rid RID, language string) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_language_support_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2829184646)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontRemoveLanguageSupportOverride {
mut:
	font_remove_language_support_override_(font_rid RID, language String)
}

pub fn (s &TextServerExtension) gd_font_remove_language_support_override(font_rid RID, language string) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_remove_language_support_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetLanguageSupportOverrides {
mut:
	font_get_language_support_overrides_(font_rid RID) PackedStringArray
}

pub fn (s &TextServerExtension) gd_font_get_language_support_overrides(font_rid RID) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_language_support_overrides")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2801473409)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontIsScriptSupported {
mut:
	font_is_script_supported_(font_rid RID, script String) bool
}

pub fn (s &TextServerExtension) gd_font_is_script_supported(font_rid RID, script string) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_is_script_supported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3199320846)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	arg_sn1 := String.new(script)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetScriptSupportOverride {
mut:
	font_set_script_support_override_(font_rid RID, script String, supported bool)
}

pub fn (s &TextServerExtension) gd_font_set_script_support_override(font_rid RID, script string, supported bool) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_script_support_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2313957094)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	arg_sn1 := String.new(script)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&supported)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetScriptSupportOverride {
mut:
	font_get_script_support_override_(font_rid RID, script String) bool
}

pub fn (s &TextServerExtension) gd_font_get_script_support_override(font_rid RID, script string) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_script_support_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2829184646)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	arg_sn1 := String.new(script)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontRemoveScriptSupportOverride {
mut:
	font_remove_script_support_override_(font_rid RID, script String)
}

pub fn (s &TextServerExtension) gd_font_remove_script_support_override(font_rid RID, script string) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_remove_script_support_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	arg_sn1 := String.new(script)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetScriptSupportOverrides {
mut:
	font_get_script_support_overrides_(font_rid RID) PackedStringArray
}

pub fn (s &TextServerExtension) gd_font_get_script_support_overrides(font_rid RID) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_script_support_overrides")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2801473409)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetOpentypeFeatureOverrides {
mut:
	font_set_opentype_feature_overrides_(font_rid RID, overrides Dictionary)
}

pub fn (s &TextServerExtension) gd_font_set_opentype_feature_overrides(font_rid RID, overrides Dictionary) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_opentype_feature_overrides")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1217542888)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	args[1] = unsafe{voidptr(&overrides)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionFontGetOpentypeFeatureOverrides {
mut:
	font_get_opentype_feature_overrides_(font_rid RID) Dictionary
}

pub fn (s &TextServerExtension) gd_font_get_opentype_feature_overrides(font_rid RID) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_opentype_feature_overrides")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSupportedFeatureList {
mut:
	font_supported_feature_list_(font_rid RID) Dictionary
}

pub fn (s &TextServerExtension) gd_font_supported_feature_list(font_rid RID) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_supported_feature_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSupportedVariationList {
mut:
	font_supported_variation_list_(font_rid RID) Dictionary
}

pub fn (s &TextServerExtension) gd_font_supported_variation_list(font_rid RID) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_supported_variation_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontGetGlobalOversampling {
mut:
	font_get_global_oversampling_() f64
}

pub fn (s &TextServerExtension) gd_font_get_global_oversampling() f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_get_global_oversampling")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFontSetGlobalOversampling {
mut:
	font_set_global_oversampling_(oversampling f64)
}

pub fn (s &TextServerExtension) gd_font_set_global_oversampling(oversampling f64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_font_set_global_oversampling")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&oversampling)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionGetHexCodeBoxSize {
mut:
	get_hex_code_box_size_(size i64, index i64) Vector2
}

pub fn (s &TextServerExtension) gd_get_hex_code_box_size(size i64, index i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_get_hex_code_box_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionDrawHexCodeBox {
mut:
	draw_hex_code_box_(canvas RID, size i64, pos Vector2, index i64, color Color)
}

pub fn (s &TextServerExtension) gd_draw_hex_code_box(canvas RID, size i64, pos Vector2, index i64, color Color) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_draw_hex_code_box")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602046441)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&canvas)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&pos)}
	args[3] = unsafe{voidptr(&index)}
	args[4] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionCreateShapedText {
mut:
	create_shaped_text_(direction TextServerDirection, orientation TextServerOrientation) RID
}

pub fn (s &TextServerExtension) gd_create_shaped_text(direction TextServerDirection, orientation TextServerOrientation) RID {
	mut result := RID{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_create_shaped_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1431128392)
	mut args := unsafe { [2]voidptr{} }
	i64_direction := i64(direction)
	args[0] = unsafe{voidptr(&i64_direction)}
	i64_orientation := i64(orientation)
	args[1] = unsafe{voidptr(&i64_orientation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextClear {
mut:
	shaped_text_clear_(shaped RID)
}

pub fn (s &TextServerExtension) gd_shaped_text_clear(shaped RID) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedTextSetDirection {
mut:
	shaped_text_set_direction_(shaped RID, direction TextServerDirection)
}

pub fn (s &TextServerExtension) gd_shaped_text_set_direction(shaped RID, direction TextServerDirection) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_set_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4276135416)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	i64_direction := i64(direction)
	args[1] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedTextGetDirection {
mut:
	shaped_text_get_direction_(shaped RID) TextServerDirection
}

pub fn (s &TextServerExtension) gd_shaped_text_get_direction(shaped RID) TextServerDirection {
	mut result := i64(TextServerDirection.direction_auto)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3065904362)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerDirection(result)}
}

pub interface ITextServerExtensionShapedTextGetInferredDirection {
mut:
	shaped_text_get_inferred_direction_(shaped RID) TextServerDirection
}

pub fn (s &TextServerExtension) gd_shaped_text_get_inferred_direction(shaped RID) TextServerDirection {
	mut result := i64(TextServerDirection.direction_auto)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_inferred_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3065904362)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerDirection(result)}
}

pub interface ITextServerExtensionShapedTextSetBidiOverride {
mut:
	shaped_text_set_bidi_override_(shaped RID, override Array)
}

pub fn (s &TextServerExtension) gd_shaped_text_set_bidi_override(shaped RID, override Array) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_set_bidi_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 684822712)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&override)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedTextSetCustomPunctuation {
mut:
	shaped_text_set_custom_punctuation_(shaped RID, punct String)
}

pub fn (s &TextServerExtension) gd_shaped_text_set_custom_punctuation(shaped RID, punct string) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_set_custom_punctuation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	arg_sn1 := String.new(punct)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedTextGetCustomPunctuation {
mut:
	shaped_text_get_custom_punctuation_(shaped RID) String
}

pub fn (s &TextServerExtension) gd_shaped_text_get_custom_punctuation(shaped RID) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_custom_punctuation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionShapedTextSetCustomEllipsis {
mut:
	shaped_text_set_custom_ellipsis_(shaped RID, gd_char i64)
}

pub fn (s &TextServerExtension) gd_shaped_text_set_custom_ellipsis(shaped RID, gd_char i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_set_custom_ellipsis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&gd_char)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedTextGetCustomEllipsis {
mut:
	shaped_text_get_custom_ellipsis_(shaped RID) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_get_custom_ellipsis(shaped RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_custom_ellipsis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextSetOrientation {
mut:
	shaped_text_set_orientation_(shaped RID, orientation TextServerOrientation)
}

pub fn (s &TextServerExtension) gd_shaped_text_set_orientation(shaped RID, orientation TextServerOrientation) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_set_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2306444742)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	i64_orientation := i64(orientation)
	args[1] = unsafe{voidptr(&i64_orientation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedTextGetOrientation {
mut:
	shaped_text_get_orientation_(shaped RID) TextServerOrientation
}

pub fn (s &TextServerExtension) gd_shaped_text_get_orientation(shaped RID) TextServerOrientation {
	mut result := i64(TextServerOrientation.orientation_horizontal)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3142708106)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerOrientation(result)}
}

pub interface ITextServerExtensionShapedTextSetPreserveInvalid {
mut:
	shaped_text_set_preserve_invalid_(shaped RID, enabled bool)
}

pub fn (s &TextServerExtension) gd_shaped_text_set_preserve_invalid(shaped RID, enabled bool) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_set_preserve_invalid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedTextGetPreserveInvalid {
mut:
	shaped_text_get_preserve_invalid_(shaped RID) bool
}

pub fn (s &TextServerExtension) gd_shaped_text_get_preserve_invalid(shaped RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_preserve_invalid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextSetPreserveControl {
mut:
	shaped_text_set_preserve_control_(shaped RID, enabled bool)
}

pub fn (s &TextServerExtension) gd_shaped_text_set_preserve_control(shaped RID, enabled bool) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_set_preserve_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedTextGetPreserveControl {
mut:
	shaped_text_get_preserve_control_(shaped RID) bool
}

pub fn (s &TextServerExtension) gd_shaped_text_get_preserve_control(shaped RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_preserve_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextSetSpacing {
mut:
	shaped_text_set_spacing_(shaped RID, spacing TextServerSpacingType, value i64)
}

pub fn (s &TextServerExtension) gd_shaped_text_set_spacing(shaped RID, spacing TextServerSpacingType, value i64) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_set_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1307259930)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	i64_spacing := i64(spacing)
	args[1] = unsafe{voidptr(&i64_spacing)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedTextGetSpacing {
mut:
	shaped_text_get_spacing_(shaped RID, spacing TextServerSpacingType) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_get_spacing(shaped RID, spacing TextServerSpacingType) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1213653558)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	i64_spacing := i64(spacing)
	args[1] = unsafe{voidptr(&i64_spacing)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextAddString {
mut:
	shaped_text_add_string_(shaped RID, text String, fonts Array, size i64, opentype_features Dictionary, language String, meta Variant) bool
}

pub fn (s &TextServerExtension) gd_shaped_text_add_string(shaped RID, text string, fonts Array, size i64, opentype_features Dictionary, language string, meta Variant) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_add_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 875249313)
	mut args := unsafe { [7]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	arg_sn1 := String.new(text)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&fonts)}
	args[3] = unsafe{voidptr(&size)}
	args[4] = unsafe{voidptr(&opentype_features)}
	arg_sn5 := String.new(language)
	args[5] = unsafe{voidptr(&arg_sn5)}
	args[6] = unsafe{voidptr(&meta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	arg_sn5.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextAddObject {
mut:
	shaped_text_add_object_(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, length i64, baseline f64) bool
}

pub fn (s &TextServerExtension) gd_shaped_text_add_object(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, length i64, baseline f64) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_add_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2452224230)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&key)}
	args[2] = unsafe{voidptr(&size)}
	i64_inline_align := i64(inline_align)
	args[3] = unsafe{voidptr(&i64_inline_align)}
	args[4] = unsafe{voidptr(&length)}
	args[5] = unsafe{voidptr(&baseline)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextResizeObject {
mut:
	shaped_text_resize_object_(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, baseline f64) bool
}

pub fn (s &TextServerExtension) gd_shaped_text_resize_object(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, baseline f64) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_resize_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2747466775)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&key)}
	args[2] = unsafe{voidptr(&size)}
	i64_inline_align := i64(inline_align)
	args[3] = unsafe{voidptr(&i64_inline_align)}
	args[4] = unsafe{voidptr(&baseline)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedGetText {
mut:
	shaped_get_text_(shaped RID) String
}

pub fn (s &TextServerExtension) gd_shaped_get_text(shaped RID) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionShapedGetSpanCount {
mut:
	shaped_get_span_count_(shaped RID) i64
}

pub fn (s &TextServerExtension) gd_shaped_get_span_count(shaped RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_span_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedGetSpanMeta {
mut:
	shaped_get_span_meta_(shaped RID, index i64) Variant
}

pub fn (s &TextServerExtension) gd_shaped_get_span_meta(shaped RID, index i64) Variant {
	mut result := Variant{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_span_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4069510997)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedGetSpanEmbeddedObject {
mut:
	shaped_get_span_embedded_object_(shaped RID, index i64) Variant
}

pub fn (s &TextServerExtension) gd_shaped_get_span_embedded_object(shaped RID, index i64) Variant {
	mut result := Variant{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_span_embedded_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4069510997)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedGetSpanText {
mut:
	shaped_get_span_text_(shaped RID, index i64) String
}

pub fn (s &TextServerExtension) gd_shaped_get_span_text(shaped RID, index i64) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_span_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1464764419)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionShapedGetSpanObject {
mut:
	shaped_get_span_object_(shaped RID, index i64) Variant
}

pub fn (s &TextServerExtension) gd_shaped_get_span_object(shaped RID, index i64) Variant {
	mut result := Variant{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_span_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4069510997)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedSetSpanUpdateFont {
mut:
	shaped_set_span_update_font_(shaped RID, index i64, fonts Array, size i64, opentype_features Dictionary)
}

pub fn (s &TextServerExtension) gd_shaped_set_span_update_font(shaped RID, index i64, fonts Array, size i64, opentype_features Dictionary) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_set_span_update_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2569459151)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&index)}
	args[2] = unsafe{voidptr(&fonts)}
	args[3] = unsafe{voidptr(&size)}
	args[4] = unsafe{voidptr(&opentype_features)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedGetRunCount {
mut:
	shaped_get_run_count_(shaped RID) i64
}

pub fn (s &TextServerExtension) gd_shaped_get_run_count(shaped RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_run_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedGetRunText {
mut:
	shaped_get_run_text_(shaped RID, index i64) String
}

pub fn (s &TextServerExtension) gd_shaped_get_run_text(shaped RID, index i64) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_run_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1464764419)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionShapedGetRunRange {
mut:
	shaped_get_run_range_(shaped RID, index i64) Vector2i
}

pub fn (s &TextServerExtension) gd_shaped_get_run_range(shaped RID, index i64) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_run_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4069534484)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedGetRunFontRid {
mut:
	shaped_get_run_font_rid_(shaped RID, index i64) RID
}

pub fn (s &TextServerExtension) gd_shaped_get_run_font_rid(shaped RID, index i64) RID {
	mut result := RID{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_run_font_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1066463050)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedGetRunFontSize {
mut:
	shaped_get_run_font_size_(shaped RID, index i64) i64
}

pub fn (s &TextServerExtension) gd_shaped_get_run_font_size(shaped RID, index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_run_font_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedGetRunLanguage {
mut:
	shaped_get_run_language_(shaped RID, index i64) String
}

pub fn (s &TextServerExtension) gd_shaped_get_run_language(shaped RID, index i64) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_run_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1464764419)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionShapedGetRunDirection {
mut:
	shaped_get_run_direction_(shaped RID, index i64) TextServerDirection
}

pub fn (s &TextServerExtension) gd_shaped_get_run_direction(shaped RID, index i64) TextServerDirection {
	mut result := i64(TextServerDirection.direction_auto)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_run_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2413896864)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerDirection(result)}
}

pub interface ITextServerExtensionShapedGetRunObject {
mut:
	shaped_get_run_object_(shaped RID, index i64) Variant
}

pub fn (s &TextServerExtension) gd_shaped_get_run_object(shaped RID, index i64) Variant {
	mut result := Variant{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_get_run_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4069510997)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextSubstr {
mut:
	shaped_text_substr_(shaped RID, start i64, length i64) RID
}

pub fn (s &TextServerExtension) gd_shaped_text_substr(shaped RID, start i64, length i64) RID {
	mut result := RID{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_substr")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1937682086)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&start)}
	args[2] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetParent {
mut:
	shaped_text_get_parent_(shaped RID) RID
}

pub fn (s &TextServerExtension) gd_shaped_text_get_parent(shaped RID) RID {
	mut result := RID{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_parent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextFitToWidth {
mut:
	shaped_text_fit_to_width_(shaped RID, width f64, justification_flags TextServerJustificationFlag) f64
}

pub fn (s &TextServerExtension) gd_shaped_text_fit_to_width(shaped RID, width f64, justification_flags TextServerJustificationFlag) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_fit_to_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1426448222)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&width)}
	i64_justification_flags := i64(justification_flags)
	args[2] = unsafe{voidptr(&i64_justification_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextTabAlign {
mut:
	shaped_text_tab_align_(shaped RID, tab_stops PackedFloat32Array) f64
}

pub fn (s &TextServerExtension) gd_shaped_text_tab_align(shaped RID, tab_stops PackedFloat32Array) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_tab_align")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1283669550)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&tab_stops)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextShape {
mut:
	shaped_text_shape_(shaped RID) bool
}

pub fn (s &TextServerExtension) gd_shaped_text_shape(shaped RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextUpdateBreaks {
mut:
	shaped_text_update_breaks_(shaped RID) bool
}

pub fn (s &TextServerExtension) gd_shaped_text_update_breaks(shaped RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_update_breaks")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextUpdateJustificationOps {
mut:
	shaped_text_update_justification_ops_(shaped RID) bool
}

pub fn (s &TextServerExtension) gd_shaped_text_update_justification_ops(shaped RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_update_justification_ops")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextIsReady {
mut:
	shaped_text_is_ready_(shaped RID) bool
}

pub fn (s &TextServerExtension) gd_shaped_text_is_ready(shaped RID) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_is_ready")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetGlyphs {
mut:
	shaped_text_get_glyphs_(shaped RID) &Glyph
}

pub fn (s &TextServerExtension) gd_shaped_text_get_glyphs(shaped RID) &Glyph {
	mut result := &Glyph{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_glyphs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextSortLogical {
mut:
	shaped_text_sort_logical_(shaped RID) &Glyph
}

pub fn (s &TextServerExtension) gd_shaped_text_sort_logical(shaped RID) &Glyph {
	mut result := &Glyph{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_sort_logical")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3917799429)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetGlyphCount {
mut:
	shaped_text_get_glyph_count_(shaped RID) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_get_glyph_count(shaped RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_glyph_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetRange {
mut:
	shaped_text_get_range_(shaped RID) Vector2i
}

pub fn (s &TextServerExtension) gd_shaped_text_get_range(shaped RID) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 733700038)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetLineBreaksAdv {
mut:
	shaped_text_get_line_breaks_adv_(shaped RID, width PackedFloat32Array, start i64, once bool, break_flags TextServerLineBreakFlag) PackedInt32Array
}

pub fn (s &TextServerExtension) gd_shaped_text_get_line_breaks_adv(shaped RID, width PackedFloat32Array, start i64, once bool, break_flags TextServerLineBreakFlag) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_line_breaks_adv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1488467363)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&width)}
	args[2] = unsafe{voidptr(&start)}
	args[3] = unsafe{voidptr(&once)}
	i64_break_flags := i64(break_flags)
	args[4] = unsafe{voidptr(&i64_break_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetLineBreaks {
mut:
	shaped_text_get_line_breaks_(shaped RID, width f64, start i64, break_flags TextServerLineBreakFlag) PackedInt32Array
}

pub fn (s &TextServerExtension) gd_shaped_text_get_line_breaks(shaped RID, width f64, start i64, break_flags TextServerLineBreakFlag) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_line_breaks")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3131311977)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&width)}
	args[2] = unsafe{voidptr(&start)}
	i64_break_flags := i64(break_flags)
	args[3] = unsafe{voidptr(&i64_break_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetWordBreaks {
mut:
	shaped_text_get_word_breaks_(shaped RID, grapheme_flags TextServerGraphemeFlag, skip_grapheme_flags TextServerGraphemeFlag) PackedInt32Array
}

pub fn (s &TextServerExtension) gd_shaped_text_get_word_breaks(shaped RID, grapheme_flags TextServerGraphemeFlag, skip_grapheme_flags TextServerGraphemeFlag) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_word_breaks")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2423529412)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	i64_grapheme_flags := i64(grapheme_flags)
	args[1] = unsafe{voidptr(&i64_grapheme_flags)}
	i64_skip_grapheme_flags := i64(skip_grapheme_flags)
	args[2] = unsafe{voidptr(&i64_skip_grapheme_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetTrimPos {
mut:
	shaped_text_get_trim_pos_(shaped RID) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_get_trim_pos(shaped RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_trim_pos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetEllipsisPos {
mut:
	shaped_text_get_ellipsis_pos_(shaped RID) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_get_ellipsis_pos(shaped RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_ellipsis_pos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetEllipsisGlyphCount {
mut:
	shaped_text_get_ellipsis_glyph_count_(shaped RID) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_get_ellipsis_glyph_count(shaped RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_ellipsis_glyph_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetEllipsisGlyphs {
mut:
	shaped_text_get_ellipsis_glyphs_(shaped RID) &Glyph
}

pub fn (s &TextServerExtension) gd_shaped_text_get_ellipsis_glyphs(shaped RID) &Glyph {
	mut result := &Glyph{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_ellipsis_glyphs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextOverrunTrimToWidth {
mut:
	shaped_text_overrun_trim_to_width_(shaped RID, width f64, trim_flags TextServerTextOverrunFlag)
}

pub fn (s &TextServerExtension) gd_shaped_text_overrun_trim_to_width(shaped RID, width f64, trim_flags TextServerTextOverrunFlag) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_overrun_trim_to_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3364950921)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&width)}
	i64_trim_flags := i64(trim_flags)
	args[2] = unsafe{voidptr(&i64_trim_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedTextGetObjects {
mut:
	shaped_text_get_objects_(shaped RID) Array
}

pub fn (s &TextServerExtension) gd_shaped_text_get_objects(shaped RID) Array {
	mut result := Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_objects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetObjectRect {
mut:
	shaped_text_get_object_rect_(shaped RID, key Variant) Rect2
}

pub fn (s &TextServerExtension) gd_shaped_text_get_object_rect(shaped RID, key Variant) Rect2 {
	mut result := Rect2{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_object_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 447978354)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&key)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetObjectRange {
mut:
	shaped_text_get_object_range_(shaped RID, key Variant) Vector2i
}

pub fn (s &TextServerExtension) gd_shaped_text_get_object_range(shaped RID, key Variant) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_object_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2524675647)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&key)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetObjectGlyph {
mut:
	shaped_text_get_object_glyph_(shaped RID, key Variant) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_get_object_glyph(shaped RID, key Variant) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_object_glyph")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1260085030)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&key)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetSize {
mut:
	shaped_text_get_size_(shaped RID) Vector2
}

pub fn (s &TextServerExtension) gd_shaped_text_get_size(shaped RID) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2440833711)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetAscent {
mut:
	shaped_text_get_ascent_(shaped RID) f64
}

pub fn (s &TextServerExtension) gd_shaped_text_get_ascent(shaped RID) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_ascent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetDescent {
mut:
	shaped_text_get_descent_(shaped RID) f64
}

pub fn (s &TextServerExtension) gd_shaped_text_get_descent(shaped RID) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_descent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetWidth {
mut:
	shaped_text_get_width_(shaped RID) f64
}

pub fn (s &TextServerExtension) gd_shaped_text_get_width(shaped RID) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetUnderlinePosition {
mut:
	shaped_text_get_underline_position_(shaped RID) f64
}

pub fn (s &TextServerExtension) gd_shaped_text_get_underline_position(shaped RID) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_underline_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetUnderlineThickness {
mut:
	shaped_text_get_underline_thickness_(shaped RID) f64
}

pub fn (s &TextServerExtension) gd_shaped_text_get_underline_thickness(shaped RID) f64 {
	mut result := f64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_underline_thickness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetDominantDirectionInRange {
mut:
	shaped_text_get_dominant_direction_in_range_(shaped RID, start i64, end i64) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_get_dominant_direction_in_range(shaped RID, start i64, end i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_dominant_direction_in_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2156738276)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&start)}
	args[2] = unsafe{voidptr(&end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetCarets {
mut:
	shaped_text_get_carets_(shaped RID, position i64, caret &CaretInfo)
}

pub fn (s &TextServerExtension) gd_shaped_text_get_carets(shaped RID, position i64, caret &CaretInfo) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_carets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1191777527)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&position)}
	args[2] = unsafe{voidptr(&caret)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedTextGetSelection {
mut:
	shaped_text_get_selection_(shaped RID, start i64, end i64) PackedVector2Array
}

pub fn (s &TextServerExtension) gd_shaped_text_get_selection(shaped RID, start i64, end i64) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3714187733)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&start)}
	args[2] = unsafe{voidptr(&end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextHitTestGrapheme {
mut:
	shaped_text_hit_test_grapheme_(shaped RID, coord f64) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_hit_test_grapheme(shaped RID, coord f64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_hit_test_grapheme")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3149310417)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&coord)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextHitTestPosition {
mut:
	shaped_text_hit_test_position_(shaped RID, coord f64) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_hit_test_position(shaped RID, coord f64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_hit_test_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3149310417)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&coord)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextDraw {
mut:
	shaped_text_draw_(shaped RID, canvas RID, pos Vector2, clip_l f64, clip_r f64, color Color)
}

pub fn (s &TextServerExtension) gd_shaped_text_draw(shaped RID, canvas RID, pos Vector2, clip_l f64, clip_r f64, color Color) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_draw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2453262187)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&canvas)}
	args[2] = unsafe{voidptr(&pos)}
	args[3] = unsafe{voidptr(&clip_l)}
	args[4] = unsafe{voidptr(&clip_r)}
	args[5] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedTextDrawOutline {
mut:
	shaped_text_draw_outline_(shaped RID, canvas RID, pos Vector2, clip_l f64, clip_r f64, outline_size i64, color Color)
}

pub fn (s &TextServerExtension) gd_shaped_text_draw_outline(shaped RID, canvas RID, pos Vector2, clip_l f64, clip_r f64, outline_size i64, color Color) {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_draw_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1686767567)
	mut args := unsafe { [7]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&canvas)}
	args[2] = unsafe{voidptr(&pos)}
	args[3] = unsafe{voidptr(&clip_l)}
	args[4] = unsafe{voidptr(&clip_r)}
	args[5] = unsafe{voidptr(&outline_size)}
	args[6] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITextServerExtensionShapedTextGetGraphemeBounds {
mut:
	shaped_text_get_grapheme_bounds_(shaped RID, pos i64) Vector2
}

pub fn (s &TextServerExtension) gd_shaped_text_get_grapheme_bounds(shaped RID, pos i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_grapheme_bounds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2546185844)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextNextGraphemePos {
mut:
	shaped_text_next_grapheme_pos_(shaped RID, pos i64) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_next_grapheme_pos(shaped RID, pos i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_next_grapheme_pos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextPrevGraphemePos {
mut:
	shaped_text_prev_grapheme_pos_(shaped RID, pos i64) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_prev_grapheme_pos(shaped RID, pos i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_prev_grapheme_pos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextGetCharacterBreaks {
mut:
	shaped_text_get_character_breaks_(shaped RID) PackedInt32Array
}

pub fn (s &TextServerExtension) gd_shaped_text_get_character_breaks(shaped RID) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_get_character_breaks")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 788230395)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextNextCharacterPos {
mut:
	shaped_text_next_character_pos_(shaped RID, pos i64) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_next_character_pos(shaped RID, pos i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_next_character_pos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextPrevCharacterPos {
mut:
	shaped_text_prev_character_pos_(shaped RID, pos i64) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_prev_character_pos(shaped RID, pos i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_prev_character_pos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionShapedTextClosestCharacterPos {
mut:
	shaped_text_closest_character_pos_(shaped RID, pos i64) i64
}

pub fn (s &TextServerExtension) gd_shaped_text_closest_character_pos(shaped RID, pos i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_shaped_text_closest_character_pos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shaped)}
	args[1] = unsafe{voidptr(&pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionFormatNumber {
mut:
	format_number_(number String, language String) String
}

pub fn (s &TextServerExtension) gd_format_number(number string, language string) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_format_number")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 315676799)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(number)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionParseNumber {
mut:
	parse_number_(number String, language String) String
}

pub fn (s &TextServerExtension) gd_parse_number(number string, language string) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_parse_number")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 315676799)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(number)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionPercentSign {
mut:
	percent_sign_(language String) String
}

pub fn (s &TextServerExtension) gd_percent_sign(language string) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_percent_sign")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(language)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionStripDiacritics {
mut:
	strip_diacritics_(gd_string String) String
}

pub fn (s &TextServerExtension) gd_strip_diacritics(gd_string string) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_strip_diacritics")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionIsValidIdentifier {
mut:
	is_valid_identifier_(gd_string String) bool
}

pub fn (s &TextServerExtension) gd_is_valid_identifier(gd_string string) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_is_valid_identifier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionIsValidLetter {
mut:
	is_valid_letter_(unicode i64) bool
}

pub fn (s &TextServerExtension) gd_is_valid_letter(unicode i64) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_is_valid_letter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&unicode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionStringGetWordBreaks {
mut:
	string_get_word_breaks_(gd_string String, language String, chars_per_line i64) PackedInt32Array
}

pub fn (s &TextServerExtension) gd_string_get_word_breaks(gd_string string, language string, chars_per_line i64) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_string_get_word_breaks")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3658450588)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(gd_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&chars_per_line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionStringGetCharacterBreaks {
mut:
	string_get_character_breaks_(gd_string String, language String) PackedInt32Array
}

pub fn (s &TextServerExtension) gd_string_get_character_breaks(gd_string string, language string) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_string_get_character_breaks")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2509056759)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(gd_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionIsConfusable {
mut:
	is_confusable_(gd_string String, dict PackedStringArray) i64
}

pub fn (s &TextServerExtension) gd_is_confusable(gd_string string, dict PackedStringArray) i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_is_confusable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1433197768)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(gd_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&dict)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionSpoofCheck {
mut:
	spoof_check_(gd_string String) bool
}

pub fn (s &TextServerExtension) gd_spoof_check(gd_string string) bool {
	mut result := false
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_spoof_check")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionStringToUpper {
mut:
	string_to_upper_(gd_string String, language String) String
}

pub fn (s &TextServerExtension) gd_string_to_upper(gd_string string, language string) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_string_to_upper")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 315676799)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(gd_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionStringToLower {
mut:
	string_to_lower_(gd_string String, language String) String
}

pub fn (s &TextServerExtension) gd_string_to_lower(gd_string string, language string) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_string_to_lower")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 315676799)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(gd_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionStringToTitle {
mut:
	string_to_title_(gd_string String, language String) String
}

pub fn (s &TextServerExtension) gd_string_to_title(gd_string string, language string) string {
	mut result := String{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_string_to_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 315676799)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(gd_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITextServerExtensionParseStructuredText {
mut:
	parse_structured_text_(parser_type TextServerStructuredTextParser, gd_args Array, text String) Array
}

pub fn (s &TextServerExtension) gd_parse_structured_text(parser_type TextServerStructuredTextParser, gd_args Array, text string) Array {
	mut result := Array{}
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_parse_structured_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3310685015)
	mut args := unsafe { [3]voidptr{} }
	i64_parser_type := i64(parser_type)
	args[0] = unsafe{voidptr(&i64_parser_type)}
	args[1] = unsafe{voidptr(&gd_args)}
	arg_sn2 := String.new(text)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextServerExtensionCleanup {
mut:
	cleanup_()
}

pub fn (s &TextServerExtension) gd_cleanup() {
	classname := StringName.new("TextServerExtension")
	fnname := StringName.new("_cleanup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
