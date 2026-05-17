function tile_runner(tile,_x,_y){
	for(var i=0;i<array_length(tile.order);i++){
		action(tile.order[i],[_x,_y])
		//This may all need to be changed in the future if the tile functions need more inputs other than their position. Maybe we'll change it so that the tiles know their position(store x and y inside of the tile struct)
	}
}