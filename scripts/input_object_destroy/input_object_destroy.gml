/// @description -- input_object_destroy(object*);
//	Parameters:	--- input_object : object_instance.id
//	Returns: ------ none
//
//	input_object_destroyed destroys all the lists and maps associated to the input object that
//	we created in input_object_init(); This will usually be called in an object's Destroy Event,
//	but it can be called at any time in which the input_object is no longer going to be listening
//	to the input system.
//
//	This method can be called in 2 different ways:
//	1.	input_object_destroy();
//		-	this destroys the data structures associated to the input_object that calls this method
//	2.	input_object_destroy(input_object);
//		-	this destroys the data structures associated to input_object that is passed as a paremeter
//--------------------------------------------------------------------------------------------------
/// @param input_object*
//--------------------------------------------------------------------------------------------------

if (argument_count == 1)
	var obj = argument[0];
else
	var obj = id;

// Remove ourself from the list of objects that take an input
if (ds_list_find_value(global.input_objects, ds_list_find_index(global.input_objects, obj)))
	ds_list_delete(global.input_objects, ds_list_find_index(global.input_objects, obj));
	
show_debug_message("Input object: \"" + string(obj.object_index) + "\" destroyed.");