///resize()

if (global.width!=browser_width || global.height!=browser_height)
{
    global.width = browser_width;
    global.height = browser_height;

    room_width = browser_width;
    room_height = browser_height;

    window_set_size(browser_width, browser_height);
    
    view_wport[0] = browser_width;
    view_hport[0] = browser_height;
    
    
    // Slot Resizing
    
    global.slot_sep = 0;
    global.slot_len = (global.width-(global.slot_sep*7))/6
    
    if (instance_exists(obj_header))
        with(obj_header)
        {
            y = (number-1) * (height + global.slot_sep*6 + global.slot_len*5 + global.slot_len/2);
            pivot_y = y+height;
        }
    
    if (instance_exists(obj_slot))
        with(obj_slot)
        {
            x = global.slot_sep*(pos_j+1)+global.slot_len*pos_j;
            y = owner.pivot_y+global.slot_sep*(pos_i+1)+global.slot_len*pos_i;
            scale = global.slot_len/sprite_width;
        }
}


