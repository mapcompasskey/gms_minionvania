/**
 * On Update
 */

// if colliding with the Hero object
var hero = instance_place(x, y, obj_hero);
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
        inst = hero;
        scr_entity_trigger_update();
    }
}
hero_colliding = hero;

// if colliding with the Monster object
var monster = instance_place(x, y, obj_monster);
if (monster)
{
    if ( ! monster.grounded || ! monster.can_be_triggered)
    {
        exit;
    }
    
    // if not already colliding with the Monster
    if (monster != monster_colliding)
    {
        monster_colliding = monster;
        inst = monster;
        scr_entity_trigger_update();
    }
}
monster_colliding = monster;

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

