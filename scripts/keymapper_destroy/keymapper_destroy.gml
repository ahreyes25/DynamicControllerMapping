/// @description -- keymapper_destroy()
//	Parameters:	--- none
//	Returns: ------ none

//	keymapper_init creates one ds_map and three ds_lists which are used
//	to manage our keymapper. Make sure to call keymapper_init() before using any of
//	the other keymapper scripts, and to call keymapper_destroy() when you are done
//	using the keymapper so that all of the data structures are removed.
//--------------------------------------------------------------------------------------------------

if (ds_exists(global.input_devices, ds_type_map))
	ds_map_destroy(global.input_devices);
	
if (ds_exists(global.controls, ds_type_list))
	ds_list_destroy(global.controls);
	
if (ds_exists(global.input_objects, ds_type_list))
	ds_list_destroy(global.input_objects);
	
if (ds_exists(global.gamepad_ports, ds_type_list))
	ds_list_destroy(global.gamepad_ports);
	
show_debug_message("Keymapper destroyed.");