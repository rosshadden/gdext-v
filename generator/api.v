module generator

struct APIOperator {
	name        string @[required]
	right_type  string
	return_type string @[required]
	description string
}

struct APIBuiltinClass {
	name                 string        @[required]
	is_keyed             bool          @[required]
	operators            []APIOperator @[required]
	has_destructor       bool          @[required]
	indexing_return_type string
	brief_description    string
	description          string

	constructors []struct {
		index       int @[required]
		description string
		arguments   []struct {
			name string @[required]
			type string @[required]
		}
	} @[required]

	methods []struct {
		name        string @[required]
		return_type string
		is_vararg   bool @[required]
		is_const    bool @[required]
		is_static   bool @[required]
		hash        u64  @[required]
		description string
		arguments   []struct {
			name          string @[required]
			type          string @[required]
			default_value string
		}
	}

	members []struct {
		name        string @[required]
		type        string @[required]
		description string
	}

	constants []struct {
		name        string @[required]
		type        string @[required]
		value       string @[required]
		description string
	}

	enums []struct {
		name   string          @[required]
		values []struct {
			name        string @[required]
			value       i64    @[required]
			description string
		} @[required]
	}
}

struct APIClass {
pub:
	name              string @[required]
	is_refcounted     bool   @[required]
	is_instantiable   bool   @[required]
	inherits          string
	api_type          string @[required]
	brief_description string
	description       string

	enums []struct {
		name        string           @[required]
		is_bitfield bool             @[required]
		values      []struct {
			name        string @[required]
			value       i64    @[required]
			description string
		} @[required]
	}

	methods []struct {
		name        string @[required]
		is_const    bool   @[required]
		is_vararg   bool   @[required]
		is_static   bool   @[required]
		is_virtual  bool   @[required]
		hash        u64    @[required]
		is_required bool
		description string

		return_value struct {
			type string @[required]
			meta string
		}

		arguments []struct {
			name          string @[required]
			type          string @[required]
			default_value string
			meta          string
		}
	}

	properties []struct {
		type string @[required]
		name string @[required]
		// TODO: should we use setter/getter? some names like `get_` vs `has_` are different
		setter      string
		getter      string @[required]
		description string
		index       int
	}

	signals []struct {
		name        string @[required]
		description string
		arguments   []struct {
			name string @[required]
			type string @[required]
		}
	}

	constants []struct {
		name        string @[required]
		value       int    @[required]
		description string
	}
}

pub struct APIVersion {
	version_major     int    @[required]
	version_minor     int    @[required]
	version_patch     int    @[required]
	version_status    string @[required]
	version_build     string @[required]
	version_full_name string @[required]
	precision         string
}

pub struct API {
pub mut:
	header APIVersion @[required]

	builtin_class_sizes []struct {
		build_configuration string           @[required]
		sizes               []struct {
			name string @[required]
			size int    @[required]
		} @[required]
	} @[required]

	builtin_class_member_offsets []struct {
		build_configuration string           @[required]
		classes             []struct {
			name    string           @[required]
			members []struct {
				member string @[required]
				offset int    @[required]
				meta   string @[required]
			} @[required]
		} @[required]
	} @[required]

	global_constants []struct {}


	global_enums []struct {
		name        string           @[required]
		is_bitfield bool             @[required]
		values      []struct {
			name        string @[required]
			value       i64    @[required]
			description string
		} @[required]
	} @[required]

	utility_functions []struct {
		name        string @[required]
		return_type string
		category    string @[required]
		is_vararg   bool   @[required]
		hash        u64    @[required]
		arguments   []struct {
			name string @[required]
			type string @[required]
		}
		description string
	} @[required]

	builtin_classes []APIBuiltinClass @[required]

	classes []APIClass @[required]

	singletons []struct {
		name string @[required]
		type string @[required]
	} @[required]

	native_structures []struct {
		name   string @[required]
		format string @[required]
	} @[required]
}
