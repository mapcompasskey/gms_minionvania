/**
 * Is Jumping or Falling
 *
 * When reaching the edge of a platform, scan the area directory infront
 * and try to locate a wall. If underneath the wall, make sure there are
 * at least two free spaces next to it so its not just jumping up into a
 * ceiling.
 *
 * This doesn't work really well - I haven't fine tuned the "duration" so
 * its constantly hitting its head against the ceiling or trying to jump
 * down to a lower platform but not clearing the one its on.
 *
 * I can fix jumping to a lower platform by waiting until the object is
 * almost completely off the platform before starting to look for somewhere
 * to jump to.
 *
 * This requires the obj_wall, obj_spikes, and obj_floor_trap to be set to
 * "solid" so the place_free() function can find them.
 */

// if reached the edge of a platform
if (turn_around && ! jumping)
{
    var horz, vert, pos_x, pos_y, origin_x, origin_y, duration;
    
    jump_to_target = false;
    
    // iterate through an area infront of the object
    for (horz = 2; horz < 7; horz++)
    {
        pos_x = x + (horz * facing * TILE_SIZE);
        for (vert = 2; vert > -7; vert--)
        {
            //show_debug_message("h: " + string(horz) + ", v: " + string(vert));
            pos_y = y + (vert * TILE_SIZE);
            
            // if no "solid" objects
            if (place_free(pos_x, pos_y))
            {
                // if a wall is beneath the free space
                if (place_meeting(pos_x, pos_y + 1, obj_wall))
                {
                    // if underneath the wall    
                    if (vert < 0)
                    {
                        // if there are two free spaces infront of the wall
                        if ( place_free(pos_x + (TILE_SIZE * sign(facing) * -1), pos_y + 1) )
                        {
                            if ( place_free(pos_x + (TILE_SIZE * sign(facing) * -2), pos_y + 1) )
                            {
                                origin_x = x;
                                origin_y = bbox_bottom;
                                
                                target_x = pos_x;
                                target_y = pos_y;
                                
                                duration = 40;
                                //if (horz > 3) duration = 50;
                                //if (horz > 4) duration = 60;
                                //duration = abs(horz * 5) + abs(vert * 5);
                                
                                speed_x = (target_x - origin_x) / duration;
                                speed_y = (target_y + 0.5 * -GRAV * duration * duration - origin_y) / duration;
                                
                                // prevent them from being negative
                                speed_x = abs(speed_x);
                                speed_y = abs(speed_y);
                                
                                key_jump_pressed = true;
                                jump_to_target = true;
                            }
                        }
                    }
                    else
                    {
                        origin_x = x;
                        origin_y = bbox_bottom;
                        
                        target_x = pos_x;
                        target_y = pos_y;
                        
                        duration = 30;
                        if (vert > 0) duration = 40;
                        
                        speed_x = (target_x - origin_x) / duration;
                        speed_y = (target_y + 0.5 * -GRAV * duration * duration - origin_y) / duration;
                        
                        // prevent them from being negative
                        speed_x = abs(speed_x);
                        speed_y = abs(speed_y);
                        
                        key_jump_pressed = true;
                        jump_to_target = true;
                    }
                }
            }
            
            if (jump_to_target) break;
        }
        
        if (jump_to_target) break;
    }
    
}

