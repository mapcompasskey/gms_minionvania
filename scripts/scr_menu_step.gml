// on menu move
var onMove = 0;
onMove -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
onMove += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if (onMove != 0)
{
    menuPosition += onMove;
    if (menuPosition < 0)
    {
        menuPosition = array_length_1d(menuOptions) - 1;
    }
    if (menuPosition > array_length_1d(menuOptions) - 1)
    {
        menuPosition = 0;
    }
}

// on menu select
var onSelect;
onSelect = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_shift), keyboard_check_released(vk_space), 0);
if (onSelect == 1)
{
    switch (menuPosition)
    {
        // Start
        case 0:
        {
            room_goto_next();
            break;
        }
        
        // Quit
        case 1:
        {
            game_end();
            break;
        }
    }
}

