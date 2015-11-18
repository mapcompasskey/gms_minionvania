/**
 * Is Attacking
 */

if ( ! dying && ! hurting && ! launching)
{
    // if not currently battling the Hero
    if ( ! global.battle_mode)
    {
        // if attack cooldown is active
        if (on_attack_cooldown)
        {
            image_alpha = 0.5;
            attack_cooldown_timer += TICK;
            
            // if the timer has ended
            if (attack_cooldown_timer >= attack_cooldown_time)
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
                // if the hero can be attacked
                if (hero.can_be_attacked)
                {
                    // if not previously colliding with object
                    if (hero != hero_touching)
                    {
                        on_attack_cooldown = true;
                        
                        // add the Battle Transition controller
                        instance_create(0, 0, cont_battle_transition);
                    }
                }
            }
            hero_touching = hero;
        }
        
    }
    
}

