///@description loads dialog strings from datamap, sets ptr to responses
///@param entry

var entry = argument0;						
var submap = global.datamap[? "Dialog"];// global.dialogNext
global.dlist = submap[? entry];		// entry can change, variable stored in respective NPC object
global.responseNext = global.dlist[| 0]; //Ptr to corresponding Responses stored in first list position
