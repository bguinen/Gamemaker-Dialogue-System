///@description saves json files
///@param json_data
///@param filename

var data = argument0;
var name =  argument1;
var file;


data = json_encode(data);
file = file_text_open_write(working_directory + @"\" +name + ".json" );
if (!file) {
	show_debug_message("File could not be created");
} else {
	file_text_write_string(file, data);
}
file_text_close(file);
