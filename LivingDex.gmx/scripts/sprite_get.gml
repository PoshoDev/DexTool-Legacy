var catg =  working_directory + "Sprites\_Icons\"
var palt =  "Regular\"
var pkmn =  string_lower(name);
var flag = icon_flag;
var ext =   ".png"

var path =  catg+palt+pkmn+flag+ext;    // With Flag
var path2 = catg+palt+pkmn+ext;         // Without Flag

if (file_exists(path))
    return sprite_add(path, 1, true, true, 20, 15);
else if (file_exists(path2))
    return sprite_add(path2, 1, true, true, 20, 15);
else
    return spr_bar;
