/*if place_meeting(x, y, obj_player)
if(havemet){
	entry = "d_1_0"
}*//*
switch (global.respondEvent) //dialog not occuring
{ 
	case false:
		if (distance_to_object(obj_player) < 40){
			if(interacting && mouse_check_button_pressed(mb_left)){		
				global.datamap = dialog_load("example"); //replace with name
				dialog_select(entry);
				havemet = true;			
				event_user(0);
				global.respondEvent = true;
			}
		} else {
			if (myTextbox !=noone){
				global.respondEvent = false;	
				instance_destroy(myTextbox);
				myTextbox = noone;			
			}
		} break;
	case true:		
		dialog_select(global.dialogNext)
		event_user(0);
		if (distance_to_object(obj_player) > 40) {
			if (myTextbox !=noone){
				global.respondEvent = false;	
				instance_destroy(myTextbox);
				myTextbox = noone;			
			}
		} break;
}	/*
	switch(global.respondEvent)
		{
			case false:
			if(interacting && mouse_check_button_pressed(mb_left)){						
				global.datamap = dialog_load("example"); //replace with name
				dialog_select(entry);
				havemet = true;			
				event_user(0);		
				global.respondEvent = true;
			}					
				break;						
			case true:
				dialog_select(global.dialogNext)
				event_user(0);
				break;
		}
	*/

 //vv somewhat stable
if (distance_to_object(obj_player) < 40){ 
	if (global.respondEvent = true) {
		dialog_select(global.dialogNext)
		event_user(0);
	} else if(global.respondEvent = false){
		if(interacting && mouse_check_button_pressed(mb_left)){	
			//global.datamap = ds_map_secure_load("data.bin")	
			global.datamap = dialog_load("example"); //replace with name
			dialog_select(entry);
			havemet = true;			
			event_user(0);
			//global.respondEvent = true;
			//might have to move out of step					
		}
	}
	
		
	} else {
		//global.respondEvent = false;	
		if (myTextbox !=noone){
		global.respondEvent = false;	
				instance_destroy(myTextbox);
				myTextbox = noone;
							
		}
	}
	 
//thoughts for tomorrow: destroy textbox on timer
// toggling a canmove variable on player rather than basing off of dialogEvent