/// @description Update a specificed input objects controls
/// @param Object*

if (argument_count == 0)
	var obj = id;
else if (argument_count == 1)
	var obj = argument[0];

obj.left_key	= input_device_get_key(obj.input_device, "left");
obj.right_key	= input_device_get_key(obj.input_device, "right");
obj.up_key		= input_device_get_key(obj.input_device, "up");
obj.down_key	= input_device_get_key(obj.input_device, "down");

// Check to see if object is in input_objects list
if (!ds_list_find_value(global.input_objects, ds_list_find_index(global.input_objects, obj)))
	ds_list_add(global.input_objects, obj);