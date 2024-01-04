# game-cartridges-vol3 <img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/>

[< Back Home](../README.md)

## Objective

Find the third Gamegosling cartridge and beat the game

## Conversations

Angel Candysalt

Initial conversation:

- The name's Angel Candysalt, the great treasure hunter!
- A euphemism? No, why do people always ask me that??
- Anyways, I came here to nab the treasure hidden in this ship graveyard, only to discover it's protected by this rusted maze.
- That must be why all these old ships are here. Their crew came to find the treasure, only to get lost in the labrynth.
- At least it's obvious where this one is. See that shiny spot over to the right? That's gotta be where it is! If only I had a bird's eye view.
- But how to get there? Up? Down? Left? Right? Oh well, that's your problem now!
- Come back if you can find your way to it, and I'll tell you some secrets I've heard about this one.

After finding game cartridge:

- The life of a treasure hunter isn't easy, but it sure is exciting!
- Oh it's a video game, I love video games! But you've claimed this treasure, nicely done.
- Now, about those secrets I've been told. They're pretty cryptic, but they are. Hopefully that helps with something!

After finding all three game cartridges:

- You have all three? Wow, you must be the greatest treasure hunter that ever lived!

## Hints

- The location of the treasure in Rusty Quay is marked by a shiny spot on the ground. To help with navigating the maze, try zooming out and changing the camera angle.
- This one is a bit long, it never hurts to save your progress!
- 8bit systems have much smaller registers than you’re used to.
- Isn’t this great?!? The coins are OVERFLOWing in their abundance.

## Useful AI Prompts

- What are the memory areas found in a GameBoy ROM?
- What emulators can monitor memory on GameBoy games?

## Approach

![image](../img/game3-1)

I started by playing this game to understand what it entails. In this game, you collect coins by jumping into them.  The different levels have different values for the coins.  The first level starts with one of each, starting at 1, then 10 and finally 100. The subsequent levels have values of 1, 10 and 100 respectively.

![image](../img/game3-2)

The interesting thing, is you never can get exactly 999 coins.  If you go over 999, you start back at 0.  If you land exactly on 999, you get an error:

![image](../img/game3-3)

Once you make it to level 5, you run into NPC "Jared" who states "Back in my SysAdmin days, marketing always loved talking about [5] nines. But we all know it was more like [3] nines".

![image](../img/game3-4)

Continuing on in level 5, you are presented an impossible jump that brings you back to the start of the game.

![image](../img/game3-5)

Knowing from the clues this has something to do with getting 999 coins, it's time to do some investigating. [BGB GameBoy emulator](https://bgb.bircd.org/) has a great feature that allows you to monitor memory changes. Right clicking the emulator screen and selecting other -> cheat searcher brings up a memory searcher to search for specific values or even values that change/stay the same as the previous value.

![image](../img/game3-6)

By playing around with this, collecting coins, searching for what changed in the cheat searcher and changing some of the values at those pointers, I was able to come to the conclusion:

```
ones:
C0F8=04(display value)   CBA2=04(actual value) 

tens:
C12C=04(display value)   CB9C=04(actual value)

hundreds:
C160=04(display value)   CB9E=04(actual value) 
```

By setting all the above to the value of 0x09, I finally both display 999 coins and actually have 999 coins. Interestingly, I also have some platforms that appear to help me get across the impossible jump:

![image](../img/game3-7)

By double-jumping on two different platforms, I am able to make it to the other side:

![image](../img/game3-8)

From there, I get to the end of the level and enter a room. Talking to the "Grumpy Man" NPC in the room:

Grumpy Man: Who the heck are you?

Elf: I'm Elf the dwarf.

Grumpy Man: A dwarf named Elf? Well if that don't beat all. What are you doin' here?

Elf: I'm looking for Tom Liston.

Liston: Welp you've found him. I'm the hacker Tom Liston.

Elf: Blessed be! It's really you? I've searched for so long! I'm here to help you min crypto coins!

Liston: Well I hate to break it to you bud, but this 8-bit dimension will never allow you to collect enough coins. I'm the dirtiest hacker around and even I can't figure it out. Which is too bad because I'm kinda stuck here.

Elf: If by "never" you mean I've filled my treasure pouch to the brim with coins, then yes, I agree! I have "never" found this many crypto coins! GLOOOOOOOOOOORY!

*Elf shows Liston all his coins*

Liston: How in the world did you... never mind. Say this passphrase "morethanmeetstheeye" to the ChatNPT thinger and then give it all your coins!

![image](../img/game3-9)

Interacting with the other entity in the room:

ChatNPT: Analyzing... Passphrase correct! Coin total correct! setting variable ROCKCANMOVE = TRUE

![image](../img/game3-10)

Interacting with rock in room:

Elf: I've RECEIVED... MUCH... GLOOOOOOOOOOOORY!

Liston: A drarf named Elf out hacked this old dirty hacker?

*Liston shakes his head & laughs*

Well if you can't beat'em, join'em.

GLOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOORY!

![image](../img/game3-11)

## Alternate approach

## Resources

[GB Dev](https://gbdev.io/)

[BGB](https://bgb.bircd.org/)

[Ghidra](https://github.com/NationalSecurityAgency/ghidra)

[GhidraBoy](https://github.com/Gekkio/GhidraBoy)
