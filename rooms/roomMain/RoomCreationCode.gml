/*
Creates directory for "working_directory" to access.
This is where the dialog_load() script will search for character json files
All npcName.json files should be copied into the created directory 

*/
if !directory_exists(game_project_name)
	directory_create(game_project_name);
//Initializes global vars and enables debug overlay
global_vars();
show_debug_overlay(true);