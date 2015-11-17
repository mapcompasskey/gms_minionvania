/**
 * Is Attacking
 */

if ( ! dying && ! hurting && ! idling)
{
    // if colliding with a Monster object
    monster = instance_place(x, y, obj_monster);
    if (monster)
    {
        // if not previously colliding with object
        if (monster != monster_touching)
        {
            current_hp = global.hero_health;
            
            // amount of damage to take
            damage_taken = 30;
            if (is_real(monster.damage))
            {
                damage_taken = monster.damage;
            }
            
            attacking = true;
            monster.attacking = true;
            
            image_alpha = 0.25;
            monster.image_alpha = 0.25;
            
            can_be_attacked = false;
        }
    }
    monster_touching = monster;
    
    // if attacking
    if (attacking)
    {
        attack_timer += TICK;
        
        // slowly substract the damage
        timer_rate  = 100 / attack_time * attack_timer;
        health_rate = (timer_rate * damage_taken / 100);
        if (health_rate > damage_taken)
        {
            health_rate = damage_taken;
        }
        global.hero_health = current_hp - health_rate;
        
        // if the timer has ended
        if (attack_timer >= attack_time)
        {
            // destroy the monster
            with (monster) 
            {
                instance_destroy();
            }
            
            // start idle state
            idling = true;
            idle_timer = 0;
            idle_time = 30;
            
            // end attack state
            attacking = false;
            attack_timer = 0;
            image_alpha = 1;
            
            can_be_attacked = true;
        }
    }
}

