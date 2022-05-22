// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateAttack(){
	hsp = 0;
	vsp = 0;
	
	// Start of Attack
	if (sprite_index != sAttack) {
		sprite_index = sAttack;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	
	// Change to the Attack Hitbox
	mask_index = sAttackHB
	var hitByAttackThisFrame = ds_list_create();
	var hits = instance_place_list(x, y, pEnemy, hitByAttackThisFrame, false);
	if (hits > 0) {
		for (var i = 0; i < hits; i ++) {
			// If the instance hasn't been hit yet
			var hitID = hitByAttackThisFrame[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1) {
				ds_list_add(hitByAttack, hitID);
				with (hitID) {
					// Do Stuff
					HitEnemy(2);
				}
			}	
		}	
	}
	ds_list_destroy(hitByAttackThisFrame);
	mask_index = sIdle;
	
	if (image_index >= 1 && image_index <= 7) {
		if (key_attack) {
			didHit = false;
			stateAttack = AttackCombo01;
		}
	}
	
	if (hits > 0 && !didHit) {
		didHit = true;
		ScreenShake(2, 5)
	}
	
	if (AnimationEnd()) {
		didHit = false;
		sprite_index = sIdle;
		state = PLAYERSTATE.FREE;
	}
}