/*
	global ds_map of dialog.
	if (list[| 1] = true) grey out text;
	
	obj_name = object_get_name()
	with (obj_npc_parent) {other.myName = "gary"}	

	destroy ds_map when not behind used 
	
	store have met
	import vars from player / npcs
	
	draw player response objects
	with loop
	
	//store global.dialogNext = rlist[|0];
*/

//display_set_gui_size(-1,-1);
responseBox = noone;
var buffer = 20;
//camera_get_view_x()
var newx = camera_get_view_x(view_camera[0]);
var newy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]);
newx += buffer;
newy -= buffer;

var submap = global.datamap[? "Response"]; //Response would be different for girl/detective
var choicemap = submap[? global.responseNext];	//return value	
var size = ds_map_size(choicemap);	// size to loop through player choices

for(var i = 0; i < size; i++)
	{
		var str = "c" + string(i);
		global.rlist = choicemap[? str];
		with (instance_create_layer(newx,newy, "Text", obj_response_box)){
		haveselected = global.rlist[|2]
		text = global.rlist[|1];
		dialog_ptr = global.rlist[|0];
		/*
		p_choice = str;
		responseIndex = global.responseNext
		*/		
		}
		//show_message(global.rlist[|1]);
		newy -= 25;
	}

	/*	
for(var i = 0; i < size; i++)
{
	var str = "c" + string(i);
	global.rlist = choicemap[? str];
	instance_create_layer(15, responsey-50, "Text", obj_response_box);
	//show_message(global.rlist[|1]);
	//responsey -= 15;

}