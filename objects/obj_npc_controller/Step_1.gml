/// @desc checks distance to player
if (distance_to_object(obj_player) <= global.interactionDistance) {
	canInteract = true;
} else {
	canInteract = false;
}

