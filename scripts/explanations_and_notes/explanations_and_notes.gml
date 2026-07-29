
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
//Brainstorming what to work on next:
//Main menu
//actual run mechanics
//actual graphics
//
//I think that we've gotta make a main menu next so that we have a reasonable entry point for files and characters.
//main menu things:
//start run(needs options in it) #1
//load run #2
//codex of tiles and enemies(dont need right away, this is a later on thing) #5 (probably after a lot of other work on the game)
//profiles(not necessarily necessary) #anytime
//settings #4
//quit #3
//some sort of fun background thing, like in conquest of go #anytime
//
//How will we keep track of what is currently being done?
//We could use a global.current_mode type of variable
//We could use rooms, but like... i dont want to have to copy the code to each room, but i guess i could.
//rooms would work well if they actually worked, but i have no idea if they would.
//If we're going to try rooms, we've gotta commit it beforehand.
//
//rooms vs mode:
//rooms has easier buttons
//mode makes it so that i dont havae to use rooms
//mode means no copying the code everywhere
//rooms makes me better at coding
//If rooms works with the code object in a way that I dont think is objectionable, i guess we can use it.
//About to commit.
//
//
//We need to add playable tiles/cards/whatever.
//So we need to give the player a hand and a deck. 2 decks are needed, since tiles in your hand might somehow get modified during the combat.
//We need to make decisions about how hands will work and stuff.
//There will also likely have to be a draw, discard, and exhaust pile, unless we do some real fucked up shit like we did in 2048.
//We also have to make sure that we never implement a mechanic that encourages repetitive gameplay, like that reroll your hand thing we did in 2048. maybe it could be reasonable as a tile effect.
//
//hand, deck, etc. should be stored in overall player.
//have decided against the maindeck + deck approach in favor of deck, draw_pile, discard_pile, & exhaust pile.
//
//When clicking with the mouse, instead of checking its location, look at the location of everything else to see what it clicked.
//store all locations of things. When left mouse pressed, mark all things that it is greater than the top left of and less than the bottom right of. Then run the thing for whatever its both of. yeah.
//
//The stuff that has a bunch of smaller things, like placing a tile, will be counted as one big click by the thing (just have one thing that checks if the board gets clicked.) and then get further interpreted by other functions. 
//
//Do we want to add artifacts or perks to the game?
//I dont think so. artifacts and perks kinda defeat the point of the board being your build and strength.
//
//The player should be able to place like boulders and shit on the board. maybe to like fuel loop engines or something.
//It has a lot of use cases and adds variety to the game. I think it would be positive and good for the game.
//
//I had this idea for an artifact that I have not been able to get out of my head so I thought i'd write it down.
//It would give the player full control of global.struct_IDer.
//They would have access to it at any point by typing in a code that would consist of like up up left right left up down right.
//This code would be randomized on each copy of the game. It would only be accessible by datamining the game with undertale mod tool.
//We would also include an area that explains this artifact in its entirety, and before this area, there would be a boss that dies when you input this code.
//The boss would explain that theres a code that you have to input to beat it and that this code could be found in the game's files.
//This way, only people who were very dedicated to the game and had access to the code would be able to access this. It would, of course, be buggy.
//But it would be the player's job to deal with and bypass this bugginess, and they would know how, since they have access to the code.
//
//What do we need for a map and how do we want to make it?
//We'll have 2 arrays, With 1 representing the map locations and the other representing the pathways.
//The locations will all have visible types(enemy, elite, shop, etc.) and then internal specific types of encounters(gremlin horde, gay shop, etc.)
//All of those internal labels will correspond to functions that generate them.
//They will almost always have an aspect of randomness to them, with them being guided randomness. 
//example: gremlin horde spawns a lot of gremlins randomly in the rightmost area of the board, and then spawns a few lava pools randomly throughout the board.
//After thinking about it, making it so that you can go backwards would be potentially annoying to implement on a basic level. Maybe eventually though.
//how will the second array represent the pathways? maybe have each spot on the array have a random number from 0-8, get that number in binary,
//and so youll have a number from 000 to 111. the 111 means 3 paths, 110 means only the two top paths, 010 means only the middle path, etc.
//We could make it so that this always works and that you can go backwards be default, but because its like that, we can have it be like the rebel fleet in ftl!!!!!!
//how would we have that do up and down? I guess make it be 4 numbers, with the fourth number representing south.
//Im not sure what the ideal sizing of a map like that would be. maybe 4x10? Lets go with 4x10 for now.
//I think, at the start of the map, each thing's pathway will just be a random number from 0000 to 1111(0 to 15), but
//if the whole map cannot be flood filled(as in, something is cut off with no other access), It'll randomly add 1/2/4/8 to like 5 random nodes and keep doing this until it works.(also anything above 1111/15 just gets rounded down to 15.)
//Maybe also do that if it takes the flood fill 15 or more turns to get to the final row.
//Regarding the "rebel fleet" thing that Im planning to implement, I think that it'll probably be like a flood fill that triggers once every 2 turns.
//It will, of course, likely have like a 2-3 turn delay from the start so that the player doesnt have to rush away from the beginning immediately.
//This means that each map will take like at most (15x2)+3 turns, and usually closer to (10x2)+3 turns. slightly smaller than that because I doubt
//that most people will wait until the last second to go to the "sector exit" or boss or whatever. I feel like 20-30 turns per round is very reasonable
//So, we need to code two arrays, the contents of those two arrays(probably the navigation array first, just leave the events array empty for now), some weird
//ass binary bullshit, a flood fill algorithm for this map, and something that lets you move between the sectors on this map.
//
//
//
//
//
//
//
//Lets say that we have a tile that waves itself through the board all at once. We want it doing that to be visible to the player.
//Maybe make it so that whenever a tile triggers there's a 5 millisecond(maybe change this amount) delay before the next group of tiles trigger?
//By this i mean that we would put a delay somewhere in tile_runner so that whenever theres a new list of tiles that get triggered the player can see it.
//I feel like implementing this more than i feel like implementing a map right now.
//So; this actually doesn't work the way that I wanted it to, but I found another way to do it with the advice of claude. To any dataminers, first of all: I do not promote generative ai, but I feel like using ai once or twice a week to help me figure out something confusing is reasonable and good. second of all: hi uwu :3
//
//
//
//shops will have exclusive tiles that trigger the tile that they're pointing at, and those tiles will buy the tile they're pointing at. 
//you could also do some weird ass bullshittery in order to buy the trigger when clicked thing.
//
//The game should keep track of all of the actions that you take, those actions being stuff like moving, placing a tile, drawing a card, and ending your turn.
//
//drawing a card should cost 1 energy, then two energy, then 3 energy, etc.(maybe capping at 5 energy.) each turn you should discard your hand and then draw 5 more cards for free.
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
