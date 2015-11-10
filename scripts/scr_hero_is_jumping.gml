/**
 * Is Jumping or Falling
 */

if ( ! dying && ! hurting)
{
    // if grounded and just pressed the JUMP button
    if (grounded && ! jumping && key_jump_pressed)
    {
        key_jump_pressed = false;
        jumping = true;
        grounded = false;
        vsp = -jumpspeed;
    }
    
    // if falling
    if (vsp > 0 && ! grounded)
    {
        falling = true;
    }
    
    // if grounded after jumping or falling
    if ((jumping || falling) && grounded)
    {
        jumping = false;
        falling = false;
    }
}

