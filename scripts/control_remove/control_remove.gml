/// @param control

if (!ds_exists(global.controls, ds_type_list))
	return;
	
ds_list_delete(global.controls, ds_list_find_index(global.controls, argument0));
global.number_of_controls--;