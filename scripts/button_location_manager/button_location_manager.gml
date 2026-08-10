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
	array_push(global.locations_list,["end_turn",1824,64,1924,164])
	array_push(global.locations_list,["dev_mode",1824,164,1924,264])
	array_push(global.locations_list,["draw_card",1824,264,1924,364])
	array_push(global.locations_list,["switch_modes",1824,0,1924,64])//this is temporary and just for convenience. delete this.
}

//This function will update the global.locations_list when it is run to match what is currently on the screen and stuff.
//It will be run whenever something happens that could cause there to be more/less clickable things on the screen.