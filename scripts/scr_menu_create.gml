/**
 * Initialize Variables
 */

// logo options
logo_x = room_width / 2;
logo_y = 100;

// menu options
/*
    [i, 0] = Name
    [i, 1] = Align Horizontally [left|center|right]
    [i, 2] = Align Vertically [top|middle|bottom]
    [i, 3] = X Offset
    [i, 4] = Y Offset
*/
menu_position = 0;

var i = 0;
menu_options[i, 0] = "Start";
menu_options[i, 1] = "right";
menu_options[i, 2] = "bottom";
menu_options[i, 3] = -100;
menu_options[i, 4] = -140;

var i = 1;
menu_options[i, 0] = "Quit";
menu_options[i, 1] = "right";
menu_options[i, 2] = "bottom";
menu_options[i, 3] = -100;
menu_options[i, 4] = -100;

