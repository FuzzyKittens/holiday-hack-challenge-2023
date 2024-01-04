# door-access-speaker <img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/>

[< Back Home](../README.md)

## Objective
There's a door that needs opening on Space Island! Talk to Jewel Loggins there for more information.

## Conversations

Jewel Loggins

Initial Conversation:

- What are you doing here, and who are you?
- Me first? I'm Jewel Loggins. And I was trekking through the jungle and happened to find this place.
- I liked this spot and decided to set up camp. Seeing you here is quite the surprise.
- Well, because the only other person I've ever seen come here is Wombley Cube.
- I thought this tram station in the middle of the jungle was strange to begin with, but then Wombley added to the intrigue.
- I guess all this spy stuff is typical for him, so maybe I shouldn't think much of it. I'm sure everything's fine.
- Every time he comes here, he says something to the speaker. Then, the door opens, and he rides the tram somewhere.
- I gave it a try, but the door didn't open for me. Knowing Wombley, it's some kind of secret passphrase.
- If you wanna see where the tram goes, I think you need to find out what that passphrase is.
- Ribb Bonbowford over at Coggoggle Marina on Steampunk Island works with Wombley. Try asking if he knows.
- I hope you find it. I'll be here when you get back!

Once I know the passphrase:

- What, you know the passphrase!? Let me try it!
- Nope, didn't work. Knowing Wombley, the passphrase isn't the only requirement. He's all about that MFA!
- Oh yeah, multi-factor authentication! The passphrase for something he knows, and his voice for something he is!
- That's it! You need to be Wombley. You need his voice. Now, how are you gonna get that?
- Since only us elves can get a subscription to use ChatNPT, try searching for another AI tool that can simulate voices. I'm sure there's one out there.

After solving challenge:

- Are you like a master spy or something? I've only seen stuff like that in the movies!
- It sure is scary what you can do with AI, huh? I sure hope ChatNPT has better guardrails in place.

## Hints

- Wombley says a specific phrase into the Access Speaker. He works in the Research Department and everything they do it super secret, so it may be a challenge to find out what the phrase is. Ribb also works in that department. Try to find and ask him.
- It seems the Access Speaker is programmed to only accept Wombley's voice. Maybe you could get a sample of his voice and use an AI tool to simulate Wombley speaking the passphrase.

## Useful AI Prompts

- What AI tool can I use to generate an MP3 based on a real person's voice?

## Approach

This one is straight forward after Active Directory is solved, the secret file contains what needs to be said in the speaker:

"And he whispered, 'Now I shall be out of sight; So through the valley and over the height.' And he'll silently take his way."

The tricky part, is that it is required to be said in Wombley Cube's voice for MFA.
  
I went back to Space Island: Spaceport Point, as I noted down earlier in the challenge that Wombley Cube 
was there with an audio book. After downloading his audio book, I now have his voice. Searching the internet for AI voice creation, I found several sites that had the capabilities. After 
trying a few and signing up for a few, I found one site [PlayHT](https://play.ht/) which allowed free users to do the things I needed. I created a new voice profile with Wombley's audio book,
and then used that voice to speak the passphrase. I tried a couple of times before it sounded correctly, and submitted the mp3 to the gate a few times with a few versions before I was successful.

## Resources

[PlayHT](https://play.ht/)
