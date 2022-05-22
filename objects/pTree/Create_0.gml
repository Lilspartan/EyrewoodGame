current_opacity = 1;
flip = random_range(0, 1);
scale_modifier = random_range(1.0000000, 1.100000000);
if (flip > 0.5) image_xscale = image_xscale * -1;
image_xscale = image_xscale * scale_modifier;
image_yscale = scale_modifier;
image_angle = random_range(-3, 3);