if (ds_map_size(global.input_devices) > 1) {
	return global.current_device;
}
else
	return ds_map_find_first(global.input_devices);