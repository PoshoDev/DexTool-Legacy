done = false;

do
{
    index = global.count;
    dex_info();
    
    show_debug_message("Dex Conditions for: "+name+" "+form);
    
    switch(form)
    {
        case "FEMALE":
            done = dex_conditions_check(global.options_dex_gender);
            
            if (done)
            {
                icon_flag = "-f";
            }
        break;
        
        case "ALOLAN":
            done = dex_conditions_check(global.options_dex_alolan);
            
            if (done)
            {
                icon_flag = "-alola";
            }
        break;
            
        case "MEGA":
        case "MEGA (X)":
        case "MEGA (Y)":
            done = dex_conditions_check(global.options_dex_mega);
            
            if (done)
            {
                icon_flag = "-mega";
            }
        break;
    
        default:
            done = true;
        break;
    }
}until(done);
