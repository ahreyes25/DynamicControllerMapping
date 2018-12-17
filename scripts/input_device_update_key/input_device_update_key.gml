/// @description -- input_device_update_key(input_device_name, control, key)
//	Parameters:	--- input_device_name : string | control : string | key : string
//	Returns: ------ boolean : if key was sucessfully updated or not

//	input_device_update_key looks for the given input device, and updates the control with the
//	specified key.
//
//	e.g. :	before -- input_device_get_key("gamepad_yellow", "move_left") = gp_padl
//			update -- input_device_update_key("gamepad_yellow", "move_left", ord("A"));
//			after --- input_device_get_key("gamepad_yellow", "move_left") = ord("A")
//--------------------------------------------------------------------------------------------------
/// @param input_device_name
/// @param control
/// @param key
//--------------------------------------------------------------------------------------------------

var input_device_name	= argument0;
var control				= argument1;
var key					= argument2;

//	Return false if global.input_devices does not exist
if (!ds_exists(global.input_devices, ds_type_map)) {
	show_debug_message("\"global.input_devices\" list does not exist. Cannot update key.");
	return false;
}
	
//	Return false if our input_device does not exist in the global.input_devices map
if (!ds_map_find_value(global.input_devices, input_device_name)) {
	show_debug_message("\"" + string(input_device_name) + "\" does not exist. Instantiate device using \"input_device_init()\"");
	return false;
}

// Replace key for the control inside the input_device's control_map
var input_device_control_map = ds_map_find_value(global.input_devices, input_device_name);
ds_map_replace(input_device_control_map, control, key);

show_debug_message("Successfully updated \"" + string(control) + "\" for \"" + string(input_device_name) + "\"");
return true;