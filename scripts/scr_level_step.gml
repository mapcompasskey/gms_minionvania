/**
 * On Update
 */

// if ESC key is pressed
if (keyboard_check_pressed(vk_escape))
{
    // add the Pause Screen
    instance_create(0, 0, cont_pause_screen);
}

// if inside the battle room
if (global.battle_mode)
{
    if (keyboard_check_pressed(ord("X")))
    {
        // return to previous room
        if (global.previous_room)
        {
            global.battle_mode = false;
            room_goto(global.previous_room);
        }
    }
    
    // add to the hero action ds_list
    if (keyboard_check_pressed(ord("1")))
    {
        ds_list_add(global.hero_action_order, 1);
    }
    if (keyboard_check_pressed(ord("2")))
    {
        ds_list_add(global.hero_action_order, 2);
    }
    if (keyboard_check_pressed(ord("3")))
    {
        ds_list_add(global.hero_action_order, 3);
    }
    if (keyboard_check_pressed(ord("4")))
    {
        ds_list_add(global.hero_action_order, 4);
    }
    if (keyboard_check_pressed(ord("5")))
    {
        ds_list_add(global.hero_action_order, 5);
    }
}

