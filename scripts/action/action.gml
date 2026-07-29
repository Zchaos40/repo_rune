function action(func,inputs){
	var before=[variable_clone(global.fgrid),variable_clone(global.pgrid)]
	array_push(global.display_list,variable_clone(before))
	if (array_length(inputs)>=1){
		script_execute_ext(func, inputs)
	}
	death_check()//I think that this is the right place to put this, but i am not 100% certain. This may potentially be a cause of some sort of confusing obscure bug.
	var after=[global.fgrid,global.pgrid]
	triggering_parser(variable_clone(before), variable_clone(after))//this technically might not need the "variable_clone"s but im putting them there anyways.
}

//the thing that prevents recursive turn end triggers is right before all of the things trigger in triggering parser.