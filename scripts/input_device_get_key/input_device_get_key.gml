/// @description -- input_device_get_key(input_device_name, control)
//	Parameters:	--- input_device_name : string | control : string
//	Returns: ------ key : string

//	input_device_get_key gets the corresponding key value tied to a control of a given input_device.
//	This will be used whenever we want to know what the current key value is for a specific input_device.
//
//	e.g. : "what is the current key for jump on the gamepad_blue?" --> gp_shoulderll
//	input_device_get_key("gamepad_blue", "jump") = gp_shoulderll
//--------------------------------------------------------------------------------------------------
/// @param input_device_name
/// @param control
//--------------------------------------------------------------------------------------------------

var input_device_name	= argument0;
var control				= argument1;

//	Return noone if global.input_devices map does not exist
if (!ds_exists(global.input_devices, ds_type_map)) {
	show_debug_message("\"global.input_devices\" list does not exist. Cannot get key.");
	return noone;
}
	
//	Return noone if our input_device does not exist inside of the global.input_devices map
if (!ds_map_find_value(global.input_devices, input_device_name)) {
	show_debug_message("\"" + string(input_device_name) + "\" does not exist. Instantiate device using \"input_device_init()\"");
	return noone;
}

// Return the key value assigned to the control of the specified input_device
var input_device_control_map = ds_map_find_value(global.input_devices, input_device_name);
return ds_map_find_value(input_device_control_map, control);

show_debug_message("Successfully returned \"" + string(control) + "\" from \"" + string(input_device_name) + "\"");