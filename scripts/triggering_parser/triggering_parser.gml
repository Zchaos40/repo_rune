//vvvvvvvvv formerly triggering_parser_new
function triggering_parser(preaction,postaction){
	var triggered_list=[]
	for (var _x=0;_x<array_length(global.fgrid);_x++){
		for (var _y=0;_y<array_length(global.fgrid[0]);_y++){
			if (global.fgrid[_x][_y]!=noone){//may need to add a few more ifs in the future if we add other weirder non tile floor things
				if (struct_exists(global.fgrid[_x][_y], "trigger")){
					if global.fgrid[_x][_y].trigger(preaction, postaction,global.fgrid[_x][_y]){
						array_push(triggered_list, global.fgrid[_x][_y])
					}
				}
			}
		}
	}
	
	
	for (var _x=0;_x<array_length(global.pgrid);_x++){
		for (var _y=0;_y<array_length(global.pgrid[0]);_y++){
			if global.pgrid[_x][_y]!=noone{//may need to add a few more ifs in the future if we add other weirder non tile floor things
				if (variable_struct_exists(global.pgrid[_x][_y], "trigger")){
					if global.pgrid[_x][_y].trigger(preaction, postaction,global.pgrid[_x][_y]){
						array_push(triggered_list, global.pgrid[_x][_y])
					}
				}
			}	
		}				
	}										
						
						
	if array_length(triggered_list)>0{
		action(tile_runner,[triggered_list])
		//it needs to be a list of 1 thing because of how action works and how the other function will work
	}
}

//We'd want there to be a graphical change between each round of triggering, would we not?

//if list of things that got triggered has a length>0, action(function_that_runs_all_of_them, list_of_things_that_triggered)


//vvvvvvvvvvvvvv Formerly triggering_parser
//function triggering_parser_old(_x, _y, preaction, postaction){ //needs a before and after so that it can check if a change has occured
//	var triggers = global.fgrid[_x][_y].triggertypes
	
//	if array_contains(triggers, "touched"){ //checks if the tile has a triggertype
//		if preaction[1][_x][_y]!=postaction[1][_x][_y] and postaction[1][_x][_y]!=noone{ //checks if a triggertype is triggered
//			tile_runner(global.fgrid[_x][_y], _x, _y)//runs the functions of the triggered tile
//		}
//	}
	
//	if array_contains(triggers, "when_placed"){  //May or may not need to reintroduce id's for entities for this specific purpose. 
//		var placed=true
//		for (var _x2=0;_x2<array_length(global.fgrid);_x2++){  //this system needs to be refined and heavily checked. it has a lot of potential issues.
//			for (var _y2=0;_y2<array_length(global.fgrid[0]);_y2++){
//				if preaction[0][_x2][_y2].identifier==postaction[0][_x][_y].identifier{
//					placed=false
//				}
//			}
//		}
//		if placed{
//			tile_runner(global.fgrid[_x][_y], _x, _y)
//		}
//	}
//}

