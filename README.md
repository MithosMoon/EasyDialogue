# EasyDialogue
Easy to learn and modify dialogue system for Godot Game Engine

Installing and using

The EasyDialogue_addon must be in the root of your Project.
If you want to use the overlay dialogue upon your level, setup pause_mode
"processing" for the instanced EasyDialogue scene.
Now, when the the Level Scene is paused from calling get_tree.paused = true from the script
of your Root Node, EasyDialogue will process.
To unpause the Level emit custom signal "unpause" from the func end():
before self.queue_free()
and connect it with your Root Node script.


More:
My dialogue system is not the most elegant solution, but it is easy to understand and can be expanded quickly by simply copying it and is immediately ready for use.

It is ment as an overlay for both, 2D and 3D scenes, has animated texture placeholders and uses the Ubuntu font recource.
It does NOT use timers! The player proceeds though the dialogue, by pressing ui_accept button.

Have Fun and let the Game begin!

Mithos Moon 
