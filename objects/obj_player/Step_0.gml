/*move_up = keyboard_check(vk_up);
move_down = keyboard_check(vk_down);
move_right = keyboard_check(vk_right);
move_left = keyboard_check(vk_left);

x += (move_right - move_left) * spd;
y += (move_down - move_up) * spd;
*/
if(!canmove)speed = 0;//cant move during conversation
if (distance_to_object(obj_npc_controller) < 40) {
	meeting = true;
} else {
	meeting = false;
}
//if(!global.respondEvent){
if point_distance(x, y, target_x, target_y) < spd
	speed = 0;

if (target_x > x && speed > 0) {
sprite_index = HUMANBASE1;
image_xscale = 1;
} else if (target_x < x && speed > 0) {
sprite_index = HUMANBASE1;
image_xscale = -1;
} else
sprite_index = HUMANBASE11; 
