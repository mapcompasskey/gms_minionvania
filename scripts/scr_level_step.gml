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
}

