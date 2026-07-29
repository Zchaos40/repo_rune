function draw_card(){
	if array_length(global.player.draw_pile)>0{
		var card=variable_clone(global.player.draw_pile[0])
		array_push(global.player.hand,card)
		array_delete(global.player.draw_pile,0,1)
	}
	else if array_length(global.player.discard_pile)>0{
		global.player.draw_pile=variable_clone(global.player.discard_pile)
		array_resize(global.player.discard_pile,0)
		var card=variable_clone(global.player.draw_pile[0])
		array_push(global.player.hand,card)
		array_delete(global.player.draw_pile,0,1)
	}
	else{
		//this should play a weird noise or something idk
	}
}
//this should eventually have animations or something added to it.
//also maybe not always work.