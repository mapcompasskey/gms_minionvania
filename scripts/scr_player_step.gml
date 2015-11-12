/**
 * On Update
 */

// get the player's input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_down = keyboard_check(vk_down);
key_jump_pressed = keyboard_check_pressed(vk_space);
key_jump_released = keyboard_check_released(vk_space);

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
 * Check Object State
 */

scr_player_is_attacking();
scr_player_is_crouching();
scr_player_is_jumping();
scr_player_is_walking();


/**
 * Update Object Sprite
 */

scr_entity_update_image_xscale();

// update the object's sprite
if (crouching)
{
    //sprite_index = spr_player;
    image_speed = 0;
    image_index = 1;
}
else
{
    //sprite_index = spr_player;
    image_speed = 0;
    image_index = 0;
}

