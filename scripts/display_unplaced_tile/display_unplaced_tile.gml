function display_unplaced_tile(){
	if global.player.card_selected_index!=-1{
		for (var _x=0;_x<array_length(global.fgrid);_x++){
			for (var _y=0;_y<array_length(global.fgrid);_y++){
				if mouse_x>_x*100 and mouse_x<_x*100+100{
					if mouse_y>_y*100 and mouse_y<_y*100+100{
						z_display(global.player.hand[global.player.card_selected_index].image,_x*100,_y*100,100,100,global.player.card_selected_rotation*90,.5)
					}
				}
			}
		}
	}
}