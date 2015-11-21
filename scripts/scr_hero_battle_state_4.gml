/**
 * State 4
 *
 * The Hero faces the player and throws some projectiles that land and ignite into pillars
 */

if (initialize_action_state_4)
{
    show_debug_message("attack state 4");
    initialize_action_state_4 = false;
    
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
    
    // set the number of attack
    attack_count = 4;
    
    // set the spacing between attacks
    attack_range = irandom(2); // 0 - 2
}

else
{
    var i, attack2;
    for (i = 0; i < attack_count; i++)
    {
        // add attack instance
        attack2 = instance_create(x, y, obj_hero_attack_2);
        attack2.facing = facing;
        attack2.speed_x = attack2.speed_x + attack_range + (3 * i);
    }
    
    // idle for a moment
    idle_time = 60;
    idling = true;
    
    // change action state
    change_action_state = true;
    
    // reset state initialization
    initialize_action_state_4 = true;
}

