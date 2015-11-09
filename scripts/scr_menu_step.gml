/**
 * On Update
 */

// on menu move
var on_menu_move = 0;
on_menu_move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
on_menu_move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if (on_menu_move != 0)
{
    menu_position += on_menu_move;
    if (menu_position < 0)
    {
        menu_position = array_height_2d(menu_options) - 1;
    }
    else if (menu_position > array_height_2d(menu_options) - 1)
    {
        menu_position = 0;
    }
}

// on menu select
var on_menu_select;
on_menu_select = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_shift), keyboard_check_released(vk_space), 0);
if (on_menu_select == 1)
{
    switch (menu_options[menu_position, 0])
    {
        case "Start":
            room_goto_next();
            break;
        
        case "Quit":
            game_end();
            break;
    }
}

