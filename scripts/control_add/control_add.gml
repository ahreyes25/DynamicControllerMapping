/// @param control

if (!ds_exists(global.controls, ds_type_list))
	global.controls = ds_list_create();

if (ds_list_find_index(global.controls, argument0) == -1) {
	ds_list_add(global.controls, argument0);
	global.number_of_controls++;
}