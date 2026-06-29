function save(){
	var _save={
	player:global.player,
	pgrid:global.pgrid,
	fgrid:global.fgrid
	}
	var _string=json_stringify(_save)
	var _file = file_text_open_write("save.txt")
	file_text_write_string(_file, _string)
	file_text_close(_file)
}