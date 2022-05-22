// Player State(s)
state = PLAYERSTATE.FREE;
//stateAttack = AttackSlash;

justStarted = true;

// Movement Variables
hsp = 0;
vsp = 0;
walkSpeed = 2

// Control Variables 
moving = false;

// Player Sprites
sIdle = sPlayerIdle;
sRun = sPlayerIdle;
sFall = sPlayerIdle;
sJump = sPlayerIdle;
sBlink = sPlayerIdle;

sAttack = sPlayerAttack
sAttackHB = sPlayerIdle

localFrame = 0;

blinkFreq = 5;
blinkTime = 10;
blinking = false;
blinktmr = 0;

interactionDistance = 100;
interactionOffset = [0, -50];

portrait_index = 0;
name = "Noah";

activeTextBox = noone;

hitByAttack = ds_list_create();

speedDecay = 4;
speedDecayTime = 10;
speedDecayTimer = 0;

didHit = false;

// shadow = instance_create_layer(x, y, "Shadows", oPlayerShadow);