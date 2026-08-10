function path_checker(x1,y1,x2,y2){
	var startx=x1
	var starty=y1
	var otherx=x2
	var othery=y2
	if x2<x1 or (y2>y1 and x1==x2){//this is necessary because paths are stored in a node and it goes from a node to the nodes to the right of and below it. If i didnt do this, i would not know which node to look at the variables of.
		startx=x2
		starty=y2
		otherx=x1
		othery=y1
	}
	var path=false
	//if theres a weird bug with this it might be because of reference memory stuff, so do variable clone things.
	//also, we might want to change this to do otherx==startx+1 rather than otherx>startx
	if otherx==startx and othery==starty+1{
		if global.map[1][startx][starty][3]{path=true}
	}
	if otherx>startx and othery==starty+1{
		if global.map[1][startx][starty][2]{path=true}
	}
	if otherx>startx and othery==starty{
		if global.map[1][startx][starty][1]{path=true}
	}
	if otherx>startx and othery==starty-1{
		if global.map[1][startx][starty][0]{path=true}
	}
	return(path)
}

//we'll make this check the paths and stuff
//more specifically it'll check if 2 nodes have a path between them