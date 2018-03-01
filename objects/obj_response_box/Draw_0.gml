if hover 
	draw_set_color(c_blue);
else if haveselected
	draw_set_color(c_gray);
else
	draw_set_color(c_white);

//draw_set_font(fn_default);

draw_text(x, y, "> " + text + " " + p_choice);//draw_text(x+textWidth+5, y, dialog_ptr);