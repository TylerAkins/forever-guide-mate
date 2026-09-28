## 0.1.26 - 2026-09-28

- Standing still and walking no longer rebuild the route. A quest-log pulse is ignored when nothing in the log changed, and crossing a subzone only updates the waypoint.
- Kill credit no longer selects quest-log rows or rereads the quest map pin. Quest completion for chapters you are not on is checked a few quests at a time, so one update cannot scan the whole catalog.
