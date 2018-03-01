/*
	**global vars connected to characters should be updated in respective objects**
		-could have names of vars stored in choice lists [position 2] <-for later
	
	**for json layout**
	**Reference example.json**
	
	dialog_load()
	-Pass in name
	-open name.json
	-parse to ds_map
	-return ds_map
	
	
	dialog_select() / response_select()
	-Pass in datamap
	-return ds_list
	
	var dialogNext = list[|0];
	
	
	WHAT TO PASS IN
	-current ds_map dialog/responses
	-point to corresponding respons/next dialog options
	-
	RETURN or DIFF SCRIPT
	-array of current dialog (updates based on selection)
	
	global ds_maps/ds_lists variables in order to access current dialog
	
	OBJECTIVES
	-dialog_select ??copy ds_list[ 2+] to array?? 
	-
	- 
	
	
	obj_name = object_get_name()
	with (obj_npc_parent) {other.myName = "gary"}	

*/
///@description loads dialog for each object, returns ds_map of dialog
///@param filename
///

//replace functionality with
//global.datamap = ds_map_secure_load("data.bin")
var file = argument0;
file += ".json";

if(file_exists(file)){
	var jsonFile = file_text_open_read(file);
	var data = "";

	while (!file_text_eof(jsonFile))
	{
	    data += file_text_read_string(jsonFile);
	    file_text_readln(jsonFile);
	}
	file_text_close(jsonFile);

	var datamap = json_decode(data);
	return datamap;
} else { 
	show_message( file + " could not be found!");
	exit;
}
