/**
 * Is Attacking
 */

if ( ! dying && ! hurting)
{
    if (can_attack && keyboard_check_pressed(ord("Z")))
    {
        // add attack instance
        attack1 = instance_create(x, y, obj_player_attack_1);
        attack1.player = id;
        
        can_attack = false;
    }
}

