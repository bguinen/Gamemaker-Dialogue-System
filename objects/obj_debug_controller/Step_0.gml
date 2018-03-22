//converts respondEvent from 1 or 0 to true or false.
dialogbool = (global.npcDialogEvent = 1)?("true"):("false");
respondbool = (global.playerResponseEvent = 1)?("true"):("false"); 
meetingBool = (obj_npc_controller.canInteract = 1)?("true"):("false");
interactBool = (obj_npc_controller.canTalk = 1)?("true"):("false");
choicebool = (global.playerChoiceRequired = 1)?("true"):("false");
//exit game & clear memory if esc is pressed
if (keyboard_check_pressed(vk_escape)){
	ds_map_destroy(global.datamap);
	game_end();
}