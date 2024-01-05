<!-- report-keep -->

# naan <img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-ignore -->

[< Back Home](../README.md)

<!-- report-keep -->

## Objective

Shifty McShuffles is hustling cards on Film Noir Island. Outwit that meddling elf and win!

<!-- report-ignore -->

## Conversations

Shifty McShuffles

Initial conversation:

- Hey there, stranger! Fancy a game of cards? Luck's on your side today, I can feel it.
- Step right up, test your wit! These cards could be your ticket to fortune.
- Trust me, I've got a good eye for winners, and you've got the look of luck about you.
- Plus, I'd wager you've never played this game before, as this isn't any ordinary deck of cards. It's made with [Python](https://www.tenable.com/blog/python-nan-injection).
- The name of the game is to bamboozle the dealer.
- So whad'ya think? Are you clever enough?

## Hints

- Try to outsmart Shifty by sending him an error he may not understand.
- Shifty said his deck of cards is made with Python. Surely there's a [weakness](https://www.tenable.com/blog/python-nan-injection) to give you the upper hand in his game.

<!-- report-keep -->

## Useful AI Prompts

- Explain how python handles NaN

## Approach

Because Python is actually “duck typed”, and the inputs aren't properly validated in this Python game, there is a very simple solution to winning this card game:

0,1,8,9,NaN - always wins

## Resources

[Python NaN Injection](https://www.tenable.com/blog/python-nan-injection)
