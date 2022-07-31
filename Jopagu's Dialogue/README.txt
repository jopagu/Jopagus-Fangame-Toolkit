
Hi, welcome to my Dialogue System :)

Made by Jopagu
Gamemaker 8.2
Renex Engine

Detailed instructions for usage can be found in instructions.txt
A full list of parameters that can be edited is in parameters.txt


--------------------------
INSTALLATION INSTRUCTIONS
--------------------------

1. Import everything here into the appropriate places in your project. Not everything here is required to use the dialogue, but it is all needed to explore the demo room.
 I personally have it organized like this:
	Scripts
	   Dialogue
		All my scripts
	Sprites
	   Characters
		Character sprites
	   Heads
		Character face sprites
	   Decorations
		Cage
		UpArrow
	   System
		Dialogue Handler & the 32x32 transparent version
	Objects
	   Parents
		Dialogue Handler Parent
	   Tools
		Dialogue Handler Triggered & Interactable
	   Characters
		character objects
	   Decorations
		Cage
		UpArrow
	Fonts
	   My fonts
	Rooms
	   Dialogue demo
	Backgrounds
	   Stars background
2. Add these lines of code to existing files:
	In Scripts/engine_lists/list_gizmos:
		add_gizmo(DialogueHandlerTriggered)
	In Scripts/events/game_start:
		dialogue_defaults()