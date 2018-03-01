///@description loads strings from datamap
///@param entry
//entry could also be global.dialogNext;
//ds_map_clear()
var entry = argument0;						
var submap = global.datamap[? "Dialog"];// global.dialogNext
global.dlist = submap[? entry];		// entry changes depending on if(havemet)
global.responseNext = global.dlist[|0];
/*
var submap = global.datamap[? "Response"]; //Response would be different for girl/detective
var choicemap = submap[? response];		// response = response0
var size = ds_map_size(choicemap);	// size to loop through player choices

for(var i = 0; i < size; i++)
{
	var str = "c" + string(i);
	global.rlist = choicemap[? str];
	show_message(global.rlist[|1]);		
}