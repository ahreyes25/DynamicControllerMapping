navigate_menu();
	
// Map New Control
if (global.mapping_controls) {
	var current_control = ds_list_find_value(global.controls, control_index);
	
	input_device_map_next_key(global.current_device, current_control);
	input_objects_update_controls();
}	