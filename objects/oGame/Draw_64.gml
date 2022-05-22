if (global.showMenu) {
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(0,0,RESOLUTION_W, RESOLUTION_H,0);
	draw_set_halign(fa_center);
	draw_set_font(fnt_menu);
	draw_set_color(c_white);
	draw_set_alpha(1);
	
	draw_text(RESOLUTION_W/2 - 3, 30, "Game Paused");
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_font(fnt_text);
	var _print;
	var _foundButton = false;
	
	for (var i = 0; i < array_length_1d(menu); i ++) {
		
		_print = menu[i]; 
		
		button_width = min_width;
		
		if (string_width(menu[i]) > min_width) {
			button_width = string_width(menu[i]) + width_padding	
		}
		
		// Get Button Coordinates
		var _buttonX = RESOLUTION_W/2 - (button_width) / 2;
		var _buttonY = spacing * 1.3 + (spacing * i) - (button_height / 2) + string_height(_print) / 2;
		
		var _buttonXscale = button_width / sprite_get_width(sButton);
		var _buttonYscale = button_height / sprite_get_height(sButton);
		
		if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _buttonX, _buttonY, _buttonX + (sprite_get_width(sButton) * _buttonXscale), _buttonY + (sprite_get_height(sButton) * _buttonYscale))) {
			cur_index = i;	
			_foundButton = true;
		}
		
		if (cur_index == i) {
			draw_sprite_ext(sButton, 1, _buttonX, _buttonY, _buttonXscale, _buttonYscale, 0, c_white, 1)
		} else { 
			draw_sprite_ext(sButton, 0, _buttonX, _buttonY, _buttonXscale, _buttonYscale, 0, c_white, 1)
		};
		draw_text(RESOLUTION_W/2, spacing * 1.3 + spacing * i, _print)
	}
	if (!_foundButton) cur_index = 1000000
	draw_set_halign(fa_left);


}
