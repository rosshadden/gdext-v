module generator

import strings

@[params]
struct OpOptions {
	is_binary      bool
	different_types bool
}

fn gen_operator(mut buf strings.Builder, class_name string, op_name string, op_type string, op APIOperator, opts OpOptions) {
	// Common variables
	class_name_lower := class_name.to_lower()

	// Variables for different types case
	mut right_type := class_name
	mut right_type_lower := class_name_lower
	mut return_type := if opts.is_binary { 'bool' } else { class_name }
	mut res_init := if opts.is_binary { 'false' } else { '${class_name}{}' }
	mut right_type_suffix := ''

	// Handle case with different types (only for op_fn variants)
	if opts.different_types {
		right_type = convert_type(op.right_type)
		right_type_lower = right_type.to_lower()
		right_type_suffix = right_type_lower

		if !opts.is_binary {
			return_type = convert_type(op.return_type)

			if return_type in ['f32', 'f64', 'i8', 'u8', 'i16', 'u16', 'i32', 'u32', 'i64', 'u64'] {
				res_init = '${return_type}(0)'
			} else if return_type == 'voidptr' {
				res_init = 'unsafe{nil}'
			} else {
				res_init = '${return_type}{}'
			}
		}
	}

	// Use $tmpl which will have access to all the variables we've defined
	code := $tmpl('./templates/operator.v').trim_space_right()
	buf.writeln('')
	buf.writeln(code)
}

fn gen_operators(mut buf strings.Builder, class_name string, operators []APIOperator) {
	for op in operators {
		if op.right_type == class_name {
			match op.name {
				'+' {
					gen_operator(mut buf, class_name, '+', '.op_add', op)
				}
				'-' {
					gen_operator(mut buf, class_name, '-', '.op_subtract', op)
				}
				'*' {
					gen_operator(mut buf, class_name, '*', '.op_multiply', op)
				}
				'/' {
					gen_operator(mut buf, class_name, '/', '.op_divide', op)
				}
				'%' {
					gen_operator(mut buf, class_name, '%', '.op_module', op)
				}
				'<' {
					gen_operator(mut buf, class_name, '<', '.op_less', op, is_binary: true)
				}
				'==' {
					gen_operator(mut buf, class_name, '==', '.op_equal', op, is_binary: true)
				}
				else {}
			}
		}
		if op.right_type != 'Variant' {
			match op.name {
				'+' {
					gen_operator(mut buf, class_name, 'add_', '.op_add', op, different_types: true)
				}
				'-' {
					gen_operator(mut buf, class_name, 'sub_', '.op_subtract', op, different_types: true)
				}
				'*' {
					gen_operator(mut buf, class_name, 'mul_', '.op_multiply', op, different_types: true)
				}
				'/' {
					gen_operator(mut buf, class_name, 'div_', '.op_divide', op, different_types: true)
				}
				'%' {
					gen_operator(mut buf, class_name, 'mod_', '.op_module', op, different_types: true)
				}
				'<' {
					gen_operator(mut buf, class_name, 'lt_', '.op_less', op, is_binary: true, different_types: true)
				}
				'>' {
					gen_operator(mut buf, class_name, 'gt_', '.op_greater', op, is_binary: true, different_types: true)
				}
				'==' {
					gen_operator(mut buf, class_name, 'eq_', '.op_equal', op, is_binary: true, different_types: true)
				}
				'!=' {
					gen_operator(mut buf, class_name, 'ne_', '.op_not_equal', op, is_binary: true, different_types: true)
				}
				'<=' {
					gen_operator(mut buf, class_name, 'le_', '.op_less_equal', op, is_binary: true, different_types: true)
				}
				'>=' {
					gen_operator(mut buf, class_name, 'ge_', '.op_greater_equal', op, is_binary: true, different_types: true)
				}
				'in' {
					gen_operator(mut buf, class_name, 'in_', '.op_in', op, is_binary: true, different_types: true)
				}
				else {}
			}
		}
	}
}
