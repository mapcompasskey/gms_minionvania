/**
 * State 2
 *
 * The Hero faces the Player and attacks with a projectile then idles for a moment.
 */

if (initialize_action_state_2)
{
    show_debug_message("action state 2");
    initialize_action_state_2 = false;
    
    // face the Player
    player = instance_find(obj_player_battle, 0);
    if (player)
    {
        // if to the left of the Player
        if (x < player.x)
        {
            facing = RIGHT;
        }
        
        // else, to the right of the Player
        else
        {
            facing = LEFT;
        }
    }
    
    // add attack instance
    attack1 = instance_create(x, y, obj_hero_attack_1);
    attack1.facing = facing;
    
    // idle for a moment
    idle_time = 30;
    idling = true;
    
    // change action state
    change_action_state = true;
    
    // reset state initialization
    initialize_action_state_2 = true;
}

