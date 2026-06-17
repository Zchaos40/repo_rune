function struct_insert_o(input_struct, new_thing, new_position){
	if new_position<=array_length(input_struct.order){
		array_insert(input_struct.order,new_position,new_thing)}
}

//this may be obsolete.