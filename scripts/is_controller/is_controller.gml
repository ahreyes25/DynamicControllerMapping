/// @description Look at input device name and see if it is a controller
/// @param input_device_name

// This just checks for the following strings to be substrings in the given name.
// If you want your input_device to be classified as a controller/gamepad make sure to
// include pad, game, or control as a substring of your input device name... 
// e.g. : "controller_blue", "gamepad_5", "wifi_controller"

var input_device_name = argument0;

return	(string_contains(input_device_name, "pad")	|| 
		string_contains(input_device_name, "game")	|| 
		string_contains(input_device_name, "control"));