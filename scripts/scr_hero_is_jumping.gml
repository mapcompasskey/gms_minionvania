/**
 * Is Jumping or Falling
 */

if ( ! dying && ! hurting && ! attacking && ! idling)
{
    // if grounded and just pressed the JUMP button
    if (grounded && ! jumping && key_jump_pressed)
    {
        vsp = -jumpspeed;
        grounded = false;
        jumping = true;
        key_jump_pressed = false;
    }
    
    // if jumping
    // * in the event the hero is repositioned mid-jump when returning 
    if (vsp < 0 && ! grounded)
    {
        jumping = true;
        key_jump_pressed = false;
    }
    
    // if falling
    if (vsp > 0 && ! grounded)
    {
        falling = true;
        key_jump_pressed = false;
    }
    
    // if grounded after jumping or falling
    if ((jumping || falling) && grounded)
    {
        jumping = false;
        falling = false;
    }
}

