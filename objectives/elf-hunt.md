# elf-hunt <img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/>

## Objective

Piney Sappington needs a lesson in JSON web tokens. Hack Elf Hunt and score 75 points.

## Conversations

Piney Sappington

Initial conversation:

- Hey there, friend! Piney Sappington here.
- You look like someone who's good with puzzles and games.
- I could really use your help with this Elf Hunt game I'm stuck on.
- I think it has something to do with manipulating JWTs, but I'm a bit lost.
- If you help me out, I might share some juicy secrets I've discovered.
- Let's just say things around here haven't been exactly... normal.
- So, what do ya say? Are you in?
- Oh, brilliant! I just know we'll crack this game together.
- I can't wait to see what we uncover, and remember, mum's the word!
- Thanks a bunch! Keep your eyes open and your ears to the ground.

After solving challenge:

- Well done! You've brilliantly won Elf Hunt! I couldn't be more thrilled. Keep up the fine work, my friend!
- What have you found there? The Captain's Journal? Yeah, he comes around a lot. You can find his comms office over at Brass Buoy Port on Steampunk Island.

## Hints

- Unlock the mysteries of JWTs with insights from [PortSwigger's JWT Guide](https://portswigger.net/web-security/jwt).

## Useful AI Prompts

- What is inclueded in a JWT token?

## Approach

This is too easy - no need to mess with the JWT.  When the game starts, right click and select inspect. In the console, type:

```console
score = 100
```

When completed, I recieved a copy of the Captain's journal.

## Alternate approach

Okay fine - you want to modify the JWT.  Opening up developer tools, and going to Application -> Cookies, I find a cookie named ElfHunt_JWT.  Looking at the value:

```
eyJhbGciOiJub25lIiwidHlwIjoiSldUIn0.eyJzcGVlZCI6LTUwMH0.
```

There is something missing.  The JWT should have three parts separated by a "." - the Header, payload and signature. If we look at the JWT above, we can see there is a header and payload, but no signature. 

You can modify the JWT token (and therefor it's payload) because it is not signed and therefor the game is not validating the signature.  In the payload, speed is set to -500 but you can set it to anything using https://jwt.io and then pasting the encoded cookie back to your browser.

## Resources
