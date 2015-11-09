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
        
        // if trigger only affects left moving objects
        if (if_moving_left)
        {
            if ( ! hero.key_left)
            {
                exit;
            }
        }
        
        // if trigger only affects right moving objects
        if (if_moving_right)
        {
            if ( ! hero.key_right)
            {
                exit;
            }
        }
        
        // reset the level
        if (reset_level)
        {
            room_restart();
        }
        
        // update movespeed
        if (movespeed && is_real(movespeed))
        {
            hero.movespeed = movespeed;
        }
        
        // reset movespeed
        if (reset_movespeed)
        {
            hero.movespeed = hero.base_movespeed;
        }
        
        // update jumpspeed and jump
        if (jumpspeed && is_real(movespeed))
        {
            hero.jumpspeed = jumpspeed;
            hero.key_jump_pressed = true;
        }
    }
}
else
{
    hero_touching = -1;
}

