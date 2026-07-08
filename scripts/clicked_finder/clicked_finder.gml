function clicked_finder(){
	var buttons_pressed=[]
	for(var i=0;i<array_length(global.locations_list);i++){
		if mouse_x>global.locations_list[i][1]{
			if mouse_y>global.locations_list[i][2]{
				if mouse_x<global.locations_list[i][3]{
					if mouse_y<global.locations_list[i][4]{
						array_push(buttons_pressed, global.locations_list[i][0])
					}
				}
			}
		}
	}
	if array_length(buttons_pressed)>1{
		show_debug_log(true)
		show_debug_message("how the fuck did you press 2 buttons at once? Sorry for the bad code.")
		return
	}
	if buttons_pressed==[]{return(noone)}
	else if array_length(buttons_pressed) > 0 {
		return buttons_pressed[0];
	}
}

//format of global.locations_list:
//[["title",x1,y1,x2,y2],["title",x1,y1,x2,y2]]

//this function is named the way that it is because it finds the things that got clicked.

