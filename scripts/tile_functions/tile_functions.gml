function push_tile_function(_self){
	var will_run=false
	if _self._direction==0{if _self._y-1>=0{will_run=true}}
	if _self._direction==1{if _self._x+1<array_length(global.pgrid[1]){will_run=true}}
	if _self._direction==2{if _self._y+1<array_length(global.pgrid){will_run=true}}
	if _self._direction==3{if _self._x-1>=0{will_run=true}}
	//^^^^^^Prevents things from get pushed into the abyss, may change eventually for weird reasons
	if will_run{
		if _self._direction==0{if global.pgrid[_self._x][_self._y-1]=noone{grid_swapper(global.pgrid,[_self._x,_self._y],[_self._x,_self._y-1]);location_verifier(global.pgrid[_self._x][_self._y-1])}}
		if _self._direction==1{if global.pgrid[_self._x+1][_self._y]=noone{grid_swapper(global.pgrid,[_self._x,_self._y],[_self._x+1,_self._y]);location_verifier(global.pgrid[_self._x+1][_self._y])}}
		if _self._direction==2{if global.pgrid[_self._x][_self._y+1]=noone{grid_swapper(global.pgrid,[_self._x,_self._y],[_self._x,_self._y+1]);location_verifier(global.pgrid[_self._x][_self._y+1])}}
		if _self._direction==3{if global.pgrid[_self._x-1][_self._y]=noone{grid_swapper(global.pgrid,[_self._x,_self._y],[_self._x-1,_self._y]);location_verifier(global.pgrid[_self._x-1][_self._y])}}
		player_sync(false)
	}
	//sorry for compressing all of those if statements into one line, that was bad practice. shame on me
} //note: may change this to be.... pushier? in the future. right now, it barely qualifies as pushing. 
//note 2 electric boogaloo: I think that i meant that things that push things should also push everything in front of them. im not sure if it should do that but I guess we could maybe make it happen.

function arrow_tile_function(_self){
	if global.pgrid[_self._x][_self._y]._direction=0{place_tile(tile_list("push_tile"),_self._x,_self._y-1,global.pgrid[_self._x][_self._y]._direction,false)}
	if global.pgrid[_self._x][_self._y]._direction=1{place_tile(tile_list("push_tile"),_self._x+1,_self._y,global.pgrid[_self._x][_self._y]._direction,false)}
	if global.pgrid[_self._x][_self._y]._direction=2{place_tile(tile_list("push_tile"),_self._x,_self._y+1,global.pgrid[_self._x][_self._y]._direction,false)}
	if global.pgrid[_self._x][_self._y]._direction=3{place_tile(tile_list("push_tile"),_self._x-1,_self._y,global.pgrid[_self._x][_self._y]._direction,false)}
}

function gremlin_entity_function(_self){
	var x_priority=false
	var x_difference = _self._x-global.player._x
	var y_difference = _self._y-global.player._y
	var total_difference=abs(y_difference)+abs(x_difference)
	if abs(x_difference)>=abs(y_difference){x_priority=true}
	if total_difference==1{global.player._health--;action(player_sync,[true])}//this may cause bugs and/or weird behavior with triggering in the future.
	if total_difference>1{
		if x_priority{
			if x_difference<0{
				if global.pgrid[_self._x+1][_self._y]==noone{grid_swapper(global.pgrid,[_self._x,_self._y],[_self._x+1,_self._y]);_self._direction=1}
			}
			else if x_difference>0{
				if global.pgrid[_self._x-1][_self._y]==noone{grid_swapper(global.pgrid,[_self._x,_self._y],[_self._x-1,_self._y]);_self._direction=3}
			}
		}
		else{
			if y_difference<0{
				if global.pgrid[_self._x][_self._y-1]==noone{grid_swapper(global.pgrid,[_self._x,_self._y],[_self._x,_self._y+1]);_self._direction=2}
			}
			else if y_difference>0{
				if global.pgrid[_self._x][_self._y+1]==noone{grid_swapper(global.pgrid,[_self._x,_self._y],[_self._x,_self._y-1]);_self._direction=0}
			}
		}
	}
}
//ok so im not gonna fix it for now (too lazy) BUT this guy can walk off the map and his ai lets him so yeah
//female version would be gremlinette