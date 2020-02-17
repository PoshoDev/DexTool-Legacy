for (i = 1; i <= global.maximum; i++)
    {
    global.pokemon[i] = ini_read_real("Pokemon", ""+string(i), false)
    }

global.count = ini_read_real("Progress", "count", 0)
