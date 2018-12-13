/// @description Place in the destroy event of an input object
/// @param input_object

if (argument_count == 1)
	var obj = argument[0];
else
	var obj = id;

// Remove ourself from the list of objects that take an input
if (ds_list_find_value(global.input_objects, ds_list_find_index(global.input_objects, obj)))
	ds_list_delete(global.input_objects, ds_list_find_index(global.input_objects, obj));
	
show_debug_message("Input object: \"" + string(obj.object_index) + "\" destroyed.");