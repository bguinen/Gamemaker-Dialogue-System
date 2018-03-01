if(myTextbox == noone){
	myTextbox = instance_create_layer(bbox_right, bbox_top, "Text", obj_textbox);	
	myTextbox.name = myName;
	myTextbox.creator = self;
	obj_player.canmove = false;
}