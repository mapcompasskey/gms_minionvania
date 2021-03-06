/**
 * On Draw
 */

draw_self();

// draw health bar over object's head
x1 = x - 25;
y1 = bbox_top - 15;
x2 = x1 + 50;
y2 = y1 + 5;
amount = HERO_HEALTH;
backcol = c_dkgray;
mincol = c_green;
maxcol = c_green;
dir = 0;
showback = true;
showborder = false;
draw_healthbar(x1, y1, x2, y2, amount, backcol, mincol, maxcol, dir, showback, showborder);

// draw a little dot where the hero will move to
draw_sprite(spr_yellow_dot, 0, target_x, target_y);

