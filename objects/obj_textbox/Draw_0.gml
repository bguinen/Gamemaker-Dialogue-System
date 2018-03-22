/// @description NPC Dialog Box
/*
Dialog box will size 

*/
//set font
draw_set_font(fn_default);
//draw textbox
draw_nine_slice(sp_textbox, newx, newy, x2, y2);
//settings and draw of npc name
draw_set_color(c_green);
draw_set_halign(fa_center)
draw_text(newx+textboxWidth/2, newy+(buffer/2), name);
//draw text
draw_set_halign(fa_left)
draw_set_color(c_white);
var textCurrent = string_copy(global.dlist[|page], 1, ceil(typedChars)); //copies string from choicemap of length "typedChars"
if (typedChars < textLength) typedChars += global.textSpeed; //typewriter effect
draw_text_ext(x1, y1+textSep, textCurrent, textSep, textWidth); //finally draw string to screen

