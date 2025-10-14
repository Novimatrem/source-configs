# source-configs

All of my Source engine config files for the source engine, to get those games working properly on my PC.

Look inside of autoexec.cfg for the launch options, which are also required.

# Installation instructions

1. Go inside of autoexec.cfg, copy the entire launch options string, starting at the first ` - `, all the way to the end of the last character in that string. 

2. Paste the launch options string you copied into the Right-click > Properties launch options of the relevant game.

3. Download the entire repository from [https://gitlab.com/Novimatrem/source-configs/-/archive/main/source-configs-main.zip?ref_type=heads](https://gitlab.com/Novimatrem/source-configs/-/archive/main/source-configs-main.zip?ref_type=heads)

4. Extract that zip archive.

5. Copy all the files inside of that folder (the folder containing autoexec.cfg amongst various other files) into the relevant directory.

6. For example, for Garry's Mod, the relevant directory is:

``<....>/steamapps/common/GarrysMod/garrysmod/cfg``

and for Day of Defeat: Source

``<....>/steamapps/common/Day of Defeat Source/dod/cfg``

and so on.

7. Be selecting all 11 files that you just copied into the cfg folder (either still selected because you just dragged them inside, or by Ctrl+clicking all 11 of the most recent files copied into the folder), and then go to Properties, mark the files as Read Only, hit Apply, and then hit OK.

8. Congratulations, you have finished applying the launch options and source configs. Launch your game and it should work just fine.
