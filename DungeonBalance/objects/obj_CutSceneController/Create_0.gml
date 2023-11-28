
typist = scribble_typist();
typist.in(1, 0);


displayDialog = true;
dialogePaused = false;
dialogArray[0] = "Chancellor, we have a problem.";
dialogArray[1] = "What would that be, my lord?";
dialogArray[2] = "The overlord of the seven dungeons has decreed that he shall be implementing new balance changes to the dungeons because of dwindling adventures. ";
dialogArray[3] = "The adventures either steal all of our loot and decimate us or they get killed faster than you can blink. In either case they don't remain in the dungeon long enough for it to siphon off enough of their combat energy.";
dialogArray[4] = "We need to harvest that energy to create more loot and grow our power.\nThat is quite the problem . . .";
dialogArray[5] = "The supreme being has granted us a balancing system that takes the form of two scales. Your job is to fill them with enough of our minions without it collapsing before reaching the next floor of the dungeon.";
dialogArray[6] = "Make sure to prepare the spell Mage Hand as you will need to use it and You shall ride alongside the scales in our new elevator!";
dialogArray[7] = "My lord, The new elevator is just a cage hanging from a chain . . .";
dialogArray[8] = "When you are ready, toss the goblin with Mage Hand onto the platform by clicking on it and holding the left mouse button.";
dialogArray[9] = "Fantastic Work!\nReport back here tommorrow after you finish balancing the first floor.";
dialogCounter = 0;
displayText = "";



kingTextX = view_get_wport(0) - view_get_wport(0)/2.7;
kingTextY = view_get_hport(0)/4;

playerTextX = view_get_wport(0)/3;
playerTextY = view_get_hport(0)/2;

textBoxX = view_get_wport(0) - view_get_wport(0)/2.7;
textBoxY = view_get_hport(0)/4;

textXPadding = 8;
textYPadding = 4;

//Add padding so the text is not drawn on the border
textX = textBoxX + textXPadding;
textY = textBoxY + textYPadding;

//Send player pawn to location
obj_playerPawn.targetX = 237;