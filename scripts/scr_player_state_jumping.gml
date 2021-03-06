/**
 * Is Jumping or Falling
 */

// if jumping again while in the air
if (jumping && jumps < jumpsmax && key_jump_pressed)
{
    jumps++;
    vsp = -jumpspeed;
}

/*
// if grounded and just pressed the JUMP button
if (grounded && ! jumping && key_jump_pressed)
{
    jumping = true;
    grounded = false;
    vsp = -jumpspeed;
}
*/

// reduce jump height
if (jumping && vsp < 0 && key_jump_released)
{
    vsp = vsp / 2;
}

// if falling
if (vsp > 0 && ! grounded)
{
    falling = true;
}

// if grounded after jumping or falling
if ((jumping || falling) && grounded)
{
    jumps = 0;
    jumping = false;
    falling = false;
}


/**
 * Is Moving
 */
  
if (key_left)
{
    hsp = -movespeed;
    walking = true;
}
else if (key_right)
{
    hsp = movespeed;
    walking = true;
}

