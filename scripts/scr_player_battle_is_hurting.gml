/**
 * Is Taking Damage and Recovering
 *
 * When taking damage, the player is stunned and given some knock back.
 * The player can't do anything while hurting. Hurting ends when the
 * player hits the ground. The player also will gain a brief period of
 * invincibility while recovering.
 */

if ( ! dying && ! hurting && ! recovering)
{
    // if colliding with the Hero object
    hero = instance_place(x, y, obj_hero_battle);
    if (hero)
    {
        hurting = true;
        recovering = true;
        
        // reduce player health
        global.player_health -= 10;
        
        // apply vertical knockback
        //vsp = knockback_jumpspeed;
        velocity_x = knockback_speed_x;
        velocity_y = knockback_speed_y;
        grounded = false;
        
        // find direction to knock the player
        knockback_direction = 1;
        if (x < hero.x)
        {
            knockback_direction = -1;
        }
    }
}

if (hurting)
{
    // apply horizontal knockback
    //hsp = knockback_direction * knockback_movespeed;
    
    if (grounded)
    {
        hurting = false;
    }
}

if (recovering)
{
    image_alpha = 0.5;

    // if the timer has ended
    recover_timer += delta_time;
    if (recover_timer >= (recover_time * 1000000))
    {
        image_alpha = 1;
        recover_timer = 0;
        recovering = false;
    }
}

