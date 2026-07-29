function tile_list(tile_name){
	if tile_name=="push_tile"{
	    return(struct_create([push_tile_function], stepped_on_trigger, "placeholder description",coiny_thing_4,1,noone,noone,0,20,0))// a lot of this is very placeholdery, and will continue to be until we have most of the game fleshed out.
	}
	if tile_name=="arrow_tile"{
		return(struct_create([arrow_tile_function], stepped_on_trigger, "placeholder description",coiny_thing_5,1))
	}
	if tile_name=="damage_tile"{
		return(struct_create([damage_tile_function], stepped_on_trigger, "placeholder description",coiny_thing_6,1))
		//we might want to add on trigger max stuff on this one.
	}
	
	
	
	
	if tile_name=="gremlin"{
		return(struct_create([gremlin_entity_function], end_turn_trigger, "placeholder description",coiny_thing_1,noone,noone,noone,0,noone,noone,3,3))
	}
}