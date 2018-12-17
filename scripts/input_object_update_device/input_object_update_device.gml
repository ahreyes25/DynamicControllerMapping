/// @description -- input_object_update_device(input_object*, input_device_name);
//	Parameters:	--- input_object : object_instance.id | device_name : string
//	Returns: ------ true/false : if input device was update sucessfully or not
//
//	This script updates the specified input_object's input_device. Each input_object has an input_device
//	assigned to it, that it is listening for inputs from, and if we want to change that input_device,
//	we can use this script for that.
//
//	This script only requires 1 parameter: the new input_device's name that we are sending to the oject.
//	if we do not send an object id into this script, then it will default to the object that called 
//	this script; however, by providing an instance_id, we can specify which object to update their 
//	input_device.
//--------------------------------------------------------------------------------------------------
/// @param input_object*
/// @param input_device_name
//--------------------------------------------------------------------------------------------------

//	Assign proper parameters to variables based off parameter input
if (is_string(argument[0])) {
	var input_device_name = argument[0];
	var obj = id;
}
else {
	var obj = argument[0];
	var input_device_name = argument[1];
}

// Update input_device
if (instance_exists(obj)) {
	obj.input_device = input_device_name;
	show_debug_message("Input object: \"" + string(obj.object_index) + "\" input device updated to: \"" + string(input_device_name) + "\".");
	return true;
}

show_debug_message("Input object: \"" + string(obj.object_index) + "\" could not be updated.");
return false;