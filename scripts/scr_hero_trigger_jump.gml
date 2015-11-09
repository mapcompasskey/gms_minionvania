if (1 == 0)
{
    if (isTriggered)
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
        
        // starting vector
        xJumpOrigin = x;//bbox_left + sprite_width / 2;
        yJumpOrigin = y;//bbox_bottom;
        
        // target vector
        xJumpDestination += 0;
        yJumpDestination -= sprite_height;
        
        // distance
        // adjacent = xJumpDestination - xJumpOrigin;
        // opposite = yJumpDestination - yJumpOrigin;
        // hypotenuse = sqrt((adjacent * adjacent) + (opposite * opposite));
        hypotenuse = point_distance(xJumpDestination, yJumpDestination, xJumpOrigin, yJumpOrigin);
        
        // speed
        // if this entity moves to quickly, it'll jitter when trying to jump to a lower platform
        /*duration = (hypotenuse / 70);
        if (duration > 1.25)
        {
            duration = 1.25;
        }*/
        
        duration = 120;
        
        hsp = (xJumpDestination - xJumpOrigin) / duration;
        vsp = (yJumpDestination + 0.5 * -(grav) * duration * duration - yJumpOrigin) / duration;
        //show_debug_message(string(hypotenuse) + ", " + string(duration) + " - " + string(hsp) + ", " + string(vsp));
        
        //duration = 120;
        //hspeed = (xJumpDestination - xJumpOrigin) / duration;
        //vspeed = (yJumpDestination + 0.5 * -(grav) * duration * duration - yJumpOrigin) / duration;
        
        jumping = true;
        isTriggered = false;
    }
    
    /*if (jumping)
    {
        hsp = 0;
        vsp = 0;
    }*/
}

if (1 == 0)
{
    if (isTriggered)
    {
        show_debug_message("Ox: " + string(x) + ", Tx: " + string(xJumpDestination));
        show_debug_message("Oy: " + string(y) + ", Ty: " + string(yJumpDestination));
        // target vector
        //xJumpDestination += 0;
        yJumpDestination -= sprite_height;
        
        //duration = 2;// * 1000000;
        duration = 0;
        
        jumping = true;
        isTriggered = false;
    }
    
    if (jumping)
    {
        // starting vector
        xJumpOrigin = x;
        yJumpOrigin = y;
        
        // distance
        //hypotenuse = point_distance(xJumpDestination, yJumpDestination, xJumpOrigin, yJumpOrigin);
        
        // duration
        if (1 == 0)
        {
            duration -= (delta_time/1000000);
            if (duration > 0.5)
            {
                hsp = (xJumpDestination - xJumpOrigin) / duration;
                vsp = (yJumpDestination + 0.5 * -(grav) * duration * duration - yJumpOrigin) / duration;
                show_debug_message("dur: " + string(duration) + ", hsp: " + string(hsp) + ", vsp: " + string(vsp));
            }
        }
        
        duration += (delta_time/1000000);
        if (duration < 2)
        {
            hsp = (xJumpDestination - xJumpOrigin) / duration;
            vsp = (yJumpDestination + 0.5 * -(grav) * duration * duration - yJumpOrigin) / duration;
            show_debug_message("dur: " + string(duration) + ", hsp: " + string(hsp) + ", vsp: " + string(vsp));
        }
        else
        {
            hsp = 0;
            vsp = 0;
            jumping = false;
        }
    }
}

if (1 == 0)
{
    if (isTriggered)
    {
        // starting vector
        xJumpOrigin = x;
        yJumpOrigin = y;
        
        // target vector
        xJumpDestination += 0;
        yJumpDestination -= sprite_height;
        
        // distance
        hypotenuse = point_distance(xJumpDestination, yJumpDestination, xJumpOrigin, yJumpOrigin);
        distance = hypotenuse;
        
        //duration = 2 * 1000;
        duration = 2;
        timeElapsed = 0;
        
        xVelocity = (xJumpDestination - xJumpOrigin) / duration;
        yVelocity = (yJumpDestination + 0.5 * -(grav) * duration * duration - yJumpOrigin) / duration;
        
        show_debug_message("Ox: " + string(xJumpOrigin) + ", Tx: " + string(xJumpDestination));
        show_debug_message("Oy: " + string(yJumpOrigin) + ", Ty: " + string(yJumpDestination));
        show_debug_message("dur: " + string(duration) + ", xV: " + string(xVelocity) + ", yV: " + string(yVelocity));
        
        jumping = true;
        isTriggered = false;
    }
    
    if (jumping)
    {
        //show_debug_message(delta_time);
        
        hsp = xVelocity * (delta_time / 1000000);
        vsp = yVelocity * (delta_time / 1000000) + grav;
        
        timeElapsed += (delta_time / 1000000);
        
        if (timeElapsed > duration)
        {
            hsp = 0;
            vsp = 0;
            jumping = false;
        }
    }
}

if (1 == 0)
{
    if (isTriggered)
    {
        startTime = current_time;
        show_debug_message("time: " + string(startTime));
        
        // starting vector
        xJumpOrigin = x;
        yJumpOrigin = y;
        
        // target vector
        xJumpDestination += 0;
        yJumpDestination -= sprite_height;
        
        duration = 1;
        
        xVelocity = (xJumpDestination - xJumpOrigin) / duration;
        yVelocity = (yJumpDestination + 0.5 * -(grav) * duration * duration - yJumpOrigin) / duration;
        
        show_debug_message("xVel: " + string(xVelocity));
        show_debug_message("yVel: " + string(yVelocity));
        
        jumping = true;
        isTriggered = false;
    }
    
    if (jumping)
    {
        t = (current_time - startTime) / 1000;
        show_debug_message("t: " + string(t));
        
        //x = H * t;
        //y = YO + (V * t) + (0.5 * G * t * t);
        
        hsp = 0;
        vsp = 0;
        
        x = xJumpOrigin + (xVelocity * t);
        y = yJumpOrigin + (yVelocity * t) + (0.5 * grav * t * t);
        
        if (t > duration)
        {
            hsp = 0;
            vsp = 0;
            jumping = false;
        }
    }
}

if (1 == 0)
{
    if (isTriggered)
    {
        startTime = current_time;
        show_debug_message("time: " + string(startTime));
        
        // starting vector
        xJumpOrigin = x;
        yJumpOrigin = y;
        
        // target vector
        xJumpDestination -= 16;
        yJumpDestination -= sprite_height;
        
        t = 0;
        duration = 60;
        
        xVelocity = (xJumpDestination - xJumpOrigin) / duration;
        yVelocity = (yJumpDestination + 0.5 * -grav * duration * duration - yJumpOrigin) / duration;
        
        show_debug_message("xVel: " + string(xVelocity));
        show_debug_message("yVel: " + string(yVelocity));
        
        jumping = true;
        isTriggered = false;
    }
    
    if (jumping)
    {
        //t = (current_time - startTime) / 1000;
        //show_debug_message("t: " + string(t));
        
        //yVelocity += grav * t;
        //x = xJumpOrigin + (xVelocity * t);
        //y = yJumpOrigin + (yVelocity * t);
        
        // Fx = Vox*t + Ox;
        // Fy = -0.5 * g * t * t + Voy*t + Oy; 
        //x = (xVelocity * t) + xJumpOrigin;
        //y = -0.5 * grav * t * t + (yVelocity * t) + yJumpOrigin;
        
        hsp = 0;
        vsp = 0;
        
        x = (xVelocity * t) + xJumpOrigin;
        y = -0.5 * grav * t * t + (yVelocity * t) + yJumpOrigin;
        yVelocity += grav;
        //hspeed = xVelocity;
        //vspeed = yVelocity;
        //gravity = grav;
        
        t++;
        if (t > duration)
        {
            hsp = 0;
            vsp = 0;
            hspeed = 0;
            vspeed = 0;
            gravity = 0;
            jumping = false;
            movespeed = 0;
        }
    }
}

if (1 == 1)
{
    if (isTriggered)
    {
        // starting vector
        xJumpOrigin = x;
        yJumpOrigin = y;
        
        // target vector
        xJumpDestination -= 16;
        yJumpDestination -= sprite_height;
        
        timeElapsed = 0;
        duration = 1; // one second
        
        xVelocity = (xJumpDestination - xJumpOrigin) / duration;
        yVelocity = (yJumpDestination + 0.5 * -grav * duration * duration - yJumpOrigin) / duration;
        
        jumping = true;
        isTriggered = false;
    }
    
    if (jumping)
    {
        t = (delta_time / 1000000);
        
        yVelocity += grav;// * (delta_time / 1000000);
        //yVelocity += (0.5 * grav * t * t);
        show_debug_message("x: " + string(xVelocity) + ", y: " + string(yVelocity));
        
        hsp += xVelocity * t;
        vsp += yVelocity * t;
        
        
        timeElapsed += (delta_time / 1000000);
        if (timeElapsed > duration)
        {
            hsp = 0;
            vsp = 0;
            jumping = false;
            movespeed = 0;
        }
    }
}

