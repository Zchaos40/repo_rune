function tile_list(tile_name){
	if tile_name=="push_tile"{
	    return(struct_create([push_tile_function], push_tile_trigger, "placeholder description",coiny_thing_4,1,noone,noone,noone,20,0))// a lot of this is very placeholdery, and will continue to be until we have most of the game fleshed out.
	}
	if tile_name=="arrow_tile"{
		return(struct_create([arrow_tile_function], arrow_tile_trigger, "placeholder description",coiny_thing_5,1))
	}
	if tile_name=="gremlin"{
		return(struct_create([gremlin_entity_function], end_turn_trigger, "placeholder description",coiny_thing_1,1))
	}
}