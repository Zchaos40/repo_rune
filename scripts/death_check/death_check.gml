function death_check(){
	for (var _x=0;_x<array_length(global.pgrid);_x++){
		for (var _y=0;_y<array_length(global.pgrid[0]);_y++){
			if global.pgrid[_x][_y]!=noone{
				if struct_exists(global.pgrid[_x][_y],"_health"){
					if global.pgrid[_x][_y]._health<=0{
						if global.pgrid[_x][_y].identifier!=0{ //this is to detect if its the player. there might be a better way to do this. Its possible that this could cause bugs.
							global.pgrid[_x][_y]=noone
						}
						else{
							player_death()
						}
					}
				}
			}
		}
	}
			
			
	for (var _x=0;_x<array_length(global.fgrid);_x++){
		for (var _y=0;_y<array_length(global.fgrid[0]);_y++){
			if global.fgrid[_x][_y]!=noone{
				if struct_exists(global.fgrid[_x][_y],"_health"){
					if global.fgrid[_x][_y]._health<=0{
						global.fgrid[_x][_y]=noone
					}
				}
			}
		}
	}
}