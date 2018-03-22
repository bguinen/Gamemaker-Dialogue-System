/// @description looks up player response options
//vars for possitioning response boxes
var buffer = 20;
var newx = camera_get_view_x(view_camera[0]);
var newy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]);
newx += buffer;
newy -= buffer;

//loading responses into datamap
var submap = global.datamap[? "Response"]; 
var choicemap = submap[? global.responseNext];	//response ptr	
var size = ds_map_size(choicemap);	// size to loop through player choices

//loops through amount of choices and creates a response box object for each entry
for(var i = 0; i < size; i++){
		var str = "c" + string(i); //loops through choicemap for player choice data
		global.rlist = choicemap[? str]; //sets rlist to choice list stored at "c1, c2, ect"
		with (instance_create_layer(newx,newy, "Text", obj_response_box)){ //create response box
			haveselected = global.rlist[|2] //checks if player has selected response before
			text = global.rlist[|1]; //sets text of resonse box to string stored in the second spot of choice array
			dialog_ptr = global.rlist[|0];	//pointer to next NPC dialog should player select this response	
			p_choice = str; //stores c index of choice in response box
			responseIndex = global.responseNext; //				
		}
		//Lowers new line y coord
		newy -= 25;
}