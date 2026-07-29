//global.map[0] is the content part of the map, global.map[1] is the pathways/navigation part of the map
//global.map[0] is going to be filled with more lists probably, global.map[1] will just be filled with numbers most likely
function map_initializing(){
	for (var _x=0;_x<array_length(global.map[1]);_x++){
		for (var _y=0;_y<array_length(global.map[1][0]);_y++){
			global.map[1][_x][_y]=floor(random_range(0,15.9999))
			global.map[1][_x][_y]=number_to_binary(global.map[1][_x][_y])
		}
	}
	
}
