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
            key_left = true;
            key_right = false;
        }
    
        // else, if to the left of the player
        else
        {
            key_left = false;
            key_right = true;
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
        facing = LEFT;
        walking = true;
        velocity_x = speed_x * 2;
    }
    
    // else, if moving right
    else if (key_right)
    {
        facing = RIGHT;
        walking = true;
        velocity_x = speed_x * 2;
    }
    
    // if within reach of the target
    if (point_distance(target_x, target_y, x, y) < attack_range)
    {
        // stop moving
        walking = false;
        velocity_x = 0;
        
        // add attack instance
        attack1 = instance_create(x, y, obj_hero_attack_4);
        attack1.hero = id;
        
        // idle for a moment
        idle_time = 50;
        idling = true;
        
        // change action state
        change_action_state = true;
        
        // reset state initialization
        initialize_action_state_5 = true;
    }
    
    velocity_x = velocity_x * facing;
}

