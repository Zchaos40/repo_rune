//var actions=[global.fgrid,global.pgrid]
//^^^^^^ this is the format of both pre and postaction


function stepped_on_trigger(preaction,postaction,_self){// this is for things that trigger when they get stepped on.
	var triggered=false
	if preaction[1][_self._x][_self._y]==noone and postaction[1][_self._x][_self._y]!=noone{triggered=true}
	if preaction[1][_self._x][_self._y]!=noone and postaction[1][_self._x][_self._y]!=noone{
		if preaction[1][_self._x][_self._y].identifier != postaction[1][_self._x][_self._y].identifier{triggered=true}
	}
	return(triggered)
}

function end_turn_trigger(preaction,postaction,_self){// this is for enemies that trigger at the end of turns, like gremlin.
	var triggered=false
	if global.turn_ending{triggered=true}
	return(triggered)
}





//Below was previously stuff, but then we consolidated these functions.
////I think we could just consolodate push_tile_trigger and arrow_tile_trigger into just like "stepped_on_trigger" or some shit, what we have now seems kinda suboptimal and maybe a bit stupid.
//function push_tile_trigger(preaction,postaction,_self){
//	var triggered=false
//	if preaction[1][_self._x][_self._y]==noone and postaction[1][_self._x][_self._y]!=noone{triggered=true}
//	if preaction[1][_self._x][_self._y]!=noone and postaction[1][_self._x][_self._y]!=noone{
//		if preaction[1][_self._x][_self._y].identifier != postaction[1][_self._x][_self._y].identifier{triggered=true}
//	}
//	return(triggered)
//}

//function arrow_tile_trigger(preaction,postaction,_self){
//	var triggered=false
//	if preaction[1][_self._x][_self._y]==noone and postaction[1][_self._x][_self._y]!=noone{triggered=true}
//	if preaction[1][_self._x][_self._y]!=noone and postaction[1][_self._x][_self._y]!=noone{
//		if preaction[1][_self._x][_self._y].identifier != postaction[1][_self._x][_self._y].identifier{triggered=true}
//	}
//	return(triggered)
//}