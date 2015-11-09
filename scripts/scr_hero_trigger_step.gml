if (1 == 0)
{
    if (xTileOffset != 0 || yTileOffset != 0)
    {
        // if the colliding with the Hero object
        hero = instance_place(x, y, obj_hero);
        if (hero)
        {
            // if not already colliding with the Hero
            if (hero != heroTouching)
            {
                heroTouching = hero;
                
                xDestination = bbox_left + sprite_width / 2;
                yDestination = bbox_top;
                
                xDestination += xTileOffset * global.tileSize;
                yDestination += yTileOffset * global.tileSize;
                
                hero.isTriggered = true;
                hero.xJumpDestination = xDestination;
                hero.yJumpDestination = yDestination;
                
                /*
                xDestination += hero.sprite_xoffset;
                yDestination += hero.sprite_yoffset - hero.sprite_height;
                
                hero.x = xDestination;
                hero.y = yDestination;
                */
            }
        }
        else
        {
            heroTouching = -1;
        }
    }
}


// if colliding with the Hero object
hero = instance_place(x, y, obj_hero);
if (hero)
{
    // if not already colliding with the Hero
    if (hero != heroTouching)
    {
        heroTouching = hero;
        
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
    heroTouching = -1;
}

