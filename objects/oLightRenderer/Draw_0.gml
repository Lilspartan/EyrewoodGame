if (!surface_exists(surf)) {
	surf = surface_create(room_width, room_height);	
	surface_set_target(surf);

	draw_clear(c_black);

	surface_reset_target();
}

surface_set_target(surf);

draw_clear(c_black);

with (oNoFog) {
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sNoFog, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
	gpu_set_blendmode(bm_normal);
}

with (oLight) {
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sLightCutout, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
	gpu_set_blendmode(bm_normal);
}


surface_reset_target();

draw_surface(surf, 0, 0);
