/**
 * Initialize Variables
 */

// set global room variables here
global.battle_mode = false;


//global.room_data = ds_list_create();

/*
var obj_name;
with (all)
{
    obj_name = object_get_name(object_index);
    if (obj_name != "obj_wall")
    {
        show_debug_message(string(obj_name));
    }
}
*/

/** /
var obj_name, obj_index, obj_x, obj_y, obj_facing_right;
with (all)
{
    obj_name = object_get_name(object_index);
    switch (obj_name)
    {
        case "obj_monster":
            obj_x = x;
            obj_y = x;
            obj_index = object_index;
            obj_facing_right = facing_right;
            show_debug_message(string(obj_x) + ", " + string(obj_y) + ", " + string(obj_index));
            break;
    }
}
/**/



// variable to store object data
global.room_data = ds_list_create();


// iterate through all the monster objects
// and store data about each into a ds_list
var i, inst;
i = 0;

with (obj_monster)
{
    // create a new ds_map
    inst = ds_map_create();
    
    // add object data to the ds_map
    ds_map_add(inst, "idx", i);
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

