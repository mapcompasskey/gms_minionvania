/**
 * Is Crouching
 */

if ( ! hurting && ! dying && ! jumping)
{
    // if grounded and pressing the DOWN button
    if (grounded && key_down)
    {
        crouching = true;
    }
    
    // if crouching and no longer pressing the DOWN button
    if (crouching && ! key_down)
    {
        crouching = false;
    }
}
