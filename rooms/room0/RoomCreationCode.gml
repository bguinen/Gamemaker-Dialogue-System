global_vars();
show_debug_overlay(true);

/*
global.datamap = dialog_load("example");
	
//make submap dynamic
var entry = "d_1_0";					// entry defined in npc object based on if(havemet)
var submap = global.datamap[? "Dialog"];// global.dialogNext
global.dlist = submap[? entry];			// entry changes depending on if(havemet)
	
	
global.response = global.dlist[|0];			// global.responseNext - response = "response0"
	
//send to obj_player?
submap = global.datamap[? "Response"]; 
var choicemap = submap[? global.response];		// response = response0
var size = ds_map_size(choicemap);	// size to loop through player choices

for(var i = 0; i < size; i++)
{
	var str = "c" + string(i);
	global.rlist = choicemap[? str];
	show_message(global.rlist[|1]);		
}
	
//var list2 = submapR[? "choice1"];
	

//var d1 = ds_map_find_value(datamap, "dialog")
show_message(global.dlist[|1]);
/*
//show_message(size);
//save_json(datamap, "newgtest");

ds_map_destroy(global.datamap);
	
	
game_end();
