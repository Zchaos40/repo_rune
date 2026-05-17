function struct_insert_o(input_struct, new_thing, new_position){
	if new_position<=array_length(input_struct.order){
		array_insert(input_struct.order,new_position,new_thing)}
}

//If, at any point, some part of this function is needed in the future, just turn said part into a function and replace the corresponding part in here with said function.