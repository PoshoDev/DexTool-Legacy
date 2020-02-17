global.pokemon[0] = false
global.render = 1
for (i = 1; i <= global.maximum; i++)
    {
    scr_dex(false)
    global.pokemon[i] = ini_read_real("Pokemon",string(dexno)+string(form),false)//""+string(i), false)
    if global.pokemon[i] = true
        global.count++
    
    lel = string(dexno)+string(form)
    if lel = "3FEMALE"
        show_debug_message(string(lel)+": "+string(global.pokemon[i]))
        
    show_debug_message(string(dexno)+string(form))
    //show_debug_message(string(i)+": "+string(global.pokemon[i]))
    global.render++
    }
global.render = 1
    
/*global.option_forms = ini_read_real("Options","forms",0)
global.option_forms_gender = ini_read_real("Options","forms_gender",0)
global.option_forms_battle = ini_read_real("Options","forms_battle",0)
global.option_forms_holditem = ini_read_real("Options","forms_holditem",0)    
    
global.slot_count = ini_read_real("Stats","slot_count",1118)
