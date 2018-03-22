//checks rectangle around text to see if mouse is hovering over response
if point_in_rectangle(mouse_x, mouse_y, x, y, x+textWidth, y+textSep) {
	hover = true;	
}
else hover = false;

if hover && mouse_check_button_pressed(mb_left) { //player clicks on response option
	instance_destroy(obj_textbox);
	instance_destroy(obj_response_controller); //destroy textbox and response controller
	global.dialogNext = dialog_ptr; //ptr to next NPC dialog
	global.playerChoiceRequired = false; //reset choice flag
	global.playerResponseEvent = true; //set response flag
	if (dialog_ptr != "exit") //dont have to update if next = exit
		update_choices(p_choice, global.responseNext);	
}