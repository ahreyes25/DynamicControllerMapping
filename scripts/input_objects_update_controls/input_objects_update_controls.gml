if (!ds_exists(global.input_objects, ds_type_list))
	return;
	
for (var i = 0; i < ds_list_size(global.input_objects); i++) {
	var _obj = ds_list_find_value(global.input_objects, i);
	_obj.jump_key	= input_device_get_key(_obj.input_device, "jump");
	_obj.left_key	= input_device_get_key(_obj.input_device, "left");
	_obj.right_key	= input_device_get_key(_obj.input_device, "right");
	_obj.up_key		= input_device_get_key(_obj.input_device, "up");
	_obj.down_key	= input_device_get_key(_obj.input_device, "down");
}