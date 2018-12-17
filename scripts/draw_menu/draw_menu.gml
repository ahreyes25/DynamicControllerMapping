/// @description Draw Menu. Replace this with your own menu draw event

// Draw Fade Over Screen
draw_set_alpha(0.75);
draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);	
draw_set_alpha(1.0);

// Draw Controller & Keyboard Image
if (string_contains(input_device_get_current(), "pad"))
	draw_sprite(sController, 0, (room_width / 2) - (sprite_get_width(sController) / 2), room_height / 2);
else
	draw_sprite(sController, 1, (room_width / 2) - (sprite_get_width(sController) / 2), room_height / 2);
	
var word_spacing = 20;
var start_y = (room_height / 2) - (ds_list_size(global.controls) / 2) * word_spacing;
// Draw Controls
for (var i = 0; i < ds_list_size(global.controls); i++) {
	if (i == control_index && global.mapping_controls) 
		draw_set_color(c_red);
	else
		draw_set_color(c_white);
			
	draw_text(
		(room_width / 2) + (sprite_get_width(sController) / 2), 
		start_y + (word_spacing * i),
		string(ds_list_find_value(global.controls, i)) + ": "
	);
}
	
// Draw Keys
for (var i = 0; i < ds_list_size(global.controls); i++) {
	if (i == control_index && global.mapping_controls) 
		draw_set_color(c_red);
	else
		draw_set_color(c_white);
			
	draw_text(
		(room_width / 2) + (sprite_get_width(sController)), 
		start_y + (word_spacing * i),
		unicode_to_string(ds_map_find_value(ds_map_find_value(global.input_devices, global.current_device), ds_list_find_value(global.controls, i)))
	);
}
	
// Draw Arrow
if (global.mapping_controls) 
	draw_set_color(c_red);
else
	draw_set_color(c_white);
		
draw_text(
	(room_width / 2) + (sprite_get_width(sController) / 4),
	start_y + (word_spacing * control_index),
	">"
);