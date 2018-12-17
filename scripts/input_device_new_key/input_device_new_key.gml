/// @description -- input_device_new_key(input_device_name, control, key)
//	Parameters:	--- input_device_name : string | control : string | key : string
//	Returns: ------ boolean : if new key was successfully added to the input_device's map

//	input_device_new_key stores a new key value into the control_map for a specified input_device.
//	Given the input_device, we pull it's control map, and then insert a "control" -> "key" pair into
//	that map, for later use.
//--------------------------------------------------------------------------------------------------
/// @param input_device_name
/// @param control
/// @param key
//--------------------------------------------------------------------------------------------------

var input_device_name	= argument0;
var control				= argument1;
var key					= argument2;

//	Return false if the global.input_devices map has not been created 
if (!ds_exists(global.input_devices, ds_type_map)) {
	show_debug_message("\"global.input_devices\" list does not exist. Cannot create new key.");
	return false;
}
	
//	Return false if we cannot find the input_device_name inside the global.input_devices map
if (!ds_map_find_value(global.input_devices, input_device_name)) {
	show_debug_message("\"" + string(input_device_name) + "\" does not exist. Instantiate device using \"input_device_init()\"");
	return false;
}

//	Add new key to control slot inside the input_device_control_map
var input_device_control_map = ds_map_find_value(global.input_devices, input_device_name);
ds_map_add(input_device_control_map, control, key);

//	Create global.controls list if it does not exist
if (!ds_exists(global.controls, ds_type_list))
	global.controls = ds_list_create();	

// Add control to the global.controls list if this control is not already in it
if (ds_list_find_index(global.controls, control) == -1) {
	ds_list_add(global.controls, control);
}
	
show_debug_message("Successfully assigned \"" + string(control) + "\" to \"" + string(input_device_name) + "\"");
return true;