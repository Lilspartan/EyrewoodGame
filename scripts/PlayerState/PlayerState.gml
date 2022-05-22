// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState(_state){
	switch (_state) {
		case PLAYERSTATE.FREE:
			//Free
			PlayerStateFree();
			break;
		case PLAYERSTATE.LOCKED:
			//Locked
			PlayerStateLocked();
			break;
		case PLAYERSTATE.ATTACK:
			PlayerStateAttack();
			break;
	}
}