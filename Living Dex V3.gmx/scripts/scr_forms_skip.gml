var abort = false

if global.option_forms_battle = false
    {
    if (form = "MEGA" || form = "MEGA (X)" || form = "MEGA (Y)" || form = "PRIMAL" || form = "ASH")
        abort = true
    }

if global.option_forms_gender = false
    {
    if form = "MALE"
        abort = true
    }
    
return abort;
