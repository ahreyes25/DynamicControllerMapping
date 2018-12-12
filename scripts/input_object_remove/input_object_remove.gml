/// @param input_device*

// Remove ourself from the list of objects that take an input
if (ds_list_find_value(global.input_objects, ds_list_find_index(global.input_objects, id)))
	ds_list_add(global.input_objects, id);
	
if (argument_count == 1)
	input_device = argument[0];