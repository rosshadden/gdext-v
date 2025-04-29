module gd

pub struct InputEventMIDI {
	InputEvent
}

pub fn (s &InputEventMIDI) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s InputEventMIDI) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &InputEventMIDI) set_channel(channel i64) {
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("set_channel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&channel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMIDI) get_channel() i64 {
	mut result := i64(0)
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("get_channel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventMIDI) set_message(message MIDIMessage) {
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("set_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1064271510)
	mut args := unsafe { [1]voidptr{} }
	i64_message := i64(message)
	args[0] = unsafe{voidptr(&i64_message)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMIDI) get_message() MIDIMessage {
	mut result := i64(MIDIMessage.midi_message_none)
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("get_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1936512097)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MIDIMessage(result)}
}

pub fn (s &InputEventMIDI) set_pitch(pitch i64) {
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("set_pitch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pitch)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMIDI) get_pitch() i64 {
	mut result := i64(0)
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("get_pitch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventMIDI) set_velocity(velocity i64) {
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("set_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMIDI) get_velocity() i64 {
	mut result := i64(0)
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("get_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventMIDI) set_instrument(instrument i64) {
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("set_instrument")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&instrument)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMIDI) get_instrument() i64 {
	mut result := i64(0)
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("get_instrument")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventMIDI) set_pressure(pressure i64) {
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("set_pressure")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pressure)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMIDI) get_pressure() i64 {
	mut result := i64(0)
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("get_pressure")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventMIDI) set_controller_number(controller_number i64) {
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("set_controller_number")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&controller_number)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMIDI) get_controller_number() i64 {
	mut result := i64(0)
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("get_controller_number")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventMIDI) set_controller_value(controller_value i64) {
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("set_controller_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&controller_value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMIDI) get_controller_value() i64 {
	mut result := i64(0)
	classname := StringName.new("InputEventMIDI")
	fnname := StringName.new("get_controller_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
