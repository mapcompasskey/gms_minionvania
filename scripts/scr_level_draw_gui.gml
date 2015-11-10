/**
 * Draw GUI
 */

// draw text to GUI
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_04b03_gui);
draw_text(10, 10, "ARROW keys to Move, SPACE to Jump");

// if inside the battle room
if (global.battle_mode)
{
    // draw exit text
    draw_set_color(c_white);
    draw_set_halign(fa_right);
    draw_set_valign(fa_top);
    draw_set_font(fnt_04b03_gui);
    draw_text(view_wview[0] - 10, 10, "Press the X key to leave");    
}

