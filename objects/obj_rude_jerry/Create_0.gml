/// @desc Customize NPCS here
event_inherited();
mySpriteIdle = RJ_idle;
mySpriteTalking = RJ_talking;
myName = "Rude Jerry" //name of NPC. used to look up dialog data file 
entry = "d_0_0"; //Check out Rude Jerry's json to see how hes such a D***
/* In some other instance you can have something like:

	if (questCompleted = true)
		obj_rude_jerry.entry = "d_0_1"