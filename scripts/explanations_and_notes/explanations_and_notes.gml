
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
//remember that negative numbers insert things from the end. Could be useful in many circumstances.
//
//Seeing how weird everything is, we might want to always keep the grid the player is on and all of the ones in front of and behind it in memory at all times. Only run the ones that they're currently on though.
//paths between rooms could be like push tiles that only function after a battle is completed. then, to go backwards, you would just need to get pushed back/teleported back 2. Yes very cool, like concept.
//
//
//We need to make it so that when runes trigger they trigger all at the same time, so that read order doesn't mess stuff up.
//Essentially just make a list of triggered tiles and then execute all changes at once.
//
//Tiles also have to store their location for convenience.
//
//We may or may not decide to store the triggering functions inside of the tiles.
//
//Triggering the tiles all at once may sacrifice some things and potentially reduce the amount of triggers, but I think that in the long run it's a good idea.
//
//Oh ho ho ho I just realized that I could leave in, as a fun little secret, that if you have more than, say, 30 energy, you could place a tile anywhere on the board.
//
//
//ok so decisions(maybe change): 
//the player will be a global struct
//the global struct will store the players position on the board
//that position will have something there that is essentially a gateway for the player struct, since i don't want to store the player struct on the board. that could be inconvenient.
//
//
//The player is going to have to have some basic spells and stuff that let them move themselves, enemies and stuff
//
//This game works better as a tactical 1v1 than a turn based kill everything game. That helps me out a lot
//
//I think that we need to include the pgrid as a part of the triggering system ):
//Its the only way
//
//Yeah, and we'll just make them both in struct create, maybe using optional variables.
//
//Older stuff i typed in a stupid place:
// only 1 thing that gets placed (runes) but they can also do things like "when this is placed, do x. destroy this rune." in order to make things simpler.
//Peglin like navigation kinda, but with the right setup, you can go BACKWARDS. Cool amiright?
//Y'know perks in other games and stuff, and endless mode in other games and stuff? Well what if we gave players perks in endless mode that basically broke some aspect of the game. We could call them endless boons. Endless would get exponentially harder, but the player would get access to things like uncapped perks on runes, saving and loading runs(basically implemented savescumming), total locational control, etc.
//The walls of arenas could be broken, but it would look clearly unintended and impossible.
//At the edge of each arena could be a void, and you could cross the void into an alternate reality, but it wouldn't look possible.
//SO: Moderately crazy idea, but it could make or break our game. Make tiles like noita wands, in that you can freely organize them and they have a limited capacity that differs from tile to tile. Triggertypes could also be something that is slightly, but not very modular! It would work so well! Yeah.
//With locking mechanics, we could also have like a key that you could buy in the shop to unlock one thing specifically.
//
//all of the f/pgrid triggered functions need to have their object inputted into them. i think i explain why in tile_runner. idk. I should be able to figure it out.
//
//movement will be done 1 tile at a time.
//
//before you start a run, you could mix and match different characteristics of different characters you unlock. maybe make this an endgame thing. like the last character unlock.
//so basically you could take like the movement of character b and the special ability of character a and stuff like that or something
//
//ok so the way that we're going to do it is that we'll have a function that syncs the player on the board and the global player variable
//and then we'll run it whenever we need to.
//
//The noones should just not be displayed and the background should be non repeating, it would make more sense
//
//store the tiles functions in one mega-script, have a different script that turns those functions into tiles.
//
//I'm making a function that has anything on anygrid reverify its internally stored location. As in, it finds its id on the pgrid and fgrid and then sets its internal values to those locations. It'll check both the pgrid and the fgrid for itself.
//
//I should add some puzzle challenges at some point
//that would be kinda cool
//yeah
//
//Methods for tile burnout:
//1: Check previous gamestates: if match, stop. - Would be ideal, but potentially a nightmare to code. wouldn't always work either.
//2: Give certain tiles a hidden triggermax variable. - It would be inconvenient to code, but would work quite well.
//3: stop triggers after a certain amount of loops on triggering_parser(about 100) maybe include that amount as a setting ingame. - Could break messed up non-infinite setups, which could be bad and make it have demoncrawl-type infinite gameplay rather than noita god run gameplay, which would suck.
//
//I think that we'll go with method 2. maybe cause a triggermax thing to trigger some sort of response from the game.
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
