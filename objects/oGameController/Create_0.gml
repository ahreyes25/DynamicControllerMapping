draw_controls	= false;
control_index	= 0;
map_key			= vk_shift;	

keymapper_init();

input_device_init("keyboard_0");
input_device_new_key("keyboard_0", "left",		ord("A"));
input_device_new_key("keyboard_0", "right",		ord("D"));
input_device_new_key("keyboard_0", "up",		ord("W"));
input_device_new_key("keyboard_0", "down",		ord("S"));

input_device_init("gamepad_blue");
input_device_new_key("gamepad_blue", "left",	"gp_axislh < 0");
input_device_new_key("gamepad_blue", "right",	"gp_axislh > 0");
input_device_new_key("gamepad_blue", "up",		"gp_axislv < 0");
input_device_new_key("gamepad_blue", "down",	"gp_axislv > 0");

input_device_set_current("gamepad_blue");