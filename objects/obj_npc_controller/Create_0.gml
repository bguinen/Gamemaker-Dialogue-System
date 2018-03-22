objName = object_get_name(object_index);
/// @description Initiate NPC parent 
// Basic NPC variables, each npc should have specific myName on create
myTextbox = noone;
canTalk = false;
havemet = false; 

// Everything below should be changed in create event of specif npc objects
mySpriteIdle = no_sprite;
mySpriteTalking = no_sprite;

myName = "example" //name of NPC. used to look up dialog data file 
entry = "d_0_0";  //default first dialog. first thing npc will say when player interacts with them
				 //can be changed and saved to create different openning dialog.
				  
/*
can change entry if player has talked to npc before.
I suggest using .ini file functions to read / write variable data
so the game can "remember" npc variables such as "havemet"

Example:
ini_open( 'npc_name.ini' );

open   -> havemet = ini_read_real('npc_info', 'Havemet', 0 );
				- or -
save   -> ini_write_real('npc_info', 'Havemet', 'havemet' );

always -> ini_close();
*/

