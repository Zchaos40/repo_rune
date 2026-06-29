function reset_tile_triggers(){
	for (var _x=0;_x<array_length(global.fgrid);_x++){
		for (var _y=0;_y<array_length(global.fgrid[0]);_y++){
			if global.fgrid[_x][_y]!=noone{
				if struct_exists(global.fgrid[_x][_y],"times_triggered"){
					global.fgrid[_x][_y].times_triggered=0
				}
			}
		}
	}
	for (var _x=0;_x<array_length(global.pgrid);_x++){
		for (var _y=0;_y<array_length(global.pgrid[0]);_y++){
			if global.pgrid[_x][_y]!=noone{
				if struct_exists(global.pgrid[_x][_y],"times_triggered"){
					global.pgrid[_x][_y].times_triggered=0
				}
			}
		}
	}
}