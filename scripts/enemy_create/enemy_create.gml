function enemy_create(_functions, __x=noone, __y=noone){
	new_struct={
		functions: _functions,
		identifier: global.struct_IDer,
		_x: __x,
		_y: __y
	}
	global.struct_IDer++
	return(new_struct)
}


//this is most likely unecessary and redundant, just because we're making everything in struct_create.