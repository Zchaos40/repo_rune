//var actions=[global.fgrid,global.pgrid]
//^^^^^^ this is the format of both pre and postaction

function push_tile_trigger(preaction,postaction,_self){
	var triggered=false
	show_debug_message(preaction)
	show_debug_message(postaction)
	if preaction[1][_self._x][_self._y]==noone and postaction[1][_self._x][_self._y]!=noone{triggered=true}
	if preaction[1][_self._x][_self._y]!=noone and postaction[1][_self._x][_self._y]!=noone{
		if preaction[1][_self._x][_self._y].identifier != postaction[1][_self._x][_self._y].identifier{triggered=true}
	}
	return(triggered)
}