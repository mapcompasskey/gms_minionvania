/**
 * Is Attacking
 */

if ( ! dying && ! hurting)
{
    // if not currently battling the Hero
    if ( ! global.battle_mode)
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
