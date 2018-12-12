/// @param controller_port
var port = argument0;

if (gamepad_button_check(port, gp_padl))
	return gp_padl;
else if (gamepad_button_check(port, gp_padr))
	return gp_padr;
else if (gamepad_button_check(port, gp_padu))
	return gp_padu;
else if (gamepad_button_check(port, gp_padd))
	return gp_padd;
else if (gamepad_button_check(port, gp_shoulderl))
	return gp_shoulderl;
else if (gamepad_button_check(port, gp_shoulderlb))
	return gp_shoulderlb;
else if (gamepad_button_check(port, gp_shoulderr))
	return gp_shoulderr;
else if (gamepad_button_check(port, gp_shoulderrb))
	return gp_shoulderrb;
else if (gamepad_button_check(port, gp_start))
	return gp_start;
else if (gamepad_button_check(port, gp_select))
	return gp_select;
else if (gamepad_button_check(port, gp_stickl))
	return gp_stickl;
else if (gamepad_button_check(port, gp_stickr))
	return gp_stickr;
else if (gamepad_button_check(port, gp_face1))
	return gp_face1;
else if (gamepad_button_check(port, gp_face2))
	return gp_face2;
else if (gamepad_button_check(port, gp_face3))
	return gp_face3;
else if (gamepad_button_check(port, gp_face4))
	return gp_face4;
else
	return noone;