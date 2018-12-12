/// @param gamepad_name

// Iterate through all objects and look for matching name
for (var i = 0; i < ds_list_size(global.input_objects); i++) {
	var p = ds_list_find_value(global.input_objects, i);	
	if (p.input_device == argument0) {
		return p.player - 1;
	}
}
return -1;