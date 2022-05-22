// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MACROS(){
	#macro RESOLUTION_W 1920
	#macro RESOLUTION_H 1080
	#macro PLAYER_SCALE 1
	#macro FRAME_RATE 60
	
	enum PLAYERSTATE {
		FREE,
		LOCKED,
		ATTACK,
		LEDGE_GRAB
	}
	
	enum ENEMYSTATE {
		FREE,
		HIT,
		DEAD,
		WANDER,
		FLEE
	}
}