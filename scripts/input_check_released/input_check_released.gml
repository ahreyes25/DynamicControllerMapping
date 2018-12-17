/// @description -- input_check_released();
//	Parameters:	--- key : unicode value
//	Returns: ------ boolean
//
//	This script checks for either a gamepad or keyboard input that matches our desired input.
//	This script takes in a unicode value, so it will look something like...
//		key = ord("A")
//		key = vk_right
//		key = gp_face2
//	These unicode values exist in our input_device map when we insert them using input_device_new_key()
//--------------------------------------------------------------------------------------------------
/// @param key
//--------------------------------------------------------------------------------------------------

//	Since the joystick does not read a unicode value, we need to check that this is indeed a real value
//	we are reading before trying to pass it into our gamepad/keyboard check
if (!is_string(argument0))
	return (keyboard_check_released(argument0) || gamepad_button_check_released(gamepad_get_port(input_device), argument0));