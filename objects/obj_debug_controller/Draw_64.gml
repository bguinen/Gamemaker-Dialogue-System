///debug GUI
draw_set_color(c_white);
draw_set_font(-1);
draw_text(15, one, " objects: " + string(instance_count));
draw_text(15, three, " mouse pos: " + string(mouse_x) + " | " + string(mouse_y));

if instance_exists(obj_player){
	draw_text(15, two, " meeting = " + string(obj_player.meeting));
	draw_text(15, four, " target x | y: " + string(obj_player.target_x) + " | " + string(obj_player.target_y));
	draw_text(15, five, " current x | y " + string(obj_player.x) + " | " + string(obj_player.y));
}
if instance_exists(obj_textbox){
	draw_text(15, six, " charCount = " + string(obj_textbox.typedChars));
	draw_text(15, seven, " page = " + string(obj_textbox.page));
	draw_text(15, eight, " dlist index = " + string(ds_list_size(global.dlist)));
}
if instance_exists(obj_response_controller) {
	//draw_text(15, twelve, "response y = " + string(obj_response_controller.responsey));
	//draw_text(15, thirteen, "dialogEvent = " + dialogbool);
}
draw_text(15, nine, "datamap = " + string(global.datamap));
draw_text(15, ten, "respondEvent = " + dialogbool);
draw_text(15, eleven, "dialogNext = " + global.dialogNext);
draw_text(15, twelve, "cam view x = " + string(camera_get_view_x(view_camera[0])));
draw_text(15, thirteen, "cam view y = " + string(camera_get_view_y(view_camera[0])));