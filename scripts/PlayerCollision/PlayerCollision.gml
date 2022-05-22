function PlayerCollision() {
	//horizontal collision	
	if (place_meeting(x+hsp,y,pCollide))
	{
	    while(!place_meeting(x+sign(hsp),y,pCollide))
	    {
	        x += sign(hsp);
	    }
	    hsp = 0;
	}
	x += hsp;

	//vertical collision
	if (place_meeting(x,y+vsp,pCollide))
	{
	    while(!place_meeting(x,y+sign(vsp),pCollide))
	    {
	        y += sign(vsp);
	    }
	    vsp = 0;
	}
	y += vsp;
}
