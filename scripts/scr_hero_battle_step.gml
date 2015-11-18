/**
 * Update
 */

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);


/**
 * Check Object State
 */

scr_hero_battle_is_hurting();
scr_hero_battle_is_idling();

if ( ! idling)
{
    // choose a new action
    if (change_action_state)
    {
        action_state = irandom(6) + 1; // (0 - 6) + 1
        change_action_state = false;
        
        if (ds_list_size(global.hero_action_order) > 0)
        {
            action_state = ds_list_find_value(global.hero_action_order, 0);
            ds_list_delete(global.hero_action_order, 0);
        }
    }
    
    switch (action_state)
    {
        case 1:
            scr_hero_battle_state_1();
            break;
            
        case 2:
            scr_hero_battle_state_2();
            break;
            
        case 3:
            scr_hero_battle_state_3();
            break;
            
        case 4:
            scr_hero_battle_state_4();
            break;
            
        case 5:
            scr_hero_battle_state_5();
            break;
            
        case 6:
            scr_hero_battle_state_6();
            break;
            
        case 7:
            scr_hero_battle_state_7();
            break;
    }
}


/**
 * Update Movement Speeds
 */

scr_movement_update();


/**
 * Check for Collisions
 */

scr_entity_check_wall_collisions();


/**
 * Update Object Position
 */

x += mx;
y += my;

scr_entity_reposition();

