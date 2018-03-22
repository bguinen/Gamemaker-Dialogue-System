///@description Initializes global variables 
//Text speed
global.textSpeed = .5;
//distance between player and NPC where dialog can be initiated 
global.interactionDistance = 40;

//**Dialog Maps / Lists**
global.datamap = ds_map_create(); //Current dialog tree "NPC_name.json / .dat / .bin"
global.dlist = ds_list_create(); //array holding dialog string text and any other variables
global.rlist = ds_list_create(); //array holding response strings and any other variables
global.responseNext = ""; //empty string to hold pointer name to response map
global.dialogNext = ""; //empty string to hold pointer name to NPC dialog map

//interaction flags
global.playerResponseEvent = false; //
global.npcDialogEvent = false;
global.playerChoiceRequired = false;
//string for making sure player can only dialog with one npc object at a time
global.currObjectName = "null";

//debug macros, y coord locations for text :SEE DEBUG CONTROLLER
#macro	one		15
#macro	two		30
#macro	three	45
#macro	four	60
#macro	five	75
#macro	six		90
#macro	seven	105
#macro	eight	120
#macro	nine	135
#macro	ten		150
#macro  eleven	165
#macro	twelve	180
#macro thirteen	195
#macro fourteen	210
#macro fifteen	225
