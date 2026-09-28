## 0.1.26 - 2026-09-28

- Standing still or starting to walk no longer locks the WoW client. Those moments were running the addon on the game's main thread: a quest-log pulse with nothing changed is ignored, and crossing a subzone only updates the waypoint.
- Kill credit no longer selects quest-log rows or rereads the quest map pin. Accepting or turning in a quest only walks the open chapter, and the quest list and review history are reused instead of growing for the whole session.
- Quest completion for chapters you are not on is checked a few quests at a time, so one update cannot scan the whole catalog.
