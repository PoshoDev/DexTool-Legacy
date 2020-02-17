for (i = 1; i <= global.maximum; i++)
    {
    scr_dex(false)
    ini_write_real("Pokemon",string(dexno)+string(form), global.pokemon[i])
    }
ini_write_real("Progress", "count", global.count)
