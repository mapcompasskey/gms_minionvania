/**
 * On Update
 */

// if colliding with the Hero object
hero = instance_place(x, y, obj_hero);
if (hero)
{
    if ( ! hero.grounded)
    {
        exit;
    }
    
    // if not already colliding with the Hero
    if (hero != hero_colliding)
    {
        hero_colliding = hero;
        
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
        
        // if this trigger can be ignored
        if (ignore_count)
        {
            ignore_counter++;
            if (ignore_counter <= ignore_count)
            {
                exit;
            }
            ignore_counter = 0;
        }
        
        // reset the level
        if (reset_level)
        {
            room_restart();
        }
        
        // update movespeed
        if (speed_x && is_real(speed_x))
        {
            hero.speed_x = speed_x;
        }
        
        // reset speed x
        if (reset_speed_x)
        {
            hero.speed_x = hero.base_speed_x;
        }
        
        // update jumpspeed and jump
        if (speed_y && is_real(speed_y))
        {
            hero.speed_y = speed_y;
            hero.key_jump_pressed = true;
        }
        
        // turn around
        if (turn_around)
        {
            hero.key_left  = !hero.key_left;
            hero.key_right = !hero.key_right;
        }
        
    }
}
hero_colliding = hero;

// update sprite
if (if_moving_right && reset_speed_x)
{
    image_index = 1;
}
else if (if_moving_left && reset_speed_x)
{
    image_index = 2;
}
else if (if_moving_right && is_real(speed_y))
{
    image_index = 3;
}
else if (if_moving_left && is_real(speed_y))
{
    image_index = 4;
}

