//switch case for selecting response
if instance_exists(obj_textbox) {

	//when interaction starts load obj_dialog_controller
	//get text from obj
	//obj_event_controller.meeting = true;
	
		//responseBox = instance_create_layer(15, responsey-50, "Text", obj_response_box);
		//responseBox.name = myName;
		//responseBox.creator = self;
		
} if !instance_exists(obj_textbox) {
	//obj_event_controller.meeting = false;	
	instance_destroy(self);
	instance_destroy(obj_response_box);			
	
}
//while (instance_exists(obj_textbox);
