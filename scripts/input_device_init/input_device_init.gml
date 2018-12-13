/// @description Input device instantiator
/// @param input_device_name
/// @param gamepad_deadzone*

var input_device_name = argument[0];

if (!ds_exists(global.input_devices, ds_type_map))
	global.input_devices = ds_map_create();
	
ds_map_add_map(global.input_devices, input_device_name, ds_map_create());

show_debug_message("input_device \"" + string(input_device_name) + "\" created.");

// Add ourself to occupy a port
if (!ds_exists(global.gamepad_ports, ds_type_list))
	global.gamepad_ports = ds_list_create();
	
if (is_controller(input_device_name))
	ds_list_add(global.gamepad_ports, input_device_name);


return argument0;