## 0.1.37 - 2026-09-30

- Native Blizzard quest tracking works even when quest waypoint coordinates are unavailable. TomTom falls back to client quest-map pin coordinates.
- Quest-linked travel steps, including The Forgotten Pools, use Blizzard quest destinations instead of authored route pins.
- Blizzard quest tracking no longer draws a duplicate GuideMate map marker. Ordinary travel keeps its route destination.

- Blizzard Map Pins is the default navigation provider; TomTom is optional. Quest objectives and turn-ins use client quest locations and native tracking.
- Navigation settings expose Blizzard’s shared in-world destination marker setting. GuideMate respects manually changed destinations.
