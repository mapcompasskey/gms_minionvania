/**
 * Copy Object Data in the Room
 *
 * Called when the Battle Transition controller is created.
 * Loop through and store object data before leaving the room
 * so the objects can be reset when returning.
 */

if (1 == 0)
{
// create new ds_list
global.room_data = ds_list_create();

// iterate through all the monster objects in 
// the room and store data about each into a ds_list
var i, inst;
i = 0;

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
    
    i++;
}
}



// if not in the battle room
if ( ! global.battle_mode)
{
    // if the room_data is empty
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

