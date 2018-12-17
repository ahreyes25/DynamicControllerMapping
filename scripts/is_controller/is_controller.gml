/// @description -- is_controller(input_device_name);
//	Parameters:	--- input_device_name | string
//	Returns: ------ true/false if the input_device is classified as a controller or not
//
// This just checks for the following strings to be substrings in the given name.
// If you want your input_device to be classified as a controller/gamepad make sure to
// include pad, game, or control as a substring of your input device name... 
// e.g. : "controller_blue", "gamepad_5", "wifi_controller"
//--------------------------------------------------------------------------------------------------
/// @param input_device_name
//--------------------------------------------------------------------------------------------------

var input_device_name = argument0;

return	(string_contains(input_device_name, "pad")	|| 
		 string_contains(input_device_name, "game")	|| 
		 string_contains(input_device_name, "control"));