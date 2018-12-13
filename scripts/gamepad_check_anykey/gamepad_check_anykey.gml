/// @description Check For Anybutton on the gamepad

/// @param controller_port
var port = argument0;

if (gamepad_button_check(port, gp_padl)			||
	gamepad_button_check(port, gp_padr)			||
	gamepad_button_check(port, gp_padu)			||
	gamepad_button_check(port, gp_padd)			||
	gamepad_button_check(port, gp_shoulderl)	||
	gamepad_button_check(port, gp_shoulderlb)	||
	gamepad_button_check(port, gp_shoulderr)	||
	gamepad_button_check(port, gp_shoulderl)	||
	gamepad_button_check(port, gp_start)		||
	gamepad_button_check(port, gp_select)		||
	gamepad_button_check(port, gp_stickl)		||
	gamepad_button_check(port, gp_stickr)		||
	gamepad_button_check(port, gp_face1)		||
	gamepad_button_check(port, gp_face2)		||
	gamepad_button_check(port, gp_face3)		||
	gamepad_button_check(port, gp_face4)) 
{		
	return true;
}
else {
	return false;
}