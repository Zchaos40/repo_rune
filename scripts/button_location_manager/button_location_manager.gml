function button_location_manager(){
	//resetting locations list
	global.locations_list=[]
	//this part does stuff for the hand buttons.
	var hand = ["hand",1050,900,1050,1000]
	for(var i=0;i<array_length(global.player.hand);i++){
		hand[3]+=100 //if i am confused by this line, remember that indexing starts at 0
	}
	array_push(global.locations_list,hand)
	array_push(global.locations_list,["board",0,0,1000,1000])
}

//This function will update the global.locations_list when it is run to match what is currently on the screen and stuff.
//It will be run whenever something happens that could cause there to be more/less clickable things on the screen.