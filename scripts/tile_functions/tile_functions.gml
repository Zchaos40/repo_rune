function push_tile_function(_self){
	if _self._direction==0{if global.pgrid[_self._x][_self._y-1]=noone{grid_swapper(global.pgrid,[_self._x,_self._y],[_self._x,_self._y-1]);location_verifier(global.pgrid[_self._x][_self._y-1])}}
	if _self._direction==1{if global.pgrid[_self._x+1][_self._y]=noone{grid_swapper(global.pgrid,[_self._x,_self._y],[_self._x+1,_self._y]);location_verifier(global.pgrid[_self._x+1][_self._y])}}
	if _self._direction==2{if global.pgrid[_self._x][_self._y+1]=noone{grid_swapper(global.pgrid,[_self._x,_self._y],[_self._x,_self._y+1]);location_verifier(global.pgrid[_self._x][_self._y+1])}}
	if _self._direction==3{if global.pgrid[_self._x-1][_self._y]=noone{grid_swapper(global.pgrid,[_self._x,_self._y],[_self._x-1,_self._y]);location_verifier(global.pgrid[_self._x-1][_self._y])}}
	player_sync(false)
	//sorry for compressing all of those if statements into one line, that was bad practice. shame on me
} //note: may change this to be.... pushier? in the future. right now, it barely qualifies as pushing. 
//note 2 electric boogaloo: I think that i meant that things that push things should also push everything in front of them. im not sure if it should do that but I guess we could maybe make it happen.

