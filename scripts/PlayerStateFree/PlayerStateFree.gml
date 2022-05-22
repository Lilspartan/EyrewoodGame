// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
	
	// Get the direction to face based on the keys being pressed
	hsp = lengthdir_x(inputMagnitude * walkSpeed, inputDirection);
	vsp = lengthdir_y(inputMagnitude * walkSpeed, inputDirection);
		
	PlayerCollision();
	PlayerAnimation();
	
	// Get all instances of pEntity in iteractionRadius px and store the closest in activate
	var _list = ds_list_create();
	var _num = collision_circle_list(x + interactionOffset[0], y + interactionOffset[1], interactionDistance, pEntity, false, true, _list, true);
	if (_num > 0) activate = _list[| 0];
	else activate = noone;
	ds_list_destroy(_list);
	
	if (key_attack) {
		state = PLAYERSTATE.ATTACK;
	}
	
	// Add the E key to indicate that the entity can be interacted with
	if (activate != noone) {
		with (activate) {
			interactable = true;
		}
	}
	
	// Execute interaction code, either the entitie's ActivateScript, or initiate a conersation if no script is found
	if (key_interact) {
		if (activate == noone || activate.entityActivateScript == -1) {
			if (activate != noone){
				if (activeTextBox == noone) {
					with(activate) { var box = CreateTextBox(text, speakers, next_line, scripts) }	
					activeTextBox = box;
				} else { if (!instance_exists(activeTextBox)) activeTextBox = noone; }
			}
		} else {
			ScriptExecuteArray(activate.entityActivateScript, activate.entitiyActivateArgs);
		}
	}
}