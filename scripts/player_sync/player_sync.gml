function player_sync(_to_global){
	var player_position=[]
	for (var _x=0;_x<array_length(global.pgrid);_x++){
		for (var _y=0;_y<array_length(global.pgrid[0]);_y++){
			if global.pgrid[_x][_y]!=noone{//This was previously 0 when it should've been noone. I think that I forgot that I was using noone instead of 0 or something. change it back to 0 if this area breaks for some stupid reason.
				if global.pgrid[_x][_y].identifier==0{player_position=[_x,_y]}
			}
		}
	}
	if player_position==[]{show_debug_message("the bug is on line 6 of player_sync. The player was not found on the board.")}
	
	if _to_global{
		if global.player._x!=player_position[0] or global.player._y!=player_position[1]{
			grid_swapper(global.pgrid,[player_position[0],player_position[1]],[global.player._x, global.player._y])
		}
		global.pgrid[player_position[0]][player_position[1]]._health=global.player._health
		global.pgrid[player_position[0]][player_position[1]]._max_health=global.player._max_health
		global.pgrid[player_position[0]][player_position[1]]._direction=global.player._direction
	}
	else{
		if global.player._x!=player_position[0] or global.player._y!=player_position[1] and _to_global==false{
			global.player._x=player_position[0]
			global.player._y=player_position[1]
		}
		global.player._health=global.pgrid[player_position[0]][player_position[1]]._health
		global.player._max_health=global.pgrid[player_position[0]][player_position[1]]._max_health
		global.player._direction=global.pgrid[player_position[0]][player_position[1]]._direction
	}
}