/// @param gamepad_port
/// @param deadzone*

if (argument_count == 2)
	gamepad_set_axis_deadzone(argument[0], argument[1]);
else
	gamepad_set_axis_deadzone(argument[0], 0.7);