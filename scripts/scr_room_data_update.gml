/**
 * Update Object Data in the Room
 *
 * Loaded when a Level controller is created. If the room isn't a battle
 * room and if there is room_data, remove the objects added by the room
 * editor and iterate through the room_data, adding the objects.
 */


/** /
// iterate through the ds_list and output all the key/value pairs
var i, mapdata, key, count, val;

for (i = 0; i < ds_list_size(global.room_data); i++) 
{
    // get the ds_map
    mapdata = ds_list_find_value(global.room_data, i);
    
    // get each key out of the ds_map
    key = 0;
    count = 0;
    for (key = ds_map_find_first(mapdata); count < ds_map_size(mapdata); key = ds_map_find_next(mapdata, key))
    {
        // get the value from the ds_map using the key
        val = ds_map_find_value(mapdata, key);
        
        show_debug_message(string(key) + ": " + string(val));
        count++;
    }
    
    show_debug_message("-----");
}
/**/


if (1 == 0)
{
// if there is room data
if (ds_list_size(global.room_data))
{
    // iterate through each monster object
    var i, j, mapdata, obj_x, obj_y, obj_key_left, obj_key_right, obj_damage;
    i = 0;
    
    with (obj_monster)
    {
        // if there is data for this monster
        mapdata = ds_list_find_value(global.room_data, i);
        if (mapdata)
        {
            // get the data
            obj_index = ds_map_find_value(mapdata, "object_index");
            obj_x = ds_map_find_value(mapdata, "x");
            obj_y = ds_map_find_value(mapdata, "y");
            obj_key_left = ds_map_find_value(mapdata, "key_left");
            obj_key_right = ds_map_find_value(mapdata, "key_right");
            obj_damage = ds_map_find_value(mapdata, "damage");
            
            // update the object data
            x = obj_x;
            y = obj_y;
            key_left = obj_key_left;
            key_right = obj_key_right;
            damage = obj_damage;
            
            //show_debug_message(string(i) + ", x: " +  string(obj_x) + ", y: " +  string(obj_y));
        }
        
        // else, the monster must have been destroyed
        else
        {
            instance_destroy();
        }
        
        i++;
    }
}
}

/*
with (obj_monster)
{
    persistent = true;
}
*/


// if not in the battle room
if ( ! global.battle_mode)
{
    // if there is room data
    if (ds_list_size(global.room_data))
    {
        // remove objects added by the room creation code
        with (obj_monster)
        {
            instance_destroy();
        }
        
        // iterate through the room_data
        for (i = 0; i < ds_list_size(global.room_data); i++) 
        {
            // get the ds_map
            mapdata = ds_list_find_value(global.room_data, i);
            if (mapdata)
            {
                // get the data
                obj_index = ds_map_find_value(mapdata, "object_index");
                obj_name = object_get_name(obj_index);
                
                // if Monster object
                if (obj_name == "obj_monster")
                {
                    obj_x = ds_map_find_value(mapdata, "x");
                    obj_y = ds_map_find_value(mapdata, "y");
                    obj_key_left = ds_map_find_value(mapdata, "key_left");
                    obj_key_right = ds_map_find_value(mapdata, "key_right");
                    obj_damage = ds_map_find_value(mapdata, "damage");
                    
                    // create a new Monster object and update it
                    inst = instance_create(obj_x, obj_y, obj_monster);
                    with (inst)
                    {
                        key_left = obj_key_left;
                        key_right = obj_key_right;
                        damage = obj_damage;
                        
                        show_debug_message("create - index: " + string(object_index) + ", x: " + string(x) + ", y: " + string(y));
                    }
                }
                
            }
        }
    }
}

