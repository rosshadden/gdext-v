module gd

pub struct OpenXRExtensionWrapper {
	Object
}

pub fn (s &OpenXRExtensionWrapper) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRExtensionWrapper) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IOpenXRExtensionWrapperGetRequestedExtensions {
mut:
	get_requested_extensions_() Dictionary
}

pub fn (s &OpenXRExtensionWrapper) gd_get_requested_extensions() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_get_requested_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperSetSystemPropertiesAndGetNextPointer {
mut:
	set_system_properties_and_get_next_pointer_(next_pointer voidptr) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_set_system_properties_and_get_next_pointer(next_pointer voidptr) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_set_system_properties_and_get_next_pointer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&next_pointer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperSetInstanceCreateInfoAndGetNextPointer {
mut:
	set_instance_create_info_and_get_next_pointer_(next_pointer voidptr) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_set_instance_create_info_and_get_next_pointer(next_pointer voidptr) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_set_instance_create_info_and_get_next_pointer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&next_pointer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperSetSessionCreateAndGetNextPointer {
mut:
	set_session_create_and_get_next_pointer_(next_pointer voidptr) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_set_session_create_and_get_next_pointer(next_pointer voidptr) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_set_session_create_and_get_next_pointer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&next_pointer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperSetSwapchainCreateInfoAndGetNextPointer {
mut:
	set_swapchain_create_info_and_get_next_pointer_(next_pointer voidptr) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_set_swapchain_create_info_and_get_next_pointer(next_pointer voidptr) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_set_swapchain_create_info_and_get_next_pointer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&next_pointer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperSetHandJointLocationsAndGetNextPointer {
mut:
	set_hand_joint_locations_and_get_next_pointer_(hand_index i64, next_pointer voidptr) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_set_hand_joint_locations_and_get_next_pointer(hand_index i64, next_pointer voidptr) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_set_hand_joint_locations_and_get_next_pointer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 50157827)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&hand_index)}
	args[1] = unsafe{voidptr(&next_pointer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperSetProjectionViewsAndGetNextPointer {
mut:
	set_projection_views_and_get_next_pointer_(view_index i64, next_pointer voidptr) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_set_projection_views_and_get_next_pointer(view_index i64, next_pointer voidptr) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_set_projection_views_and_get_next_pointer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 50157827)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&view_index)}
	args[1] = unsafe{voidptr(&next_pointer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperSetFrameWaitInfoAndGetNextPointer {
mut:
	set_frame_wait_info_and_get_next_pointer_(next_pointer voidptr) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_set_frame_wait_info_and_get_next_pointer(next_pointer voidptr) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_set_frame_wait_info_and_get_next_pointer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&next_pointer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperSetFrameEndInfoAndGetNextPointer {
mut:
	set_frame_end_info_and_get_next_pointer_(next_pointer voidptr) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_set_frame_end_info_and_get_next_pointer(next_pointer voidptr) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_set_frame_end_info_and_get_next_pointer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&next_pointer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperSetViewLocateInfoAndGetNextPointer {
mut:
	set_view_locate_info_and_get_next_pointer_(next_pointer voidptr) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_set_view_locate_info_and_get_next_pointer(next_pointer voidptr) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_set_view_locate_info_and_get_next_pointer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&next_pointer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperSetReferenceSpaceCreateInfoAndGetNextPointer {
mut:
	set_reference_space_create_info_and_get_next_pointer_(reference_space_type i64, next_pointer voidptr) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_set_reference_space_create_info_and_get_next_pointer(reference_space_type i64, next_pointer voidptr) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_set_reference_space_create_info_and_get_next_pointer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 50157827)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&reference_space_type)}
	args[1] = unsafe{voidptr(&next_pointer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperGetCompositionLayerCount {
mut:
	get_composition_layer_count_() i64
}

pub fn (s &OpenXRExtensionWrapper) gd_get_composition_layer_count() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_get_composition_layer_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperGetCompositionLayer {
mut:
	get_composition_layer_(index i64) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_get_composition_layer(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_get_composition_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperGetCompositionLayerOrder {
mut:
	get_composition_layer_order_(index i64) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_get_composition_layer_order(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_get_composition_layer_order")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperGetSuggestedTrackerNames {
mut:
	get_suggested_tracker_names_() PackedStringArray
}

pub fn (s &OpenXRExtensionWrapper) gd_get_suggested_tracker_names() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_get_suggested_tracker_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperOnRegisterMetadata {
mut:
	on_register_metadata_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_register_metadata() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_register_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnBeforeInstanceCreated {
mut:
	on_before_instance_created_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_before_instance_created() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_before_instance_created")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnInstanceCreated {
mut:
	on_instance_created_(instance i64)
}

pub fn (s &OpenXRExtensionWrapper) gd_on_instance_created(instance i64) {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_instance_created")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&instance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnInstanceDestroyed {
mut:
	on_instance_destroyed_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_instance_destroyed() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_instance_destroyed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnSessionCreated {
mut:
	on_session_created_(session i64)
}

pub fn (s &OpenXRExtensionWrapper) gd_on_session_created(session i64) {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_session_created")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&session)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnProcess {
mut:
	on_process_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_process() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnPreRender {
mut:
	on_pre_render_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_pre_render() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_pre_render")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnMainSwapchainsCreated {
mut:
	on_main_swapchains_created_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_main_swapchains_created() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_main_swapchains_created")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnPreDrawViewport {
mut:
	on_pre_draw_viewport_(viewport RID)
}

pub fn (s &OpenXRExtensionWrapper) gd_on_pre_draw_viewport(viewport RID) {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_pre_draw_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&viewport)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnPostDrawViewport {
mut:
	on_post_draw_viewport_(viewport RID)
}

pub fn (s &OpenXRExtensionWrapper) gd_on_post_draw_viewport(viewport RID) {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_post_draw_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&viewport)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnSessionDestroyed {
mut:
	on_session_destroyed_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_session_destroyed() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_session_destroyed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnStateIdle {
mut:
	on_state_idle_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_state_idle() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_state_idle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnStateReady {
mut:
	on_state_ready_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_state_ready() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_state_ready")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnStateSynchronized {
mut:
	on_state_synchronized_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_state_synchronized() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_state_synchronized")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnStateVisible {
mut:
	on_state_visible_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_state_visible() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_state_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnStateFocused {
mut:
	on_state_focused_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_state_focused() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_state_focused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnStateStopping {
mut:
	on_state_stopping_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_state_stopping() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_state_stopping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnStateLossPending {
mut:
	on_state_loss_pending_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_state_loss_pending() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_state_loss_pending")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnStateExiting {
mut:
	on_state_exiting_()
}

pub fn (s &OpenXRExtensionWrapper) gd_on_state_exiting() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_state_exiting")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperOnEventPolled {
mut:
	on_event_polled_(event voidptr) bool
}

pub fn (s &OpenXRExtensionWrapper) gd_on_event_polled(event voidptr) bool {
	mut result := false
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_event_polled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&event)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperSetViewportCompositionLayerAndGetNextPointer {
mut:
	set_viewport_composition_layer_and_get_next_pointer_(layer voidptr, property_values Dictionary, next_pointer voidptr) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_set_viewport_composition_layer_and_get_next_pointer(layer voidptr, property_values Dictionary, next_pointer voidptr) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_set_viewport_composition_layer_and_get_next_pointer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2250464348)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&property_values)}
	args[2] = unsafe{voidptr(&next_pointer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperGetViewportCompositionLayerExtensionProperties {
mut:
	get_viewport_composition_layer_extension_properties_() Array
}

pub fn (s &OpenXRExtensionWrapper) gd_get_viewport_composition_layer_extension_properties() Array {
	mut result := Array{}
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_get_viewport_composition_layer_extension_properties")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperGetViewportCompositionLayerExtensionPropertyDefaults {
mut:
	get_viewport_composition_layer_extension_property_defaults_() Dictionary
}

pub fn (s &OpenXRExtensionWrapper) gd_get_viewport_composition_layer_extension_property_defaults() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_get_viewport_composition_layer_extension_property_defaults")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IOpenXRExtensionWrapperOnViewportCompositionLayerDestroyed {
mut:
	on_viewport_composition_layer_destroyed_(layer voidptr)
}

pub fn (s &OpenXRExtensionWrapper) gd_on_viewport_composition_layer_destroyed(layer voidptr) {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_on_viewport_composition_layer_destroyed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IOpenXRExtensionWrapperSetAndroidSurfaceSwapchainCreateInfoAndGetNextPointer {
mut:
	set_android_surface_swapchain_create_info_and_get_next_pointer_(property_values Dictionary, next_pointer voidptr) i64
}

pub fn (s &OpenXRExtensionWrapper) gd_set_android_surface_swapchain_create_info_and_get_next_pointer(property_values Dictionary, next_pointer voidptr) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("_set_android_surface_swapchain_create_info_and_get_next_pointer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3726637545)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&property_values)}
	args[1] = unsafe{voidptr(&next_pointer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRExtensionWrapper) get_openxr_api() OpenXRAPIExtension {
	mut result := OpenXRAPIExtension{}
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("get_openxr_api")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1637791613)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRExtensionWrapper) register_extension_wrapper() {
	classname := StringName.new("OpenXRExtensionWrapper")
	fnname := StringName.new("register_extension_wrapper")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
