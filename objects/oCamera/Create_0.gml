cam = view_camera[0];
follow = oPlayer;
viewWidthHalf = camera_get_view_width(cam) * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

x = follow.x;
y = follow.y;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;

global.cameraLag = 30
zoom_level = 1.2;
rate = 0.2

x_buffer = 0;
y_buffer = 0;

//Get the starting view size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]) * zoom_level;
default_zoom_height = camera_get_view_height(view_camera[0]) * zoom_level;
