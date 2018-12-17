/// @description -- input_device_map_next_key(input_device, control);
//	Parameters:	--- input_device : string | control : string
//	Returns: ------ none
//
//	input_device_map_next_key is called when global.mapping_control is equal to true, meaning that 
//	our input system is ready to read the next input from the keyboard or gamepad, and store that
//	key value as the new key for the specified control
//
//	e.g. : input_device_map_next_key("wireless_gamepad", "attack");
//
//	This can be called on a specific frame, or this can be called inside the step event for it to 
//	listen to the next input. If you use this script inside a single frame event, then you would be
//	able to remove the global.mapping_control flag.
//
//	All that this script does is simpyly call input_device_update_key(input_device, key, control)
//--------------------------------------------------------------------------------------------------
/// @param input_device
/// @param control
//--------------------------------------------------------------------------------------------------

var input_device	= argument0;
var control			= argument1;

// Update with joystick
if (gamepad_axis_value(gamepad_get_port(input_device), gp_axislh) != 0 ||
	gamepad_axis_value(gamepad_get_port(input_device), gp_axislv) != 0 ||
	gamepad_axis_value(gamepad_get_port(input_device), gp_axisrh) != 0 ||
	gamepad_axis_value(gamepad_get_port(input_device), gp_axisrv) != 0) {
	
	if (gamepad_axis_value(gamepad_get_port(input_device), gp_axislh) > 0)
		input_device_update_key(input_device, control, "gp_axislh > 0");	
	if (gamepad_axis_value(gamepad_get_port(input_device), gp_axislh) < 0)
		input_device_update_key(input_device, control, "gp_axislh < 0");

	if (gamepad_axis_value(gamepad_get_port(input_device), gp_axislv) > 0)
		input_device_update_key(input_device, control, "gp_axislv > 0");	
	if (gamepad_axis_value(gamepad_get_port(input_device), gp_axislv) < 0)
		input_device_update_key(input_device, control, "gp_axislv < 0");
	
	if (gamepad_axis_value(gamepad_get_port(input_device), gp_axisrh) > 0)
		input_device_update_key(input_device, control, "gp_axisrh > 0");	
	if (gamepad_axis_value(gamepad_get_port(input_device), gp_axisrh) < 0)
		input_device_update_key(input_device, control, "gp_axisrh < 0");

	if (gamepad_axis_value(gamepad_get_port(input_device), gp_axisrv) > 0)
		input_device_update_key(input_device, control, "gp_axisrv > 0");	
	if (gamepad_axis_value(gamepad_get_port(input_device), gp_axisrv) < 0)
		input_device_update_key(input_device, control, "gp_axisrv < 0");
}
else {	
	// Update with gamepad buttons
	if (gamepad_check_anykey(gamepad_get_port(input_device)))
		input_device_update_key(input_device, control, gamepad_anykey(gamepad_get_port(input_device)));
	// Update with keyboard keys
	else if (keyboard_check_pressed(vk_anykey) && !keyboard_check(oGameController.map_key))
		input_device_update_key(input_device, control, keyboard_key);
}