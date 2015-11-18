/**
 * Is Taking Damage and Recovering
 *
 */

if ( ! recovering)
{
    // if colliding with a Player Attack object
    player_attack = instance_place(x, y, obj_player_attack);
    if (player_attack)
    {
        recovering = true;
        
        // reduce health
        HERO_HEALTH -= player_attack.damage;
        if (HERO_HEALTH <= 0) HERO_HEALTH = 100;
    }
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

