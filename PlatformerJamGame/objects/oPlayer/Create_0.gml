image_speed = 1;
sprite_index = sPlayer_Run;
image_index = 0;
move_speed = 1;
jump_speed = 10;
grav = 0.5;
hsp = 0;
vsp = 0;
jumps = 2; // Number of jumps allowed
jump_buffer = 5; // Frames for jump buffering
jump_buffer_count = 0; // Counter for jump buffering
on_ground = false;
// === CONFIGURATION ===
tilemap_id = layer_tilemap_get_id("LevelMap");
tileset = tilemap_get_tileset(tilemap_id);
tile_width = 18;
tile_height = 18;
