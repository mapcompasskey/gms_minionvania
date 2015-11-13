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
 * Check Object State
 */

scr_hero_battle_is_idling();

if ( ! idling)
{
    // choose a new action
    if (change_action_state)
    {
        action_state = irandom(2); // 0 - 2
        change_action_state = false;
    }
    
    switch (action_state)
    {
        case 0:
            scr_hero_battle_state_1();
            break;
            
        case 1:
            scr_hero_battle_state_2();
            break;
            
        case 2:
            scr_hero_battle_state_3();
            break;
    }
}


/**
 * Check for Collisions
 */

scr_entity_check_wall_collisions();

/*
// turn around if walked into a wall
if (turn_around)
{
    key_left  = !key_left;
    key_right = !key_right;
}
*/


/**
 * Update Object Position
 */

x += hsp;
y += vsp;
scr_entity_reposition();

