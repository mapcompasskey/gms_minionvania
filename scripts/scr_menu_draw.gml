// Draw Logo
draw_sprite(spr_minionvania, 0, logoX, logoY);

// Draw Menu Options
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_04b03);
draw_set_color(c_white);

var xPos, yPos, menuOption;
for (menuOption = 0; menuOption < array_length_1d(menuOptions); menuOption++)
{
    xPos = x + menuX;
    yPos = y + menuY + (menuOption * menuSpacing);
    draw_text(xPos, yPos, string(menuOptions[menuOption]));
    
    // Draw Menu Arrow
    if (menuOption == menuPosition)
    {
        draw_sprite(spr_menu_arrow, 0, xPos - 10, yPos);
    }
}

