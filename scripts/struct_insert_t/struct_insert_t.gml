function struct_insert_t(input_struct, new_thing){
    if new_position<=array_length(input_struct.triggertypes){
		array_push(input_struct.triggertypes, new_thing)
	}
}

//this may not get used except for tile creation, uncertain.