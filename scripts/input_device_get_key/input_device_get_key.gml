/// @param input_device_name
/// @param control

var input_device_name = argument0;
var control = argument1;

// Check for input_devices map
if (!ds_exists(global.input_devices, ds_type_map)) {
	show_debug_message("\"global.input_devices\" list does not exist. Cannot get key.");
	return noone;
}
	
// Check that our input device exists 
if (!ds_map_find_value(global.input_devices, input_device_name)) {
	show_debug_message("\"" + string(input_device_name) + "\" does not exist. Instantiate device using \"input_device_init()\"");
	return noone;
}

// Return control value
var input_device = ds_map_find_value(global.input_devices, input_device_name);
return ds_map_find_value(input_device, control);

show_debug_message("Successfully returned \"" + string(control) + "\" from \"" + string(input_device_name) + "\"");