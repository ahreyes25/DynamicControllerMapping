/// @description -- input_device_remove_key(input_device_name, control)
//	Parameters:	--- input_device_name : string | control : string
//	Returns: ------ boolean : if key was sucessfully updated or not

//	input_device_remove_key looks for the given input device, and removes the key for that control.
//	This does not remove the control from the game, and keeps the control in the global.controls list
//	If you want to remove the control from global.controls list, then use the script remove_control(control);	
//
//	e.g. :	before -- input_device_get_key("usb_keyboard", "move_left") = vk_left
//			update -- input_device_remove_key("usb_keyboard", "move_left");
//			after --- input_device_get_key("usb_keyboard", "move_left") = noone
//--------------------------------------------------------------------------------------------------
/// @param input_device_name
/// @param control
//--------------------------------------------------------------------------------------------------

var input_device_name	= argument0;
var control				= argument1;

//	Return false if global.input_devices has not been instantiated
if (!ds_exists(global.input_devices, ds_type_map)) {
	show_debug_message("\"global.input_devices\" list does not exist. Cannot remove key.");
	return false;
}
	
//	Return alse if our input device does not exist inside the global.input_devices map
if (!ds_map_find_value(global.input_devices, input_device_name)) {
	show_debug_message("\"" + string(input_device_name) + "\" does not exist. Instantiate device using \"input_device_init()\"");
	return false;
}

// Remove key from input_device_control_map
var input_device_control_map = ds_map_find_value(global.input_devices, input_device_name);
ds_map_delete(input_device_control_map, control);

show_debug_message("Successfully removed \"" + string(control) + "\" from \"" + string(input_device_name) + "\"");
return true;