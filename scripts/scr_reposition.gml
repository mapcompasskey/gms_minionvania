/**
 * Is Outside the Room
 */

if (bbox_right < 0)
{
    x = room_width - (bbox_right - bbox_left);
}
else if (bbox_left > room_width)
{
    x = (bbox_right - bbox_left);
}

if (bbox_top > room_height)
{
    y = 0;
}

