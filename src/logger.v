module gd

import log

pub struct Logger {
	log.Log
}

pub fn (mut l Logger) fatal(s string) {
	str := String.new(s)
	v := str.to_variant()
	defer {
		str.deinit()
		v.deinit()
	}
	printerr(v)
}

pub fn (mut l Logger) error(s string) {
	str := String.new(s)
	v := str.to_variant()
	defer {
		str.deinit()
		v.deinit()
	}
	printerr(v)
}

pub fn (mut l Logger) warn(s string) {
	str := String.new(s)
	v := str.to_variant()
	defer {
		str.deinit()
		v.deinit()
	}
	print(v)
}

pub fn (mut l Logger) info(s string) {
	str := String.new(s)
	v := str.to_variant()
	defer {
		str.deinit()
		v.deinit()
	}
	print(v)
}

pub fn (mut l Logger) debug(s string) {
	str := String.new(s)
	v := str.to_variant()
	defer {
		str.deinit()
		v.deinit()
	}
	dump(s)
}
