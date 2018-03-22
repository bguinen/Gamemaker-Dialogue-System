if(global.playerChoiceRequired = false) { //skips textbox checks if game is awaiting player choice
	if keyboard_check_pressed(vk_space){ //spacebar will skip "typewriting" text and display full string
		if(typedChars < textLength){
			typedChars = textLength;
		}		
		else if(page+1 < ds_list_size(global.dlist)){ //checks next spot in dlist array making sure it is not empty
			page +=1;
			typedChars = 0; //reset char count for typewriting effect
		}
		else if(page+1 == ds_list_size(global.dlist) && global.responseNext == "exit"){
			obj_player.canmove = true; //if reached end of list and response pointer = "exit", ends dialog event
			global.playerResponseEvent = false;
			creator.alarm[0]=10;
			instance_destroy(self); //destroys textbox
			 //resets Response Trigger		
		}
		else if(page+1 == ds_list_size(global.dlist)){		
			instance_create_layer(0,0,"text", obj_response_controller);
			//creates response controller at room origin
			global.playerChoiceRequired = true;
			//reached end of dialog string array, start player responses					
		}			
	}
}