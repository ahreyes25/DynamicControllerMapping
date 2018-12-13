/// @description Add a new key to the specified input_device
/// @param input_device_name
/// @param control
/// @param key

var input_device_name = argument0;
var control = argument1;
var key = argument2;

// Check for input_devices map
if (!ds_exists(global.input_devices, ds_type_map)) {
	show_debug_message("\"global.input_devices\" list does not exist. Cannot create new key.");
	return false;
}
	
// Check that our input device exists
if (!ds_map_find_value(global.input_devices, input_device_name)) {
	show_debug_message("\"" + string(input_device_name) + "\" does not exist. Instantiate device using \"input_device_init()\"");
	return false;
}

// Add key to device map
var input_device = ds_map_find_value(global.input_devices, input_device_name);
ds_map_add(input_device, control, key);

// Create controls list
if (!ds_exists(global.controls, ds_type_list))
	global.controls = ds_list_create();	

// Add control to list if it is not in it already
if (ds_list_find_index(global.controls, control) == -1) {
	ds_list_add(global.controls, control);
	global.number_of_controls++;
}
	
show_debug_message("Successfully assigned \"" + string(control) + "\" to \"" + string(input_device_name) + "\"");
return true;