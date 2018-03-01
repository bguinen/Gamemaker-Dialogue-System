target_x = mouse_x;
target_y = mouse_y;
//perform path detection & move
if point_distance(x, y, target_x, target_y) > spd
   {
	move_towards_point(target_x, target_y, spd);
   }