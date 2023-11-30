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

//Cutscene three dialog
dialogArrayThree[0] = "Great work as always, but things are about to get a bit harder.";
dialogArrayThree[1] = "How so, my lord?";
dialogArrayThree[2] = "Orges, They are rotund and down with the thickness.";
dialogArrayThree[3] = "They got to get down, down with the thickness?";
dialogArrayThree[4] = "Exactly, not only are they heavy, if you try and chunk them with your Mage Hand the air resistance is so strong they will barely move anywhere.";
dialogArrayThree[5] = "How will I move them, my lord?";
dialogArrayThree[6] = "Same as the rest, you just won't be able to fling them like the others.";
dialogArrayThree[7] = "Put the thicc boi on the platform when you are ready for the next level.";

dialogArrayFour[0] = "Chancellor, I am constantly having new problems hoisted upon me.";
dialogArrayFour[1] = "What plagues you, my lord?";
dialogArrayFour[2] = "Shoddy craftsmenship! Whoever built the new balance system didn't clear away all of the loose rubble and occasionally it falls down around me.";
dialogArrayFour[3] = "This is quite a serious issue my lord! What if it falls upon the scales?";
dialogArrayFour[4] = "Worry not, my loyal subject for I have a solution! Use the magic spell Break on it by clicking on the rock 5 times.";
dialogArrayFour[5] = "Look my lord, another rocky menace drops from the ceiling!";
dialogArrayFour[6] = "Click on the rock five times when you are ready to head to the next level!";


dialogArrayFive[0] = "Chancellor, how many of our mobs have we lost to the lava pit?";
dialogArrayFive[1] = "Too many to count, my lord . . .";
dialogArrayFive[2] = "That explains the amount of new wraiths I have seen haunting these halls. From this level onward, any that fall into the lava pit will spawn tombstones on the scales.";
dialogArrayFive[3] = "These astral constructs cannot be removed, even by magical means. Do your best to work around them.";
dialogArrayFive[4] = "That shouldn't be a problem, my lord.";
dialogArrayFive[5] = "That's not all, wraiths will now spawn and attempt to steal our mobs. Don't let them get too far away or they will turn your mobs into a tombstone.";
dialogArrayFive[6] = "My Lord! How can I deal with the flying trash bag of a specter?";
dialogArrayFive[7] = "Same way you have dealt with the falling debris, click on it until it breaks.";
dialogArrayFive[8] = "Timmy, the life loving goblin will assist us with a demonstration. Make sure to save him and then head to the next level.";



dialogArraySix[0] = "I have good news and I have bad news for you, my loyal subject.";
dialogArraySix[1] = "What is the bad news, my lord?";
dialogArraySix[2] = "The last two levels of the dungeon are currently suffering from a rockworm infestation.";
dialogArraySix[3] = "Disgusting creatures, snorting snotty missiles all over the place.";
dialogArraySix[4] = "You shall deal with them in the same way as you have dealt with the wraiths and debris.";
dialogArraySix[5] = "Clicking on them until they explode?";
dialogArraySix[6] = "Clicking on them until they explode.";
dialogArraySix[7] = "The good news is that you only have one more level to balance left before you have rebalanced the dungeon.";
dialogArraySix[8] = "Just splat the rockworm on the ceiling to start the next level.";

dialogArraySeven[0] = "You have finally made it to the last level of the dungeon. Once you have completed balancing this last level I will bestow a great gift upon you for your service.";
dialogArraySeven[1] = "My lord! You are too kind.";
dialogArraySeven[2] = "Don't thank me too soon. The seventh level will be your hardest challenge yet.";
dialogArraySeven[3] = "Isn't the seventh level managed by Throcknar, The Orcish Desolator?";
dialogArraySeven[4] = "It was. Unfortunately he was tripped by some goblins on the way to the seventh level this morning and fell into the lava pit.";
dialogArraySeven[5] = "That can not be good.";
dialogArraySeven[6] = "The rest of the orcs on the level are out for goblin blood. It might be best to try and keep the goblins and orcs separate.";
dialogArraySeven[7] = "Fling the orc onto the platform to start the next level. ";


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

savedTim = false;

//Send player pawn to location
obj_playerPawn.targetX = 237;

