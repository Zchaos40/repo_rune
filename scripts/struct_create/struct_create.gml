function struct_create(_functions, _triggers, _description){//eventually will need to probably make it pass in all of the stat values, maybe? might not need stats
	new_struct={
		order: _functions,//Will contain a list of the functions themselves in order, I didn't think about it hard enough to realize that that's a lot smarter.
		triggertypes: _triggers, //may or may not change this to be more modular, somehow. basically the same as the functions.
		strength: 0, //edit later
		description: _description,
		identifier: global.struct_IDer
	}
	//Add more things here that change the variables based on the inputs in the function'
	global.struct_IDer++
	return(new_struct)
} 