/**
 * Update Object Data in the Room
 *
 * Loaded when a Level controller is created. Loops through the objects
 * in the room and updates them with data captured before the room was
 * destroyed.
 */


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


/** /
// if room_data is empty
if (ds_list_size(global.room_data) == 0)
{
    // iterate through all the monster objects in 
    // the room and store data about each into a ds_list
    var i, inst;
    i = 0;
    
    with (obj_monster)
    {
        show_debug_message("add: " + string(i));
        
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
        
        // i could just destory and recreate it with a variable
        //instance_destroy();
    }
}

// else, if room_data has information
else
{
    var i, j, mapdata, obj_x, obj_y;
    i = 0;
    
    with (obj_monster)
    {
        // get the ds_map
        mapdata = ds_list_find_value(global.room_data, i);

            obj_index = ds_map_find_value(mapdata, "object_index");
            obj_x = ds_map_find_value(mapdata, "x");
            obj_y = ds_map_find_value(mapdata, "y");
            obj_key_left = ds_map_find_value(mapdata, "key_left");
            obj_key_right = ds_map_find_value(mapdata, "key_right");
            obj_damage = ds_map_find_value(mapdata, "damage");
            
            x = obj_x;
            y = obj_y;
            key_left = obj_key_left;
            key_right = obj_key_right;
            damage = obj_damage;
            
            show_debug_message(string(i) + ", x: " +  string(obj_x) + ", y: " +  string(obj_y));
        
        
        i++;
    }
}
/**/



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

