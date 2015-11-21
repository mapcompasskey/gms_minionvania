/**
 * Update
 */

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);

// update movespeed
velocity_x = speed_x * facing;

// if not jumping
if ( ! jumping)
{
    jumping = true;
    velocity_y = -speed_y;
}

// if grounded after jumping
if (jumping && grounded)
{
    instance_create(x, bbox_bottom, obj_hero_attack_3);
    instance_destroy();
}

// update movement speeds
scr_movement_update();

// check for collisions
scr_entity_check_wall_collisions();

// die if hit a wall
if (turn_around)
{
    instance_destroy();
}

// update object position
x += mx;
y += my;

// update object sprite
scr_entity_update_image_xscale();

