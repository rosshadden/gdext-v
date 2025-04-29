module gd

pub struct MovieWriter {
	Object
}

pub fn (s &MovieWriter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MovieWriter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IMovieWriterGetAudioMixRate {
mut:
	get_audio_mix_rate_() i64
}

pub fn (s &MovieWriter) gd_get_audio_mix_rate() i64 {
	mut result := i64(0)
	classname := StringName.new("MovieWriter")
	fnname := StringName.new("_get_audio_mix_rate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMovieWriterGetAudioSpeakerMode {
mut:
	get_audio_speaker_mode_() AudioServerSpeakerMode
}

pub fn (s &MovieWriter) gd_get_audio_speaker_mode() AudioServerSpeakerMode {
	mut result := i64(AudioServerSpeakerMode.speaker_mode_stereo)
	classname := StringName.new("MovieWriter")
	fnname := StringName.new("_get_audio_speaker_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2549190337)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioServerSpeakerMode(result)}
}

pub interface IMovieWriterHandlesFile {
mut:
	handles_file_(path String) bool
}

pub fn (s &MovieWriter) gd_handles_file(path string) bool {
	mut result := false
	classname := StringName.new("MovieWriter")
	fnname := StringName.new("_handles_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMovieWriterWriteBegin {
mut:
	write_begin_(movie_size Vector2i, fps i64, base_path String) GDError
}

pub fn (s &MovieWriter) gd_write_begin(movie_size Vector2i, fps i64, base_path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MovieWriter")
	fnname := StringName.new("_write_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1866453460)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&movie_size)}
	args[1] = unsafe{voidptr(&fps)}
	arg_sn2 := String.new(base_path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IMovieWriterWriteFrame {
mut:
	write_frame_(frame_image Image, audio_frame_block voidptr) GDError
}

pub fn (s &MovieWriter) gd_write_frame(frame_image Image, audio_frame_block voidptr) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MovieWriter")
	fnname := StringName.new("_write_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2784607037)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&frame_image.ptr)
	args[1] = unsafe{voidptr(&audio_frame_block)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IMovieWriterWriteEnd {
mut:
	write_end_()
}

pub fn (s &MovieWriter) gd_write_end() {
	classname := StringName.new("MovieWriter")
	fnname := StringName.new("_write_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn MovieWriter.add_writer(writer MovieWriter) {
	classname := StringName.new("MovieWriter")
	fnname := StringName.new("add_writer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4023702871)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&writer.ptr)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
