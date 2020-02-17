if (file_exists("save.sav")) file_delete("save.sav");
ini_open("save.sav");

/*if global.highscore < global.score
    {
    global.highscore =      global.score
    global.score_break =    true
    }*/
ini_write_real("Save Data","highscore",global.highscore);
ini_write_real("Save Data","mute",global.mute);
ini_write_real("Save Data","music",global.music);

ini_close();
