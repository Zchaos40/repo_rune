function clicked_interpreter(){
	button_location_manager()
	var button_pressed=clicked_finder()
	
	if button_pressed=="hand"{
		var card_selected_index=0
		for (var i=0;i<array_length(global.player.hand);i++){
			if mouse_x>1050+100*i{
				card_selected_index=i
			}
		}
		global.player.card_selected_index=card_selected_index
	}
	
	if button_pressed=="board"{
		if global.player.card_selected_index!=-1{
			for (var _x=0;_x<array_length(global.fgrid);_x++){
				for (var _y=0;_y<array_length(global.fgrid);_y++){
					if mouse_x>_x*100 and mouse_x<_x*100+100{
						if mouse_y>_y*100 and mouse_y<_y*100+100{
							place_tile(global.player.hand[global.player.card_selected_index],_x,_y,global.player.card_selected_rotation,true)
						}
					}
				}
			}
		}
	}
	
	if button_pressed=="end_turn"{
		action(end_turn(),[])
	}
	
	if button_pressed=="dev_mode"{
		var previous_mode=variable_clone(global.devmode)
		if previous_mode=true{global.devmode=false}
		if previous_mode=false{global.devmode=true}
	}
	
	if button_pressed=="draw_card"{
		draw_card()
	}
	
	if button_pressed==noone{
		global.player.card_selected_index= -1
		//here you should just like reset everything that happens when you click something
	}
}
//This is called clicked interpreter because it will take input from what got clicked, and interpret that to run the appropriate functions.

//yeah.