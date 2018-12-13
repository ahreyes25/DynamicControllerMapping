/// @description Check for gamepad or keyboard button 
/// @param key

if (!is_string(argument0))
	return (keyboard_check(argument0) || gamepad_button_check(gamepad_get_port(input_device), argument0));