module gd

pub enum AudioStreamWAVFormat as i64 {
	format_8_bits = 0
	format_16_bits = 1
	format_ima_adpcm = 2
	format_qoa = 3
}

pub enum AudioStreamWAVLoopMode as i64 {
	loop_disabled = 0
	loop_forward = 1
	loop_pingpong = 2
	loop_backward = 3
}

pub struct AudioStreamWAV {
	AudioStream
}

pub fn (s &AudioStreamWAV) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStreamWAV) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct AudioStreamWAV_load_from_buffer_Cfg {
pub:
	options Dictionary
}

pub fn AudioStreamWAV.load_from_buffer(stream_data PackedByteArray, cfg AudioStreamWAV_load_from_buffer_Cfg) AudioStreamWAV {
	mut result := AudioStreamWAV{}
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("load_from_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4266838938)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&stream_data)}
	args[1] = unsafe{voidptr(&cfg.options)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AudioStreamWAV_load_from_file_Cfg {
pub:
	options Dictionary
}

pub fn AudioStreamWAV.load_from_file(path string, cfg AudioStreamWAV_load_from_file_Cfg) AudioStreamWAV {
	mut result := AudioStreamWAV{}
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("load_from_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015802384)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.options)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamWAV) set_data(data PackedByteArray) {
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("set_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamWAV) get_data() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("get_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamWAV) set_format(format AudioStreamWAVFormat) {
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("set_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 60648488)
	mut args := unsafe { [1]voidptr{} }
	i64_format := i64(format)
	args[0] = unsafe{voidptr(&i64_format)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamWAV) get_format() AudioStreamWAVFormat {
	mut result := i64(AudioStreamWAVFormat.format_8_bits)
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3151724922)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioStreamWAVFormat(result)}
}

pub fn (s &AudioStreamWAV) set_loop_mode(loop_mode AudioStreamWAVLoopMode) {
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("set_loop_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2444882972)
	mut args := unsafe { [1]voidptr{} }
	i64_loop_mode := i64(loop_mode)
	args[0] = unsafe{voidptr(&i64_loop_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamWAV) get_loop_mode() AudioStreamWAVLoopMode {
	mut result := i64(AudioStreamWAVLoopMode.loop_disabled)
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("get_loop_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 393560655)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioStreamWAVLoopMode(result)}
}

pub fn (s &AudioStreamWAV) set_loop_begin(loop_begin i64) {
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("set_loop_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&loop_begin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamWAV) get_loop_begin() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("get_loop_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamWAV) set_loop_end(loop_end i64) {
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("set_loop_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&loop_end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamWAV) get_loop_end() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("get_loop_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamWAV) set_mix_rate(mix_rate i64) {
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("set_mix_rate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mix_rate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamWAV) get_mix_rate() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("get_mix_rate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamWAV) set_stereo(stereo bool) {
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("set_stereo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stereo)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamWAV) is_stereo() bool {
	mut result := false
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("is_stereo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamWAV) save_to_wav(path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("AudioStreamWAV")
	fnname := StringName.new("save_to_wav")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}
