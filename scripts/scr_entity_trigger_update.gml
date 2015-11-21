
// if trigger only affects left moving objects
if (if_moving_left)
{
    if ( ! inst.key_left)
    {
        exit;
    }
}

// if trigger only affects right moving objects
if (if_moving_right)
{
    if ( ! inst.key_right)
    {
        exit;
    }
}

// if this trigger can be ignored
if (ignore_count)
{
    ignore_counter++;
    if (ignore_counter <= ignore_count)
    {
        exit;
    }
    ignore_counter = 0;
}

// reset the level
if (reset_level)
{
    room_restart();
}

// update movespeed
if (speed_x && is_real(speed_x))
{
    inst.speed_x = speed_x;
}

// reset speed x
if (reset_speed_x)
{
    inst.speed_x = inst.base_speed_x;
}

// update jumpspeed and jump
if (speed_y && is_real(speed_y))
{
    inst.speed_y = speed_y;
    inst.key_jump_pressed = true;
}

// turn around
if (turn_around)
{
    inst.key_left  = !inst.key_left;
    inst.key_right = !inst.key_right;
}

