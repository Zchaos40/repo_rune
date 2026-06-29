function action(func,inputs){
	var before=[variable_clone(global.fgrid),variable_clone(global.pgrid)]
	if (array_length(inputs)>=1){
		script_execute_ext(func, inputs)
	}
	var after=[global.fgrid,global.pgrid]
	triggering_parser(variable_clone(before), variable_clone(after))//this technically might not need the "variable_clone"s but im putting them there anyways.
}

//the thing that prevents recursive turn end triggers is right before all of the things trigger in triggering parser.