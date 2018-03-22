/// @desc mouse hover effects
if hover {
	//draw_set_color(c_red); example hover effect
	//draw_rectangle(x,y, x+textWidth+textSep, y+textSep,true);
	draw_set_color(c_blue);
}
else if haveselected //text is grey if has been previously selected
	draw_set_color(c_gray);
else
	draw_set_color(c_white);
//draw rlist string
draw_text(x, y, "> " + text);