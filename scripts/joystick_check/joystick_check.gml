/// @param key

var key = argument0;

if (string_contains(key, "gp_axislh")) {
	if (string_contains(key, ">"))
		return (gamepad_axis_value(input_device, gp_axislh) > 0);
	else if (string_contains(key, "<"))
		return (gamepad_axis_value(input_device, gp_axislh) < 0);
}
else if (string_contains(key, "gp_axislv")) {
	if (string_contains(key, ">"))
		return (gamepad_axis_value(input_device, gp_axislv) > 0);
	else if (string_contains(key, "<"))
		return (gamepad_axis_value(input_device, gp_axislv) < 0);
}
else if (string_contains(key, "gp_axisrh")) {
	if (string_contains(key, ">"))
		return (gamepad_axis_value(input_device, gp_axisrh) > 0);
	else if (string_contains(key, "<"))
		return (gamepad_axis_value(input_device, gp_axisrh) < 0);
}
else if (string_contains(key, "gp_axisrv")) {
	if (string_contains(key, ">"))
		return (gamepad_axis_value(input_device, gp_axisrv) > 0);
	else if (string_contains(key, "<"))
		return (gamepad_axis_value(input_device, gp_axisrv) < 0);
}