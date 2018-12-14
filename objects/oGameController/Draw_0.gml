if (draw_controls)
	draw_menu();

// Draw Current Key Pressed In Top Left Corner
if (!draw_controls)
	draw_text(20, 20, "KeyDown: " + string(unicode_to_string(keyboard_key)));
	
draw_text(20, 60, "---GAMEPADS---");
for (var i = 0; i < ds_list_size(global.gamepad_ports); i++) {
	draw_text(20, 80 + (20 * i), string(i) + " -> " + string(ds_list_find_value(global.gamepad_ports, i)));
}


draw_text(300, 20, "lh: " + string(gamepad_axis_value(0, gp_axislh)));
draw_text(300, 40, "lv: " + string(gamepad_axis_value(0, gp_axislv)));
draw_text(300, 60, "rh: " + string(gamepad_axis_value(0, gp_axisrh)));
draw_text(300, 80, "rv: " + string(gamepad_axis_value(0, gp_axisrv)));