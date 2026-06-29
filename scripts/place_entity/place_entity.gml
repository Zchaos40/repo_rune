function place_entity(entity,place_x,place_y,orientation){//may eventually need to add some sort of reference to who is placing the entity at some point. Uncertain.
	var placed_entity=entity
	placed_entity._x=place_x
	placed_entity._y=place_y
	placed_entity._direction=orientation
	global.pgrid[place_x][place_y]=variable_clone(placed_entity)
}