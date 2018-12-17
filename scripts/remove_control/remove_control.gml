/// @description -- remove_control(control);
//	Parameters:	--- control | string
//	Returns: ------ true/false if the control was sucessfully removed or not
//
///	If you want to remove a control from the input system, this is the script you want to use.
//	Since input_device_new_key adds a control to input system if that does not exist, then we want
//	to have some sort of option for removing a control if that control no longer becomes relevant
//	to the game. 
//--------------------------------------------------------------------------------------------------
/// @param control
//--------------------------------------------------------------------------------------------------

var control = argument0;

//	Return false if our global.controls list does not exist
if (!ds_exists(global.controls, ds_type_list))
	return false;
	
//	Loop through our global.controls list for the control with the matching name and remove it
for (var i = 0; i < ds_list_size(global.controls); i++) {
	if (ds_list_find_value(global.controls, i) == control) {
		ds_list_delete(global.controls, i);	
	}
}
return true;