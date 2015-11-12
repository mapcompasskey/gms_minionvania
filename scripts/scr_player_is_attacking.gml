/**
 * Is Attacking
 */

if ( ! dying && ! hurting)
{
    // if not currently battling the Hero
    if ( ! global.battle_mode)
    {
        // if attack cooldown is active
        if (on_attack_cooldown)
        {
            image_alpha = 0.5;
            attack_cooldown_timer += delta_time;
            
            // if the timer has ended
            if (attack_cooldown_timer >= (attack_cooldown_time * 1000000))
            {
                image_alpha = 1.0;;
                attack_cooldown_timer = 0;
                on_attack_cooldown = false;
            }
        }
        
        // if can attack
        if ( ! on_attack_cooldown)
        {
            // if colliding with the Hero object
            hero = instance_place(x, y, obj_hero);
            if (hero)
            {
                // if the hero is not already attacking another monster
                if ( ! hero.attacking)
                {
                    // if not previously colliding with object
                    if (hero != hero_touching)
                    {
                        //attacking = true;
                        
                        // add the Battle Transition controller
                        instance_create(0, 0, cont_battle_transition);
                    }
                }
            }
            hero_touching = hero;
        }
        
    }
    
}
