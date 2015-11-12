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
    var mapdata;
    
    // if not in the battle room
    if ( ! global.battle_mode)
    {
        // if room_data is empty
        if (ds_list_size(global.room_data) == 0)
        {
            // get the player data
            with (obj_player)
            {
                // create a new ds_map
                mapdata = ds_map_create();
                
                // add object data to the ds_map
                ds_map_add(mapdata, "object_name", "obj_player");
                ds_map_add(mapdata, "object_index", object_index);
                ds_map_add(mapdata, "x", x);
                ds_map_add(mapdata, "y", y);
                
                // add the ds_map to the ds_list
                ds_list_add(global.room_data, mapdata);
                
                show_debug_message("Save Player, x: " + string(x) + ", y: " + string(y));
            }
            
            // iterate through all monster objects and capture their current data
            with (obj_monster)
            {
                // create a new ds_map
                mapdata = ds_map_create();
                
                // add object data to the ds_map
                ds_map_add(mapdata, "object_name", "obj_monster");
                ds_map_add(mapdata, "object_index", object_index);
                ds_map_add(mapdata, "x", x);
                ds_map_add(mapdata, "y", y);
                ds_map_add(mapdata, "key_left", key_left);
                ds_map_add(mapdata, "key_right", key_right);
                ds_map_add(mapdata, "damage", damage);
                
                // add the ds_map to the ds_list
                ds_list_add(global.room_data, mapdata);
                
                show_debug_message("Save Monster, x: " + string(x) + ", y: " + string(y));
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
    var i, mapdata, obj_index, obj_name, obj_x, obj_y, inst;
    
    // if not in the battle room
    if ( ! global.battle_mode)
    {
        // if there is room data
        if (ds_list_size(global.room_data))
        {
            // remove monster objects added by the room creation code
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
                    // get the X and Y position
                    obj_x = ds_map_find_value(mapdata, "x");
                    obj_y = ds_map_find_value(mapdata, "y");
                    
                    // get the object type
                    obj_name = ds_map_find_value(mapdata, "object_name");
                    switch (obj_name)
                    {
                        // if Player object
                        case "obj_player":
                        {
                            // find and update the player
                            with (obj_player)
                            {
                                x = obj_x;
                                y = obj_y;
                                on_attack_cooldown = true;
                                
                                show_debug_message("Create Player, x: " + string(x) + ", y: " + string(y));
                            }
                            break;
                        }
                        
                        // if Monster object
                        case "obj_monster":
                        {
                            // create a new Monster object and update it
                            inst = instance_create(obj_x, obj_y, obj_monster);
                            
                            inst.key_left  = ds_map_find_value(mapdata, "key_left");
                            inst.key_right = ds_map_find_value(mapdata, "key_right");
                            inst.damage    = ds_map_find_value(mapdata, "damage");
                            
                            show_debug_message("Create Monster, x: " + string(inst.x) + ", y: " + string(inst.y));
                            break;
                        }
                    }
                    
                }
            }
            
            // clear room data
            global.room_data = ds_list_create();
            
        }
    }
}

