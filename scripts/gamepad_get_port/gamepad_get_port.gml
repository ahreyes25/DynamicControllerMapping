/// @description -- gamepad_get_port();
//	Parameters:	--- input_device_name | string
//	Returns: ------ port : integer
//
//	This script looks through our list of gamepads for an input_device with the matching name that we
//	provide. The index that this input_device sits in the list is its port. However, if we have switched
//	to a different input_device that is not a gamepad, this will look at the most recent gamepad port
//	stored in oPlayer.port as reference. This can be circumvented by updating the port for the player
//	whenever the input_device is updated or changed.
//--------------------------------------------------------------------------------------------------
/// @param input_device_name
//--------------------------------------------------------------------------------------------------

//	Iterate through all gamepads and look for matching name
for (var i = 0; i < ds_list_size(global.gamepad_ports); i++) {
	if (ds_list_find_value(global.gamepad_ports, i) == argument0) {
		return i;
	}
}

//	If input_device is not in gamepad list, then get the most recent port stored in the object
for (var i = 0; i < ds_list_size(global.input_objects); i++) {
	var o = ds_list_find_value(global.input_objects, i);
	if (o.input_device == argument0)
		return o.port;
}
return -1;