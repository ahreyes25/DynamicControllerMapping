if (!oGameController.draw_controls) {
	
	if (input_check(left_key) || joystick_check(left_key))
		x -= 3;
	if (input_check(right_key) || joystick_check(right_key))
		x += 3;	
	if (input_check(up_key) || joystick_check(up_key))
		y -= 3;	
	if (input_check(down_key) || joystick_check(down_key))
		y += 3;	
}

if (!global.mapping_controls) {
	if (keyboard_check_pressed(ord("Q"))) {
		if (global.current_device == "gamepad_blue") {
			input_object_update_device(id, "keyboard_0");
			input_device_set_current("keyboard_0");
			input_object_update_controls();
		}
		else {
			input_object_update_device(id, "gamepad_blue");
			input_device_set_current("gamepad_blue");
			input_object_update_controls();
		}
	}
}
