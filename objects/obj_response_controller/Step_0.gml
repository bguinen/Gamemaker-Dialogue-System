/// @description ensure destruction of response objects after dialog end
if !instance_exists(obj_textbox) {
	//obj_event_controller.meeting = false;	
	instance_destroy(self);
	instance_destroy(obj_response_box);			
	
}
