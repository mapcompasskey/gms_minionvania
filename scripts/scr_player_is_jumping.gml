/**
 * Is Jumping or Falling
 */

if ( ! hurting && ! dying && ! crouching && ! attacking && ! launching)
{
    // if jumping again while in the air
    if (jumping && jumps < jumpsmax && key_jump_pressed)
    {
        jumps++;
        velocity_y = -speed_y;
    }
    
    // if grounded and just pressed the JUMP button
    if (grounded && ! jumping && key_jump_pressed)
    {
        jumping = true;
        grounded = false;
        velocity_y = -speed_y;
    }
        
    // reduce jump height
    if (jumping && velocity_y < 0 && key_jump_released)
    {
        velocity_y = velocity_y / 2;
    }
    
    // if falling
    if (velocity_y > 0 && ! grounded)
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
}

