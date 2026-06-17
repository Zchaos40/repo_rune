function struct_clone(_struct){
	var new_struct=_struct//fuck this shit i tried pressing enter 5 times and it wouldn't fucking let me
	new_struct.identifier=global.struct_IDer
	global.struct_IDer++
	return(new_struct)
}


//This is a general purpose thing for cloning tiles and people-tile-things in a variety of different circumstances
