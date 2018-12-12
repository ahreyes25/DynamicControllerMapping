/// @param object*
/// @param input_device*

if (argument_count >= 1) {
	if (!is_string(argument[0]))
		var obj = argument[0];
	else {
		var obj = id;
		obj.input_device = argument[0];
	}
}
else {
	var obj = id;
}

if (argument_count == 2) {
	obj.input_device = argument[1];
}

if (!ds_exists(global.input_objects, ds_type_list)) 
	global.input_objects = ds_list_create();

// Add ourself to the list of objects that take an input
if (!ds_list_find_value(global.input_objects, ds_list_find_index(global.input_objects, obj)))
	ds_list_add(global.input_objects, obj);
	
// Set Deadzone
gamepad_set_deadzone(id.player - 1);