/// @description -- input_objects_update_control();
//	Parameters:	--- none
//	Returns: ------ true/false if object controls were updated sucessfully
//
//	This script updates ALL of the input_object's input variables. For this library we store all
//	of the inputs into boolean variables. 
//
//	e.g. :	var left_key = keyboard_check(ord("A"));		// true/false if key is down
//			var up_key = gamepad_check_button(gp_face1);	// true/false is button is down
//
//	This is done to make the input system dynamic and read only one variable, but respond to all of
//	different possible key mappings it can have.
//--------------------------------------------------------------------------------------------------

//	Exit if our input_objects list does not exist
if (!ds_exists(global.input_objects, ds_type_list))
	return false;
	
//	Update input keys for every input_object in our global.input_objects list
for (var i = 0; i < ds_list_size(global.input_objects); i++) {
	var obj = ds_list_find_value(global.input_objects, i);
	if (instance_exists(obj))
		input_object_inputs(obj);
}
return true;