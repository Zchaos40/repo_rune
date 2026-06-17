function z_display(image,x_name,y_name,x_size,y_size){
	var scale_variable_x=sprite_get_width(image)
	var scale_variable_y=sprite_get_height(image)
	scale_variable_x=x_size/scale_variable_x
	scale_variable_y=y_size/scale_variable_y
	draw_sprite_ext(image,0,x_name,y_name,scale_variable_x,scale_variable_y,0,c_white,1)
	//draw_sprite_ext(skip_button,0,400,404,1,1,0,c_white,1)
}