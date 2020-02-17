var sep = global.slot_sep;
var len = global.slot_len;

var box, target;

var box_count = 0;      // Box Count
var box_sep =   sep;    // Separation between each Box frame

global.count =     0;      // Current Pokémon


while (global.count < global.maximum)
{
    box = instance_create(sep, box_sep, obj_header);
        box.number = ++box_count;
        box.height = 48;
        box.pivot_y = y+box.height;
        
    for(var i=0; i<5; i++)
    {
        for(var j=0; j<6; j++)
        {
            global.count++
             
            target = instance_create(sep*(j+1)+len*j, box_sep+box.height+sep*(i+1)+len*i, obj_slot);
            with(target)
            {
                index = global.count;
                owner = box;
                pos_i = i;
                pos_j = j;
                scale = len/target.sprite_width;
                own = false;
                hover = false;
                color = c_white;
                
                dex_blank();
                dex_conditions();
                
                sprite_index = sprite_get();
            }
        }
    }
    
    box_sep += box.height + sep*6 + len*5 + len/2;
}
