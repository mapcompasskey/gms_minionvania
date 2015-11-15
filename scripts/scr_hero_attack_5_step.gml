/**
 * Update
 */

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);

// update movement deceleration
if (grounded)
{
    // add friction
    movespeed = movespeed - (movespeed * move_friction);
    if (movespeed < move_friction_min)
    {
        movespeed = 0;
    }
    
    // update bounce
    jumpspeed = jumpspeed - (jumpspeed * jump_bounce);
    if (jumpspeed <  jump_bounce_min)
    {
        jumpspeed = 0;
    }
}

// update movespeed
if (facing_right)
{
    hsp = movespeed;
}
else
{
    hsp = -movespeed;
}

// apply gravity
if (vsp < max_vsp)
{
    vsp += grav;
}

kill_timer += delta_time;

// if the timer has ended
if (kill_timer >= (kill_time * 1000000))
{
    instance_create(x, bbox_bottom, obj_hero_attack_6);
    instance_destroy();
}

// if not idle
if ( ! idling)
{
    // if not jumping
    if ( ! jumping)
    {
        vsp = -jumpspeed;
        jumping = true;
    }
    
    // if grounded after jumping
    if (jumping && grounded)
    {
        jumping = false;
        
        // if no longer bouncing
        if (jumpspeed == 0)
        {
            idling = true;
        }
    }
}

// check for collisions
scr_entity_check_wall_collisions();

// turn around if hit a wall
if (turn_around)
{
    facing_right = !facing_right;
}

// update object position
x += hsp;
y += vsp;

// update object sprite
if (facing_right)
{
    image_xscale = 1;
}
else
{
    image_xscale = -1;
}

