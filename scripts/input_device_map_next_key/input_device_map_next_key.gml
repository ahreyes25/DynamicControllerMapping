/// @param input_device
/// @param control

var input_device = argument0;
var control = argument1;

if (gamepad_axis_value(gamepad_get_port(input_device), gp_axislh) == 0 &&
	gamepad_axis_value(gamepad_get_port(input_device), gp_axislv) == 0 &&
	gamepad_axis_value(gamepad_get_port(input_device), gp_axisrh) == 0 &&
	gamepad_axis_value(gamepad_get_port(input_device), gp_axisrv) == 0) {
	
	// Update with gamepad buttons
	if (gamepad_check_anykey(gamepad_get_port(input_device))) {
		input_device_update_key(input_device, control, gamepad_anykey(gamepad_get_port(input_device)));
	}
	// Update with keyboard keys
	else if (keyboard_check_pressed(vk_anykey) && !keyboard_check(global.map_key)) {
		input_device_update_key(input_device, control, keyboard_key);
	}
}
// Update with joystick
else {
	if (gamepad_axis_value(gamepad_get_port(input_device), gp_axislh) != 0) {
		if (gamepad_axis_value(gamepad_get_port(input_device), gp_axislh) > 0)
			input_device_update_key(input_device, control, "gp_axislh > 0");	
		else if (gamepad_axis_value(gamepad_get_port(input_device), gp_axislh) < 0)
			input_device_update_key(input_device, control, "gp_axislh < 0");
	}
	else if (gamepad_axis_value(gamepad_get_port(input_device), gp_axislv) != 0) {
		if (gamepad_axis_value(gamepad_get_port(input_device), gp_axislv) > 0)
			input_device_update_key(input_device, control, "gp_axislv > 0");	
		else if (gamepad_axis_value(gamepad_get_port(input_device), gp_axislv) < 0)
			input_device_update_key(input_device, control, "gp_axislv < 0");
	}
	else if (gamepad_axis_value(gamepad_get_port(input_device), gp_axisrh) != 0) {
		if (gamepad_axis_value(gamepad_get_port(input_device), gp_axisrh) > 0)
			input_device_update_key(input_device, control, "gp_axisrh > 0");	
		else if (gamepad_axis_value(gamepad_get_port(input_device), gp_axisrh) < 0)
			input_device_update_key(input_device, control, "gp_axisrh < 0");
	}
	else if (gamepad_axis_value(gamepad_get_port(input_device), gp_axisrv) != 0) {
		if (gamepad_axis_value(gamepad_get_port(input_device), gp_axisrv) > 0)
			input_device_update_key(input_device, control, "gp_axisrv > 0");	
		else if (gamepad_axis_value(gamepad_get_port(input_device), gp_axisrv) < 0)
			input_device_update_key(input_device, control, "gp_axisrv < 0");
	}
}