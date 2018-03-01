/*draw_set_font(fn_default);
//length of current string
//str = text[|page];
textLength = string_length(global.dlist[|page]);
//height for char seperation
textSep = string_height(global.dlist[|page]);
//max width in pixels w/line break
textWidth = string_width_ext(global.dlist[|page], textSep, 300);
//height of string w/line break
textHeight = string_height_ext(global.dlist[|page], textSep, 300);
//padding around text
buffer = 20;

//*change x, y origin for style*
//extra space between sprite and textbox
newx = x+buffer/2;
//place halfway up object
newy = y-(textHeight+textSep+buffer); 

//x, y origin for text
x1 = newx+buffer;
y1 = newy+buffer;

//end for textbox
x2 = newx+textWidth+(buffer*2);
y2 = newy+textHeight+textSep+(buffer*2);

//width of textbox for centering name
textboxWidth = abs(x2-newx);