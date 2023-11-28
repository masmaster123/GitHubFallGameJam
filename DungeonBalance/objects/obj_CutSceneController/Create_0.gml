
typist = scribble_typist();
typist.in(1, 0);


displayDialog = true;
dialogePaused = false;
//Cutscene one dialog
dialogArrayOne[0] = "Chancellor, we have a problem.";
dialogArrayOne[1] = "What would that be, my lord?";
dialogArrayOne[2] = "The overlord of the seven dungeons has decreed that he shall be implementing new balance changes to the dungeons because of dwindling adventures. ";
dialogArrayOne[3] = "The adventures either steal all of our loot and decimate us or they get killed faster than you can blink. In either case they don't remain in the dungeon long enough for it to siphon off enough of their combat energy.";
dialogArrayOne[4] = "We need to harvest that energy to create more loot and grow our power.\nThat is quite the problem . . .";
dialogArrayOne[5] = "The supreme being has granted us a balancing system that takes the form of two scales. Your job is to fill them with enough of our minions without it collapsing before reaching the next floor of the dungeon.";
dialogArrayOne[6] = "Make sure to prepare the spell Mage Hand as you will need to use it and You shall ride alongside the scales in our new elevator!";
dialogArrayOne[7] = "My lord, The new elevator is just a cage hanging from a chain . . .";
dialogArrayOne[8] = "When you are ready, toss the goblin with Mage Hand onto the platform by clicking on it and holding the left mouse button.";
dialogArrayOne[9] = "Fantastic Work!\nReport back here tommorrow after you finish balancing the first floor.";
//Cutscene two dialog
dialogArrayTwo[0] = "Good job handling the new balance system yesterday. I hope you will continue such a level of excellence for today as well.";
dialogArrayTwo[1] = "I live to serve, my lord.";
dialogArrayTwo[2] = "Good, because you have another problem to deal with today. Some adventurers have spread a rumor that at the bottom of the main lava pool lies a hidden treasure chest.";
dialogArrayTwo[3] = "My lord, there are treasure chests everywhere. This is a dungeon . . .  ";
dialogArrayTwo[4] = "This is a special treasure chest that contains the most desirable treasures for all of skeleton kind, The 97% milk!";
dialogArrayTwo[5] = "But my lord! The percentage on the milk carton dictates how much milk fat is in it. It has nothing to do with the calcium content!";
dialogArrayTwo[6] = "I tried to tell the skeletons that but for some reason they responded by calling me an illiterate fool with poor bone density.";
dialogArrayTwo[7] = "Did you vaporize them for their insolence, my lord?";
dialogArrayTwo[8] = "I didn't have to as they were falling into the lava pit at the time. I did punish the rest of them by making them shatter when they fall but they are still trying to jump into the pitt.";
dialogArrayTwo[9] = "Why do they have to be such boneheads?";
dialogArrayTwo[10] = "It is in their nature, I suppose. Toss the skeleton on the platform when you are ready for the next level.";


dialogArray = dialogArrayOne;
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

