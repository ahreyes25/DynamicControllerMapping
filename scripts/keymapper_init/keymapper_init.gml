global.input_devices	= ds_map_create(); // device names, gamepad0, keyboard_main => string
global.controls			= ds_list_create(); // jump, attack, roll, move right => string
global.input_objects	= ds_list_create(); // id object_instances that use input system
global.gamepad_ports	= ds_list_create(); // gamepads that we want to listen for

global.number_of_controls = 0;
global.current_device = "";			// current device that we are changing the controls for
global.mapping_controls	= false;	// boolean flag
global.map_key = vk_shift;			// key that we are using to trigger the mapping_controls flag

show_debug_message("Keymapper initialized");