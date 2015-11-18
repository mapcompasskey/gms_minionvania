/**
 * On Update
 */

// update the amount of time that has passed since the last frame
TICK = 60 / 1000000 * delta_time;

// if ESC key is pressed
if (keyboard_check_pressed(vk_escape))
{
    // add the Pause Screen
    instance_create(0, 0, cont_pause_screen);
}

// if inside the battle room
if (IS_BATTLE_MODE)
{
    if (keyboard_check_pressed(ord("E")))
    {
        // return to previous room
        if (ROOM_PREVIOUS)
        {
            IS_BATTLE_MODE = false;
            room_goto(ROOM_PREVIOUS);
        }
    }
    
    // add to the hero action ds_list
    if (keyboard_check_pressed(ord("1")))
    {
        ds_list_add(HERO_ACTION_ORDER, 1);
    }
    if (keyboard_check_pressed(ord("2")))
    {
        ds_list_add(HERO_ACTION_ORDER, 2);
    }
    if (keyboard_check_pressed(ord("3")))
    {
        ds_list_add(HERO_ACTION_ORDER, 3);
    }
    if (keyboard_check_pressed(ord("4")))
    {
        ds_list_add(HERO_ACTION_ORDER, 4);
    }
    if (keyboard_check_pressed(ord("5")))
    {
        ds_list_add(HERO_ACTION_ORDER, 5);
    }
    if (keyboard_check_pressed(ord("6")))
    {
        ds_list_add(HERO_ACTION_ORDER, 6);
    }
    if (keyboard_check_pressed(ord("7")))
    {
        ds_list_add(HERO_ACTION_ORDER, 7);
    }
}

