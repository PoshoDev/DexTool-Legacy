switch(global.method)
    {
    case "surface":
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
    break;
    
    case "old":
        if file_exists("icons\"+string(argument0)+".png")
            return sprite_add("icons\"+string(argument0)+".png",0,true,false,0,0);
        else
            return -1
    break;
    
    case "older":
        return sprite_add("icons\"+string(argument0)+".png",0,true,false,0,0);
    break;
    
    case "cache_old":
        if !file_exists(working_directory+"saved\"+string(argument0)+".png")
            {
            var load = sprite_add("icons\"+string(argument0)+".png",0,true,false,0,0);
            sprite_save(load,0,working_directory+"saved\"+string(argument0)+".png")
            return load
            }
        else
            return sprite_add(working_directory+"saved\"+string(argument0)+".png",0,true,false,0,0);
    break;        

    case "cache":
        if !file_exists(working_directory+"cache\"+string(argument0)+".png")
            {
            http_get_file("http://pikandpok.com/poke/livingdex/icons/"+string(argument0)+".png",working_directory+"cache\"+string(argument0)+".png")
            }
        return sprite_add(working_directory+"cache\"+string(argument0)+".png",0,true,false,0,0);
        //return sprite_add("icons\"+string(argument0)+".png",0,true,false,0,0);
    break;
    
    case "uhh":
        if global.render < 11
        return asset_get_index("sprite"+string(14+global.render)+"_"+string(argument0))
    break;
    
    case "none":
        return 0
    break;
    }
