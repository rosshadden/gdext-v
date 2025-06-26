module gd

import log

pub struct Log {
	log.Log
}

pub fn (mut l Log) fatal(s string) {
	str := String.new(s)
	v := str.to_variant()
	defer {
		str.deinit()
		v.deinit()
	}
	printerr(v)
}

pub fn (mut l Log) error(s string) {
	str := String.new(s)
	v := str.to_variant()
	defer {
		str.deinit()
		v.deinit()
	}
	printerr(v)
}

pub fn (mut l Log) warn(s string) {
	str := String.new(s)
	v := str.to_variant()
	defer {
		str.deinit()
		v.deinit()
	}
	print(v)
}

pub fn (mut l Log) info(s string) {
	str := String.new(s)
	v := str.to_variant()
	defer {
		str.deinit()
		v.deinit()
	}
	print(v)
}

pub fn (mut l Log) debug(s string) {
	str := String.new(s)
	v := str.to_variant()
	defer {
		str.deinit()
		v.deinit()
	}
	dump(s)
}

pub interface Stringy {
	str() string
}

pub fn p(args ...Stringy) {
	println(args.map(it.str()).join(' '))
}

pub fn pt(args ...Stringy) {
	println(args.map(it.str()).join('\t'))
}
