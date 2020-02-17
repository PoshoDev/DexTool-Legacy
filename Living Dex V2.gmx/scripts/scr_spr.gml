if global.method = "new"
    {
    /*surface_set_target(global.surface)
    draw_clear_alpha(background_colour,0)
    draw_sprite(spr_spritesheet,0,0,0)*/

    var send = sprite_create_from_surface(global.surface,global.column*40,global.row*32,40,32,true,true,0,0)
    global.column ++
    if global.column >= 24
        {
        global.column = 0
        global.row++
        }
    //surface_reset_target();
    return send
    }
else
    return sprite_add("icons\"+string(argument0)+".png",0,true,false,0,0);
