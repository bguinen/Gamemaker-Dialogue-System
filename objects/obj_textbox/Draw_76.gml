/// @description Pre-draw measurements

draw_set_font(fn_default);
//length of current string
textLength = string_length(global.dlist[|page]);
//height for char seperation
textSep = string_height(global.dlist[|page]);

/* BELOW SIZES THE STRING FOR THE TEXTBOX DIMENSIONS
-last value in the string_ext() functions will determine how wide/tall your dialog box is
-Suggest keeping same value for 'w' in both string_width_ext and string_height_ext
so that the text doesn't extend outside the "Nine slice" textbox draw.
-The value should be somewhat proportional to your viewport camera dimensions
*/

//max width in pixels w/line break
textWidth = string_width_ext(global.dlist[|page], textSep, 300); 
//height of string w/line break
textHeight = string_height_ext(global.dlist[|page], textSep, 300);
//padding around text
buffer = 20;

/*
Edit any of these below to tune the layout of the textbox to your style
*/
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