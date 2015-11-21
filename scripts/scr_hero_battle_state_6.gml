/**
 * State 6
 *
 * The Hero faces the player and throws several bombs then idles for a moment.
 */

if (initialize_action_state_6)
{
    show_debug_message("action state 6");
    initialize_action_state_6 = false;
    
    // find the Player
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
    
    // ready number of times to attack
    attack_count = 3;
    attack_counter = 0;
    
    // start without any attack cooldown
    attack_cooldown_time = 60;
    attack_cooldown_timer = attack_cooldown_time;
}

else
{
    // increment the attack cooldown timer
    attack_cooldown_timer += TICK;
    if (attack_cooldown_timer > attack_cooldown_time)
    {
        // reset cooldown timer
        attack_cooldown_timer = 0;
        
        // add attack instance
        attack1 = instance_create(x, y, obj_hero_attack_5);
        attack1.facing = facing;
        
        // increment the attack counter
        attack_counter++;
        if (attack_counter >= attack_count)
        {
            // idle for a moment
            idle_time = 120;
            idling = true;
            
            // change action state
            change_action_state = true;
            
            // reset state initialization
            initialize_action_state_6 = true;
        }
    }
}

