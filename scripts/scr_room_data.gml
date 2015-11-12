///scr_room_data(save room data);

/**
 * Save Room Data
 *
 * Called when the Battle Transition controller is created.
 * Loop through and store object data before leaving the room
 * so the objects can be reset when returning.
 */
if (argument0 == true)
{
    // if not in the battle room
    if ( ! global.battle_mode)
    {
        // if room_data is empty
        if (ds_list_size(global.room_data) == 0)
        {
            // iterate through all monster objects and capture their current data
            with (obj_monster)
            {
                // create a new ds_map
                inst = ds_map_create();
                
                // add object data to the ds_map
                ds_map_add(inst, "object_index", object_index);
                ds_map_add(inst, "x", x);
                ds_map_add(inst, "y", y);
                ds_map_add(inst, "key_left", key_left);
                ds_map_add(inst, "key_right", key_right);
                ds_map_add(inst, "damage", damage);
                
                // add the ds_map to the ds_list
                ds_list_add(global.room_data, inst);
                
                show_debug_message("save - index: " + string(object_index) + ", x: " + string(x) + ", y: " + string(y));
            }
        }
    }
}

/**
 * Restore Room Data
 *
 * Loaded when a Level controller is created. If the room isn't a battle
 * room and if there is room_data, remove the objects added by the room
 * editor and iterate through the room_data, adding the objects.
 */
else if (argument0 == false)
{
    var i, mapdata, obj_index, obj_name, obj_x, obj_y, obj_key_left, obj_key_right, obj_damage, inst;
    
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
                if ( ! ds_map_empty(mapdata))
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
                        inst.key_left = obj_key_left;
                        inst.key_right = obj_key_right;
                        inst.damage = obj_damage;
                        
                        show_debug_message("create - index: " + string(inst.object_index) + ", x: " + string(inst.x) + ", y: " + string(inst.y));
                    }
                    
                }
            }
            
            // clear room data
            global.room_data = ds_list_create();
            
        }
    }
}

