"Office Goose" by Lizzard

The story title is "Office Goose". 
The story author is "Lizzard". 
The story genre is "Comedy". 
The release number is 1. 
The story description is "It's a beautiful day in the office, and you are a horrible goose." 
The story creation year is 2019.

Release along with an interpreter.

use serial comma;

use scoring;

the maximum score is 9;

When play begins:
    now the left hand status line is
        "[the player's surroundings]";
    now the right hand status line is "Score: [score]". 

Every turn:
	if the score is greater than 8:
		say "Congratulations! You are the most horrible of horrible geese.";
		say "This start-up office will never be the same.";
		say "You run outside, ready to wreak mayhem on the rest of the world!";
		end the story finally.

The carrying capacity of the player is 1.

After printing the banner text, say "It's a beautiful day in the office, and you are a horrible goose.";

Section 1 - Rules for the goose

The description of the player is "You're large, you're white, and you're waddling."

Before going to any room:
	say "You waddle over with deadly purpose." ;

Before taking:
	say "You jab your beak at it.";
	if the player is carrying anything:
		now everything carried by the player is in the location;
		
Instead of taking an object which is fixed in place:
	say "It's too big. Maybe you could peck it instead.";
		
Honking is an action applying to nothing. Understand "honk" as honking. 

Carry out honking:
		say "HONK!!!!";
		
After honking:
	if  more than one person is in the location of the player:
		say "Startled, a hapless office worker looks up in alarm.";
				
Flapping is an action applying to nothing. Understand "flap" as flapping. 

After flapping:
	if  more than one person is in the location of the player:
		say "Everyone in the room starts in surprise.";
		
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

			
		
Section 2 - The Office

An Open-plan office is a room. The description is "A large room with narrow hallways running between grey-walled cubicles. Exits lead east, west, and south."

A potted palm is an object in an open-plan office. The description of a potted palm is "A large indoor plant with luxuriant fronds."

The printer is a device in an open-plan office. It is fixed in place. The description of the printer is "This large printer has a ton of options for copying, collating, and stapling."


After taking a potted palm for the first time:
	now the description of a potted palm is "A torn up potted plant, on its side with dirt spilling out.";
	now the printed name of a potted palm is "torn-up potted palm, lying sideways";
	now spilled dirt is in the location of the player;
	increment the score;
	
After pecking a potted palm:
	say "Dirt spills out. How satisfying. You could probably pick up the whole plant.";
	now the description of a potted palm is "A torn up potted plant, on its side with dirt spilling out.";
	now the printed name of a potted palm is "torn-up potted palm, lying sideways";
	now spilled dirt is in the location of the player;


After pecking the printer for the first time:
	say "Some sheets of paper fly out of the printer and across the room.";
	now the printed name of the printer is "dented printer";
	now some sheets of paper is in the location of the player;
	increment the score;


An Office kitchen is east of an open-plan office. The description is "This mini kitchen has tasty snacks and bad coffee. The main office is just to the east."

A pod-based coffee maker is a device in an office kitchen. It is fixed in place. The description is "This sturdy machine is ready to make you a bitter cup of plastic swill."

A sink is a device in an office kitchen. It is fixed in place. The description is "A gleaming, tidy sink."

A cup of coffee is an object. The description is "A steaming, very full cup of coffee."

A purple-haired developer is a person. She is in an office kitchen. A purple-haired developer is carrying a cup of coffee.

Instead of examining a purple-haired developer:
    say "[The noun] is carrying [a list of things carried by the noun]." 

After pecking a pod-based coffee maker for the first time:
	say "Coffee sprays out of the coffee maker!";
	now puddles of spilled coffee is in the location of the player;
	increment the score;

After pecking a sink for the first time:
	say "The faucet cracks. Water sprays all over!";
	now puddles of water is in the location of the player;
	increment the score;
	
After pecking a purple-haired developer for the first time:
	say "The developer shrieks in rage. She comes at you ready to kill.";
	now the printed name of a purple-haired developer is "purple-haired developer trying to catch you";
	now the cup of coffee is in the location of the player;
	now puddles of coffee is in the location of the player;
	now the printed name of the cup of coffee is "empty coffee cup";
	increment the score;

After pecking a cup of coffee:
	if the cup of coffee is carried by the developer:
		say "Hot coffee spills all over the developer. She yells and drops the cup.";
		now the cup of coffee is in the location of the player;
		now puddles of coffee is in the location of the player;
		now the printed name of the cup of coffee is "empty coffee cup";
		now the printed name of a project manager is "wet, scalded geek, chasing you around the room.";
		now the description of a project manager is "A geeky looking person, covered in coffee, coming at you with hands outstretched to grab your neck.";


A Conference room is west of an open-plan office. The description is "A large board room with chairs arranged around a central table. Through the open door, you can see the main office."

A project manager is a person in a conference room. The description of a project manager is "A geeky looking person, concentrating deeply."

After pecking a project manager for the first time:
	say "You peck her in the butt, feeling a deep sense of satisfaction.";
	say "'OUCH!!! HEY!!!'";
	say "The project manager leaps up from her chair!";
	now the printed name of a project manager is "flustered geek, chasing you around the room";
	now the description of a project manager is "A geeky looking person, upset and disheveled, coming at you with hands outstretched to grab your neck.";
	increment the score;

An ipad is an object in a conference room. It is fixed in place. The description of an ipad is "An ipad with an interface to control a video conference."

A video camera is an object in a conference room. It is fixed in place.

After pecking an ipad for the first time:
	say "A huge picture of a plump goose fills the conference room screen.";
	say "The conference call participants all start talking at once!";
	say "Someone yells, 'STOP THAT GOOSE!' and starts to chase you!";
	now the printed name of an ipad is "battered and scratched ipad";
	now the printed name of a project manager is "flustered geek, chasing you around the room";
	now the description of a project manager is "A geeky looking person, upset and disheveled, coming at you with hands outstretched to grab your neck.";
	increment the score;
	
Instead of pecking a video camera:
	say "You leap several feet in the air but fail to peck the video camera.";


A Cubicle is south of an open-plan office. The description is "An adjustable standing/sitting desk dominates this spacious cubicle. The main office is just to the north."

An adjustable desk is a supporter in a cubicle. It is fixed in place. The description is "A beautiful ergonomic desk, adjustable with electronic controls."

After pecking an adjustable desk for the first time:
	say "The desk starts going up and down at random.";
	now the printed name of an adjustable desk is "broken adjustable desk";
	now the description of an adjustable desk is "An adjustable desk with a broken control panel, raising and lowering itself in an alarming fashion.";
	increment the score;
	
A tattered copy of Design Patterns is on the adjustable desk. Understand "book" as a tattered copy of Design Patterns. The description is "This book looks absolutely delicious! Maybe you should take it!"
	
After taking a tattered copy of Design Patterns for the first time:
	now the printed name of a tattered copy of Design Patterns is "book with the cover torn off";
	now the description of a tattered copy of Design Patterns is "A book with the cover torn off, covered in goose spit.";
	now little bits of chewed up paper is in the location of the player;
	increment the score;
	
After pecking a tattered copy of Design Patterns for the first time:
	say "Tasty! You could pick up the whole book and carry it around!";
	now the printed name of a tattered copy of Design Patterns is "book with the cover torn off";
	now the description of a tattered copy of Design Patterns is "A book with the cover torn off, covered in goose spit.";
	now little bits of chewed up paper is in the location of the player;

	

Some spilled dirt is an object. 
Some little bits of chewed up paper is an object.
Some sheets of paper is an object.
puddles of spilled coffee is an object.
puddles of water is an object.

Section 3 - Overly complex inventory rules

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
