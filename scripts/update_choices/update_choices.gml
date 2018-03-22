///@description updates player choice
///@param playerChoice
///@param responseIndex

var choice = argument0;
var response = argument1;

var submap = global.datamap[? "Response"];
var choicemap = submap[? response];
global.rlist = choicemap[? choice];	
ds_list_replace(global.rlist, 2, true);
/*
if your still expirementing you can use the save_json() script I included
to save DS_map changes.

again, for anything beyond that you should use one of these  
ds_map_secure_save(global.datamap, "data.dat");
ds_map_secure_save(global.datamap, "data.bin");


