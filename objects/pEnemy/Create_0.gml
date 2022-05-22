// Player State(s)
state = ENEMYSTATE.FREE;

// Movement Variables
hsp = 0;
vsp = 0;
walkSpeed = 4;

// Control Variables 
moving = false;

// Sprites
sIdle = -1;
sBlink = -1;
sDamage = -1;
sDie = -1

blinkFreq = 5;
blinkTime = 10;
blinking = false;
blinktmr = 0;

isHit = false;

// Wander Variables
wanderFreq = 10;
wandering = false;
desiredLocation = [-1, -1]
wanderWait = random_range(200, 1000);
wanderWaited = 0;

isLeft = false;
isRight = false;
