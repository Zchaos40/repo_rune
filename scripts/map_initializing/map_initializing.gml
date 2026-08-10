//global.map[0] is the content part of the map, global.map[1] is the pathways/navigation part of the map
//global.map[0] is going to be filled with more lists probably, global.map[1] will just be filled with numbers most likely
function map_initializing(){
	for (var _x=0;_x<array_length(global.map[1]);_x++){
		for (var _y=0;_y<array_length(global.map[1][0]);_y++){
			global.map[1][_x][_y]=floor(random_range(0,15.9999))
			global.map[1][_x][_y]=number_to_binary(global.map[1][_x][_y])
		}
	}
	map_flooder(0,0)
	var map_uncomplete = false;
	for (var _x = 0; _x < array_length(global.phantom_map); _x++) {
	    for (var _y = 0; _y < array_length(global.phantom_map[_x]); _y++) {
	        if (global.phantom_map[_x][_y] == noone) {
	            map_uncomplete = true;
	        }
	    }
	}
	if map_uncomplete==true{
		var mapframe = array_create(10)
		for (var _x = 0; _x < 10; _x++) {
			mapframe[_x] = array_create(4, noone)
		}
		global.phantom_map=variable_clone(mapframe)
		map_initializing()
		return
	}
	//IMPORTANT!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!vvvvvvvvv
	//This is all completely fucked. It's supposed to make it so that all of the nodes are accessible but it doesnt. fuck this.
}
