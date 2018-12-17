/// @description -- input_device_get_current()
//	Parameters:	--- input_device_name : string
//	Returns: ------ boolean : if global.current_device was updated sucessfully or not
//
//	input_device_set_current sets the device that is ready for mapping. As mentioned in the doc
//	written in keymapper_init(), this library only supports one device being mapped at a time, so
//	here we have a few scripts that will get and set which input device the input system is supposed
//	to modify when we call input_device_map_next_key()
//--------------------------------------------------------------------------------------------------
///	@param device_name
//--------------------------------------------------------------------------------------------------

if (!ds_exists(global.input_devices, ds_type_map))
	return false;

// Make sure the input device exists before assigning
if (!ds_map_find_value(global.input_devices, argument0))
	return false;

show_debug_message("global.input_device sucessfully set to \"" + string(argument0) + "\".");

global.current_device = argument0;
return true;