module gd

pub struct ConfirmationDialog {
	AcceptDialog
}

pub fn (s &ConfirmationDialog) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ConfirmationDialog) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ConfirmationDialog) get_cancel_button() Button {
	mut result := Button{}
	classname := StringName.new("ConfirmationDialog")
	fnname := StringName.new("get_cancel_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1856205918)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ConfirmationDialog) set_cancel_button_text(text string) {
	classname := StringName.new("ConfirmationDialog")
	fnname := StringName.new("set_cancel_button_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ConfirmationDialog) get_cancel_button_text() string {
	mut result := String{}
	classname := StringName.new("ConfirmationDialog")
	fnname := StringName.new("get_cancel_button_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
