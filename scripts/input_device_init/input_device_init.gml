/// @description -- input_device_init(input_device_name, gamepad_deadzone*)
//	Parameters:	--- input_device_name : string | gamepad_deadzone* : float, 0-1
//	Returns: ------ input_device_name : string
//
//	input_device_init takes in a string value that represents the name of the input
//	device that we want to create. This can be anyname at all, but I recommend you 
//	name the device with something relevant to what the device actually is. Especially
//	when using gamepad/controller support, make sure to use one of the following words
//	in your input_device name: "game", "pad", "control".
//	e.g. : input_device = "wireless_green_controller";
//
//	Having one of these keywords as a substring of your input_device's name will tell
//	the system that this is indeed a controller, and to treat it as such. Ignoring this
//	will most likely cause some issues and result in unknown effects.
//
//--------------------------------------------------------------------------------------------------
/// @param input_device_name
/// @param gamepad_deadzone*
//--------------------------------------------------------------------------------------------------

var input_device_name = argument[0];

//	Create our input_devices list if it does not already exist
if (!ds_exists(global.input_devices, ds_type_map))
	global.input_devices = ds_map_create();
	
//	Add our input_device to global.input_devices map and create a map for it's controls
//	See doc_global.input_devices for more information
ds_map_add_map(global.input_devices, input_device_name, ds_map_create());

show_debug_message("input_device \"" + string(input_device_name) + "\" created.");

//	Create our global.gamepad_ports list if it does not already exist
if (!ds_exists(global.gamepad_ports, ds_type_list))
	global.gamepad_ports = ds_list_create();
	
//	Check if our input is a gamepad, and if so, then add it to our list of gamepad_ports
//	so that we can assign this controller port to a player later on.
if (is_controller(input_device_name))
	ds_list_add(global.gamepad_ports, input_device_name);

//	Return the name of the input device so it can be stored as a variable if desired
return argument0;