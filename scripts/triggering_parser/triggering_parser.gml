function triggering_parser(_x, _y, preaction, postaction){ //needs a before and after so that it can check if a change has occured
	var triggers = global.fgrid[_x][_y].triggertypes
	
	if array_contains(triggers, "touched"){ //checks if the tile has a triggertype
		if preaction[1][_x][_y]!=postaction[1][_x][_y] and postaction[1][_x][_y]!=noone{ //checks if a triggertype is triggered
			tile_runner(global.fgrid[_x][_y], _x, _y)//runs the functions of the triggered tile
		}
	}
	
	if array_contains(triggers, "when_placed"){  //May or may not need to reintroduce id's for entities for this specific purpose. 
		var placed=true
		for (var _x2=0;_x2<array_length(global.fgrid);_x2++){  //this system needs to be refined and heavily checked. it has a lot of potential issues.
			for (var _y2=0;_y2<array_length(global.fgrid[0]);_y2++){
				if preaction[0][_x2][_y2].identifier==postaction[0][_x][_y].identifier{
					placed=false
				}
			}
		}
		if placed{
			tile_runner(global.fgrid[_x][_y], _x, _y)
		}
	}
	
}