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
    
    // draw hero health bar
    x1 = view_wview[0] - 50;
    y1 = 50;
    x2 = x1 + 25;
    y2 = y1 + 200;
    amount = global.hero_health;
    backcol = c_dkgray;
    mincol = c_green;
    maxcol = c_green;
    dir = 3; // 2: top, 3: bottom
    showback = true;
    showborder = true;
    draw_healthbar(x1, y1, x2, y2, amount, backcol, mincol, maxcol, dir, showback, showborder);
}

