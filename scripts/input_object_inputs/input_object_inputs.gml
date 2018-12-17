/// @description -- input_object_inputs(input_object);
//	Parameters:	--- input_object : object_instance.id
//	Returns: ------ input booleans : array of booleans
//
//	This script updates the specified input_object's input variables. For this library we store all
//	of the inputs into boolean variables. 
//
//	e.g. :	var left_key = keyboard_check(ord("A"));		// true/false if key is down
//			var up_key = gamepad_check_button(gp_face1);	// true/false if button is down
//
//	This is done to make the input system dynamic and read only one variable, but respond to all of
//	different possible key mappings it can have. These input variables are then returned in an array
//	for access later if desired, but our current implementation of this input system does not use
//	the array of input booleans for anything.
//--------------------------------------------------------------------------------------------------
/// @param input_object
//--------------------------------------------------------------------------------------------------

var obj = argument0;

if (instance_exists(obj)) {
	obj.left_key	= input_device_get_key(obj.input_device, "left");
	obj.right_key	= input_device_get_key(obj.input_device, "right");
	obj.up_key		= input_device_get_key(obj.input_device, "up");
	obj.down_key	= input_device_get_key(obj.input_device, "down");

	return ([
		obj.left_key,
		obj.right_key,
		obj.up_key,
		obj.down_key,
	])
}
else
	return[];