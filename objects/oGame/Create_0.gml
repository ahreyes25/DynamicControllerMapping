draw_controls = false;
control_index = 0;

keymapper_init();

keyboard1 = input_device_init("keyboard1");
input_device_new_key("keyboard1", "jump",	ord("J"));
input_device_new_key("keyboard1", "left",	ord("A"));
input_device_new_key("keyboard1", "right",	ord("D"));
input_device_new_key("keyboard1", "up",		ord("W"));
input_device_new_key("keyboard1", "down",	ord("S"));

gamepad0 = input_device_init("gamepad0");
input_device_new_key("gamepad0", "jump",	gp_face1);
input_device_new_key("gamepad0", "left",	"gp_axislh < 0");
input_device_new_key("gamepad0", "right",	"gp_axislh > 0");
input_device_new_key("gamepad0", "up",		"gp_axislv < 0");
input_device_new_key("gamepad0", "down",	"gp_axislv > 0");

input_device_set_current(gamepad0);