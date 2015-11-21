/**
 * Draw GUI
 */

// draw faded rectangle
draw_set_color(c_black);
draw_set_alpha(0.75);
draw_rectangle(0, 0, view_xview[0] + view_wview[0], 40, false);
draw_set_alpha(1.0);

// draw text to GUI
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_04b03_gui);
draw_text(10, 10, "ARROW keys to Move, Z - Attack, X - Action, F - Fart, SPACE - Jump");

// if inside the battle room
if (IS_BATTLE_MODE)
{
    // draw player health bar
    x1 = TILE_SIZE * 3;
    y1 = TILE_SIZE * 3;
    x2 = x1 + 25;
    y2 = y1 + 200;
    amount = PLAYER_HEALTH;
    backcol = c_dkgray;
    mincol = c_red;
    maxcol = c_red;
    dir = 3; // 2: top, 3: bottom
    showback = true;
    showborder = true;
    draw_healthbar(x1, y1, x2, y2, amount, backcol, mincol, maxcol, dir, showback, showborder);
    
    // draw hero health bar
    x1 = view_wview[0] - (TILE_SIZE * 3) - 25;
    y1 = TILE_SIZE * 3;
    x2 = x1 + 25;
    y2 = y1 + 200;
    amount = HERO_HEALTH;
    backcol = c_dkgray;
    mincol = c_blue;
    maxcol = c_blue;
    dir = 3; // 2: top, 3: bottom
    showback = true;
    showborder = true;
    draw_healthbar(x1, y1, x2, y2, amount, backcol, mincol, maxcol, dir, showback, showborder);
    
    // draw text about hero action order
    draw_set_color(c_gray);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(fnt_04b03_gui);
    var str = "Press the E key to leave.";
    str += "##Press 1, 2, 3, 4, 5, 6, or 7 to choose the#actions the Hero will take next.#";
    str += "#1) move from one side of the screen to the other";
    str += "#2) attack with a single wave that moves across the screen";
    str += "#3) attack with multiple waves that move across the screen";
    str += "#4) throw multiple projectiles that rise into#    pillars when landing on the ground";
    str += "#5) rush toward the player with a melee attack";
    str += "#6) throw a couple of bombs that bounce around";
    str += "#7) jump onto the player";
    for (var i = 0; i < ds_list_size(HERO_ACTION_ORDER); i++)
    {
        if (i == 0)
        {
            str += "##ACTIONS:";
        }
        
        if ((i mod 10) == 0)
        {
            str += "#";
        }
        
        str += string(ds_list_find_value(HERO_ACTION_ORDER, i));
        if ((i + 1) < ds_list_size(HERO_ACTION_ORDER))
        {
            str += ", ";
        }
    }
    draw_text(TILE_SIZE * 5, TILE_SIZE * 3, str);
}

