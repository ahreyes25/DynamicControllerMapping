/// @description -- joystick_check();
//	Parameters:	--- key : string
//	Returns: ------ true/false
//
//	This script is kind of weird. Normally for gamepad and keyboard input we store a unicode value
//	and then pass that unicode value into a keyboard_check.... or a gamepad_check... and that returns
//	true or false if that button is down, pressed, or released. However, we cannot do this with the
//	joysticks because the joystick checks for it's value being between -1 and 1. Meaning that one 
//	joystick can be used for up to four different inputs, and that value is not a simple unicode value
//	that is checked, it is a boolean comparison betweek gamepad_axis being greater than or less than 0.
//	
//	This means, in order for us to check for joystick input, and store it inside our input_device map,
//	we need to find some way to store that "key", and that is through a string value.
//
//	e.g.	gamepad_axis_value(0, gp_axislh) > 0 
//			-	this now gets stored as "gp_axislh > 0" which we later parse in this script to see 
//				if it is true.
//
//	In order to update this value, we just update the string value to be some variation of...
//	-	"[gamepad_axis] [operator] [value]"
//		-	e.g. : "gp_axisrv <= 0.5"
//--------------------------------------------------------------------------------------------------
/// @param key
//--------------------------------------------------------------------------------------------------

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