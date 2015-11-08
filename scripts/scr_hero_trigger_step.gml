if (xTileOffset != 0 || yTileOffset != 0)
{
    hero = instance_place(x, y, obj_hero);
    if (hero)
    {
        xDestination = x;// - sprite_xoffset;
        yDestination = y;// - sprite_yoffset;
        
        xDestination += xTileOffset * global.tileSize;
        yDestination += yTileOffset * global.tileSize;
        
        hero.x = xDestination;
        hero.y = yDestination;
    }
}

