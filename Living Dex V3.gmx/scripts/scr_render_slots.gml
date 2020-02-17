var i =             6;
var x_pos =         (global.width/2)*global.mult
var y_pos =         (global.width/2)*global.mult
var gen_i =         -1
var box =           1
var target_box
var box_plus =      1

global.boxcount =           30
global.slot_count =         0
global.box_position[0] =    0
global.gen_position[0,0] =  0 // Box No.
global.gen_position[0,1] =  0 // y Poshition

if global.option_boxes = 1
    {
    var box_plus_2 =    1
    global.gen_position[0,2] = 0 // Box First
    global.gen_position[0,3] = 0 // Box Last
    }

if global.option_forms = false
    {
    global.option_forms_gender =    false
    global.option_forms_holditem =  false
    global.option_forms_battle =    false
    }

for (var j = 0; j < global.maximum; j++)
    {
    if i > 5
        {
        i =         0;
        x_pos =     (global.width/2)*global.mult;
        y_pos +=    (global.width)*global.mult;
        
        if global.boxcount >= 30
            {
            if box != 1
                y_pos += ((global.width)*global.mult)/2-12
            else
                y_pos = (global.width/2)*global.mult
                            
            target_box = instance_create(x_pos,y_pos,obj_box_header)
            target_box.box = box
            global.box_position[box] = target_box.y
            show_debug_message("|BOX "+string(box)+": y"+string(global.box_position[box]))
            target_box.image_index = scr_box_header_color()
                
            switch(global.render)
                {
                case 1:
                case 213:
                case 368:
                case 546:
                case 718:
                case 896:
                case 1010:
                    global.gen_position[gen_i+2,0] = box
                    global.gen_position[gen_i+2,1] = target_box.y
                    show_debug_message("GEN "+string(gen_i+2)+": y"+string(global.gen_position[gen_i+2,1]))
                    gen_i++
                    if global.option_boxes = 2
                        box_plus = 0
                break;
                }
            
            box++
            global.boxcount = 0
            y_pos += ((global.width)*global.mult)/2+12
            
            if global.option_boxes = 1
                {
                box_plus++
                target_box.box_plus = box_plus
                }
            }    
        }
      
    var target = instance_create(x_pos,y_pos,obj_newguy)
    var ok = true
    
     switch(target.dexno)
        {   
        case 151:
        case 251:
        case 721:
            if global.option_genskip = true
                {
                global.boxcount = 29;
                i = 6;
                }
        break;
            
        case 386:
            if global.option_genskip = true
                if ((global.option_forms = true && target.form = "SPEED") || global.option_forms = false)
                    {
                    global.boxcount = 30;
                    i = 6;
                    }
        break;
        
        case 493:
            if global.option_genskip = true
                if (target.form = "FAIRY" && i != 0)
                    {
                    global.boxcount = 30;
                    i = 6;
                    }
        break;
        
        case 649:
            if global.option_genskip = true
                if (target.form = "DOUSE DRIVE" && i != 0)
                    {
                    global.boxcount = 30;
                    i = 6;
                    }
        break;
        }
    
    switch(target.form)
        {
        case "MALE":
            if global.option_forms_gender = false
                {
                with target instance_destroy()
                ok = false
                }
        break;
        
        case "MEGA":
        case "MEGA (X)":
        case "MEGA (Y)":
        case "PRIMAL":
        case "ASH":
        case "PIROUETTE":
            if global.option_forms_battle = false
                {
                with target instance_destroy()
                ok = false
                }
        break;
        
        case "FIRE":        case "WATER":   case "ELECTRIC":    case "GRASS":   case "ICE":
        case "FIGHTING":    case "POISON":  case "GROUND":      case "FLYING":  case "PSYCHIC":
        case "BUG":         case "ROCK":    case "GHOST":       case "DRAGON":  case "DARK":
        case "STEEL":       case "FAIRY":
        case "ORIGIN":      case "BLACK":   case "WHITE":
        case "SHOCK DRIVE": case "BURN DRIVE":  case "CHILL DRIVE": case "DOUSE DRIVE":
            if global.option_forms_holditem = false
                {
                with target instance_destroy()
                ok = false
                }
        break;
        
        case "ALOLAN":
        case "ASH 1":   case "ASH 2":   case "ASH 3":   case "ASH 4":   case "ASH 5":   case "ASH 6":
        case "SANDY CLOAK": case "TRASHY CLOAK":
            if global.option_forms = false
                {
                with target instance_destroy()
                ok = false
                }
        break;
        }
        
    if ok = true
        {
        x_pos += (global.width*global.mult)
        i++;
        global.boxcount++
        global.slot_count++
        if global.option_boxes = 1
            {
            if global.boxcount = 1
                global.gen_position[box-1,2] = scr_zeros(target.dexno)
            else
                {
                if global.gen_position[box-1,2] < 800
                    global.gen_position[box-1,3] = scr_zeros(target.dexno)
                else
                    global.gen_position[box-1,3] = ""
                }
            }
        }
    }

global.box_max = box
