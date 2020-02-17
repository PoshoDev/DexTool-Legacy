if global.lock = false
    {
    with obj_source {instance_destroy()}
    
    global.name = name
    global.dexno = dexno
    global.sprite = sprite_index
    global.form = form
    global.type1 = type1
    global.type2 = type2
    global.own = own
    
    global.bigsprite = sprite_index
    //global.bigsprite = sprite_add("aggron.png",59,true,true,0,0)
    
    //global.bigsprite = scr_bigsprite(global.name)
    //global.bigsprite = sprite_add("fullart\"+string(dexno)+string(form)+".png",0,true,false,0,0);
    //global.bigsprite = sprite_add("abomasnow-f.gif",0,true,false,0,0);
    
    if global.dexno >= 720
        global.gen = 7
    else
    if global.dexno >= 650
        global.gen = 6
    else
    if global.dexno >= 494
        global.gen = 5
    else
    if global.dexno >= 387
        global.gen = 4
    else
    if global.dexno >= 252
        global.gen = 3
    else
    if global.dexno >= 152
        global.gen = 2
    else
        global.gen = 1
        
    if global.form = "ALOLAN"
        global.gen = 7
    else
        if (global.form = "MEGA" || global.form = "MEGA (X)" || global.form = "MEGA (Y)" || global.form = "PRIMAL")
            global.gen = 6
            
    global.genleft = global.gen
    global.source = 0
    
    loops = 0
    row = 0
    for(i=global.gen; i<=7;i++)
        {
        if (loops = 0 || loops = 2 || loops = 4 || loops = 6)
            {
            thing1 = instance_create(room_width*0.603,view_hview*0.72+(26*row),obj_source)
            thing2 = instance_create(room_width*0.755,view_hview*0.72+(26*row),obj_source)
            }
        else
            {
            thing1 = instance_create(room_width*0.675,view_hview*0.72+(26*row),obj_source)
            thing2 = instance_create(room_width*0.827,view_hview*0.72+(26*row),obj_source)
            row++
            }
        thing1.gen = i
        thing1.mode = 1
        thing2.gen = i
        thing2.mode = 2
        loops++
        }
    }
