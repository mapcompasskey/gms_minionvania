/**
 * Initialize Variables
 */

scr_movement_vars();
speed_x = 4;
speed_y = 0;

walking = false;
idling = false;
jumping = false;
recovering = false;

target_x = 0;
target_y = 0;
velocity_x = 0;
velocity_y = 0;

hp = 100;
damage = 10;
action_state = 1;
change_action_state = false;
initialize_action_state_1 = true;
initialize_action_state_2 = true;
initialize_action_state_3 = true;
initialize_action_state_4 = true;
initialize_action_state_5 = true;
initialize_action_state_6 = true;
initialize_action_state_7 = true;

idle_time = 60;
idle_timer = 0;

recover_time = 30;
recover_timer = 0;

attack_cooldown_time = 60;
attack_cooldown_timer = 0;

attack_range = 0;
attack_count = 1;
attack_counter = 0;

// faux object inputs
key_left = false;
key_right = false;
key_jump_pressed = false;

// get positions in the room
room_positions = ds_map_create();

pnt = ds_map_create();
ds_map_add(pnt, "x", view_xview[0] + (32 * 3));
ds_map_add(pnt, "y", view_yview[0] + view_hview[0] - (32 * 3));
ds_map_add(room_positions, "left", pnt);

pnt = ds_map_create();
ds_map_add(pnt, "x", view_xview[0] + view_wview[0] - (32 * 3));
ds_map_add(pnt, "y", view_yview[0] + view_hview[0] - (32 * 3));
ds_map_add(room_positions, "right", pnt);

pnt = ds_map_create();
ds_map_add(pnt, "x", view_xview[0] + (view_wview[0] / 2));
ds_map_add(pnt, "y", view_yview[0] + view_hview[0] - (32 * 3));
ds_map_add(room_positions, "center", pnt);

// set sprite animation
image_index = 0;
image_speed = 0;

