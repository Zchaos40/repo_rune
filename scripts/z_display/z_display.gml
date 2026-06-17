function z_display(image,x_name,y_name,x_size,y_size,rotation){
	var scale_variable_x=sprite_get_width(image)
	var scale_variable_y=sprite_get_height(image)
	scale_variable_x=x_size/scale_variable_x
	scale_variable_y=y_size/scale_variable_y
	var x_offset=0
	var y_offset=0
	if rotation==90{x_offset=x_size}
	if rotation==270{y_offset=y_size}
	if rotation==180{x_offset=x_size;y_offset=y_size}//if there is a weird bug with rotating things that arent squares, this is where it's coming from.
	draw_sprite_ext(image,0,x_name+x_offset,y_name+y_offset,scale_variable_x,scale_variable_y,rotation*-1,c_white,1)
	//draw_sprite_ext(skip_button,0,400,404,1,1,0,c_white,1)
}