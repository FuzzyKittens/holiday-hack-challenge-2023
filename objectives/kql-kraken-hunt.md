# kql-kraken-hunt <img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/>

[< Back Home](../README.md)

## Objective

Use Azure Data Explorer to [uncover misdeeds](https://detective.kusto.io/sans2023) in Santa's IT enterprise. Go to Film Noir Island and talk to Tangle Coalbox for more information/

## Conversations

Tangle Colabox

Initial conversation:

- Greetings, rookie. Tangle Coalbox of Kusto Detective Agency here.
- I've got a network infection case on Film Noir Island that needs your expertise.
- Seems like someone clicked a phishing link within a client's organization, and trouble's brewing.
- I'm swamped with cases, so I need an extra pair of hands. You up for the challenge?
- You'll be utilizing the Azure Data Explorer and those KQL skills of yours to investigate this incident.
- Before you start, you'll need to [create a free cluster](https://dataexplorer.azure.com/freecluster).
- Keep your eyes peeled for suspicious activity, IP addresses, and patterns that'll help us crack this case wide open.
- Remember, kid, time is of the essence. The sooner we can resolve this issue, the better.
- If you run into any problems, just give me a holler, I've got your back.
- Good hunting, and let's bring this cyber criminal to justice.
- Once you've got the intel we need, report back and we'll plan our next move. Stay sharp, rookie.

## Hints

- Do you need to find something that happened via a process? Pay attention to the ProcessEvents table!
- Once you get into the [Kusto trainer](https://detective.kusto.io/sans2023), click the blue Train me for the case button to get familiar with KQL.
- Looking for a file that was created on a victim system? Don't forget the FileCreationEvents table.

## Useful AI Prompts

- Give me an example KQL query.
- How do I decode base64 using Azure Data Explorer?

## Approach

Straight forward just brush up on KQL skills first:

Case 1:

Email
| where link == 'http://madelvesnorthpole.org/published/search/MonthlyInvoiceForReindeerFood.docx'
| project recipient, sender, subject

"recipient": alabaster_snowball@santaworkshopgeeseislands.org,
"sender": cwombley@gmail.com,
"subject": [EXTERNAL] Invoice foir reindeer food past due
```

Case 2:

```
Email
| where link == 'http://madelvesnorthpole.org/published/search/MonthlyInvoiceForReindeerFood.docx'
| join kind = inner Employees on $left.recipient == $right.email_addr
| project role, hostname, ip_addr

"role": Head Elf,
"hostname": Y1US-DESKTOP,
"ip_addr": 10.10.0.4
```

Case 3:

```
OutboundNetworkEvents
| join kind = inner Employees on $left.src_ip == $right.ip_addr
| where url == 'http://madelvesnorthpole.org/published/search/MonthlyInvoiceForReindeerFood.docx'
| project timestamp

"timestamp": 2023-12-02T10:12:42Z
```

```
FileCreationEvents
| where hostname == "Y1US-DESKTOP"
| where timestamp >= todatetime("2023-12-02T09:37:40Z")
| order by timestamp asc
| project path

"path": C:\ProgramData\Windows\Jolly\giftwrap.exe
```

Case 4:

```
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

```
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

```
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

```
print base64_decode_tostring('QmV3YXJlIHRoZSBDdWJlIHRoYXQgV29tYmxlcw==')
```

Which decodes to:

```
Beware the Cube that Wombles
```

## Alternate approach

## Resources

[Kusto SANS 2023](https://detective.kusto.io/sans2023)
