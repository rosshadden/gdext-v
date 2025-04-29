module gd

pub struct ResourceImporterOggVorbis {
	ResourceImporter
}

pub fn (s &ResourceImporterOggVorbis) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ResourceImporterOggVorbis) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn ResourceImporterOggVorbis.load_from_buffer(stream_data PackedByteArray) AudioStreamOggVorbis {
	mut result := AudioStreamOggVorbis{}
	classname := StringName.new("ResourceImporterOggVorbis")
	fnname := StringName.new("load_from_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 354904730)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stream_data)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn ResourceImporterOggVorbis.load_from_file(path string) AudioStreamOggVorbis {
	mut result := AudioStreamOggVorbis{}
	classname := StringName.new("ResourceImporterOggVorbis")
	fnname := StringName.new("load_from_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 797568536)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
