
typist = scribble_typist();
typist.in(1, 0);


displayDialog = false;
dialogCompleted = false;
dialogArray[0] = "Chancellor, we have a problem.";
dialogArray[1] = "What would that be, my lord?";
dialogArray[2] = "he overlord of the seven dungeons has decreed that he shall be implementing new balance changes to the dungeons because of dwindling adventures. The adventures either steal all of our loot and decimate us or they get killed faster than you can blink. In either case they don't remain in the dungeon long enough for it to siphon off enough of their combat energy.";
dialogArray[3] = "We need to harvest that energy to create more loot and grow our power. That is quite the problem . . .";
dialogArray[4] = "The supreme being has granted us a balancing system that takes the form of two scales. Your job is to fill them with enough of our minions without it collapsing before reaching the next floor of the dungeon. Make sure to prepare the spell Mage Hand as you will need to use it. You shall ride alongside the scales.";
dialogArray[5] = "hoo hoo hoot";
dialogCounter = 0;
sceneIndex = 0;

displayText = "";

obj_playerPawn.targetX = 237;