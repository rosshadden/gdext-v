module gd

pub enum XRFaceTrackerBlendShapeEntry as i64 {
	ft_eye_look_out_right = 0
	ft_eye_look_in_right = 1
	ft_eye_look_up_right = 2
	ft_eye_look_down_right = 3
	ft_eye_look_out_left = 4
	ft_eye_look_in_left = 5
	ft_eye_look_up_left = 6
	ft_eye_look_down_left = 7
	ft_eye_closed_right = 8
	ft_eye_closed_left = 9
	ft_eye_squint_right = 10
	ft_eye_squint_left = 11
	ft_eye_wide_right = 12
	ft_eye_wide_left = 13
	ft_eye_dilation_right = 14
	ft_eye_dilation_left = 15
	ft_eye_constrict_right = 16
	ft_eye_constrict_left = 17
	ft_brow_pinch_right = 18
	ft_brow_pinch_left = 19
	ft_brow_lowerer_right = 20
	ft_brow_lowerer_left = 21
	ft_brow_inner_up_right = 22
	ft_brow_inner_up_left = 23
	ft_brow_outer_up_right = 24
	ft_brow_outer_up_left = 25
	ft_nose_sneer_right = 26
	ft_nose_sneer_left = 27
	ft_nasal_dilation_right = 28
	ft_nasal_dilation_left = 29
	ft_nasal_constrict_right = 30
	ft_nasal_constrict_left = 31
	ft_cheek_squint_right = 32
	ft_cheek_squint_left = 33
	ft_cheek_puff_right = 34
	ft_cheek_puff_left = 35
	ft_cheek_suck_right = 36
	ft_cheek_suck_left = 37
	ft_jaw_open = 38
	ft_mouth_closed = 39
	ft_jaw_right = 40
	ft_jaw_left = 41
	ft_jaw_forward = 42
	ft_jaw_backward = 43
	ft_jaw_clench = 44
	ft_jaw_mandible_raise = 45
	ft_lip_suck_upper_right = 46
	ft_lip_suck_upper_left = 47
	ft_lip_suck_lower_right = 48
	ft_lip_suck_lower_left = 49
	ft_lip_suck_corner_right = 50
	ft_lip_suck_corner_left = 51
	ft_lip_funnel_upper_right = 52
	ft_lip_funnel_upper_left = 53
	ft_lip_funnel_lower_right = 54
	ft_lip_funnel_lower_left = 55
	ft_lip_pucker_upper_right = 56
	ft_lip_pucker_upper_left = 57
	ft_lip_pucker_lower_right = 58
	ft_lip_pucker_lower_left = 59
	ft_mouth_upper_up_right = 60
	ft_mouth_upper_up_left = 61
	ft_mouth_lower_down_right = 62
	ft_mouth_lower_down_left = 63
	ft_mouth_upper_deepen_right = 64
	ft_mouth_upper_deepen_left = 65
	ft_mouth_upper_right = 66
	ft_mouth_upper_left = 67
	ft_mouth_lower_right = 68
	ft_mouth_lower_left = 69
	ft_mouth_corner_pull_right = 70
	ft_mouth_corner_pull_left = 71
	ft_mouth_corner_slant_right = 72
	ft_mouth_corner_slant_left = 73
	ft_mouth_frown_right = 74
	ft_mouth_frown_left = 75
	ft_mouth_stretch_right = 76
	ft_mouth_stretch_left = 77
	ft_mouth_dimple_right = 78
	ft_mouth_dimple_left = 79
	ft_mouth_raiser_upper = 80
	ft_mouth_raiser_lower = 81
	ft_mouth_press_right = 82
	ft_mouth_press_left = 83
	ft_mouth_tightener_right = 84
	ft_mouth_tightener_left = 85
	ft_tongue_out = 86
	ft_tongue_up = 87
	ft_tongue_down = 88
	ft_tongue_right = 89
	ft_tongue_left = 90
	ft_tongue_roll = 91
	ft_tongue_blend_down = 92
	ft_tongue_curl_up = 93
	ft_tongue_squish = 94
	ft_tongue_flat = 95
	ft_tongue_twist_right = 96
	ft_tongue_twist_left = 97
	ft_soft_palate_close = 98
	ft_throat_swallow = 99
	ft_neck_flex_right = 100
	ft_neck_flex_left = 101
	ft_eye_closed = 102
	ft_eye_wide = 103
	ft_eye_squint = 104
	ft_eye_dilation = 105
	ft_eye_constrict = 106
	ft_brow_down_right = 107
	ft_brow_down_left = 108
	ft_brow_down = 109
	ft_brow_up_right = 110
	ft_brow_up_left = 111
	ft_brow_up = 112
	ft_nose_sneer = 113
	ft_nasal_dilation = 114
	ft_nasal_constrict = 115
	ft_cheek_puff = 116
	ft_cheek_suck = 117
	ft_cheek_squint = 118
	ft_lip_suck_upper = 119
	ft_lip_suck_lower = 120
	ft_lip_suck = 121
	ft_lip_funnel_upper = 122
	ft_lip_funnel_lower = 123
	ft_lip_funnel = 124
	ft_lip_pucker_upper = 125
	ft_lip_pucker_lower = 126
	ft_lip_pucker = 127
	ft_mouth_upper_up = 128
	ft_mouth_lower_down = 129
	ft_mouth_open = 130
	ft_mouth_right = 131
	ft_mouth_left = 132
	ft_mouth_smile_right = 133
	ft_mouth_smile_left = 134
	ft_mouth_smile = 135
	ft_mouth_sad_right = 136
	ft_mouth_sad_left = 137
	ft_mouth_sad = 138
	ft_mouth_stretch = 139
	ft_mouth_dimple = 140
	ft_mouth_tightener = 141
	ft_mouth_press = 142
	ft_max = 143
}

pub struct XRFaceTracker {
	XRTracker
}

pub fn (s &XRFaceTracker) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRFaceTracker) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XRFaceTracker) get_blend_shape(blend_shape XRFaceTrackerBlendShapeEntry) f64 {
	mut result := f64(0)
	classname := StringName.new("XRFaceTracker")
	fnname := StringName.new("get_blend_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 330010046)
	mut args := unsafe { [1]voidptr{} }
	i64_blend_shape := i64(blend_shape)
	args[0] = unsafe{voidptr(&i64_blend_shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRFaceTracker) set_blend_shape(blend_shape XRFaceTrackerBlendShapeEntry, weight f64) {
	classname := StringName.new("XRFaceTracker")
	fnname := StringName.new("set_blend_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2352588791)
	mut args := unsafe { [2]voidptr{} }
	i64_blend_shape := i64(blend_shape)
	args[0] = unsafe{voidptr(&i64_blend_shape)}
	args[1] = unsafe{voidptr(&weight)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRFaceTracker) get_blend_shapes() PackedFloat32Array {
	mut result := PackedFloat32Array{}
	classname := StringName.new("XRFaceTracker")
	fnname := StringName.new("get_blend_shapes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRFaceTracker) set_blend_shapes(weights PackedFloat32Array) {
	classname := StringName.new("XRFaceTracker")
	fnname := StringName.new("set_blend_shapes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&weights)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
