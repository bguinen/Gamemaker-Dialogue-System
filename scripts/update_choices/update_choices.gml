///@description updates player choice
///@param playerChoice
///@param responseIndex

var choice = argument0;
var response = argument1;

var submap = global.datamap[? "Response"]; //Response would be different for girl/detective
var choicemap = submap[? response];	//return value
global.rlist = choicemap[? choice];	
ds_list_replace(global.rlist, 2, true);
//ds_map_secure_save()


