if (!oGame.draw_controls) {
	
	if (input_check_pressed(jump_key))
		y -= 3;
	if (input_check(left_key) || joystick_check(left_key))
		x -= 3;
	if (input_check(right_key) || joystick_check(right_key))
		x += 3;	
	if (input_check(up_key) || joystick_check(up_key))
		y -= 3;	
	if (input_check(down_key) || joystick_check(down_key))
		y += 3;	
}

/*
if (!global.mapping_controls) {
	if (keyboard_check_pressed(ord("Q"))) {
		if (input_device == "gamepad0") {
			input_object_update_device(id, "keyboard1");
			input_device_set_current("keyboard1");
			input_object_update_controls();
		}
		else {
			input_object_update_device(id, "gamepad0");
			input_device_set_current("gamepad0");
			input_object_update_controls();
		}
	}
}
*/