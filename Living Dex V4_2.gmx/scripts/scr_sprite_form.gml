if sprite_index = -1
    {
    if (dexno = 493 || dexno = 649 || dexno = 710 || dexno = 711 || dexno = 773)
        {
        sprite_index = scr_spr(dexno)
        }
    if dexno = 201
        {
        if form = "!"
            sprite_index = scr_spr(string(dexno)+"_EM")
        if form = "?"
            sprite_index = scr_spr(string(dexno)+"_QM")
        }
        
    if !file_exists("icons\"+string(dexno)+string(form)+".png")
        sprite_index = sprite_add("icons\"+string(dexno)+".png",0,true,false,0,0);
    }
