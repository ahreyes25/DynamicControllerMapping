/// @description -- keymapper_init()
//	Parameters:	--- none
//	Returns: ------ none
//
//	keymapper_init creates one ds_map and three ds_lists which are used
//	to manage our keymapper. Make sure to call keymapper_init() before using any of
//	the other keymapper scripts, and to call keymapper_destroy() when you are done
//	using the keymapper so that all of the data structures are removed.
//--------------------------------------------------------------------------------------------------

#region doc_global.input_devices
//	Map of input_devices that we have created. This is a ds map which maps device_names -> control_map
//	The control_map is another ds map that maps control_names -> unicode_values/strings
//
//	STRUCTURE:
//	global.input_devices: ds_map
//	---------------------------------------------------------------------
//	|	input_device_name (string)	|	control_map (ds_map)			| 
//	---------------------------------------------------------------------
//									_______________|
//									|
//	control_map: ds_map				V	
//	---------------------------------------------------------------------
//	|	control_name (string)		|	key_value	(unicode/string)	| 
//	---------------------------------------------------------------------
//
//
//	EXAMPLE:
//	global.input_devices: ds_map
//	-----------------------------------------------------
//	|	"gamepad_blue"		|	control_map (ds_map)	|
//	-----------------------------------------------------
//							_______________|
//							|								
//	control_map: ds_map		V	
//	-----------------------------------------------------
//	|	"jump"				|	gp_face1				| 
//	-----------------------------------------------------
//	|	"move_left"			|	"gp_axislh < 0"			| 
//	-----------------------------------------------------
//	|	"attack"			|	vk_space				| 
//	-----------------------------------------------------
//	|	"roll"				|	ord("J")				| 
//	-----------------------------------------------------
//
#endregion
global.input_devices = ds_map_create(); 

#region	doc_global.controls
//	List of controls in context to our game. These will be named whatever we want as string values
//
//	global.controls: ds_list
//	-------------------------------------------------------------------------
//	|	"jump"	|	"attack"	|	"move_left"		|	"roll"	|	...		|
//	-------------------------------------------------------------------------
#endregion
global.controls	= ds_list_create(); 

#region doc_global.input_objects
//	List of game objects that take input from our input system. This list will hold instance id's
//
//	global.input_objects: ds_list
//	-------------------------------------------------------------------------
//	|	obj_player1.instance_id		|	oPlayer2.instance_id	|	...		|
//	-------------------------------------------------------------------------
#endregion
global.input_objects = ds_list_create(); 

#region doc_global.gamepad_ports
//	List of input devices that we have created that are considered to be gamepads/controllers. Since
//	gamepads are registered to a certain port, we need to keep track of how many gamepads we are
//	listening for, and what their current index is in this list, and that index value will be used to 
//	represent their port. Which is then stored in that input_object's variable called port.
//	e.g. input_object: oPlayer1.port = 0;
//
//	global.gamepad_ports: ds_list
//	-------------------------------------------------------------------------------------
//	|	"gamepad_blue"		|	"bluetooth_controller"		|	"8bit_nes_controller"	|
//	-------------------------------------------------------------------------------------
//
//	NOTE:	Remember, we are defining the names of these input devices, so these names can be whatever
//			we want them to be. We just have to remember these names that we pick, because we will be
//			using them for reference later.
#endregion
global.gamepad_ports = ds_list_create();

#region doc_global.current_device
//	String variable that keeps track of the current device that we want to modify the controls for.
//	One limitation to this library is that it only supports one device to be mapped at a time, so you
//	cannot change the controls to multiple devices at the same time. You may be able to ahieve this
//	with modifications to the library, but as of current, that is not possible. So we need to keep
//	track of which device we are currently trying to modify.
//
//	global.current_device = "keyboard_main";
#endregion
global.current_device = "";	

#region doc_global.mapping_controls
//	A boolean flag to tell our system that we are currently listening for the next input. Once this
//	next input is received then global.mapping_controls is set back to false. But when this is true,
//	the next input on a controller or keyboard will be stored as the new input.
//
//	NOTE:	This variable is specific to this project and this implementation of the keymapper library.
//			Depending on how you decide to implement this into your project, you may not need this flag.
#endregion
global.mapping_controls	= false;	

show_debug_message("Keymapper initialized");