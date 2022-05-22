// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveCamera(_dir, _amt){
	switch(_dir) {
		case "up":
			oCamera.y_buffer -= _amt;
			break;
		case "down":
			oCamera.y_buffer += _amt;
			break;
		case "left":
			oCamera.x_buffer -= _amt;
			break;
		case "right":
			oCamera.x_buffer += _amt;
			break;
		case "reset":
			oCamera.x_buffer = 0;
			oCamera.y_buffer = 0;
			break;
		default: 
			show_debug_message("Direction " + _dir + " Not found!");
			break;
	}
}