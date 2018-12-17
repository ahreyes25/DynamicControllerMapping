/// @description -- input_object_init(input_object*, input_device_name*);
//	Parameters:	--- input_object : instance_id | input_device_name : string
//	Returns: ------ none
//
//	input_object_init is called in the create event of any game objects that use this input system.
//	We need to specify which objects are going to listen to the input system, and in order to do this,
//	we simply call input_object_init();
//
//	This function has two optional parameters -- object and input_device
//	This function can be called four different ways:
//	1.	input_object_init();
//			-	this will instantiate the object that calls this method without specifying an input_device
//				that is assigned to this object.
//	2.	input_object_init(oPlayer2);
//			-	this will instantiate the object specified in the parameter. This allows you to instantiate
//				an input object from outside the object itself. This will NOT assign an input_device to the
//				instantiated object.
//	3.	input_object_init("gamepad_blue");
//			-	this will instantiated the object that calls this method, but will assign an input_device to it.
//				That means whatever input_device we pass in as a variable will get stored into objSelf.input_device;
//	4.	input_object_init(objPlayer, "keyboard_secondary");
//			-	this will instantiate the object that we specify in the parameters, which allows you to
//				instantiate objects from outside of the object itself. In addition, it also assigns an
//				input_device to the the object that is specified.
//--------------------------------------------------------------------------------------------------
/// @param input_object*
/// @param input_device*
//--------------------------------------------------------------------------------------------------

//	Check for which parameters have been entered
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

//	Create input_objects list if it does not exist 
if (!ds_exists(global.input_objects, ds_type_list)) 
	global.input_objects = ds_list_create();

// Add ourself to the list of input_objects that take an input
if (!ds_list_find_value(global.input_objects, ds_list_find_index(global.input_objects, obj)))
	ds_list_add(global.input_objects, obj);

// Set port and deadzone for the input_device if it is a controller/gamepad
if (is_controller(obj.input_device)) {
	obj.port = gamepad_get_port(obj.input_device);
	gamepad_set_axis_deadzone(gamepad_get_port(obj.input_device), 0.7);
}
else
	obj.port = -1;

show_debug_message("Input object: \"" + string(obj.object_index) + "\" initialized with input device: \"" + string(obj.input_device) + "\".");