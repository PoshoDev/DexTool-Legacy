//Female/Male/Mega tags   
switch(argument0)
{
    case "FEMALE":
        if global.option_forms_gender = true 
            draw_sprite_ext(spr_tag,0,i*40,j*32-8,global.mult,global.mult,image_angle,image_blend,image_alpha)
    break;
    
    case "MALE":
        if global.option_forms_gender = true 
            draw_sprite_ext(spr_tag,1,i*40,j*32-8,global.mult,global.mult,image_angle,image_blend,image_alpha)
    break;
    
    case "MEGA":
        if global.option_forms_battle = true 
            draw_sprite_ext(spr_tag,2,i*40,j*32-8,global.mult,global.mult,image_angle,image_blend,image_alpha)
    break;
}

//Arceus & Silvally tags
if global.option_forms_holditem = true
    switch(dexno)
        {
        case 493:
        case 773:
                draw_sprite_ext(spr_tag,scr_typeget(type1)+3,i*40,j*32-8,global.mult,global.mult,image_angle,image_blend,image_alpha)
        break;
        
        case 649:
            switch(argument0)
                {
                case "":
                    var k = "none"
                break;
                
                case "SHOCK DRIVE":
                    var k = "Electric"
                break;
                
                case "BURN DRIVE":
                    var k = "Fire"
                break;
                
                case "CHILL DRIVE":
                    var k = "Ice"
                break;
                
                case "DOUSE DRIVE":
                    var k = "Water"
                break;
                }
            if k != "none"
                draw_sprite_ext(spr_tag,scr_typeget(k)+3,i*40,j*32-8,global.mult,global.mult,image_angle,image_blend,image_alpha)
        break;
        }
