/// @param Control

var control = argument0;

if (!ds_exists(global.controls, ds_type_list))
	return false;
	
for (var i = 0; i < ds_list_size(global.controls); i++) {
	if (ds_list_find_value(global.controls, i) == control) {
		ds_list_delete(global.controls, i);	
	}
}
return true;