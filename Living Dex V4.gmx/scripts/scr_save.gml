for (i = 1; i <= global.maximum; i++)
    {
    ini_write_real("Pokemon", ""+string(i), global.pokemon[i])
    }
ini_write_real("Progress", "count", global.count)
