window_set_fullscreen(false)
global.devmode=true //grants some stuff that makes testing easier. turn off sometimes.
randomise()
if global.start_type=="start"{//the other start type is load. this is to make it boot the way we want when we press different buttons. May be temporary.
	global.struct_IDer=300 //this is necessary for differentiating.
//it starts at a high number so that we can fit in stuff behind it and above 0 if/when that is necessary
	global.pgrid = array_create(10);
	for (var _x = 0; _x < 10; _x++) {
	    global.pgrid[_x] = array_create(10, noone); // this is necessary because of a stupid thing with how the memory works
	}
	global.fgrid = array_create(10);
	for (var _x = 0; _x < 10; _x++) {
	    global.fgrid[_x] = array_create(10, noone); // this is necessary because of a stupid thing with how the memory works
	}
	global.player={
		identifier:0,
		_x:0,
		_y:0,
		energy:10,
		max_energy:10,
		_health:10,
		_max_health:10,
		placement_distance:2,
		movement_cost:1,
		_direction:0,
		deck:[],
		hand:[tile_list("damage_tile"),tile_list("damage_tile"),tile_list("arrow_tile"),tile_list("push_tile")],
		draw_pile:[tile_list("push_tile"),tile_list("push_tile"),tile_list("damage_tile"),tile_list("push_tile"),tile_list("push_tile")],
		discard_pile:[],
		exhaust_pile:[],
		card_selected_index:-1,
		card_selected_rotation:0
	}
	global.pgrid[global.player._x][global.player._y]={
	identifier:0,
	_x:0,
	_y:0,
	_health:10,
	_max_health:10,
	_direction:0,
	image:coiny_thing//THIS IS A PLACEHOLDER. IT HOLDS THE PLACE. ITS TEMPORARY. GET RID OF IT. IT SUCKS. IT KILLED MY FAMILY. FUCK THIS. FUCK YOU.
	}
	//vvvvvvvvvvv this is all just stuff that i put in that exists at the start.
	var testing_tile=tile_list("push_tile")
	place_tile(testing_tile,7,7,0,false)
	place_tile(testing_tile,7,6,3,false)
	place_tile(testing_tile,6,6,0,false)
	place_tile(testing_tile,6,5,3,false)


	place_tile(testing_tile,1,1,1,false)
	place_tile(testing_tile,2,1,2,false)
	place_tile(testing_tile,2,2,3,false)
	place_tile(testing_tile,1,2,0,false)


	place_tile(tile_list("arrow_tile"),3,1,3,false)
	place_tile(tile_list("arrow_tile"),0,5,0,false)
	place_entity(tile_list("gremlin"),7,3,2)
}

global.locations_list=[]
//^^^^This tells the locations of buttons and stuff.
//format:
//[["title",x1,y1,x2,y2],["title",x1,y1,x2,y2]]

global.display_list=[]
//^^^^^^This keeps all of the data of an action so that after the action/sequence of actions has been performed, it can be displayed.

var mapframe = array_create(10);
for (var _x = 0; _x < 10; _x++) {
	mapframe[_x] = array_create(4, noone); // this is necessary because of a stupid thing with how the memory works
}
global.map=[variable_clone(mapframe),variable_clone(mapframe)]
global.phantom_map=variable_clone(mapframe)//this is used to help generate the map

//temporary and for testing purposes
map_initializing()
map_flooder(0,0)
show_debug_message(global.phantom_map)
show_debug_message(global.map[1])


global.turn_ending=false




