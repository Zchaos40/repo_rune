if keyboard_check_pressed(ord("W")){
	action(player_move,[0])
}
if keyboard_check_pressed(ord("D")){
	action(player_move,[1])
}
if keyboard_check_pressed(ord("S")){
	action(player_move,[2])
}
if keyboard_check_pressed(ord("A")){
	action(player_move,[3])
}

if keyboard_check_pressed(ord("K")){
	save()
}
if keyboard_check_pressed(ord("L")){
	load()
}
if keyboard_check_pressed(ord("E")){
	global.player.card_selected_rotation++
	if global.player.card_selected_rotation==4{
		global.player.card_selected_rotation=0
	}
}
if keyboard_check_pressed(ord("Q")){
	global.player.card_selected_rotation--
	if global.player.card_selected_rotation==-1{
		global.player.card_selected_rotation=3
	}
}
if keyboard_check_pressed(vk_escape){room_goto(main_menu)}