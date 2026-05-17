function action(func,inputs){
	var before=[global.fgrid,global.pgrid]
	script_execute_ext(func, inputs)
	var after=[global.fgrid,global.pgrid]
	//then, run through the entire fgrid (and maybe pgrid if that becomes a thing) and yeah
	for (var _x=0;_x<array_length(global.fgrid);_x++){
		for (var _y=0;_y<array_length(global.fgrid[0]);_y++){
			 //okay so here we need something that interprets the change into a set of triggers for specific things, maybe make that a seperate function.
			if global.fgrid[_x][_y]!=noone{
				triggering_parser(_x, _y, before, after)
			}
		}
	}
}