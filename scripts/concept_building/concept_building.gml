function sillything(){
	randomise()
	for (var _x=0;_x<array_length(global.fgrid);_x++){
		for (var _y=0;_y<array_length(global.fgrid);_y++){
			var rotation = choose(0,1,2,3)
			place_tile(tile_list("push_tile"),_x,_y,rotation,false)
		}
	}
}