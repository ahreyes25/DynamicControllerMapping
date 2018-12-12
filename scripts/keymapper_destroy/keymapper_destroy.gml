if (ds_exists(global.input_devices, ds_type_map))
	ds_map_destroy(global.input_devices);
	
if (ds_exists(global.controls, ds_type_list))
	ds_list_destroy(global.controls);
	
if (ds_exists(global.input_objects, ds_type_list))
	ds_list_destroy(global.input_objects);
	
if (ds_exists(global.input_ports, ds_type_list))
	ds_list_destroy(global.input_ports);