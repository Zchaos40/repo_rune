function tile_runner(triggered_list){
	for(var i = 0;i<array_length(triggered_list);i++){//loops over all of the tiles in the triggered list
		for(var i2 = 0;i2<array_length(triggered_list[i].order);i2++){//loops over the things in the order variable in the tile
			var will_trigger=true
			if struct_exists(triggered_list[i],"trigger_max"){
				if triggered_list[i].times_triggered>triggered_list[i].trigger_max{will_trigger=false}
				else{triggered_list[i].times_triggered++}
			}
			if will_trigger{triggered_list[i].order[i2](triggered_list[i])}
			//inputting the entire tile just so that you can always get whatever variables are needed from inside the function
		}
	}
	
}


