function map_display(){
	for (var _x=0;_x<array_length(global.map[0]);_x++){
		for (var _y=0;_y<array_length(global.map[0][0]);_y++){
			z_display(map_node,_x*100+25,_y*100+25,50,50,0)
			if _x<array_length(global.map[0])-1{
				if global.map[1][_x][_y][0] and _y>0{
					draw_line_width_colour(_x*100+75,_y*100+25,_x*100+125,_y*100-25,5,c_yellow,c_yellow)
				}
				if global.map[1][_x][_y][1]{
					draw_line_width_colour(_x*100+75,_y*100+50,_x*100+125,_y*100+50,5,c_yellow,c_yellow)
				}
				if global.map[1][_x][_y][2] and _y<array_length(global.map[0][0])-1{
					draw_line_width_colour(_x*100+75,_y*100+75,_x*100+125,_y*100+125,5,c_yellow,c_yellow)
				}
			}
			if global.map[1][_x][_y][3] and _y<array_length(global.map[0][0])-1{
				draw_line_width_colour(_x*100+50,_y*100+75,_x*100+50,_y*100+125,5,c_yellow,c_yellow)
			}
		}
	}
}

//for the paths between nodes
//draw_line_width_colour()