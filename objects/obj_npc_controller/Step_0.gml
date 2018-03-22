if canInteract { //make sure following checks only run when in range of player
	if (global.npcDialogEvent = false) { //If not then check everystep for when player clicks on NPC
			if(canTalk && mouse_check_button_pressed(mb_left)){	
				/*
				For final game functionality replace global.datamap = dialog_load();
					-> global.datamap = ds_map_secure_load("NPC_Name_Dialog.bin");
			
				Its easier to test/edit/shape dialog trees using the json format
				using Gamemaker's ds_map_secure_load/save for anything beyond testing 
				ensures the players cannot edit and possibly break the system.
				*/
				global.currObjectName = objName;
				global.datamap = dialog_load(myName);
				dialog_select(entry);
				havemet = true; 
				// you can change what an NPC says based on if player has interacted with npc
				// i.e. if havemet = true, entry = d_0_1
				event_user(0); //creates textbox for dialog
				global.npcDialogEvent = true; //triggers Dialog event
			}
			//checks if current npc is in Dialog/Response event		
		} else if(global.playerResponseEvent = true && global.currObjectName = objName){
			dialog_select(global.dialogNext) //loads dialog tree from next dialog pointer
			event_user(0);//creates new textbox for dialog
		} else if (global.npcDialogEvent = true) exit;// Do nothing if currently in a dialog event but havent triggered a response event yet.		
}	 