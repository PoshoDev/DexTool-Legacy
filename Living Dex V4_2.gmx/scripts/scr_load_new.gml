global.pokemon[0] = false
for (i = 1; i <= global.maximum; i++)
    {
    global.pokemon[i] = ini_read_real("Pokemon", ""+string(i), false)
    if global.pokemon[i] = true
        global.count++
    }
