/**
 * Update the Direction the Sprite is Facing
 */

if (facing_right && key_left)
{
    image_xscale = -1;
    facing_right = false;
}
else if ( ! facing_right && key_right)
{
    image_xscale = 1;
    facing_right = true;
}

