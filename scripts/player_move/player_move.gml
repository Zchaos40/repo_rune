function player_move(_directionf){
	if global.player.energy>=global.player.movement_cost{
		_x=global.player._x
		_y=global.player._y
		var moved=false
		if _directionf==0{
			if (_y-1>=0){
				if global.pgrid[_x][_y-1]==noone{
					global.player._direction=0
					global.player._y-=1
					grid_swapper(global.pgrid,[_x,_y],[_x,_y-1])
					moved=true
				}
			}
		}
		if _directionf==1{
			if (_x+1<=array_length(global.pgrid)-1){
				if global.pgrid[_x+1][_y]==noone{
					global.player._direction=1
					global.player._x+=1
					grid_swapper(global.pgrid,[_x,_y],[_x+1,_y])
					moved=true
				}
			}
		}
		if _directionf==2{
			if (_y+1<=array_length(global.pgrid)-1){
				if global.pgrid[_x][_y+1]==noone{
					global.player._direction=2
					global.player._y+=1
					grid_swapper(global.pgrid,[_x,_y],[_x,_y+1])
					moved=true
				}
			}
		}
		if _directionf==3{
			if (_x-1>=0){
				if global.pgrid[_x-1][_y]==noone{
					global.player._direction=3
					global.player._x-=1
					grid_swapper(global.pgrid,[_x,_y],[_x-1,_y])
					moved=true
				}
			}
		}
		if moved{
			if global.devmode==false{
				global.player.energy-=global.player.movement_cost
			}
		}
	player_sync(true)
	}
}
//this is kinda a placeholder, there are definitely cooler, more fun ways to do this.
//Also maybe replace noone with something else that works more consistently.
//we might wanna add multiplayer, coop, or pvp at some point
//the ys are reversed because of how grids are in games.