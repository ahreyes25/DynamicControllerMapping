/// @description Update the input device for the specified object
/// @param object*
/// @param device_name

if (is_string(argument[0])) {
	var device_name = argument[0];
	var obj = id;
}
else {
	var obj = argument[0];
	var device_name = argument[1];
}

obj.input_device = device_name;

show_debug_message("Input object: \"" + string(obj.object_index) + "\" input device updated to: \"" + string(device_name) + "\".");