/// @param input_device_name
/// @param control
/// @param key

var input_device_name = argument0;
var control = argument1;
var key = argument2;

// Check for input_devices map
if (!ds_exists(global.input_devices, ds_type_map)) {
	show_debug_message("\"global.input_devices\" list does not exist. Cannot update key.");
	return false;
}
	
// Check that our input device is on our list of input devices
if (!ds_map_find_value(global.input_devices, input_device_name)) {
	show_debug_message("\"" + string(input_device_name) + "\" does not exist. Instantiate device using \"input_device_init()\"");
	return false;
}

// Add key to device map 
var input_device = ds_map_find_value(global.input_devices, input_device_name);
ds_map_replace(input_device, control, key);

show_debug_message("Successfully updated \"" + string(control) + "\" for \"" + string(input_device_name) + "\"");
return true;