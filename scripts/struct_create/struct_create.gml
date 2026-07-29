function struct_create(_functions, _triggers, _description, _image=coiny_thing, _cost=noone, __x=noone, __y=noone, __direction=0, trigger_max=noone, times_triggered=noone, _health, _max_health){//eventually will need to probably make it pass in all of the stat values, maybe? might not need stats
	var new_struct={
		order: _functions,//Will contain a list of the functions themselves in order, I didn't think about it hard enough to realize that that's a lot smarter.
		trigger: _triggers, //may or may not change this to be more modular, somehow. basically the same as the functions.
		//triggertypes will probably be a singular function with 2 inputs(before and after)
		strength: 0, //edit later
		description: _description,
		identifier: global.struct_IDer,
		_x: __x,
		_y: __y,
		image:_image,
		_direction:__direction //0=north, 1=east,2=south, 3=west
	}
	//This is a function that CREATES the structs. It does not place them. you do not need to make it do that
	//Add more things here that change the variables based on the inputs in the function'
	global.struct_IDer++
	if _cost!=noone{
		new_struct.cost=_cost
	}
	if times_triggered!=noone and trigger_max!=noone{
		new_struct.times_triggered=times_triggered
		new_struct.trigger_max=trigger_max
	}
	if _health!=noone and _max_health!=noone{
		new_struct._health=_health
		new_struct._max_health=_max_health
	}
	return(new_struct)
}

//to make optional arguments that default to a thing, just have them in as thing, optional_thing=default for that thing