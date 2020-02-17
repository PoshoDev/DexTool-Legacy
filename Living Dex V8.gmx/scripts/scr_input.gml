///scr_input(x,y,title,limit (-1),enabled)
with instance_create(argument0,argument1,obj_input)
    {
    title = argument2
    
    instance = input_text_create_singleline_ext(x, y, sprite_get_width(spr_input)*3.5-16, ft_input_0, c_dkgray, 1, argument3, fa_left, fa_middle, true, 0);
    input_text_set_enabled(instance, argument4);
    }
