module godot

pub struct APIClass {
pub:
	name            string @[required]
	is_refcounted   bool   @[required]
	is_instantiable bool   @[required]
	inherits        string // @[required]
	api_type        string @[required]

	enums []struct {
		name        string          @[required]
		is_bitfield bool            @[required]
		values      []struct {
			name  string @[required]
			value f64    @[required]
		} @[required]
	} // @[required]


	methods []struct {
		name       string @[required]
		is_const   bool   @[required]
		is_vararg  bool   @[required]
		is_static  bool   @[required]
		is_virtual bool   @[required]
		hash       f64    @[required]

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

		hash_compatibility []f64
		is_required        bool
	} // @[required]


	properties []struct {
		type   string @[required]
		name   string @[required]
		setter string
		getter string @[required]
		index  f64
	} // @[required]


	signals []struct {
		name      string @[required]
		arguments []struct {
			name string @[required]
			type string @[required]
		}
	} // @[required]


	constants []struct {
		name  string @[required]
		value f64    @[required]
	} // @[required]

}

pub struct API {
pub mut:
	classes []APIClass
}
