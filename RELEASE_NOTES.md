## 0.1.47 - 2026-10-01

- Quest accept, turn-in, and map-pin calls no longer run when the client would block them. That was adding to "Interface actions failed because of this AddOn" on the addon list, including repeated tries after a blocked call and clearing a Blizzard pin from inside a dungeon.
