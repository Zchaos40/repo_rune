//window_set_fullscreen(true)
global.devmode=true //grants some stuff that makes testing easier. turn off sometimes.


global.pgrid = array_create(10);
for (var _x = 0; _x < 10; _x++) {
    global.pgrid[_x] = array_create(10, noone); // this is necessary because of a stupid thing with how the memory works
}
global.fgrid = array_create(10);
for (var _x = 0; _x < 10; _x++) {
    global.fgrid[_x] = array_create(10, noone); // this is necessary because of a stupid thing with how the memory works
}

global.struct_IDer=300 //this is necessary for differentiating.
//it starts at a high number so that we can fit in stuff behind it and above 0 if/when that is necessary


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
	_direction:0
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
global.turn_ending=false

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