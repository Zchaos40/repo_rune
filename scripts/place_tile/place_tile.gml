function place_tile(tile,place_x,place_y,orientation,by_player){//by_player should be true when the tile is being placed by the player, false otherwise.
	//we need:
	//global.playerlocation
	//global.energy
	//global.placement_distance
	//I'm thinking: within placement distance=1x, within 2x placement distance=1.5x cost, rounded up, within 3x placement distance=2x cost
	if place_x<0 or place_y<0 or place_x>array_length(global.fgrid[0]) or place_y>array_length(global.fgrid){
		return
	}
	var energy_cost=30 //people being able to place things anywhere if they have 30 energy or more is an intentional decision that will be interesting to dedicated players. its a cool secret in my opinion.
	var distance=abs(place_x-global.player._x)+abs(place_y-global.player._y)
	if distance <= global.player.placement_distance*3{
		energy_cost=2*tile.cost//Shit we need to add tilecost dont we
		if distance <= global.player.placement_distance*2{
			energy_cost=floor(1.5*tile.cost)
			if distance <= global.player.placement_distance{
				energy_cost=tile.cost
			}
		}
	}
	if global.player.energy>=energy_cost or by_player==false{
		var placed_tile=struct_clone(tile)
		placed_tile._x=place_x
		placed_tile._y=place_y
		placed_tile._direction=orientation
		global.fgrid[place_x][place_y]=variable_clone(placed_tile)//I feel like theres something else i needed to do with this but i forgor 
		if by_player{global.energy-=energy_cost}
		// maybe also put a different sound effect here.
	}
	else{
		//dont do anything and maybe add like a sound effect or something i guess? checklist said so
	}
}

//We may need to add a similar function that does this independently of the player.
//or we could just use an optional input? Idk

//also maybe make it cost one more if it's being placed beneath something. That sounds balanced.
//actually nevermind. theres nothing that overpowered about being able to do that anyways since most things wont trigger immediately when placed.