module gd

pub enum GraphEditPanningScheme as i64 {
	scroll_zooms = 0
	scroll_pans = 1
}

pub enum GraphEditGridPattern as i64 {
	grid_pattern_lines = 0
	grid_pattern_dots = 1
}

pub struct GraphEdit {
	Control
}

pub fn (s &GraphEdit) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GraphEdit) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IGraphEditIsInInputHotzone {
mut:
	is_in_input_hotzone_(in_node Object, in_port i64, mouse_position Vector2) bool
}

pub fn (s &GraphEdit) gd_is_in_input_hotzone(in_node Object, in_port i64, mouse_position Vector2) bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("_is_in_input_hotzone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1779768129)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&in_node.ptr)
	args[1] = unsafe{voidptr(&in_port)}
	args[2] = unsafe{voidptr(&mouse_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IGraphEditIsInOutputHotzone {
mut:
	is_in_output_hotzone_(in_node Object, in_port i64, mouse_position Vector2) bool
}

pub fn (s &GraphEdit) gd_is_in_output_hotzone(in_node Object, in_port i64, mouse_position Vector2) bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("_is_in_output_hotzone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1779768129)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&in_node.ptr)
	args[1] = unsafe{voidptr(&in_port)}
	args[2] = unsafe{voidptr(&mouse_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IGraphEditGetConnectionLine {
mut:
	get_connection_line_(from_position Vector2, to_position Vector2) PackedVector2Array
}

pub fn (s &GraphEdit) gd_get_connection_line(from_position Vector2, to_position Vector2) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("_get_connection_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3932192302)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_position)}
	args[1] = unsafe{voidptr(&to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IGraphEditIsNodeHoverValid {
mut:
	is_node_hover_valid_(from_node StringName, from_port i64, to_node StringName, to_port i64) bool
}

pub fn (s &GraphEdit) gd_is_node_hover_valid(from_node string, from_port i64, to_node string, to_port i64) bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("_is_node_hover_valid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4216241294)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := StringName.new(from_node)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&from_port)}
	arg_sn2 := StringName.new(to_node)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&to_port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct GraphEdit_connect_node_Cfg {
pub:
	keep_alive bool
}

pub fn (s &GraphEdit) connect_node(from_node string, from_port i64, to_node string, to_port i64, cfg GraphEdit_connect_node_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("connect_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1376144231)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := StringName.new(from_node)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&from_port)}
	arg_sn2 := StringName.new(to_node)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&to_port)}
	args[4] = unsafe{voidptr(&cfg.keep_alive)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &GraphEdit) is_node_connected(from_node string, from_port i64, to_node string, to_port i64) bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("is_node_connected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4216241294)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := StringName.new(from_node)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&from_port)}
	arg_sn2 := StringName.new(to_node)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&to_port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) disconnect_node(from_node string, from_port i64, to_node string, to_port i64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("disconnect_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1933654315)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := StringName.new(from_node)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&from_port)}
	arg_sn2 := StringName.new(to_node)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&to_port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) set_connection_activity(from_node string, from_port i64, to_node string, to_port i64, amount f64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_connection_activity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1141899943)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := StringName.new(from_node)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&from_port)}
	arg_sn2 := StringName.new(to_node)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&to_port)}
	args[4] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) set_connections(connections Array) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&connections)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_connection_list() Array {
	mut result := Array{}
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_connection_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) get_connection_count(from_node string, from_port i64) i64 {
	mut result := i64(0)
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_connection_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 861718734)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(from_node)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&from_port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct GraphEdit_get_closest_connection_at_point_Cfg {
pub:
	max_distance f64
}

pub fn (s &GraphEdit) get_closest_connection_at_point(point Vector2, cfg GraphEdit_get_closest_connection_at_point_Cfg) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_closest_connection_at_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 453879819)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	args[1] = unsafe{voidptr(&cfg.max_distance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) get_connection_list_from_node(node string) Array {
	mut result := Array{}
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_connection_list_from_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3147814860)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(node)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) get_connections_intersecting_with_rect(rect Rect2) Array {
	mut result := Array{}
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_connections_intersecting_with_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2709748719)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) clear_connections() {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("clear_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) force_connection_drag_end() {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("force_connection_drag_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_scroll_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_scroll_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_scroll_offset(offset Vector2) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_scroll_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) add_valid_right_disconnect_type(gd_type i64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("add_valid_right_disconnect_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) remove_valid_right_disconnect_type(gd_type i64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("remove_valid_right_disconnect_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) add_valid_left_disconnect_type(gd_type i64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("add_valid_left_disconnect_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) remove_valid_left_disconnect_type(gd_type i64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("remove_valid_left_disconnect_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) add_valid_connection_type(from_type i64, to_type i64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("add_valid_connection_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_type)}
	args[1] = unsafe{voidptr(&to_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) remove_valid_connection_type(from_type i64, to_type i64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("remove_valid_connection_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_type)}
	args[1] = unsafe{voidptr(&to_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) is_valid_connection_type(from_type i64, to_type i64) bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("is_valid_connection_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_type)}
	args[1] = unsafe{voidptr(&to_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) get_connection_line(from_node Vector2, to_node Vector2) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_connection_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3932192302)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_node)}
	args[1] = unsafe{voidptr(&to_node)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) attach_graph_element_to_frame(element string, frame string) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("attach_graph_element_to_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(element)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(frame)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) detach_graph_element_from_frame(element string) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("detach_graph_element_from_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(element)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_element_frame(element string) GraphFrame {
	mut result := GraphFrame{}
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_element_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 988084372)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(element)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) get_attached_nodes_of_frame(frame string) Array {
	mut result := Array{}
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_attached_nodes_of_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 689397652)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(frame)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_panning_scheme(scheme GraphEditPanningScheme) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_panning_scheme")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 18893313)
	mut args := unsafe { [1]voidptr{} }
	i64_scheme := i64(scheme)
	args[0] = unsafe{voidptr(&i64_scheme)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_panning_scheme() GraphEditPanningScheme {
	mut result := i64(GraphEditPanningScheme.scroll_zooms)
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_panning_scheme")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 549924446)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GraphEditPanningScheme(result)}
}

pub fn (s &GraphEdit) set_zoom(zoom f64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_zoom")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&zoom)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_zoom() f64 {
	mut result := f64(0)
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_zoom")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_zoom_min(zoom_min f64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_zoom_min")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&zoom_min)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_zoom_min() f64 {
	mut result := f64(0)
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_zoom_min")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_zoom_max(zoom_max f64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_zoom_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&zoom_max)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_zoom_max() f64 {
	mut result := f64(0)
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_zoom_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_zoom_step(zoom_step f64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_zoom_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&zoom_step)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_zoom_step() f64 {
	mut result := f64(0)
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_zoom_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_show_grid(enable bool) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_show_grid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) is_showing_grid() bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("is_showing_grid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_grid_pattern(pattern GraphEditGridPattern) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_grid_pattern")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1074098205)
	mut args := unsafe { [1]voidptr{} }
	i64_pattern := i64(pattern)
	args[0] = unsafe{voidptr(&i64_pattern)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_grid_pattern() GraphEditGridPattern {
	mut result := i64(GraphEditGridPattern.grid_pattern_lines)
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_grid_pattern")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286127528)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GraphEditGridPattern(result)}
}

pub fn (s &GraphEdit) set_snapping_enabled(enable bool) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_snapping_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) is_snapping_enabled() bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("is_snapping_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_snapping_distance(pixels i64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_snapping_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pixels)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_snapping_distance() i64 {
	mut result := i64(0)
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_snapping_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_connection_lines_curvature(curvature f64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_connection_lines_curvature")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&curvature)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_connection_lines_curvature() f64 {
	mut result := f64(0)
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_connection_lines_curvature")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_connection_lines_thickness(pixels f64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_connection_lines_thickness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pixels)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_connection_lines_thickness() f64 {
	mut result := f64(0)
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_connection_lines_thickness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_connection_lines_antialiased(pixels bool) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_connection_lines_antialiased")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pixels)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) is_connection_lines_antialiased() bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("is_connection_lines_antialiased")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_minimap_size(size Vector2) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_minimap_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_minimap_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_minimap_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_minimap_opacity(opacity f64) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_minimap_opacity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&opacity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_minimap_opacity() f64 {
	mut result := f64(0)
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_minimap_opacity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_minimap_enabled(enable bool) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_minimap_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) is_minimap_enabled() bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("is_minimap_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_show_menu(hidden bool) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_show_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&hidden)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) is_showing_menu() bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("is_showing_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_show_zoom_label(enable bool) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_show_zoom_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) is_showing_zoom_label() bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("is_showing_zoom_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_show_grid_buttons(hidden bool) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_show_grid_buttons")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&hidden)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) is_showing_grid_buttons() bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("is_showing_grid_buttons")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_show_zoom_buttons(hidden bool) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_show_zoom_buttons")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&hidden)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) is_showing_zoom_buttons() bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("is_showing_zoom_buttons")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_show_minimap_button(hidden bool) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_show_minimap_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&hidden)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) is_showing_minimap_button() bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("is_showing_minimap_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_show_arrange_button(hidden bool) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_show_arrange_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&hidden)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) is_showing_arrange_button() bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("is_showing_arrange_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_right_disconnects(enable bool) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_right_disconnects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) is_right_disconnects_enabled() bool {
	mut result := false
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("is_right_disconnects_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) set_type_names(type_names Dictionary) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_type_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&type_names)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) get_type_names() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_type_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) get_menu_hbox() HBoxContainer {
	mut result := HBoxContainer{}
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("get_menu_hbox")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3590609951)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphEdit) arrange_nodes() {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("arrange_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphEdit) set_selected(node Node) {
	classname := StringName.new("GraphEdit")
	fnname := StringName.new("set_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
