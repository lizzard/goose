"Office Goose" by Lizzard

The story title is "Office Goose". 
The story author is "Lizzard". 
The story genre is "Comedy". 
The release number is 6. 
The story description is "It's a beautiful day in the office, and you are a horrible goose." 
The story creation year is 2019.

Release along with an interpreter and cover art ("a quick line drawing of a goose").
[Thanks to Danny O'Brien for setting up a web host for this at https://www.endofgreatness.com/officegoose/   Thanks Potch, Laurakeet, Britta Gustafson, Hannah Diaz, and Jim Shepard and Danny O'Brien for playtesting.]

use serial comma;

use scoring;

the maximum score is 10;

When play begins:
    now the left hand status line is
        "[the player's surroundings]";
    now the right hand status line is "Score: [score]";
	

Every turn:
	if the turn count is four:
		say "(You feel a mighty primal urge to honk, to flap, and to peck things.)"; 
	if the score is greater than 9:
		say "Congratulations! You are the most horrible of horrible geese.";
		say "This start-up office will never be the same.";
		say "You run outside, ready to wreak mayhem on the rest of the world!";
		say "* * * * * * * * * * * * * * * * * *";
		say "Thanks to Laura Kukulski, Danny O'Brien, Potch, Britta Gustafson, Hannah Diaz, and Jim Shepard for playtesting.";
		end the story finally.

The carrying capacity of the player is 1.

After printing the banner text, say "It's a beautiful day in the office, and you are a horrible goose.";

A person is either flustered or calm. A person is usually calm. 

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

Pecking is an action applying to one thing. Understand "peck [something]" as pecking. Understand "bite [something]" as pecking.
		
Carry out pecking:
	say "You jab your beak at [the noun].";
	if the noun is a device and the noun is switched off:
		say "[The noun] switches on.";
		now the noun is switched on;
		stop the action;
	if the noun is a device and the noun is switched on:
		say "[The noun] switches off.";
		now the noun is switched off;

A thing can be examined or unexamined. A thing is usually unexamined. Carry out examining something: now the noun is examined. 

Taking inventory is acting confused. Looking is acting confused. Examining an examined thing is acting confused. 

After acting confused for three turns:
        say "(You feel a mighty primal urge to honk, to flap, and to peck things.)" 


			
Understand "help" as getting help. Understand the commands "instructions" or "menu" or "info" or "about" as "help". 

Getting help is an action applying to nothing.

Carry out getting help:
	say "You can honk and flap. Also, you can peck things.";
	say "'look' shows you what's in a room. ";
	say "'x' for examine shows you a long description of an object.";
	say "'i' shows what you are carrying";
	say "'take' may work on objects light enough for you to pick up.";
	say "After you mess with things, try examining them again!'";


Section 2 - Rules for things

A thing can be broken or functional. A thing is usually functional.

A liquid is a kind of thing.
Instead of drinking a liquid:
	say "You drink from the [noun].";
	
A thing can be wet or dry. A thing is usually dry.

Before printing the name of a wet thing: say "wet ". Understand the wet property as describing a thing. 

Check dropping something:
	if the player is in the office kitchen:
		if the coffee maker is broken or the sink is broken or the coffee cup is broken:
			now the noun is wet;
			
		
Section 3 - The Office

An Open-plan office is a room. The description is "A large room with narrow hallways running between grey-walled cubicles. Exits lead east, west, and south."

A potted palm is an object in an open-plan office. The description of a potted palm is "A large indoor plant with luxuriant fronds.[line break]You feel an urge to peck it." Understand "plant", "fronds", and "pot" as the potted palm. 

The printer is a device in an open-plan office. It is fixed in place. The description of the printer is "This large printer has a ton of options for copying, collating, and stapling.[line break] What would happen if you pecked it, hard, with your powerful beak?"


After taking a potted palm for the first time:
	now the description of a potted palm is "A torn up potted plant, on its side with dirt spilling out.";
	now the printed name of a potted palm is "torn-up potted palm, lying sideways";
	now spilled dirt is in the location of the player;
	now the palm is broken;
	increment the score;
	
After pecking a potted palm:
	say "Dirt spills out. How satisfying. You could probably pick up the whole plant.";
	now the description of a potted palm is "A torn up potted plant, on its side with dirt spilling out.";
	now the printed name of a potted palm is "torn-up potted palm, lying sideways";
	now the palm is broken;
	now spilled dirt is in the location of the player;


After pecking the printer for the first time:
	say "Some sheets of paper fly out of the printer and across the room.";
	now the printed name of the printer is "dented printer";
	now some sheets of paper is in the location of the player;
	increment the score;


An Office kitchen is east of an open-plan office. The description is "This mini kitchen has tasty snacks and bad coffee. The main office is just to the west."

The snacks are scenery in an office kitchen. The description of the snacks is "They're just out of your reach. Infuriating. " 

Instead of taking scenery:
	say "You can't reach it. How infuriating!";

A pod-based coffee maker is a device in an office kitchen. It is fixed in place. The description is "This sturdy machine is ready to make you a bitter cup of plastic swill."

A sink is a device in an office kitchen. It is fixed in place. The description is "A gleaming, tidy sink."

A cup of coffee is an object. The description is "A steaming, very full cup of coffee."

A purple-haired developer is a person.  She is in an office kitchen.  A purple-haired developer is carrying a cup of coffee.

Instead of examining a purple-haired developer:
    say "[The noun] is carrying [a list of things carried by the noun]." 

After pecking a pod-based coffee maker for the first time:
	say "Coffee sprays out of the coffee maker!";
	now puddles of spilled coffee is in the location of the player;
	now the printed name of the coffee maker is "mangled coffee maker";
	now the coffee maker is broken;
	now the developer is flustered;
	increment the score;

After pecking a sink for the first time:
	say "The faucet cracks. Water sprays all over!";
	now the printed name of the sink is "sink with a broken faucet spraying water everywhere";
	now the description of the sink is "This sink is in sad shape. It's spraying water from the broken faucet.";
	now puddles of water is in the location of the player;
	now the developer is flustered;
	now the sink is broken;
	increment the score;
	
After pecking a purple-haired developer for the first time:
	say "The developer shrieks in rage. She comes at you ready to kill.";
	now the printed name of a purple-haired developer is "wet, scalded developer";
	now the cup of coffee is in the location of the player;
	now puddles of coffee is in the location of the player;
	now the printed name of the cup of coffee is "empty coffee cup";
	now the coffee cup is broken;
	now the developer is flustered;
	increment the score;

After pecking a cup of coffee:
	if the cup of coffee is carried by the developer:
		say "Hot coffee spills all over the developer. She yells and drops the cup.";
		now the cup of coffee is in the location of the player;
		now puddles of coffee is in the location of the player;
		now the developer is flustered;
		now the coffee cup is broken;
		now the printed name of the cup of coffee is "empty, cracked coffee cup";
		now the printed name of a developer is "wet, scalded developer";
		now the description of a developer is "A geeky looking person, covered in coffee, coming at you with hands outstretched to grab your neck.";


A Conference room is west of an open-plan office. The description is "A large board room with chairs arranged around a central table. Through the open door, you can see the main office to the east."

A project manager is a person in a conference room. The description of a project manager is "A geeky looking person, concentrating deeply."

After pecking a project manager for the first time:
	say "You peck her in the butt, feeling a deep sense of satisfaction.";
	say "'OUCH!!! HEY!!!'";
	say "The project manager leaps up from her chair!";
	now the printed name of a project manager is "flustered manager";
	now the description of a project manager is "A geeky looking person, upset and disheveled, coming at you with hands outstretched to grab your neck.";
	now a project manager is flustered;
	increment the score;

An ipad is an object in a conference room. It is fixed in place. The description of an ipad is "An ipad with an interface to control a video conference."

A video camera is an object in a conference room. It is fixed in place.

After pecking an ipad for the first time:
	say "A huge picture of a plump goose fills the conference room screen.";
	say "The conference call participants all start talking at once!";
	say "Someone yells, 'STOP THAT GOOSE!' and starts to chase you!";
	now the printed name of an ipad is "battered and scratched ipad";
	now the printed name of a project manager is "flustered manager";
	now the description of a project manager is "An angry project manager ineptly chasing you.";
	increment the score;
	
Instead of pecking a video camera:
	say "You leap several feet in the air but fail to peck the video camera.";

Instead of switching on a device:
	say "A concept somewhat beyond you. Try pecking it instead.";
	
Instead of switching off a device:
	say "You feel more like honking, pecking, and flapping, to be honest.";

A Cubicle is south of an open-plan office. The description is "An adjustable standing/sitting desk dominates this spacious cubicle. The main office is just to the north."

An adjustable desk is a supporter in a cubicle. It is fixed in place. The description is "A beautiful ergonomic desk, adjustable with electronic controls."

After pecking an adjustable desk for the first time:
	say "The desk starts going up and down at random.";
	now the printed name of an adjustable desk is "broken adjustable desk";
	now the description of an adjustable desk is "An adjustable desk with a broken control panel, raising and lowering itself in an alarming fashion.";
	increment the score;
	
A tattered copy of the book 'Design Patterns' is on the adjustable desk.  The description is "This book looks absolutely delicious! Maybe you should take it!"

Understand "book" as a tattered copy of the book 'Design Patterns'.
	
Instead of eating the book:
	say "You shred the book into tiny pieces.";
	now the book is nowhere;
	now little bits of chewed up paper is in the location of the player;
	increment the score;

After taking a book for the first time:
	now the printed name of a book is "book with the cover torn off";
	now the description of a book is "A book with the cover torn off, covered in goose spit.";
	now little bits of chewed up paper is in the location of the player;
	increment the score;
	
After pecking a book for the first time:
	say "Tasty! You could pick up the whole book and carry it around!";
	now the printed name of a book is "book with the cover torn off";
	now the description of a book is "A book with the cover torn off, covered in goose spit.";
	now little bits of chewed up paper is in the location of the player;

	
A laptop is an object on the the adjustable desk. The description is "A laptop with several windows open, showing some code."

After pecking a laptop for the first time:
	say "Your beak mashes the keys and cracks the screen.";
	now the printed name of a laptop is "broken laptop";
	now the description of a laptop is "A broken laptop, with messed-up text scrolling through its flickering windows on a cracked screen.";
	increment the score;


Some spilled dirt is an object. 
Some little bits of chewed up paper is an object.
Some sheets of paper is an object.

puddles of spilled coffee is a liquid. 
puddles of water is a liquid. Understand "water" as puddles of water.


Section 4 - Wild goose chase


Every turn:
	if a developer is flustered:
		say "[one of]'Horrible goose,'[or]'Catch it,'[or]'Nnnnnnggggg,'[then purely at random] yells the enraged developer[one of], chasing you.[or]. She trips over you, swearing.[or].[then purely at random]" ;
		if the location of the developer is not the location of the player:
			let the way be the best route from the location of the developer to the location of the player, using doors;
			try the developer going the way;
	if a project manager is flustered:
		say "[one of]'What the heck,'[or]'My meeting,'[or]'Get it out of here,'[then purely at random] shrieks the manager[one of], lurching forward.[or]. She falls over a chair.[or].[then purely at random]" ;
		if the location of a project manager is not the location of the player:
			let the way be the best route from the location of a project manager to the location of the player, using doors;
			try a project manager going the way;
	
		
Section 5 - Overly complex inventory rules

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
