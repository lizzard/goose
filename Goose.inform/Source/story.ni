"Goose" by lizzard

use serial comma;

The carrying capacity of the player is 1.

The description of the player is "You're large, you're white, and you're waddling."

Before going to any room:
	say "You waddle over with deadly purpose." ;
	unless the player carries nothing:
		say "Dragging stuff behind you.";

	
Before taking:
	say "You jab your beak at it.";
	if the player is carrying anything:
		now everything carried by the player is in the location;
		
Instead of taking an object which is fixed in place:
	say "It's too big. Maybe you could peck it instead.";
		

Honking is an action applying to nothing. Understand "honk" as honking. 

Carry out honking:
		say "HONK!!!!";
		
Flapping is an action applying to nothing. Understand "flap" as flapping. 

Carry out flapping:
		say "You flap your wings, menacing everything in the near vicinity.";

Pecking is an action applying to one thing. Understand "peck [something]" as pecking. 


		
Carry out pecking:
	say "You jab your beak at [the noun].";
	if the noun is a device and the noun is switched off:
		say "[The noun] switches on.";
		now the noun is switched on;
		stop the action;
	if the noun is a device and the noun is switched on:
		say "[The noun] switches off.";
		now the noun is switched off;

			
		

An Open-plan office is a room. The description is "A large room with narrow hallways running between grey-walled cubicles."

A potted palm is an object in an open-plan office.

The printer is a device in an open-plan office. It is fixed in place.

An Office kitchen is east of an open-plan office. The description is "This mini kitchen has tasty snacks and bad coffee."

A pod-based coffee maker is a device in an office kitchen. It is fixed in place.

A sink is a device in an office kitchen. It is fixed in place.

A cup of coffee is an object.

A purple-haired developer is a person. She is in an office kitchen. A purple-haired developer is carrying a cup of coffee.


A Conference room is west of an open-plan office. The description is "A large board room with chairs arranged around a central table."

A project manager is a person in a conference room. The description of a project manager is "A geeky looking person, concentrating deeply."


An ipad is an object in a conference room. It is fixed in place. The description of an ipad is "An ipad with an interface to control a video conference."

A video camera is an object in a conference room.



A Cubicle is south of an open-plan office. The description is "An adjustable standing/sitting desk dominates this spacious cubicle."

An adjustable desk is a supporter in a cubicle. 

A tattered copy of Design Patterns is on the adjustable desk. Understand "book" as a tattered copy of Design Patterns.


After pecking an ipad:
	say "A huge picture of a honking goose fills the conference room screen.";
	say "The conference call participants all start talking at once!";
	say "Someone yells, 'STOP THAT GOOSE!' and starts to chase you!";
	now the printed name of an ipad is "battered and scratched ipad";
	now the printed name of a project manager is "flustered geek, chasing you around the room.";
	now the description of a project manager is "A geeky looking person, upset and disheveled, coming at you with hands outstretched to grab your neck.";
	

After taking a potted palm:
	now the description of a potted palm is "A torn up potted plant, on its side with dirt spilling out.";
	now the printed name of a potted palm is "orn-up potted palm, lying sideways";
	now spilled dirt is in the location of the player;
	
After pecking a potted palm:
	now the description of a potted palm is "A torn up potted plant, on its side with dirt spilling out.";
	now the printed name of a potted palm is "torn-up potted palm, lying sideways";
	now spilled dirt is in the location of the player;
	
After dropping a tattered copy of Design Patterns:	now the printed name of a tattered copy of Design Patterns is "book with the cover torn off";
	now the description of a tattered copy of Design Patterns is "A book with the cover torn off, covered in goose spit.";
	now little bits of chewed up paper is in the location of the player;
	
After pecking the printer:
	say "Some sheets of paper fly out of the printer and across the room.";
	now the printed name of the printer is "dented printer";
	now some sheets of paper is in the location of the player.
	

Some spilled dirt is an object. 
Some little bits of chewed up paper is an object.
Some sheets of paper is an object.




[Adds taglines to your inventory for particular things] 		
The print standard inventory rule is not listed in any rulebook. 		
Carry out taking inventory (this is the new print inventory rule):
	say "You are carrying: [line break]";
	list the contents of the player, with newlines, indented, including contents, with extra indentation. 

After printing the name of something (called target) while taking inventory:
    follow the property-aggregation rules for the target. 

The property-aggregation rules are an object-based rulebook.
The property-aggregation rulebook has a list of text called the tagline. 

A property-aggregation rule for a thing (this is the mention objects rule):
        add "in your beak" to the tagline. 

The last property-aggregation rule (this is the print aggregated properties rule):
	if the number of entries in the tagline is greater than 0:
		say " ([tagline])";
		rule succeeds;
	rule fails. 
