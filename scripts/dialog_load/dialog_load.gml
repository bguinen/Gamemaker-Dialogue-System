///@description loads dialog trees for each object from a json file, returns ds_map of dialog
///@param filename
/*	
	**for json layout**
	**Reference example.json**

again, this method should not be used in any final productions.
the json format is great for debugging, creating, and testing this dialog system.

If you don't want players being able to edit and possibly break the dialog trees,
you should replace this functionality with:
global.datamap = ds_map_secure_load("NPC_Name_Dialog.bin")
*/
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
