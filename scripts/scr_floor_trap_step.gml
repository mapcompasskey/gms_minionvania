/**
 * On Update
 */

// if the trap has been activated
if (active)
{
    // if the Hero is above this object
    hero = instance_place(x, y - 1, obj_hero);
    if (hero)
    {
        var triggered = false;
        
        if (hero.facing_right && hero.x > (x + sprite_width / 2))
        {
            triggered = true;
        }
        
        else if ( ! hero.facing_right && hero.x < (x + sprite_width / 2))
        {
            triggered = true;
        }
        
        if (triggered)
        {
            var hero_trigger, pos_x, pos_y;
            
            // trigger to jump over pit from the left side
            pos_x = x;
            pos_y = y - TILE_SIZE;
            hero_trigger = instance_create(pos_x, pos_y, obj_hero_trigger);
            hero_trigger.if_moving_right = true;
            hero_trigger.speed_x = 4;
            hero_trigger.speed_y = 8;
            
            // trigger to reset speed after jumping across from the left side
            //pos_x = x + sprite_width;
            //pos_y = y - TILE_SIZE;
            //hero_trigger = instance_create(pos_x, pos_y, obj_hero_trigger);
            //hero_trigger.if_moving_right = true;
            //hero_trigger.reset_speed_x = true;
    
            // trigger to jump over the pit from the right side        
            pos_x = x + sprite_width - TILE_SIZE;
            pos_y = y - TILE_SIZE;
            hero_trigger = instance_create(pos_x, pos_y, obj_hero_trigger);
            hero_trigger.if_moving_left = true;
            hero_trigger.speed_x = 4;
            hero_trigger.speed_y = 8;
            
            // trigger to reset speed after jumping across from the right side
            //pos_x = x - TILE_SIZE;
            //pos_y = y - TILE_SIZE;
            //hero_trigger = instance_create(pos_x, pos_y, obj_hero_trigger);
            //hero_trigger.if_moving_left = true;
            //hero_trigger.reset_speed_x = true;
            
            instance_destroy();
        }
    }
}

