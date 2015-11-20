/**
 * On Update
 */

// if colliding with the Hero object
hero = instance_place(x, y, obj_hero);
if (hero)
{
    // if not already colliding with the Hero
    if (hero != hero_touching)
    {
        hero_touching = hero;
        
        if (HERO_HEALTH < hero.max_health)
        {
            // increase the hero's health
            HERO_HEALTH += hp;
            if (HERO_HEALTH > hero.max_health)
            {
                HERO_HEALTH = hero.max_health;
            }
            
            instance_destroy();
        }
    }
}
hero_touching = hero;

