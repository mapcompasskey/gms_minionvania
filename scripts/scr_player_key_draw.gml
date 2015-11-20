/**
 * On Draw
 */

draw_self();

// if the Player isn't carrying an item, is colliding with this object, and is idle
if (PLAYER_ITEM == noone && player_colliding && idling)
{
    var pos_x, pos_y, str_text, str_wd, str_hg;
    pos_x = x + sprite_width / 2;
    pos_y = y - TILE_SIZE;
    str_text = "PICK UP KEY";
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_font(fnt_04b03_gui);
    str_wd = string_width(str_text);
    str_hg = string_height(str_text);

    // draw background
    draw_set_color(c_black);
    draw_set_alpha(0.75);
    draw_rectangle(pos_x - str_wd / 2 - 5, pos_y - 5, pos_x + str_wd / 2 + 5, pos_y + str_hg + 5, false);
    draw_set_alpha(1);
    
    // draw text
    draw_set_color(c_white);
    draw_text(pos_x, pos_y, str_text);
}

