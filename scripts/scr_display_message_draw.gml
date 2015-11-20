/**
 * On Draw
 */

//draw_self();

if (str_text != "")
{
    var str_wd, str_hg, x1, y1, x2, y2;
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_font(fnt_04b03_gui);
    
    str_wd = string_width(str_text);
    str_hg = string_height(str_text);
    x1 = x - str_wd / 2 - padding;
    y1 = y - padding;
    x2 = x + str_wd / 2 + padding;
    y2 = y + str_hg + padding;
    
    // draw background
    draw_set_color(c_black);
    draw_set_alpha(0.75);
    draw_rectangle(x1, y1, x2, y2, false);
    draw_set_alpha(1);
    
    // draw text
    draw_set_color(c_white);
    draw_text(x, y, str_text);
}

