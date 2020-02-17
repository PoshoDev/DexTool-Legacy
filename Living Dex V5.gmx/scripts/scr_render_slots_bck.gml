var i = 0;
var x_pos = (global.width/2)*global.mult
var y_pos = (global.width/2)*global.mult

for (var j = 0; j <= global.maximum; j++)
    {
    if i > 5
        {
        i =         0;
        x_pos =     (global.width/2)*global.mult;
        y_pos +=    (global.width)*global.mult;
        if global.boxcount = 30
            {
            global.boxcount = 0
            y_pos += ((global.width)*global.mult)/2
            }
        }
    instance_create(x_pos,y_pos,obj_newguy)
    x_pos += (global.width*global.mult)
    i++;
    }
