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
        
        if (global.hero_health < hero.max_health)
        {
            // increase the hero's health
            global.hero_health += hp;
            if (global.hero_health > hero.max_health)
            {
                global.hero_health = hero.max_health;
            }
            
            instance_destroy();
        }
    }
}
hero_touching = hero;

