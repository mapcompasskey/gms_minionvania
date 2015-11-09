/**
 * Update
 */

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);

// reset walking
hsp = 0;
walking = false;
    
// apply gravity
if (vsp < max_vsp)
{
    vsp += grav;
}


/**
 * Is Triggered to Jump
 */
//scr_hero_trigger_jump();


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


/**
 * Is Moving
 */
if ( ! dying && ! hurting)
{    
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
}


/**
 * Check for Collisions
 */

// If Horizontal Collision
if (place_meeting(x + hsp, y, obj_wall))
{
    while ( ! place_meeting(x + sign(hsp), y, obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
    
    key_left = !key_left;
    key_right = !key_right;
}
x += hsp;

// If Vertical Collision
if (place_meeting(x, y + vsp, obj_wall))
{
    while ( ! place_meeting(x, y + sign(vsp), obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;


/**
 * Check for the Edge of Platforms
 */
/*
if (grounded && walking)
{
    // if moving left and no wall 
    if (key_left && ! position_meeting(bbox_left - 1, bbox_bottom + 1, obj_wall))
    {
        key_left = !key_left;
        key_right = !key_right;
    }
    // else, if moving right and no wall
    else if (key_right && ! position_meeting(bbox_right + 1, bbox_bottom + 1, obj_wall))
    {
        key_left = !key_left;
        key_right = !key_right;
    }
}
*/


/**
 * Update Object Sprite
 */

// update the direction the object is facing
if (facing_right && key_left)
{
    image_xscale = -1;
    facing_right = false;
}
else if ( ! facing_right && key_right)
{
    image_xscale = 1;
    facing_right = true;
}


/**
 * Is Outside the Room
 */
scr_entity_reposition();
