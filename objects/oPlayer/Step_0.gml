key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_interact = keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(0, gp_face2);
key_attack = mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_face3)

if (gamepad_axis_value(0, gp_axislh) > 0.2) {
	key_right = gamepad_axis_value(0, gp_axislh)
	key_left = 0;
} else if (gamepad_axis_value(0, gp_axislh) < -0.2) {
	key_left = -gamepad_axis_value(0, gp_axislh)
	key_right = 0;
}

if (gamepad_axis_value(0, gp_axislv) > 0.2) {
	key_down = gamepad_axis_value(0, gp_axislv)
	key_up = 0;
} else if (gamepad_axis_value(0, gp_axislv) < -0.2) {
	key_up = -gamepad_axis_value(0, gp_axislv)
	key_down = 0;
}

inputDirection = point_direction(0, 0, key_right - key_left, key_down - key_up);
inputMagnitude = (key_right - key_left != 0) || (key_down - key_up != 0);

if (!global.gamePaused) PlayerState(state);