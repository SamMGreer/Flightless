/// align_to_grid(grid_size)
//
// To be used in the step event.
// Stops the player if they are aligned to the grid, and are not pressing any of the movement keys.
//
//  grid_size The size, in pixels, of each square of the grid.
//

grid_size = argument0

if (hspeed != 0) {
    if (x % grid_size == 0) {
        if (!(keyboard_check(vk_left) || keyboard_check(vk_right))) {
            hspeed = 0;
        }
    }
}

if (vspeed != 0) {
    if (y % grid_size == 0) {
        if (!(keyboard_check(vk_up) || keyboard_check(vk_down))) {
            vspeed = 0;
        }
    }
}
