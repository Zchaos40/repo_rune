function struct_runner(struct1){
    for (var i = 0; i < array_length(struct1.order); i++) {
        //var fn = variable_struct_get(struct1, struct1.order[i]);
		
		//Considering that some structures will temporarily modify values, perhaps feed them a copy list instead of the source values, like so?:
		//tempvalues=[struct1.strength,struct1.theoreticalnewvariable]
		//IMPORTANT ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
		var tempvalues=[struct1.strength]
		struct1.order[i](tempvalues)//struct1.strength might not be strictly necessary here, but that's what I'm planning on doing.
	}
}

