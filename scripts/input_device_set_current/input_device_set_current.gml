/// @description Assign the global input_device 
/// @param device_name

if (!ds_exists(global.input_devices, ds_type_map))
	return;

// Make sure the input device exists before assigning
if (!ds_map_find_value(global.input_devices, argument0))
	return;

global.current_device = argument0;