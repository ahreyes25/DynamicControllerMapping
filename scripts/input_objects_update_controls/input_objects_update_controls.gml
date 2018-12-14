/// @description Update every input objects controls

if (!ds_exists(global.input_objects, ds_type_list))
	return;
	
for (var i = 0; i < ds_list_size(global.input_objects); i++) {
	var obj = ds_list_find_value(global.input_objects, i);
	obj.left_key	= input_device_get_key(obj.input_device, "left");
	obj.right_key	= input_device_get_key(obj.input_device, "right");
	obj.up_key		= input_device_get_key(obj.input_device, "up");
	obj.down_key	= input_device_get_key(obj.input_device, "down");
}