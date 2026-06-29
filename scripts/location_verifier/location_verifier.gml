function location_verifier(_self){
	for (var _x=0;_x<array_length(global.fgrid);_x++){
		for (var _y=0;_y<array_length(global.fgrid[0]);_y++){
			if global.fgrid[_x][_y]!=noone{
				if global.fgrid[_x][_y].identifier=_self.identifier{
					_self._x=_x
					_self._y=_y
				}
			}
		}
	}
	for (var _x=0;_x<array_length(global.pgrid);_x++){
		for (var _y=0;_y<array_length(global.pgrid[0]);_y++){
			if global.pgrid[_x][_y]!=noone{
				if global.pgrid[_x][_y].identifier=_self.identifier{
					_self._x=_x
					_self._y=_y
				}
			}
		}
	}
}
//This function basically just makes a tile at a location set its internal location variables to the correct numbers.