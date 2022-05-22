// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HitEnemy(_damage){
	//show_debug_message("Hit " + string(_damage));
	hp -= _damage;
	
	if (hp > 0) {
		state = ENEMYSTATE.HIT;
		isHit = true;
	} else {
		state = ENEMYSTATE.DEAD;
	}
}
