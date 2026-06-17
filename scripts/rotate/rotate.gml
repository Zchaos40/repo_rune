function rotate(_x,_y,grid,rotation_value){//may want or need to add if statements to this.
	if grid=="fgrid"{
		var new_facing=global.fgrid[_x][_y]._direction
		new_facing+=rotation_value
		while (new_facing>3){
			new_facing-=4
		}
		global.fgrid[_x][_y]._direction=new_facing
	}
	else if grid=="pgrid"{
		var new_facing=global.pgrid[_x][_y]._direction
		new_facing+=rotation_value
		while (new_facing>3){
			new_facing-=4
		}
		global.pgrid[_x][_y]._direction=new_facing
	}
}