randomize();

menu = ["Exit to Menu", "Settings", "Back to Game", "Exit to Desktop"];

cur_index = 0;

settings = false;
controls = false;

global.debug = false;
global.gamePaused = false;
global.showMenu = false
global.iCamera = instance_create_layer(0,0,layer,oCamera);

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

fnt_menu = font_add("joystix monospace.ttf", 64, true, false, 32, 128);
fnt_text = font_add("joystix monospace.ttf", 32, true, false, 32, 128);

gravityAmt = 1;
maxClimb = 5;
climbJumpUp = 1;
key_select = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1)
menu_down = keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd)
menu_up = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu)

min_width = 500;
width_padding = 12;
button_height = 100;
spacing = 140;

var lay_id = layer_get_id("Control");
layer_set_visible(lay_id, false);
