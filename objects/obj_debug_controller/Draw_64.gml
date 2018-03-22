///debug GUI
display_set_gui_size(-1,-1);
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

draw_set_color(c_white);
draw_set_font(-1);

draw_text(15, one, " objects: " + game_project_name);//string(instance_count));
draw_text(15, two, " mouse pos: " + string(mouse_x) + " | " + string(mouse_y));

if instance_exists(obj_player){
	draw_text(15, three, "             -PLAYER EVENTS- ");
	draw_text(15, four,  "         meeting = " + meetingBool);
	draw_text(15, five,  "    target x | y = " + string(obj_player.target_x) + " | " + string(obj_player.target_y));
	draw_text(15, six,   "   current x | y = " + string(obj_player.x) + " | " + string(obj_player.y));
	draw_text(15, seven, "    Can Interact = " + interactBool);
	draw_text(15, eight, "NPC Dialog Event = " + dialogbool);
	draw_text(15, nine,  "Player Responded = " + respondbool);
	draw_text(15, ten,   "  Plr choice req = " + choicebool);
	//draw_text(15, eleven,"  DialogNext Ptr = " + global.dialogNext);
	draw_text(15, eleven, "cur npc obj name = " + global.currObjectName);
}
if instance_exists(obj_textbox){
	draw_text(15, twelve,   "     - Textbox Properties - ");
	draw_text(15, thirteen, "   charCount = " + string(obj_textbox.typedChars));
	draw_text(15, fourteen, "current page = " + string(obj_textbox.page));
	draw_text(15, fifteen,  " dlist index = " + string(ds_list_size(global.dlist)));
}

/* Usefull for seeing the x/y coord of current view
  (upper left if still not used to GM coord system)
draw_text(15, y-Coord, "cam view x = " + string(vx));
draw_text(15, y-Coord, "cam view y = " + string(vy));