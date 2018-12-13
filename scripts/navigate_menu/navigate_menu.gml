/// @description Navigate Menu. Replace this with your own menu navigation system

// Toggle Control Mapping
if (keyboard_check_pressed(vk_enter) && !global.mapping_controls)
	draw_controls = !draw_controls;
if (draw_controls && keyboard_check_pressed(vk_shift)) {
	global.mapping_controls = !global.mapping_controls;
}

// Navigate Control Menu
if (keyboard_check_pressed(ord("S")) && !global.mapping_controls) {
	if (control_index < global.number_of_controls - 1)
		control_index++;	
	else
		control_index = 0;
}

if (keyboard_check_pressed(ord("W")) && !global.mapping_controls) {
	if (control_index > 0)
		control_index--;	
	else
		control_index = global.number_of_controls - 1;
}