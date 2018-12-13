/// @description Look at input device name and see if it is a controller
/// @param input_device_name
var input_device_name = argument0;

return	string_contains(input_device_name, "pad")		|| 
		string_contains(input_device_name, "game")		|| 
		string_contains(input_device_name, "controller"	||
		string_contains(input_device_name, "control"));