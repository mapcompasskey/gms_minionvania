/**
 * State 7
 *
 * Jump towards the Player.
 */

if (initialize_action_state_7)
{
    show_debug_message("attack state 7");
    initialize_action_state_7 = false;
    
    /*
    // if on the right side of the screen
    if (x > view_wview[0] / 2)
    {
        // move left
        key_left = true;
        key_right = false;
        
        // face left
        image_xscale = -1;
        facing_right = false;
        
        // get the room's "left" position
        pnt = ds_map_find_value(room_positions, "left");
        target_x = ds_map_find_value(pnt, "x");
        target_y = ds_map_find_value(pnt, "y");
    }
    
    // else, if on the left side of the screen
    else
    {
        // move right
        key_left = false;
        key_right = true;
        
        // face right
        image_xscale = 1;
        facing_right = true;
        
        // get the rooms "right" position
        pnt = ds_map_find_value(room_positions, "right");
        target_x = ds_map_find_value(pnt, "x");
        target_y = ds_map_find_value(pnt, "y");
    }
    */
    
    player = instance_find(obj_player_battle, 0);
    if (player)
    {
        /*
        // draw a blue square on the found tile
        this.posBlueTile.x = this.jumpTo.x;
        this.posBlueTile.y = this.jumpTo.y;
        
        // starting vector
        var origin = {};
        origin.x = this.pos.x + ( this.size.x / 2 );
        origin.y = this.pos.y + this.size.y;
        
        // ending vector
        var target = {};
        target.x = this.jumpTo.x;
        target.y = this.jumpTo.y - ig.game.tileSize;
        
        // distance
        var adjacent = target.x - origin.x;
        var opposite = target.y - origin.y;
        var hypotenuse = Math.sqrt( (adjacent * adjacent) + (opposite * opposite) );
        
        // speed
        // if this entity moves to quickly, it'll jitter when trying to jump to a lower platform
        var duration = ( hypotenuse / 70 );
        duration = ( duration > 1.25 ? 1.25 : duration );
        
        var xVel = ( ( target.x - origin.x ) / duration );
        var yVel = ( ( target.y + 0.5 * -(ig.game.gravity) * duration * duration - origin.y ) / duration );
        
        // set velocity
        this.vel.x = xVel;
        this.vel.y = yVel;
        
        this.jumpTo = null;
        this.jumping = true;
        */
    }
}

else
{
    if ( ! grounded && jumping)
    {
        //hsp = velocity_x;
    }
    
    if (grounded && jumping)
    {
        jumping = false;
    }
    
    /*
    // if moving left
    if (key_left)
    {
        // move left
        hsp = -movespeed;
        walking = true;
    }
    
    // else, if moving right
    else if (key_right)
    {
        // move right
        hsp = movespeed;
        walking = true;
    }
    
    // if within reach of the target
    if (point_distance(target_x, target_y, x, y) < movespeed)
    {
        // turn around
        image_xscale = -image_xscale;
        facing_right = !facing_right;
        
        // idle for a moment
        idle_time = 0.5;
        idling = true;
        
        // change action state
        change_action_state = true;
        
        // reset state initialization
        initialize_action_state_7 = true;
    }
    */
}

