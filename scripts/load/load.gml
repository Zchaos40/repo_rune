function load(){
	if file_exists("save.txt"){
		var _file=file_text_open_read("save.txt")
		var _load=json_parse(file_text_read_string(_file))
		global.player=_load.player
		global.pgrid=_load.pgrid
		global.fgrid=_load.fgrid
		file_text_close(_file)
	}
}