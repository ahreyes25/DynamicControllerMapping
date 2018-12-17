/// @description -- input_object_update_control(input_object*);
//	Parameters:	--- input_object : object_instance.id
//	Returns: ------ true/false : if object controls were updated sucessfully or not
//
//	This script updates the specified input_object's input variables. For this library we store all
//	of the inputs into boolean variables. 
//
//	e.g. :	var left_key = keyboard_check(ord("A"));		// true/false if key is down
//			var up_key = gamepad_check_button(gp_face1);	// true/false if button is down
//
//	This is done to make the input system dynamic and read only one variable, but respond to all of
//	different possible key mappings it can have.
//	
//	If no object id is passed into this method, then this script looks at the object that called it
//	and uses that as the default object.
//--------------------------------------------------------------------------------------------------
/// @param input_object*
//--------------------------------------------------------------------------------------------------

if (argument_count == 0)
	var obj = id;
else if (argument_count == 1)
	var obj = argument[0];

// Update input_object's input keys
input_object_inputs(obj);

// Check to see if object is in input_objects list
if (!ds_list_find_value(global.input_objects, ds_list_find_index(global.input_objects, obj)))
	ds_list_add(global.input_objects, obj);
	
return true;