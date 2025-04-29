module gd

pub struct WebRTCPeerConnectionExtension {
	WebRTCPeerConnection
}

pub fn (s &WebRTCPeerConnectionExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s WebRTCPeerConnectionExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IWebRTCPeerConnectionExtensionGetConnectionState {
mut:
	get_connection_state_() WebRTCPeerConnectionConnectionState
}

pub fn (s &WebRTCPeerConnectionExtension) gd_get_connection_state() WebRTCPeerConnectionConnectionState {
	mut result := i64(WebRTCPeerConnectionConnectionState.state_new)
	classname := StringName.new("WebRTCPeerConnectionExtension")
	fnname := StringName.new("_get_connection_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2275710506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{WebRTCPeerConnectionConnectionState(result)}
}

pub interface IWebRTCPeerConnectionExtensionGetGatheringState {
mut:
	get_gathering_state_() WebRTCPeerConnectionGatheringState
}

pub fn (s &WebRTCPeerConnectionExtension) gd_get_gathering_state() WebRTCPeerConnectionGatheringState {
	mut result := i64(WebRTCPeerConnectionGatheringState.gathering_state_new)
	classname := StringName.new("WebRTCPeerConnectionExtension")
	fnname := StringName.new("_get_gathering_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4262591401)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{WebRTCPeerConnectionGatheringState(result)}
}

pub interface IWebRTCPeerConnectionExtensionGetSignalingState {
mut:
	get_signaling_state_() WebRTCPeerConnectionSignalingState
}

pub fn (s &WebRTCPeerConnectionExtension) gd_get_signaling_state() WebRTCPeerConnectionSignalingState {
	mut result := i64(WebRTCPeerConnectionSignalingState.signaling_state_stable)
	classname := StringName.new("WebRTCPeerConnectionExtension")
	fnname := StringName.new("_get_signaling_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3342956226)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{WebRTCPeerConnectionSignalingState(result)}
}

pub interface IWebRTCPeerConnectionExtensionInitialize {
mut:
	initialize_(p_config Dictionary) GDError
}

pub fn (s &WebRTCPeerConnectionExtension) gd_initialize(p_config Dictionary) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCPeerConnectionExtension")
	fnname := StringName.new("_initialize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1494659981)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_config)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IWebRTCPeerConnectionExtensionCreateDataChannel {
mut:
	create_data_channel_(p_label String, p_config Dictionary) WebRTCDataChannel
}

pub fn (s &WebRTCPeerConnectionExtension) gd_create_data_channel(p_label string, p_config Dictionary) WebRTCDataChannel {
	mut result := WebRTCDataChannel{}
	classname := StringName.new("WebRTCPeerConnectionExtension")
	fnname := StringName.new("_create_data_channel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4111292546)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(p_label)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&p_config)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IWebRTCPeerConnectionExtensionCreateOffer {
mut:
	create_offer_() GDError
}

pub fn (s &WebRTCPeerConnectionExtension) gd_create_offer() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCPeerConnectionExtension")
	fnname := StringName.new("_create_offer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IWebRTCPeerConnectionExtensionSetRemoteDescription {
mut:
	set_remote_description_(p_type String, p_sdp String) GDError
}

pub fn (s &WebRTCPeerConnectionExtension) gd_set_remote_description(p_type string, p_sdp string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCPeerConnectionExtension")
	fnname := StringName.new("_set_remote_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(p_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(p_sdp)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IWebRTCPeerConnectionExtensionSetLocalDescription {
mut:
	set_local_description_(p_type String, p_sdp String) GDError
}

pub fn (s &WebRTCPeerConnectionExtension) gd_set_local_description(p_type string, p_sdp string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCPeerConnectionExtension")
	fnname := StringName.new("_set_local_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(p_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(p_sdp)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IWebRTCPeerConnectionExtensionAddIceCandidate {
mut:
	add_ice_candidate_(p_sdp_mid_name String, p_sdp_mline_index i64, p_sdp_name String) GDError
}

pub fn (s &WebRTCPeerConnectionExtension) gd_add_ice_candidate(p_sdp_mid_name string, p_sdp_mline_index i64, p_sdp_name string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCPeerConnectionExtension")
	fnname := StringName.new("_add_ice_candidate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3958950400)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(p_sdp_mid_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&p_sdp_mline_index)}
	arg_sn2 := String.new(p_sdp_name)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IWebRTCPeerConnectionExtensionPoll {
mut:
	poll_() GDError
}

pub fn (s &WebRTCPeerConnectionExtension) gd_poll() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCPeerConnectionExtension")
	fnname := StringName.new("_poll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IWebRTCPeerConnectionExtensionClose {
mut:
	close_()
}

pub fn (s &WebRTCPeerConnectionExtension) gd_close() {
	classname := StringName.new("WebRTCPeerConnectionExtension")
	fnname := StringName.new("_close")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
