
if(!canmove)speed = 0;//cant move during conversation

if point_distance(x, y, target_x, target_y) < spd
	speed = 0; //stop moving once player has reached click destination.

if (target_x > x && speed > 0) {
sprite_index = sp_player_walk;
image_xscale = 1;
} else if (target_x < x && speed > 0) {
sprite_index = sp_player_walk;
image_xscale = -1;
} else if (global.npcDialogEvent) 
	sprite_index = sp_player_talking;
else
	sprite_index = sp_player_idle; 
