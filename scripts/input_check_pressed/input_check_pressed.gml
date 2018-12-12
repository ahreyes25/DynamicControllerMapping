/// @param key

if (!is_string(argument0))
	return (keyboard_check_pressed(argument0) || gamepad_button_check_pressed(gamepad_get_port(input_device), argument0));