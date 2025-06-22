
// === INPUT ===
var move = keyboard_check(vk_right) - keyboard_check(vk_left);
hsp = move * move_speed;

// === TILEMAP COLLISION FUNCTION ===
function tile_collision_at(px, py) {
    var tile_data = tilemap_get_at_pixel(tilemap_id, px, py);
    return tile_data != 0;
}

// === JUMPING ===
if (tile_collision_at(x, y + 1)) {
    on_ground = true;
    jumps = 2;
    jump_buffer_count = 0;
} else {
    on_ground = false;
    jump_buffer_count = min(jump_buffer_count + 1, jump_buffer);
}

if (keyboard_check_pressed(vk_space) && jumps > 0) {
    if (jump_buffer_count <= jump_buffer) {
        vsp = -jump_speed;
        jumps--;
    }
}

// === GRAVITY ===
if (!on_ground) {
    vsp = min(vsp + grav, 16);
}

// === HORIZONTAL COLLISION ===
if (tile_collision_at(x + hsp, y)) {
    while (!tile_collision_at(x + sign(hsp), y)) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

// === VERTICAL COLLISION ===
if (tile_collision_at(x, y + vsp)) {
    while (!tile_collision_at(x, y + sign(vsp))) {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

// === ANIMATION ===
if (hsp != 0) {
    image_xscale = sign(hsp);
}