
// if grounded and just pressed the JUMP button
if (grounded && ! jumping && key_jump_pressed)
{
    jumping = true;
    grounded = false;
    vsp = -jumpspeed;
}

// is moving left or right
if (key_left)
{
    hsp = -movespeed;
    walking = true;
}
else if (key_right)
{
    hsp = movespeed;
    walking = true;
}

