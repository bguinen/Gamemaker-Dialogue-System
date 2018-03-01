if keyboard_check_pressed(vk_space){
	if(typedChars < textLength){
		typedChars = textLength;
	} 
	else if(page+1 < ds_list_size(global.dlist)){ // length of list or copy list to array.
		page +=1;
		typedChars = 0;
	}
	else if(page+1 == ds_list_size(global.dlist) && global.responseNext == "exit"){
		obj_player.canmove = true;
		instance_destroy();
		global.respondEvent = false;			
	}
	else if(page+1 == ds_list_size(global.dlist)){
		//show_message("Responses show")
		instance_create_layer(0,0,"text", obj_response_controller);
					
	} else { //if dialogEvent = false
		instance_destroy();
		creator.alarm[0]=10;		
	} 	
}