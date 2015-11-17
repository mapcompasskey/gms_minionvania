/**
 * State 5
 *
 * The Hero rushes towards the Player and does a melee attack when within reach and then idles for a moment.
 * The target point is the last known x position of the Player when this action began.
 *
 * It would help to know the length of the attack animation to know how long to idle for.
 * Also, the width of the attack sprite for determining if the Hero is within reach of the targe.
 */

if (initialize_action_state_5)
{
    show_debug_message("attack state 5");
    initialize_action_state_5 = false;
    
    // distance to target
    attack_range = 64;
    
    // find the Player
    player = instance_find(obj_player_battle, 0);
    if (player)
    {
        // set target point
        target_x = player.x;
        target_y = y;
        
        // if to the right of the player
        if (x > player.x)
        {
            // move left
            key_left = true;
            key_right = false;
            
            // face left
            image_xscale = -1;
            facing_right = false;
        }
    
        // else, if to the left of the player
        else
        {
            // move right
            key_left = false;
            key_right = true;
            
            // face right
            image_xscale = 1;
            facing_right = true;
        }
    }
    else
    {
        // change action state
        change_action_state = true;
        
        // reset state initialization
        initialize_action_state_1 = true;
    }
}
else
{
    // if moving left
    if (key_left)
    {
        // move left
        walking = true;
        velocity_x = -speed_x * 2;
        max_velocity_x = speed_x * 2;
    }
    
    // else, if moving right
    else if (key_right)
    {
        // move right
        walking = true;
        velocity_x = speed_x * 2;
        max_velocity_x = speed_x * 2;
    }
    
    // if within reach of the target
    if (point_distance(target_x, target_y, x, y) < attack_range)
    {
        // add attack instance
        attack1 = instance_create(x, y, obj_hero_attack_4);
        attack1.hero_id = id;
        
        // idle for a moment
        idle_time = 0.75;
        idling = true;
        
        // change action state
        change_action_state = true;
        
        // reset state initialization
        initialize_action_state_5 = true;
    }
}

