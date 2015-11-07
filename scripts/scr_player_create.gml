// scr_player_create()

// Initialize Variables
grav = 0.5;
hsp = 0;
vsp = 0;
max_vsp = 10;
movespeed = 8;
jumps = 0;
jumpsmax = 2;
jumpspeed = 12;

walking = false;
jumping = false;
falling = false;
crouching = false;
hurting = false;
dying = false;
facing_right = true;

grounded = false;
grounded_on_platform = false;
