// Draw Logo
draw_sprite_ext(spr_minionvania, 0, logoX, logoY, 3, 3, 0, c_white, 1);

// Draw Menu Options
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_04b03_menu);
draw_set_color(c_white);

var i, text, xAlign, yAlign, xOffset, yOffset, strWidth, xPos, yPos;
for (i = 0; i < array_height_2d(menuOptions); i++)
{
    text     = menuOptions[i, 0];
    xAlign   = menuOptions[i, 1];
    yAlign   = menuOptions[i, 2];
    xOffset  = menuOptions[i, 3];
    yOffset  = menuOptions[i, 4];
    strWidth = string_width(text);
    
    // horizontal alignment
    switch (xAlign)
    {
        // align right
        case "right":
            xPos = view_wview[0] - strWidth;
            break;
        
        // align center
        case "center":
            xPos = view_wview[0] / 2 - strWidth / 2;
            break;
            
        // align left
        default:
            xPos = 0;
    }
    
    // vertical alignment
    switch (yAlign)
    {
        // align bottom
        case "bottom":
            yPos = view_hview[0];
            break;
            
        // align middle
        case "middle":
            yPos = view_hview[0] / 2;
            break;
        
        // align top
        default:
            yPos = 0;
    }
    
    // position and draw text
    xPos += xOffset;
    yPos += yOffset;
    draw_text(xPos, yPos, text);
    
    // draw menu arrow
    if (i == menuPosition)
    {
        //draw_sprite(spr_menu_arrow, 0, xPos - 30, yPos);
        draw_sprite_ext(spr_menu_arrow, 0, xPos - 30, yPos, 3, 3, 0, c_white, 1);
    }
}

