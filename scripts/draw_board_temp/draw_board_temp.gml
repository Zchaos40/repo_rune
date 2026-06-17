function draw_board_temp(){
	for (var _x=0;_x<array_length(global.fgrid);_x++){
		for (var _y=0;_y<array_length(global.fgrid[0]);_y++){
			draw_rect(_x*100,_y*100,_x*100+98,_y*100+98,c_white,true)
			if global.fgrid[_x][_y]!=noone{
				z_display_alt(global.fgrid[_x][_y].image,_x*100,_y*100, _x*100+99,_y*100+99)
			}
			if global.pgrid[_x][_y]!=noone{
				z_display_alt(global.pgrid[_x][_y].image,_x*100,_y*100, _x*100+99,_y*100+99)
			}
		}
	}
}



