module gd

pub enum TimeMonth as i64 {
	month_january = 1
	month_february = 2
	month_march = 3
	month_april = 4
	month_may = 5
	month_june = 6
	month_july = 7
	month_august = 8
	month_september = 9
	month_october = 10
	month_november = 11
	month_december = 12
}

pub enum TimeWeekday as i64 {
	weekday_sunday = 0
	weekday_monday = 1
	weekday_tuesday = 2
	weekday_wednesday = 3
	weekday_thursday = 4
	weekday_friday = 5
	weekday_saturday = 6
}

pub struct Time {
	Object
}

pub fn Time.get_singleton() Time {
	sn := StringName.new("Time")
	result := Time{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &Time) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Time) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Time) get_datetime_dict_from_unix_time(unix_time_val i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_datetime_dict_from_unix_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&unix_time_val)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Time) get_date_dict_from_unix_time(unix_time_val i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_date_dict_from_unix_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&unix_time_val)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Time) get_time_dict_from_unix_time(unix_time_val i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_time_dict_from_unix_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&unix_time_val)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Time_get_datetime_string_from_unix_time_Cfg {
pub:
	use_space bool
}

pub fn (s &Time) get_datetime_string_from_unix_time(unix_time_val i64, cfg Time_get_datetime_string_from_unix_time_Cfg) string {
	mut result := String{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_datetime_string_from_unix_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311239925)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&unix_time_val)}
	args[1] = unsafe{voidptr(&cfg.use_space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Time) get_date_string_from_unix_time(unix_time_val i64) string {
	mut result := String{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_date_string_from_unix_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&unix_time_val)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Time) get_time_string_from_unix_time(unix_time_val i64) string {
	mut result := String{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_time_string_from_unix_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&unix_time_val)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Time) get_datetime_dict_from_datetime_string(datetime string, weekday bool) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_datetime_dict_from_datetime_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3253569256)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(datetime)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&weekday)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Time) get_datetime_string_from_datetime_dict(datetime Dictionary, use_space bool) string {
	mut result := String{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_datetime_string_from_datetime_dict")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1898123706)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&datetime)}
	args[1] = unsafe{voidptr(&use_space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Time) get_unix_time_from_datetime_dict(datetime Dictionary) i64 {
	mut result := i64(0)
	classname := StringName.new("Time")
	fnname := StringName.new("get_unix_time_from_datetime_dict")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3021115443)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&datetime)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Time) get_unix_time_from_datetime_string(datetime string) i64 {
	mut result := i64(0)
	classname := StringName.new("Time")
	fnname := StringName.new("get_unix_time_from_datetime_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(datetime)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Time) get_offset_string_from_offset_minutes(offset_minutes i64) string {
	mut result := String{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_offset_string_from_offset_minutes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset_minutes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct Time_get_datetime_dict_from_system_Cfg {
pub:
	utc bool
}

pub fn (s &Time) get_datetime_dict_from_system(cfg Time_get_datetime_dict_from_system_Cfg) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_datetime_dict_from_system")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 205769976)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.utc)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Time_get_date_dict_from_system_Cfg {
pub:
	utc bool
}

pub fn (s &Time) get_date_dict_from_system(cfg Time_get_date_dict_from_system_Cfg) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_date_dict_from_system")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 205769976)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.utc)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Time_get_time_dict_from_system_Cfg {
pub:
	utc bool
}

pub fn (s &Time) get_time_dict_from_system(cfg Time_get_time_dict_from_system_Cfg) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_time_dict_from_system")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 205769976)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.utc)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Time_get_datetime_string_from_system_Cfg {
pub:
	utc bool
	use_space bool
}

pub fn (s &Time) get_datetime_string_from_system(cfg Time_get_datetime_string_from_system_Cfg) string {
	mut result := String{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_datetime_string_from_system")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1136425492)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.utc)}
	args[1] = unsafe{voidptr(&cfg.use_space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct Time_get_date_string_from_system_Cfg {
pub:
	utc bool
}

pub fn (s &Time) get_date_string_from_system(cfg Time_get_date_string_from_system_Cfg) string {
	mut result := String{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_date_string_from_system")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1162154673)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.utc)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct Time_get_time_string_from_system_Cfg {
pub:
	utc bool
}

pub fn (s &Time) get_time_string_from_system(cfg Time_get_time_string_from_system_Cfg) string {
	mut result := String{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_time_string_from_system")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1162154673)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.utc)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Time) get_time_zone_from_system() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Time")
	fnname := StringName.new("get_time_zone_from_system")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Time) get_unix_time_from_system() f64 {
	mut result := f64(0)
	classname := StringName.new("Time")
	fnname := StringName.new("get_unix_time_from_system")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Time) get_ticks_msec() i64 {
	mut result := i64(0)
	classname := StringName.new("Time")
	fnname := StringName.new("get_ticks_msec")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Time) get_ticks_usec() i64 {
	mut result := i64(0)
	classname := StringName.new("Time")
	fnname := StringName.new("get_ticks_usec")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
