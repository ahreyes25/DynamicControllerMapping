/// @description -- gamepad_set_port(input_object*, port);
//	Parameters:	--- input_object : object_instance_id | port : integer
//	Returns: ------ none
//
//	This script sets the port for a given object. If no object is defined, then this will set the port
//	of the object that calls this script.
//--------------------------------------------------------------------------------------------------
/// @param input_object*
/// @param port
//--------------------------------------------------------------------------------------------------

if (argument_count > 1) {
	var obj = argument[0];
	var p = argument[1];
	
}
else if (argument_count == 1) {
	var obj = id;	
	var p = argument[0];
}

//	Set object's port variable
obj.port = p;