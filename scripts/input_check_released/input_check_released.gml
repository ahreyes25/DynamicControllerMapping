/// @param key

if (!is_string(argument0))
	return (keyboard_check_released(argument0) || gamepad_button_check_released(gamepad_get_port(input_device), argument0));