[< Back Home](../README.md)

## Map

```
           
           
  1     1  
 111   11  
11 1111 111
 1 1111 111
 1111111111
 111111111 
  1111111  
   11111   
     1
```

## Entities

```json
{
  "terminal": [
    {
      "id": "satmissile",
      "x": 5,
      "y": 2
    },
    {
      "id": "finaldoor",
      "x": 9,
      "y": 3
    }
  ],
  "npc": [
    {
      "id": "vendingmachine",
      "x": 2,
      "y": 4
    },
    {
      "id": "wombleycube",
      "x": 7,
      "y": 4
    },
    {
      "id": "henry",
      "x": 0,
      "y": 5
    }
  ],
  "entrance": [
    {
      "id": "reset",
      "x": 5,
      "y": 8
    },
    {
      "id": "si-capecosmic_insidesi-zenithsgs",
      "x": 5,
      "y": 9
    }
  ],
  "exit": [
    {
      "id": "si-zenithsgssi-capecosmic_inside",
      "x": 5,
      "y": 10,
      "requiredTokens": [
        "accessspeaker_completed"
      ]
    }
  ]
}
```
