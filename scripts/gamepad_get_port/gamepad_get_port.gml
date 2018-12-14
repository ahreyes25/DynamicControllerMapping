/// @description Get Gamepad Port based off the player it is assigned to
/// @param gamepad_name

// Iterate through all gamepads and look for matching name
for (var i = 0; i < ds_list_size(global.gamepad_ports); i++) {
	if (ds_list_find_value(global.gamepad_ports, i) == argument0) {
		return i;
	}
}

for (var i = 0; i < ds_list_size(global.input_objects); i++) {
	var o = ds_list_find_value(global.input_objects, i);
	if (o.input_device == argument0)
		return o.port;
}

return -1;