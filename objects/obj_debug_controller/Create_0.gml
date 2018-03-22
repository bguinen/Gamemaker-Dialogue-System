/*
   DEBUG CONTROLLER
 you can completely delete this if you have your own method of debugging
 
****IF YOU DO DELETE THIS ENSURE YOU HAVE SOMETHING LIKE THIS ELSEWHERE IN YOUR CODE ****
****IF YOU DON'T DESTROY YOUR DATA STRUCTURES WHEN YOUR DONE, YOUR GONNA HAVE A BAD TIME!
*****************************************************************************************	
			 if (keyboard_check_pressed(vk_escape)){
				ds_map_destroy(global.datamap);
				game_end();
			}
 *****************************************************************************************
 
 uses macros initialized during room create from global_vars() script
 Macro numbers: "one - fifteen" for writing text on GUI at sequencial y coords. 
  
*/
draw_set_font(fn_default);
cam = camera_get_view_x(view_camera[0]);
