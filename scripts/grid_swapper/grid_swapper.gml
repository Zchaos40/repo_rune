function grid_swapper(grid,positions1,positions2){
	var x1=positions1[0]
	var x2=positions2[0]
	var y1=positions1[1]
	var y2=positions2[1]
	var thing1=grid[x1][y1]
	var thing2=grid[x2][y2]
	grid[x1][y1]=thing2
	grid[x2][y2]=thing1
}