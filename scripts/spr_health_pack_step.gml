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
        
        // increase the player's health
        hero.hp += hp;
        
        instance_destroy();
    }
}
hero_touching = hero;

