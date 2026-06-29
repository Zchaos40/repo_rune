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