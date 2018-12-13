global.input_devices	= ds_map_create();
global.controls			= ds_list_create();
global.input_objects	= ds_list_create();
global.gamepad_ports		= ds_list_create();

global.number_of_controls = 0;
global.current_device = "";
global.mapping_controls	= false;
global.map_key = vk_shift;

show_debug_message("Keymapper initialized");