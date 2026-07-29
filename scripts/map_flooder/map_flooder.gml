function map_flooder(initial_x, initial_y){
	//
	global.phantom_map[initial_x][initial_y]=true
	//ok so it needs to check which ones around it it should even try checking
	var list_to_check=[]
	for (var _x=-1;_x<=1;_x++){
		for (var _y=-1;_y<=1;_y++){
			if _x!=0 or _y!=0{
				//add this back to the if statement below if this part starts bugging
				// and (not (initial_x+_x>array_length(global.phantom_map) or initial_y+_y>array_length(global.phantom_map[0])))
				if (not (initial_x+_x<0 or initial_y+_y<0)) and (not (initial_x+_x>array_length(global.phantom_map)-1 or initial_y+_y>array_length(global.phantom_map[0])-1)){
					if global.phantom_map[initial_x+_x][initial_y+_y]!=true{
						array_push(list_to_check,[_x,_y])
					}
				}
			}
		}
	}
	for (var i=0;i<array_length(list_to_check);i++){
		if path_checker(initial_x,initial_y,initial_x+list_to_check[i][0],initial_y+list_to_check[i][1]){
			map_flooder(initial_x+list_to_check[i][0],initial_y+list_to_check[i][1])
		}
	}
}

//We'll make this work by having a second array that it changes the variables of. that should work.


//if global.map[initial_x][initial_y]==1{
//global.map[initial_x][initial_y]=2
//global.flood_fill_variable++
//}
//if initial_x>0 and initial_y>0{if global.map[initial_x-1][initial_y-1]==1{map_flooder(initial_x-1,initial_y-1)}}
//if initial_y>0{if global.map[initial_x][initial_y-1]==1{map_flooder(initial_x,initial_y-1)}}
//if initial_x<5 and initial_y>0{if global.map[initial_x+1][initial_y-1]==1{map_flooder(initial_x+1,initial_y-1)}}
//if initial_x>0{if global.map[initial_x-1][initial_y]==1{map_flooder(initial_x-1,initial_y)}}
//if initial_x<5{if global.map[initial_x+1][initial_y]==1{map_flooder(initial_x+1,initial_y)}}
//if initial_x>0 and initial_y<5{if global.map[initial_x-1][initial_y+1]==1{map_flooder(initial_x-1,initial_y+1)}}
//if initial_y<5{if global.map[initial_x][initial_y+1]==1{map_flooder(initial_x,initial_y+1)}}
//if initial_x<5 and initial_y<5{if global.map[initial_x+1][initial_y+1]==1{map_flooder(initial_x+1,initial_y+1)}}