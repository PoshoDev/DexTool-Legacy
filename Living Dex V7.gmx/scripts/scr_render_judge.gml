///scr_render_judge(form,instance_destroy?)

switch(argument0)
        {
        case "MALE":
            if global.option_forms_gender = false
                {
                if argument1 = true
                    with target instance_destroy()
                return false
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
                if argument1 = true
                    with target instance_destroy()
                return false
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
                if argument1 = true
                    with target instance_destroy()
                return false
                }
        break;
        
        case "ALOLAN":
        case "ASH 1":   case "ASH 2":   case "ASH 3":   case "ASH 4":   case "ASH 5":   case "ASH 6":
        case "SANDY CLOAK": case "TRASHY CLOAK":
            if global.option_forms = false
                {
                if argument1 = true
                    with target instance_destroy()
                return false
                }
        break;
        }

return true
