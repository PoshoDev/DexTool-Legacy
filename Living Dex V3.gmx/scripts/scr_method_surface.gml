global.method = "surface"
global.column = 0
global.row =    0

global.surface = surface_create(960,1520)
surface_set_target(global.surface)
draw_clear_alpha(background_colour,0)
//spr_spritesheet = sprite_add("spritesheet.png",0,true,false,0,0);
draw_sprite(spr_spritesheet,0,0,0)
surface_reset_target();
