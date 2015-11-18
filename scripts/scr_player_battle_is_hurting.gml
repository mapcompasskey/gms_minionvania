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
        PLAYER_HEALTH -= hero.damage;
        if (PLAYER_HEALTH <= 0) PLAYER_HEALTH = 100; 
        
        // apply horizontal knockback
        if (x < hero.x)
        {
            velocity_x = -knockback_speed_x;
        }
        else
        {
            velocity_x = knockback_speed_x;
        }
        
        // apply vertical knockback
        velocity_y = -knockback_speed_y;
        grounded = false;
    }
}

if (hurting && grounded)
{
    hurting = false;
}

if (recovering)
{
    image_alpha = 0.5;

    // if the timer has ended
    recover_timer += TICK;
    if (recover_timer >= recover_time)
    {
        image_alpha = 1;
        recover_timer = 0;
        recovering = false;
    }
}

