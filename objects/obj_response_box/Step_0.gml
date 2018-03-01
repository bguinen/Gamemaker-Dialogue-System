if point_in_rectangle(mouse_x, mouse_y, x, y, x+textWidth, y+textSep) {
	hover = true;	
}
else hover = false;

if hover && mouse_check_button_pressed(mb_left) {
	//show_message("selected, next dialog = " + dialog_ptr);
	obj_npc_controller.alarm[0] = 10;
	instance_destroy(obj_textbox);
	global.dialogNext = dialog_ptr;
	global.respondEvent = true;
	//update_choices(p_choice, responseIndex);
	ds_map_secure_save(global.datamap, "data.dat");
	ds_map_secure_save(global.datamap, "data.bin");
}


/*if keyboard_check_pressed(vk_space){
	if(typedChars < textLength){
		typedChars = textLength;
	} 
	else if(page+1 < ds_list_size(global.dlist)){ // length of list or copy list to array.
		page +=1;
		typedChars = 0;
	}
	else if(page+1 == ds_list_size(global.dlist)){
		//show_message("Responses show")
		instance_create_layer(x,y,"text", obj_response_controller);
		dialogEvent = true;
	} else { //if dialogEvent = false
		instance_destroy();
		creator.alarm[0]=10;
	} 	
}