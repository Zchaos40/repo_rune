
//structs will be made up of a series of functions, running in the order a, b, c, d, etc. the structure will also have various variables in itself, such as the amount of damage it deals and stuff. those will be stored at the end, and can be permanently modified by events and temporarily modified by functions in the tiles.
//structs will have various ways that they can trigger. These ways willbe listed in their "triggertypes" list variable.
//At the end of each turn or movement or action, a function will be run to check on each tile and see if it triggers by looking at its triggertypes
//some functions in a tile will not really do anything except temporarily increase variables, and thats fine.
//an object giving itself strength will get stored in the objects damage variable
//Struct modularity stuff:
//That previous stuff we thought of? it was stupid, dad was right. We'll include a variable in the structs that tells the order of the functions to do, and the functions will be named with an index that increases indefinitely.

//Alright. So. We havent thought of how different functions get triggered yet.
//
//Do we want tiles to be specific things/cards that you can play or do we want them to be entirely modular?
//
//
//
//When doing graphics, multiply EVERYTHING by a global variable, just to allow for a shitty scaling thing so that its not entirely limited to 1980x1080.
//
//
//After some thought, i think that making all tiles modifiable by the player freely is a bit of a bad design decision, considering that our game isn't built around that mechanic. I don't think that making the tiles be noita individually is good when our game's point is that the world is basically your wand, right?
//summary^^^ The world is the wand and the tiles are the spells, if we're talking about noita.
//I was trying to mimic noita to hard and ended up almost ruining my game. Be careful with mechanics, don't overcomplify simply things that work by emergence.
//
//I think we need to start working on the rest of the game and modify things as we go, but just make sure to keep things modular.
//
//10x10 seems to be the appropriate size for a standard combat.
//2 layers: floor, people. runes on floor layer, enemies and you on people layer.
//floor stuff could also be terrain with basic effects.
//
//What the grid needs to be able to do:
//have the pgrid interact with the fgrid
//allow for modification of the fgrid by the player
//run all structs to check for triggers
//Maybe do that by passing in a before an action and after an action version of both grids so that it is easy to tell if something has occurred.
//
//triggers should work as functions that output true or false based on what is passed in.
//
//
//If action loops into itself enough, maybe make it so that it "overheats" to prevent infinite looping easily. just an idea.
//
//when a tile gets placed away from the player, it has it's base amount that it costs, and every x tiles away from the player it's placed, it costs 1 more. Maybe dont allow tiles to be placed beneath enemies, or maybe allow it but double the cost. Show this all via colored highlights
//so, if it costs 1, its a deep green, 3, maybe a lighter green, 5, yellow, 10, deep red, and no highlight if it's too expensive. Maybe do it in a different way, with the color representing how much mana you will have left after placing the rune.
//
//We have to keep struct_id implemented, it's too much of an asset. 
//
//

