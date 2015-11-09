/**
 * Draw GUI
 */

// draw pause screen text
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_04b03_gui);
draw_text(view_wview[0] / 2, view_hview[0] / 2, "PAUSED#Press ESC to continue");

