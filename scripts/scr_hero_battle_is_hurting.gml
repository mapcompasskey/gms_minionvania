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
        global.hero_health -= player_attack.damage;
        if (global.hero_health <= 0) global.hero_health = 100;
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

