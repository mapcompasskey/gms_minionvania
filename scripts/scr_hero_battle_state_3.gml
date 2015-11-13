/**
 * State 3
 *
 * The Hero faces the player and attacks with several projectiles then idles for a moment.
 */

if (initialize_action_state_3)
{
    show_debug_message("attack state 3");
    initialize_action_state_3 = false;
    
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
    
    // ready number of times to attack
    attack_count = 3;
    attack_counter = 0;
    
    // start without any attack cooldown
    attack_cooldown_time = 0.25;
    attack_cooldown_timer = (attack_cooldown_time * 1000000);
}

else
{
    // increment the attack cooldown timer
    attack_cooldown_timer += delta_time;
    if (attack_cooldown_timer > (attack_cooldown_time * 1000000))
    {
        // reset cooldown timer
        attack_cooldown_timer = 0;
        
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
        
        // increment the attack counter
        attack_counter++;
        if (attack_counter >= attack_count)
        {
            // idle for a moment
            idle_time = 0.5;
            idling = true;
            
            // change action state
            change_action_state = true;
            
            // reset state initialization
            initialize_action_state_3 = true;
        }
    }
}

