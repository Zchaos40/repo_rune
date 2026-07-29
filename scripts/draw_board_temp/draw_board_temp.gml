function draw_board_temp(){
	if array_length(global.display_list)<1{
		for (var _x=0;_x<array_length(global.fgrid);_x++){
			for (var _y=0;_y<array_length(global.fgrid[0]);_y++){
				draw_rect(_x*100,_y*100,_x*100+98,_y*100+98,c_white,true)
				if global.fgrid[_x][_y]!=noone{
					z_display_alt(global.fgrid[_x][_y].image,_x*100,_y*100, _x*100+99,_y*100+99,global.fgrid[_x][_y]._direction*90)
				}
				if global.pgrid[_x][_y]!=noone{
					z_display_alt(global.pgrid[_x][_y].image,_x*100,_y*100, _x*100+99,_y*100+99,global.pgrid[_x][_y]._direction*90)
				}
			}
		}
	}
	else{
		for (var _x=0;_x<array_length(global.display_list[0][0]);_x++){
			for (var _y=0;_y<array_length(global.display_list[0][0][0]);_y++){
				draw_rect(_x*100,_y*100,_x*100+98,_y*100+98,c_white,true)
				if global.display_list[0][0][_x][_y]!=noone{
					z_display_alt(global.display_list[0][0][_x][_y].image,_x*100,_y*100, _x*100+99,_y*100+99,global.display_list[0][0][_x][_y]._direction*90)
				}
				if global.display_list[0][1][_x][_y]!=noone{
					z_display_alt(global.display_list[0][1][_x][_y].image,_x*100,_y*100, _x*100+99,_y*100+99,global.display_list[0][1][_x][_y]._direction*90)
				}
			}
		}
		array_delete(global.display_list,0,1)
	}
	
	
	
	
	
	draw_text_transformed_colour(1200,50,"energy:"+string(global.player.energy)+"/"+string(global.player.max_energy),5,5,0,make_colour_rgb(0,255,0),make_colour_rgb(0,255,0),make_colour_rgb(0,255,0),make_colour_rgb(0,255,0),1)
	draw_text_transformed_colour(1200,150,"health:"+string(global.player._health)+"/"+string(global.player._max_health),5,5,0,make_colour_rgb(255,0,0),make_colour_rgb(255,0,0),make_colour_rgb(255,0,0),make_colour_rgb(255,0,0),1)
	draw_text_transformed_colour(1200,250,"devmode:"+string(global.devmode),5,5,0,make_colour_rgb(255,0,255),make_colour_rgb(255,0,255),make_colour_rgb(255,0,255),make_colour_rgb(255,0,255),1)
	draw_text_transformed_colour(1200,350,"draw:"+string(array_length(global.player.draw_pile)),5,5,0,make_colour_rgb(255,255,255),make_colour_rgb(255,255,255),make_colour_rgb(255,255,255),make_colour_rgb(255,255,255),1)
	draw_text_transformed_colour(1200,450,"discard:"+string(array_length(global.player.discard_pile)),5,5,0,make_colour_rgb(100,100,100),make_colour_rgb(100,100,100),make_colour_rgb(100,100,100),make_colour_rgb(100,100,100),1)
	
	
	for (var i=0;i<array_length(global.player.hand);i++){
		z_display(global.player.hand[i].image,1050+100*i,900,100,100,0)
	}
	display_unplaced_tile()
	
	//vvvvvvvvvvv temporary, and kinda shitty
	if global.player.card_selected_index!=-1{
		draw_rectangle_colour(1050+100*global.player.card_selected_index,900,1149+100*global.player.card_selected_index,999,c_white,c_white,c_white,c_white,true)
	}
	
	//this is drawing the buttons
	z_display_alt(button,1824,64,1924,164,0)
	z_display_alt(button,1824,164,1924,264,0)
	z_display_alt(button,1824,264,1924,364,0)
	
}

//this is all going to get majorly changed in the future