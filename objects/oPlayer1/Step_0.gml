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