/**
 * State 2
 *
 * The Hero faces the player and attacks with a projectile then idles for a moment.
 */

if (initialize_action_state_2)
{
    show_debug_message("action state 2");
    initialize_action_state_2 = false;
    
    player = instance_find(obj_player_battle, 0);
    if (player)
    {
        // if to the left of the player
        if (x < player.x)
        {
            // face right
            image_xscale = 1;
            facing_right = true;
        }
        
        // else, to the right of the player
        else
        {
            // face left
            image_xscale = -1;
            facing_right = false;
        }
    }
    
    // add attack instance
    attack1 = instance_create(x, y, obj_hero_attack_1);
    attack1.facing_right = facing_right;
    if (facing_right)
    {
        attack1.movespeed_x = attack1.movespeed_x;
    }
    else
    {
        attack1.movespeed_x = -attack1.movespeed_x;
    }
    attack1.movespeed_y = 0;
    
    // idle for a moment
    idle_time = 0.5;
    idling = true;
    
    // change action state
    change_action_state = true;
    
    // reset state initialization
    initialize_action_state_2 = true;
}

