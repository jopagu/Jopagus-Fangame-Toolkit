
Hi, welcome to my Dialogue System :)

Made by Jopagu
Gamemaker 8.2
Renex Engine

Detailed instructions for usage can be found in instructions.txt
A full list of parameters that can be edited is in parameters.txt
A list of everyone who helped me with this is in thanks.txt
A changelog for all the updates to the project is in changelog.txt
Some potential future features can be found in TODO.txt


--------------------------
INSTALLATION INSTRUCTIONS
--------------------------

1. Import everything here into the appropriate places in your project. Not everything here is required to use the dialogue, 
   but it is all needed to explore the demo room. Make sure you add everything to all the index.yyd and tree.yyd files, so
   gamemaker knows where it should go in the project.
 
2. Add these lines of code to existing files:
	In Scripts/engine_lists/list_gizmos:
		add_gizmo(DialogueHandlerTriggered)
	In Scripts/events/game_start:
		dialogue_defaults()
	In Scripts/saving/savedata_load at line 33:
		ds_map_read(global.savedDialogueFlags , savedata("dialogueFlags"))
    		ds_map_clear(global.dialogueFlags)
    		merge_maps(global.dialogueFlags, global.savedDialogueFlags)
	In Scripts/saving/savedata_save at line 64:
		sm = ds_map_write(global.savedDialogueFlags)
    		savedata("dialogueFlags", sm)
	In Scripts/saving/savedata_default at line 26:
		global.dialogueFlags = ds_map_create()
		global.savedDialogueFlags = ds_map_create()