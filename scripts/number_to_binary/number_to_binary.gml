function number_to_binary(number){
	var binary=[]
	if number>=8{number-=8;array_push(binary,true)}
	else{array_push(binary,false)}
	if number>=4{number-=4;array_push(binary,true)}
	else{array_push(binary,false)}
	if number>=2{number-=2;array_push(binary,true)}
	else{array_push(binary,false)}
	if number>=1{number-=1;array_push(binary,true)}
	else{array_push(binary,false)}
	return(binary)
}