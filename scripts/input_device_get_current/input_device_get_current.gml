/// @description -- input_device_get_current()
//	Parameters:	--- none
//	Returns: ------ global.current_device : string
//
//	input_device_get_current returns the device that is ready for mapping. As mentioned in the doc
//	written in keymapper_init(), this library only supports one device being mapped at a time, so
//	here we have a few scripts that will get and set which input device the input system is supposed
//	to modify when we call input_device_map_next_key()
//--------------------------------------------------------------------------------------------------

//	If there is only one input device created, return that one
if (ds_map_size(global.input_devices) == 1)
	return ds_map_find_first(global.input_devices);
//	If there are no input devices defined, return an empty string
else if (ds_map_size(global.input_devices) == 0)
	return "";
//	Otherwise, return whatever global.current_device is holding
else
	return global.current_device;
	