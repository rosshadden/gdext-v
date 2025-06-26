module gd

pub type Bool = bool
pub type Int = i64
pub type Float = f64

pub fn (s Bool) to_variant() Variant {
	return Variant.from_bool(&s)
}

pub fn (s Int) to_variant() Variant {
	return Variant.from_i64(&s)
}

pub fn (s Float) to_variant() Variant {
	return Variant.from_f64(&s)
}
