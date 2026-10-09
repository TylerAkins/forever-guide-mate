local _, ns = ...

ns:RegisterQuestPrerequisite({
    quest = 499,
    mode = "all",
    quests = { 496 },
    conditions = { faction = "Horde" },
    note = "The Umpi Elixir of Suffering follow-up is offered after turning in the gathering quest.",
})

-- Verified quest-chain edges used by leveling and Loremaster recovery. Dungeon
-- guides intentionally keep their focused pickup lists and are not augmented.
-- Add entries only after verifying the chain in the Forever client or an
-- authoritative quest source.
ns:RegisterQuestPrerequisite({
    quest = 1489,
    mode = "any",
    quests = { 880 },
    conditions = { faction = "Horde" },
    note = "Hamuul Runetotem is offered after Altered Beings.",
})

ns:RegisterQuestPrerequisite({
    quest = 1490,
    mode = "any",
    quests = { 1489 },
    conditions = { faction = "Horde" },
    note = "Nara Wildmane is offered after Hamuul Runetotem.",
})

ns:RegisterQuestPrerequisite({
    quest = 1062,
    mode = "all",
    quests = { 1061 },
    conditions = { faction = "Horde" },
    note = "Goblin Invaders is offered after The Spirits of Stonetalon. Zor Lonetree will not offer Spirits while Goblin Invaders is in the log.",
})

-- Same-title follow-ups with one predecessor in the Forever quest export.
-- Chapter spines attach local turn-ins; Casual also attaches turn-ins across chapters.
ns:RegisterQuestPrerequisite({ quest = 38, mode = "any", quests = { 36 }, note = "Westfall Stew follows quest 36." })
ns:RegisterQuestPrerequisite({ quest = 57, mode = "any", quests = { 56 }, note = "The Night Watch follows quest 56." })
ns:RegisterQuestPrerequisite({ quest = 58, mode = "any", quests = { 57 }, note = "The Night Watch follows quest 57." })
ns:RegisterQuestPrerequisite({ quest = 63, mode = "any", quests = { 220 }, note = "Call of Water follows quest 220." })
ns:RegisterQuestPrerequisite({ quest = 67, mode = "any", quests = { 66 }, note = "The Legend of Stalvan follows quest 66." })
ns:RegisterQuestPrerequisite({ quest = 68, mode = "any", quests = { 67 }, note = "The Legend of Stalvan follows quest 67." })
ns:RegisterQuestPrerequisite({ quest = 69, mode = "any", quests = { 68 }, note = "The Legend of Stalvan follows quest 68." })
ns:RegisterQuestPrerequisite({ quest = 70, mode = "any", quests = { 69 }, note = "The Legend of Stalvan follows quest 69." })
ns:RegisterQuestPrerequisite({ quest = 72, mode = "any", quests = { 70 }, note = "The Legend of Stalvan follows quest 70." })
ns:RegisterQuestPrerequisite({ quest = 74, mode = "any", quests = { 72 }, note = "The Legend of Stalvan follows quest 72." })
ns:RegisterQuestPrerequisite({ quest = 75, mode = "any", quests = { 74 }, note = "The Legend of Stalvan follows quest 74." })
ns:RegisterQuestPrerequisite({ quest = 78, mode = "any", quests = { 75 }, note = "The Legend of Stalvan follows quest 75." })
ns:RegisterQuestPrerequisite({ quest = 79, mode = "any", quests = { 78 }, note = "The Legend of Stalvan follows quest 78." })
ns:RegisterQuestPrerequisite({ quest = 80, mode = "any", quests = { 79 }, note = "The Legend of Stalvan follows quest 79." })
ns:RegisterQuestPrerequisite({ quest = 96, mode = "any", quests = { 100 }, note = "Call of Water follows quest 100." })
ns:RegisterQuestPrerequisite({ quest = 97, mode = "any", quests = { 80 }, note = "The Legend of Stalvan follows quest 80." })
ns:RegisterQuestPrerequisite({ quest = 98, mode = "any", quests = { 97 }, note = "The Legend of Stalvan follows quest 97." })
ns:RegisterQuestPrerequisite({ quest = 100, mode = "any", quests = { 63 }, note = "Call of Water follows quest 63." })
ns:RegisterQuestPrerequisite({ quest = 113, mode = "any", quests = { 110 }, note = "Insect Part Analysis follows quest 110." })
ns:RegisterQuestPrerequisite({ quest = 121, mode = "any", quests = { 120 }, note = "Messenger to Stormwind follows quest 120." })
ns:RegisterQuestPrerequisite({ quest = 132, mode = "any", quests = { 65 }, note = "The Defias Brotherhood follows quest 65." })
ns:RegisterQuestPrerequisite({ quest = 135, mode = "any", quests = { 132 }, note = "The Defias Brotherhood follows quest 132." })
ns:RegisterQuestPrerequisite({ quest = 141, mode = "any", quests = { 135 }, note = "The Defias Brotherhood follows quest 135." })
ns:RegisterQuestPrerequisite({ quest = 142, mode = "any", quests = { 141 }, note = "The Defias Brotherhood follows quest 141." })
ns:RegisterQuestPrerequisite({ quest = 155, mode = "any", quests = { 142 }, note = "The Defias Brotherhood follows quest 142." })
ns:RegisterQuestPrerequisite({ quest = 166, mode = "any", quests = { 155 }, note = "The Defias Brotherhood follows quest 155." })
ns:RegisterQuestPrerequisite({ quest = 175, mode = "any", quests = { 174 }, note = "Look To The Stars follows quest 174." })
ns:RegisterQuestPrerequisite({ quest = 177, mode = "any", quests = { 175 }, note = "Look To The Stars follows quest 175." })
ns:RegisterQuestPrerequisite({ quest = 181, mode = "any", quests = { 177 }, note = "Look To The Stars follows quest 177." })
ns:RegisterQuestPrerequisite({ quest = 186, mode = "any", quests = { 185 }, note = "Tiger Mastery follows quest 185." })
ns:RegisterQuestPrerequisite({ quest = 187, mode = "any", quests = { 186 }, note = "Tiger Mastery follows quest 186." })
ns:RegisterQuestPrerequisite({ quest = 188, mode = "any", quests = { 187 }, note = "Tiger Mastery follows quest 187." })
ns:RegisterQuestPrerequisite({ quest = 191, mode = "any", quests = { 190 }, note = "Panther Mastery follows quest 190." })
ns:RegisterQuestPrerequisite({ quest = 192, mode = "any", quests = { 191 }, note = "Panther Mastery follows quest 191." })
ns:RegisterQuestPrerequisite({ quest = 193, mode = "any", quests = { 192 }, note = "Panther Mastery follows quest 192." })
ns:RegisterQuestPrerequisite({ quest = 195, mode = "any", quests = { 194 }, note = "Raptor Mastery follows quest 194." })
ns:RegisterQuestPrerequisite({ quest = 196, mode = "any", quests = { 195 }, note = "Raptor Mastery follows quest 195." })
ns:RegisterQuestPrerequisite({ quest = 197, mode = "any", quests = { 196 }, note = "Raptor Mastery follows quest 196." })
ns:RegisterQuestPrerequisite({ quest = 199, mode = "any", quests = { 250 }, note = "A Dark Threat Looms follows quest 250." })
ns:RegisterQuestPrerequisite({ quest = 220, mode = "any", quests = { 1534 }, note = "Call of Water follows quest 1534." })
ns:RegisterQuestPrerequisite({ quest = 221, mode = "any", quests = { 173 }, note = "Worgen in the Woods follows quest 173." })
ns:RegisterQuestPrerequisite({ quest = 222, mode = "any", quests = { 221 }, note = "Worgen in the Woods follows quest 221." })
ns:RegisterQuestPrerequisite({ quest = 223, mode = "any", quests = { 222 }, note = "Worgen in the Woods follows quest 222." })
ns:RegisterQuestPrerequisite({ quest = 234, mode = "any", quests = { 233 }, note = "Coldridge Valley Mail Delivery follows quest 233." })
ns:RegisterQuestPrerequisite({ quest = 238, mode = "any", quests = { 232 }, note = "Errand for Apothecary Zinge follows quest 232." })
ns:RegisterQuestPrerequisite({ quest = 295, mode = "any", quests = { 294 }, note = "Ormer's Revenge follows quest 294." })
ns:RegisterQuestPrerequisite({ quest = 296, mode = "any", quests = { 295 }, note = "Ormer's Revenge follows quest 295." })
ns:RegisterQuestPrerequisite({ quest = 306, mode = "any", quests = { 305 }, note = "In Search of The Excavation Team follows quest 305." })
ns:RegisterQuestPrerequisite({ quest = 336, mode = "any", quests = { 335 }, note = "A Noble Brew follows quest 335." })
ns:RegisterQuestPrerequisite({ quest = 368, mode = "any", quests = { 367 }, note = "A New Plague follows quest 367." })
ns:RegisterQuestPrerequisite({ quest = 369, mode = "any", quests = { 368 }, note = "A New Plague follows quest 368." })
ns:RegisterQuestPrerequisite({ quest = 370, mode = "any", quests = { 427 }, note = "At War With The Scarlet Crusade follows quest 427." })
ns:RegisterQuestPrerequisite({ quest = 371, mode = "any", quests = { 370 }, note = "At War With The Scarlet Crusade follows quest 370." })
ns:RegisterQuestPrerequisite({ quest = 407, mode = "any", quests = { 365 }, note = "Fields of Grief follows quest 365." })
ns:RegisterQuestPrerequisite({ quest = 420, mode = "any", quests = { 282 }, note = "Senir's Observations follows quest 282." })
ns:RegisterQuestPrerequisite({ quest = 423, mode = "any", quests = { 422 }, note = "Arugal's Folly follows quest 422." })
ns:RegisterQuestPrerequisite({ quest = 457, mode = "any", quests = { 456 }, note = "The Balance of Nature follows quest 456." })
ns:RegisterQuestPrerequisite({ quest = 459, mode = "any", quests = { 458 }, note = "The Woodland Protector follows quest 458." })
ns:RegisterQuestPrerequisite({ quest = 492, mode = "any", quests = { 369 }, note = "A New Plague follows quest 369." })
ns:RegisterQuestPrerequisite({ quest = 502, mode = "any", quests = { 501 }, note = "Elixir of Pain follows quest 501." })
ns:RegisterQuestPrerequisite({ quest = 513, mode = "any", quests = { 509 }, note = "Elixir of Agony follows quest 509." })
ns:RegisterQuestPrerequisite({ quest = 528, mode = "any", quests = { 527 }, note = "Battle of Hillsbrad follows quest 527." })
ns:RegisterQuestPrerequisite({ quest = 529, mode = "any", quests = { 528 }, note = "Battle of Hillsbrad follows quest 528." })
ns:RegisterQuestPrerequisite({ quest = 532, mode = "any", quests = { 529 }, note = "Battle of Hillsbrad follows quest 529." })
ns:RegisterQuestPrerequisite({ quest = 539, mode = "any", quests = { 532 }, note = "Battle of Hillsbrad follows quest 532." })
ns:RegisterQuestPrerequisite({ quest = 553, mode = "any", quests = { 552 }, note = "Helcular's Revenge follows quest 552." })
ns:RegisterQuestPrerequisite({ quest = 560, mode = "any", quests = { 559 }, note = "Farren's Proof follows quest 559." })
ns:RegisterQuestPrerequisite({ quest = 561, mode = "any", quests = { 560 }, note = "Farren's Proof follows quest 560." })
ns:RegisterQuestPrerequisite({ quest = 569, mode = "any", quests = { 568 }, note = "The Defense of Grom'gol follows quest 568." })
ns:RegisterQuestPrerequisite({ quest = 571, mode = "any", quests = { 572 }, note = "Mok'thardin's Enchantment follows quest 572." })
ns:RegisterQuestPrerequisite({ quest = 572, mode = "any", quests = { 570 }, note = "Mok'thardin's Enchantment follows quest 570." })
ns:RegisterQuestPrerequisite({ quest = 573, mode = "any", quests = { 571 }, note = "Mok'thardin's Enchantment follows quest 571." })
ns:RegisterQuestPrerequisite({ quest = 597, mode = "any", quests = { 595 }, note = "The Bloodsail Buccaneers follows quest 595." })
ns:RegisterQuestPrerequisite({ quest = 599, mode = "any", quests = { 597 }, note = "The Bloodsail Buccaneers follows quest 597." })
ns:RegisterQuestPrerequisite({ quest = 604, mode = "any", quests = { 599 }, note = "The Bloodsail Buccaneers follows quest 599." })
ns:RegisterQuestPrerequisite({ quest = 608, mode = "any", quests = { 604 }, note = "The Bloodsail Buccaneers follows quest 604." })
ns:RegisterQuestPrerequisite({ quest = 623, mode = "any", quests = { 617 }, note = "Akiris by the Bundle follows quest 617." })
ns:RegisterQuestPrerequisite({ quest = 625, mode = "any", quests = { 624 }, note = "Cortello's Riddle follows quest 624." })
ns:RegisterQuestPrerequisite({ quest = 626, mode = "any", quests = { 625 }, note = "Cortello's Riddle follows quest 625." })
ns:RegisterQuestPrerequisite({ quest = 632, mode = "any", quests = { 631 }, note = "The Thandol Span follows quest 631." })
ns:RegisterQuestPrerequisite({ quest = 633, mode = "any", quests = { 632 }, note = "The Thandol Span follows quest 632." })
ns:RegisterQuestPrerequisite({ quest = 650, mode = "any", quests = { 649 }, note = "Ripple Recovery follows quest 649." })
ns:RegisterQuestPrerequisite({ quest = 657, mode = "any", quests = { 658 }, note = "Hints of a New Plague? follows quest 658." })
ns:RegisterQuestPrerequisite({ quest = 658, mode = "any", quests = { 659 }, note = "Hints of a New Plague? follows quest 659." })
ns:RegisterQuestPrerequisite({ quest = 660, mode = "any", quests = { 657 }, note = "Hints of a New Plague? follows quest 657." })
ns:RegisterQuestPrerequisite({ quest = 661, mode = "any", quests = { 660 }, note = "Hints of a New Plague? follows quest 660." })
ns:RegisterQuestPrerequisite({ quest = 666, mode = "any", quests = { 665 }, note = "Sunken Treasure follows quest 665." })
ns:RegisterQuestPrerequisite({ quest = 668, mode = "any", quests = { 666 }, note = "Sunken Treasure follows quest 666." })
ns:RegisterQuestPrerequisite({ quest = 669, mode = "any", quests = { 668 }, note = "Sunken Treasure follows quest 668." })
ns:RegisterQuestPrerequisite({ quest = 674, mode = "any", quests = { 672 }, note = "Raising Spirits follows quest 672." })
ns:RegisterQuestPrerequisite({ quest = 675, mode = "any", quests = { 674 }, note = "Raising Spirits follows quest 674." })
ns:RegisterQuestPrerequisite({ quest = 678, mode = "any", quests = { 677 }, note = "Call to Arms follows quest 677." })
ns:RegisterQuestPrerequisite({ quest = 689, mode = "any", quests = { 686 }, note = "A King's Tribute follows quest 686." })
ns:RegisterQuestPrerequisite({ quest = 699, mode = "any", quests = { 698 }, note = "Lack of Surplus follows quest 698." })
ns:RegisterQuestPrerequisite({ quest = 700, mode = "any", quests = { 689 }, note = "A King's Tribute follows quest 689." })
ns:RegisterQuestPrerequisite({ quest = 702, mode = "any", quests = { 701 }, note = "Guile of the Raptor follows quest 701." })
ns:RegisterQuestPrerequisite({ quest = 711, mode = "any", quests = { 710 }, note = "Study of the Elements: Rock follows quest 710." })
ns:RegisterQuestPrerequisite({ quest = 712, mode = "any", quests = { 711 }, note = "Study of the Elements: Rock follows quest 711." })
ns:RegisterQuestPrerequisite({ quest = 731, mode = "any", quests = { 729 }, note = "The Absent Minded Prospector follows quest 729." })
ns:RegisterQuestPrerequisite({ quest = 741, mode = "any", quests = { 731 }, note = "The Absent Minded Prospector follows quest 731." })
ns:RegisterQuestPrerequisite({ quest = 751, mode = "any", quests = { 749 }, note = "The Ravaged Caravan follows quest 749." })
ns:RegisterQuestPrerequisite({ quest = 771, mode = "any", quests = { 767 }, note = "Rite of Vision follows quest 767." })
ns:RegisterQuestPrerequisite({ quest = 772, mode = "any", quests = { 771 }, note = "Rite of Vision follows quest 771." })
ns:RegisterQuestPrerequisite({ quest = 777, mode = "any", quests = { 734 }, note = "This Is Going to Be Hard follows quest 734." })
ns:RegisterQuestPrerequisite({ quest = 778, mode = "any", quests = { 777 }, note = "This Is Going to Be Hard follows quest 777." })
ns:RegisterQuestPrerequisite({ quest = 804, mode = "any", quests = { 790 }, note = "Sarkoth follows quest 790." })
ns:RegisterQuestPrerequisite({ quest = 821, mode = "any", quests = { 819 }, note = "Chen's Empty Keg follows quest 819." })
ns:RegisterQuestPrerequisite({ quest = 831, mode = "any", quests = { 830 }, note = "The Admiral's Orders follows quest 830." })
ns:RegisterQuestPrerequisite({ quest = 847, mode = "any", quests = { 702 }, note = "Guile of the Raptor follows quest 702." })
ns:RegisterQuestPrerequisite({ quest = 849, mode = "any", quests = { 846 }, note = "Revenge of Gann follows quest 846." })
ns:RegisterQuestPrerequisite({ quest = 892, mode = "any", quests = { 890 }, note = "The Missing Shipment follows quest 890." })
ns:RegisterQuestPrerequisite({ quest = 900, mode = "any", quests = { 894 }, note = "Samophlange follows quest 894." })
ns:RegisterQuestPrerequisite({ quest = 901, mode = "any", quests = { 900 }, note = "Samophlange follows quest 900." })
ns:RegisterQuestPrerequisite({ quest = 902, mode = "any", quests = { 901 }, note = "Samophlange follows quest 901." })
ns:RegisterQuestPrerequisite({ quest = 906, mode = "any", quests = { 879 }, note = "Betrayal from Within follows quest 879." })
ns:RegisterQuestPrerequisite({ quest = 928, mode = "any", quests = { 921 }, note = "Crown of the Earth follows quest 921." })
ns:RegisterQuestPrerequisite({ quest = 929, mode = "any", quests = { 928 }, note = "Crown of the Earth follows quest 928." })
ns:RegisterQuestPrerequisite({ quest = 933, mode = "any", quests = { 929 }, note = "Crown of the Earth follows quest 929." })
ns:RegisterQuestPrerequisite({ quest = 935, mode = "any", quests = { 7383 }, note = "Crown of the Earth follows quest 7383." })
ns:RegisterQuestPrerequisite({ quest = 942, mode = "any", quests = { 741 }, note = "The Absent Minded Prospector follows quest 741." })
ns:RegisterQuestPrerequisite({ quest = 943, mode = "any", quests = { 942 }, note = "The Absent Minded Prospector follows quest 942." })
ns:RegisterQuestPrerequisite({ quest = 955, mode = "any", quests = { 954 }, note = "Bashal'Aran follows quest 954." })
ns:RegisterQuestPrerequisite({ quest = 956, mode = "any", quests = { 955 }, note = "Bashal'Aran follows quest 955." })
ns:RegisterQuestPrerequisite({ quest = 957, mode = "any", quests = { 956 }, note = "Bashal'Aran follows quest 956." })
ns:RegisterQuestPrerequisite({ quest = 966, mode = "any", quests = { 965 }, note = "The Tower of Althalaxx follows quest 965." })
ns:RegisterQuestPrerequisite({ quest = 967, mode = "any", quests = { 966 }, note = "The Tower of Althalaxx follows quest 966." })
ns:RegisterQuestPrerequisite({ quest = 970, mode = "any", quests = { 967 }, note = "The Tower of Althalaxx follows quest 967." })
ns:RegisterQuestPrerequisite({ quest = 973, mode = "any", quests = { 970 }, note = "The Tower of Althalaxx follows quest 970." })
ns:RegisterQuestPrerequisite({ quest = 977, mode = "any", quests = { 3783 }, note = "Are We There, Yeti? follows quest 3783." })
ns:RegisterQuestPrerequisite({ quest = 985, mode = "any", quests = { 984 }, note = "How Big a Threat? follows quest 984." })
ns:RegisterQuestPrerequisite({ quest = 993, mode = "any", quests = { 986 }, note = "A Lost Master follows quest 986." })
ns:RegisterQuestPrerequisite({ quest = 1023, mode = "any", quests = { 991 }, note = "Raene's Cleansing follows quest 991." })
ns:RegisterQuestPrerequisite({ quest = 1024, mode = "any", quests = { 1023 }, note = "Raene's Cleansing follows quest 1023." })
ns:RegisterQuestPrerequisite({ quest = 1026, mode = "any", quests = { 1024 }, note = "Raene's Cleansing follows quest 1024." })
ns:RegisterQuestPrerequisite({ quest = 1027, mode = "any", quests = { 1026 }, note = "Raene's Cleansing follows quest 1026." })
ns:RegisterQuestPrerequisite({ quest = 1028, mode = "any", quests = { 1027 }, note = "Raene's Cleansing follows quest 1027." })
ns:RegisterQuestPrerequisite({ quest = 1029, mode = "any", quests = { 1055 }, note = "Raene's Cleansing follows quest 1055." })
ns:RegisterQuestPrerequisite({ quest = 1030, mode = "any", quests = { 1029 }, note = "Raene's Cleansing follows quest 1029." })
ns:RegisterQuestPrerequisite({ quest = 1045, mode = "any", quests = { 1030 }, note = "Raene's Cleansing follows quest 1030." })
ns:RegisterQuestPrerequisite({ quest = 1046, mode = "any", quests = { 1045 }, note = "Raene's Cleansing follows quest 1045." })
ns:RegisterQuestPrerequisite({ quest = 1052, mode = "any", quests = { 261 }, note = "Down the Scarlet Path follows quest 261." })
ns:RegisterQuestPrerequisite({ quest = 1055, mode = "any", quests = { 1028 }, note = "Raene's Cleansing follows quest 1028." })
ns:RegisterQuestPrerequisite({ quest = 1059, mode = "any", quests = { 1057 }, note = "Reclaiming the Charred Vale follows quest 1057." })
ns:RegisterQuestPrerequisite({ quest = 1095, mode = "any", quests = { 1094 }, note = "Further Instructions follows quest 1094." })
ns:RegisterQuestPrerequisite({ quest = 1140, mode = "any", quests = { 973 }, note = "The Tower of Althalaxx follows quest 973." })
ns:RegisterQuestPrerequisite({ quest = 1146, mode = "any", quests = { 1145 }, note = "The Swarm Grows follows quest 1145." })
ns:RegisterQuestPrerequisite({ quest = 1147, mode = "any", quests = { 1146 }, note = "The Swarm Grows follows quest 1146." })
ns:RegisterQuestPrerequisite({ quest = 1171, mode = "any", quests = { 1170 }, note = "The Brood of Onyxia follows quest 1170." })
ns:RegisterQuestPrerequisite({ quest = 1172, mode = "any", quests = { 1171 }, note = "The Brood of Onyxia follows quest 1171." })
ns:RegisterQuestPrerequisite({ quest = 1180, mode = "any", quests = { 1178 }, note = "Goblin Sponsorship follows quest 1178." })
ns:RegisterQuestPrerequisite({ quest = 1181, mode = "any", quests = { 1180 }, note = "Goblin Sponsorship follows quest 1180." })
ns:RegisterQuestPrerequisite({ quest = 1182, mode = "any", quests = { 1181 }, note = "Goblin Sponsorship follows quest 1181." })
ns:RegisterQuestPrerequisite({ quest = 1183, mode = "any", quests = { 1182 }, note = "Goblin Sponsorship follows quest 1182." })
ns:RegisterQuestPrerequisite({ quest = 1184, mode = "any", quests = { 1148 }, note = "Parts of the Swarm follows quest 1148." })
ns:RegisterQuestPrerequisite({ quest = 1189, mode = "any", quests = { 1188 }, note = "Safety First follows quest 1188." })
ns:RegisterQuestPrerequisite({ quest = 1196, mode = "any", quests = { 1195 }, note = "The Sacred Flame follows quest 1195." })
ns:RegisterQuestPrerequisite({ quest = 1197, mode = "any", quests = { 1196 }, note = "The Sacred Flame follows quest 1196." })
ns:RegisterQuestPrerequisite({ quest = 1241, mode = "any", quests = { 1274 }, note = "The Missing Diplomat follows quest 1274." })
ns:RegisterQuestPrerequisite({ quest = 1242, mode = "any", quests = { 1241 }, note = "The Missing Diplomat follows quest 1241." })
ns:RegisterQuestPrerequisite({ quest = 1243, mode = "any", quests = { 1242 }, note = "The Missing Diplomat follows quest 1242." })
ns:RegisterQuestPrerequisite({ quest = 1244, mode = "any", quests = { 1243 }, note = "The Missing Diplomat follows quest 1243." })
ns:RegisterQuestPrerequisite({ quest = 1245, mode = "any", quests = { 1244 }, note = "The Missing Diplomat follows quest 1244." })
ns:RegisterQuestPrerequisite({ quest = 1246, mode = "any", quests = { 1245 }, note = "The Missing Diplomat follows quest 1245." })
ns:RegisterQuestPrerequisite({ quest = 1247, mode = "any", quests = { 1447 }, note = "The Missing Diplomat follows quest 1447." })
ns:RegisterQuestPrerequisite({ quest = 1248, mode = "any", quests = { 1247 }, note = "The Missing Diplomat follows quest 1247." })
ns:RegisterQuestPrerequisite({ quest = 1249, mode = "any", quests = { 1248 }, note = "The Missing Diplomat follows quest 1248." })
ns:RegisterQuestPrerequisite({ quest = 1250, mode = "any", quests = { 1249 }, note = "The Missing Diplomat follows quest 1249." })
ns:RegisterQuestPrerequisite({ quest = 1259, mode = "any", quests = { 1252 }, note = "Lieutenant Paval Reethe follows quest 1252." })
ns:RegisterQuestPrerequisite({ quest = 1264, mode = "any", quests = { 1250 }, note = "The Missing Diplomat follows quest 1250." })
ns:RegisterQuestPrerequisite({ quest = 1265, mode = "any", quests = { 1264 }, note = "The Missing Diplomat follows quest 1264." })
ns:RegisterQuestPrerequisite({ quest = 1266, mode = "any", quests = { 1265 }, note = "The Missing Diplomat follows quest 1265." })
ns:RegisterQuestPrerequisite({ quest = 1267, mode = "any", quests = { 1324 }, note = "The Missing Diplomat follows quest 1324." })
ns:RegisterQuestPrerequisite({ quest = 1287, mode = "any", quests = { 1286 }, note = "The Deserters follows quest 1286." })
ns:RegisterQuestPrerequisite({ quest = 1319, mode = "any", quests = { 1253 }, note = "The Black Shield follows quest 1253." })
ns:RegisterQuestPrerequisite({ quest = 1320, mode = "any", quests = { 1319 }, note = "The Black Shield follows quest 1319." })
ns:RegisterQuestPrerequisite({ quest = 1321, mode = "any", quests = { 1251 }, note = "The Black Shield follows quest 1251." })
ns:RegisterQuestPrerequisite({ quest = 1322, mode = "any", quests = { 1321 }, note = "The Black Shield follows quest 1321." })
ns:RegisterQuestPrerequisite({ quest = 1323, mode = "any", quests = { 1322 }, note = "The Black Shield follows quest 1322." })
ns:RegisterQuestPrerequisite({ quest = 1324, mode = "any", quests = { 1266 }, note = "The Missing Diplomat follows quest 1266." })
ns:RegisterQuestPrerequisite({ quest = 1364, mode = "any", quests = { 1363 }, note = "Mazen's Behest follows quest 1363." })
ns:RegisterQuestPrerequisite({ quest = 1426, mode = "any", quests = { 1422 }, note = "Threat From the Sea follows quest 1422." })
ns:RegisterQuestPrerequisite({ quest = 1427, mode = "any", quests = { 1426 }, note = "Threat From the Sea follows quest 1426." })
ns:RegisterQuestPrerequisite({ quest = 1432, mode = "any", quests = { 1431 }, note = "Alliance Relations follows quest 1431." })
ns:RegisterQuestPrerequisite({ quest = 1433, mode = "any", quests = { 1432 }, note = "Alliance Relations follows quest 1432." })
ns:RegisterQuestPrerequisite({ quest = 1438, mode = "any", quests = { 1465 }, note = "Vahlarriel's Search follows quest 1465." })
ns:RegisterQuestPrerequisite({ quest = 1447, mode = "any", quests = { 1246 }, note = "The Missing Diplomat follows quest 1246." })
ns:RegisterQuestPrerequisite({ quest = 1455, mode = "any", quests = { 1454 }, note = "The Karnitol Shipwreck follows quest 1454." })
ns:RegisterQuestPrerequisite({ quest = 1456, mode = "any", quests = { 1455 }, note = "The Karnitol Shipwreck follows quest 1455." })
ns:RegisterQuestPrerequisite({ quest = 1457, mode = "any", quests = { 1456 }, note = "The Karnitol Shipwreck follows quest 1456." })
ns:RegisterQuestPrerequisite({ quest = 1459, mode = "any", quests = { 1458 }, note = "Reagents for Reclaimers Inc. follows quest 1458." })
ns:RegisterQuestPrerequisite({ quest = 1465, mode = "any", quests = { 1437 }, note = "Vahlarriel's Search follows quest 1437." })
ns:RegisterQuestPrerequisite({ quest = 1466, mode = "any", quests = { 1459 }, note = "Reagents for Reclaimers Inc. follows quest 1459." })
ns:RegisterQuestPrerequisite({ quest = 1467, mode = "any", quests = { 1466 }, note = "Reagents for Reclaimers Inc. follows quest 1466." })
ns:RegisterQuestPrerequisite({ quest = 1481, mode = "any", quests = { 1480 }, note = "The Corrupter follows quest 1480." })
ns:RegisterQuestPrerequisite({ quest = 1482, mode = "any", quests = { 1481 }, note = "The Corrupter follows quest 1481." })
ns:RegisterQuestPrerequisite({ quest = 1484, mode = "any", quests = { 1482 }, note = "The Corrupter follows quest 1482." })
ns:RegisterQuestPrerequisite({ quest = 1488, mode = "any", quests = { 1484 }, note = "The Corrupter follows quest 1484." })
ns:RegisterQuestPrerequisite({ quest = 1510, mode = "any", quests = { 1509 }, note = "News of Dogran follows quest 1509." })
ns:RegisterQuestPrerequisite({ quest = 1518, mode = "any", quests = { 1517 }, note = "Call of Earth follows quest 1517." })
ns:RegisterQuestPrerequisite({ quest = 1521, mode = "any", quests = { 1520 }, note = "Call of Earth follows quest 1520." })
ns:RegisterQuestPrerequisite({ quest = 1525, mode = "any", quests = { 1524 }, note = "Call of Fire follows quest 1524." })
ns:RegisterQuestPrerequisite({ quest = 1526, mode = "any", quests = { 1525 }, note = "Call of Fire follows quest 1525." })
ns:RegisterQuestPrerequisite({ quest = 1527, mode = "any", quests = { 1526 }, note = "Call of Fire follows quest 1526." })
ns:RegisterQuestPrerequisite({ quest = 1534, mode = "any", quests = { 1536 }, note = "Call of Water follows quest 1536." })
ns:RegisterQuestPrerequisite({ quest = 1535, mode = "any", quests = { 1530 }, note = "Call of Water follows quest 1530." })
ns:RegisterQuestPrerequisite({ quest = 1536, mode = "any", quests = { 1535 }, note = "Call of Water follows quest 1535." })
ns:RegisterQuestPrerequisite({ quest = 1643, mode = "any", quests = { 1642 }, note = "The Tome of Divinity follows quest 1642." })
ns:RegisterQuestPrerequisite({ quest = 1644, mode = "any", quests = { 1643 }, note = "The Tome of Divinity follows quest 1643." })
ns:RegisterQuestPrerequisite({ quest = 1647, mode = "any", quests = { 1646 }, note = "The Tome of Divinity follows quest 1646." })
ns:RegisterQuestPrerequisite({ quest = 1648, mode = "any", quests = { 1647 }, note = "The Tome of Divinity follows quest 1647." })
ns:RegisterQuestPrerequisite({ quest = 1650, mode = "any", quests = { 1649 }, note = "The Tome of Valor follows quest 1649." })
ns:RegisterQuestPrerequisite({ quest = 1651, mode = "any", quests = { 1650 }, note = "The Tome of Valor follows quest 1650." })
ns:RegisterQuestPrerequisite({ quest = 1652, mode = "any", quests = { 1651 }, note = "The Tome of Valor follows quest 1651." })
ns:RegisterQuestPrerequisite({ quest = 1778, mode = "any", quests = { 1648 }, note = "The Tome of Divinity follows quest 1648." })
ns:RegisterQuestPrerequisite({ quest = 1779, mode = "any", quests = { 1778 }, note = "The Tome of Divinity follows quest 1778." })
ns:RegisterQuestPrerequisite({ quest = 1783, mode = "any", quests = { 1779 }, note = "The Tome of Divinity follows quest 1779." })
ns:RegisterQuestPrerequisite({ quest = 1784, mode = "any", quests = { 1783 }, note = "The Tome of Divinity follows quest 1783." })
ns:RegisterQuestPrerequisite({ quest = 1785, mode = "any", quests = { 1784 }, note = "The Tome of Divinity follows quest 1784." })
ns:RegisterQuestPrerequisite({ quest = 1803, mode = "any", quests = { 1801 }, note = "Tome of the Cabal follows quest 1801." })
ns:RegisterQuestPrerequisite({ quest = 1858, mode = "any", quests = { 1963 }, note = "The Shattered Hand follows quest 1963." })
ns:RegisterQuestPrerequisite({ quest = 1898, mode = "any", quests = { 1886 }, note = "The Deathstalkers follows quest 1886." })
ns:RegisterQuestPrerequisite({ quest = 1899, mode = "any", quests = { 1898 }, note = "The Deathstalkers follows quest 1898." })
ns:RegisterQuestPrerequisite({ quest = 1978, mode = "any", quests = { 1899 }, note = "The Deathstalkers follows quest 1899." })
ns:RegisterQuestPrerequisite({ quest = 2480, mode = "any", quests = { 2479 }, note = "Hinott's Assistance follows quest 2479." })
ns:RegisterQuestPrerequisite({ quest = 2608, mode = "any", quests = { 2607 }, note = "The Touch of Zanzil follows quest 2607." })
ns:RegisterQuestPrerequisite({ quest = 2609, mode = "any", quests = { 2608 }, note = "The Touch of Zanzil follows quest 2608." })
ns:RegisterQuestPrerequisite({ quest = 2869, mode = "any", quests = { 3130 }, note = "Against the Hatecrest follows quest 3130." })
ns:RegisterQuestPrerequisite({ quest = 2972, mode = "any", quests = { 2970 }, note = "Doling Justice follows quest 2970." })
ns:RegisterQuestPrerequisite({ quest = 2976, mode = "any", quests = { 2974 }, note = "A Grim Discovery follows quest 2974." })
ns:RegisterQuestPrerequisite({ quest = 2980, mode = "any", quests = { 2975 }, note = "The Ogres of Feralas follows quest 2975." })
ns:RegisterQuestPrerequisite({ quest = 3368, mode = "any", quests = { 3367 }, note = "Suntara Stones follows quest 3367." })
ns:RegisterQuestPrerequisite({ quest = 3454, mode = "any", quests = { 3453 }, note = "The Torch of Retribution follows quest 3453." })
ns:RegisterQuestPrerequisite({ quest = 3505, mode = "any", quests = { 3504 }, note = "Betrayed follows quest 3504." })
ns:RegisterQuestPrerequisite({ quest = 3506, mode = "any", quests = { 3505 }, note = "Betrayed follows quest 3505." })
ns:RegisterQuestPrerequisite({ quest = 3507, mode = "any", quests = { 3506 }, note = "Betrayed follows quest 3506." })
ns:RegisterQuestPrerequisite({ quest = 3522, mode = "any", quests = { 3521 }, note = "Iverron's Antidote follows quest 3521." })
ns:RegisterQuestPrerequisite({ quest = 3569, mode = "any", quests = { 3568 }, note = "Seeping Corruption follows quest 3568." })
ns:RegisterQuestPrerequisite({ quest = 3570, mode = "any", quests = { 3569 }, note = "Seeping Corruption follows quest 3569." })
ns:RegisterQuestPrerequisite({ quest = 3701, mode = "any", quests = { 3702 }, note = "The Smoldering Ruins of Thaurissan follows quest 3702." })
ns:RegisterQuestPrerequisite({ quest = 3845, mode = "any", quests = { 3844 }, note = "It's a Secret to Everybody follows quest 3844." })
ns:RegisterQuestPrerequisite({ quest = 3908, mode = "any", quests = { 3845 }, note = "It's a Secret to Everybody follows quest 3845." })
ns:RegisterQuestPrerequisite({ quest = 4125, mode = "any", quests = { 4124 }, note = "The Missing Courier follows quest 4124." })
ns:RegisterQuestPrerequisite({ quest = 4184, mode = "any", quests = { 4183 }, note = "The True Masters follows quest 4183." })
ns:RegisterQuestPrerequisite({ quest = 4185, mode = "any", quests = { 4184 }, note = "The True Masters follows quest 4184." })
ns:RegisterQuestPrerequisite({ quest = 4186, mode = "any", quests = { 4185 }, note = "The True Masters follows quest 4185." })
ns:RegisterQuestPrerequisite({ quest = 4223, mode = "any", quests = { 4186 }, note = "The True Masters follows quest 4186." })
ns:RegisterQuestPrerequisite({ quest = 4224, mode = "any", quests = { 4223 }, note = "The True Masters follows quest 4223." })
ns:RegisterQuestPrerequisite({ quest = 4244, mode = "any", quests = { 4243 }, note = "Chasing A-Me 01 follows quest 4243." })
ns:RegisterQuestPrerequisite({ quest = 4245, mode = "any", quests = { 4244 }, note = "Chasing A-Me 01 follows quest 4244." })
ns:RegisterQuestPrerequisite({ quest = 4681, mode = "any", quests = { 3524 }, note = "Washed Ashore follows quest 3524." })
ns:RegisterQuestPrerequisite({ quest = 4721, mode = "any", quests = { 4741 }, note = "Wild Guardians follows quest 4741." })
ns:RegisterQuestPrerequisite({ quest = 4741, mode = "any", quests = { 4521 }, note = "Wild Guardians follows quest 4521." })
ns:RegisterQuestPrerequisite({ quest = 4863, mode = "any", quests = { 4861 }, note = "Enraged Wildkin follows quest 4861." })
ns:RegisterQuestPrerequisite({ quest = 4864, mode = "any", quests = { 4863 }, note = "Enraged Wildkin follows quest 4863." })
ns:RegisterQuestPrerequisite({ quest = 4883, mode = "any", quests = { 4882 }, note = "Guarding Secrets follows quest 4882." })
ns:RegisterQuestPrerequisite({ quest = 4985, mode = "any", quests = { 4984 }, note = "The Wildlife Suffers Too follows quest 4984." })
ns:RegisterQuestPrerequisite({ quest = 5022, mode = "any", quests = { 5021 }, note = "Better Late Than Never follows quest 5021." })
ns:RegisterQuestPrerequisite({ quest = 5023, mode = "any", quests = { 5021 }, note = "Better Late Than Never follows quest 5021." })
ns:RegisterQuestPrerequisite({ quest = 5163, mode = "any", quests = { 977 }, note = "Are We There, Yeti? follows quest 977." })
ns:RegisterQuestPrerequisite({ quest = 5728, mode = "any", quests = { 5727 }, note = "Hidden Enemies follows quest 5727." })
ns:RegisterQuestPrerequisite({ quest = 5902, mode = "any", quests = { 5901 }, note = "A Plague Upon Thee follows quest 5901." })
ns:RegisterQuestPrerequisite({ quest = 5904, mode = "any", quests = { 5903 }, note = "A Plague Upon Thee follows quest 5903." })
ns:RegisterQuestPrerequisite({ quest = 6023, mode = "any", quests = { 6004 }, note = "Unfinished Business follows quest 6004." })
ns:RegisterQuestPrerequisite({ quest = 6082, mode = "any", quests = { 6083 }, note = "Taming the Beast follows quest 6083." })
ns:RegisterQuestPrerequisite({ quest = 6083, mode = "any", quests = { 6062 }, note = "Taming the Beast follows quest 6062." })
ns:RegisterQuestPrerequisite({ quest = 6084, mode = "any", quests = { 6064 }, note = "Taming the Beast follows quest 6064." })
ns:RegisterQuestPrerequisite({ quest = 6085, mode = "any", quests = { 6084 }, note = "Taming the Beast follows quest 6084." })
ns:RegisterQuestPrerequisite({ quest = 6087, mode = "any", quests = { 6061 }, note = "Taming the Beast follows quest 6061." })
ns:RegisterQuestPrerequisite({ quest = 6088, mode = "any", quests = { 6087 }, note = "Taming the Beast follows quest 6087." })
ns:RegisterQuestPrerequisite({ quest = 6101, mode = "any", quests = { 6063 }, note = "Taming the Beast follows quest 6063." })
ns:RegisterQuestPrerequisite({ quest = 6102, mode = "any", quests = { 6101 }, note = "Taming the Beast follows quest 6101." })
ns:RegisterQuestPrerequisite({ quest = 6389, mode = "any", quests = { 5904 }, note = "A Plague Upon Thee follows quest 5904." })
ns:RegisterQuestPrerequisite({ quest = 6390, mode = "any", quests = { 5902 }, note = "A Plague Upon Thee follows quest 5902." })
ns:RegisterQuestPrerequisite({ quest = 7383, mode = "any", quests = { 933 }, note = "Crown of the Earth follows quest 933." })

ns:RegisterQuestPrerequisite({ quest = 4490, mode = "any", quests = { 3631, 4487, 4488, 4489 },
    note = "Summon Felsteed follows any one of the trainer introductions." })

-- Org breadcrumb accepts that the Stonetalon chain can skip once a later quest is
-- already active or turned in. The engine treats the step as done (no Skip).
ns.questBreadcrumbBypass = ns.questBreadcrumbBypass or {}
ns.questBreadcrumbBypass[1061] = { 1062 }

-- Class quests offered by several trainers. Taking one version closes the
-- others (database exclusiveTo), so the route skips the rest.
ns.questBreadcrumbBypass[1470] = { 1485 }
ns.questBreadcrumbBypass[1472] = { 1507 }
ns.questBreadcrumbBypass[1474] = { 1507 }
ns.questBreadcrumbBypass[1476] = { 1507 }
ns.questBreadcrumbBypass[1485] = { 1470 }
ns.questBreadcrumbBypass[1498] = { 1819 }
ns.questBreadcrumbBypass[1505] = { 1819 }
ns.questBreadcrumbBypass[1507] = { 1472 }
ns.questBreadcrumbBypass[1508] = { 1472 }
ns.questBreadcrumbBypass[1509] = { 1472 }
ns.questBreadcrumbBypass[1510] = { 1472 }
ns.questBreadcrumbBypass[1511] = { 1472 }
ns.questBreadcrumbBypass[1512] = { 1472 }
ns.questBreadcrumbBypass[1513] = { 1472 }
ns.questBreadcrumbBypass[1515] = { 1472 }
ns.questBreadcrumbBypass[1516] = { 1519 }
ns.questBreadcrumbBypass[1519] = { 1516 }
ns.questBreadcrumbBypass[1517] = { 1520 }
ns.questBreadcrumbBypass[1518] = { 1521 }
ns.questBreadcrumbBypass[1520] = { 1517 }
ns.questBreadcrumbBypass[1521] = { 1518 }
ns.questBreadcrumbBypass[1522] = { 1523, 2983, 2984 }
ns.questBreadcrumbBypass[1523] = { 1522, 2983, 2984 }
ns.questBreadcrumbBypass[1528] = { 1529, 2985, 2986 }
ns.questBreadcrumbBypass[1529] = { 1528, 2985, 2986 }
ns.questBreadcrumbBypass[1531] = { 1532 }
ns.questBreadcrumbBypass[1532] = { 1531 }
ns.questBreadcrumbBypass[1598] = { 1599 }
ns.questBreadcrumbBypass[1599] = { 1598 }
ns.questBreadcrumbBypass[1638] = { 1639, 1678, 1683 }
ns.questBreadcrumbBypass[1639] = { 1678, 1683 }
ns.questBreadcrumbBypass[1661] = { 4485, 4486 }
ns.questBreadcrumbBypass[1678] = { 1639, 1683 }
ns.questBreadcrumbBypass[1679] = { 1639, 1683 }
ns.questBreadcrumbBypass[1683] = { 1639, 1678 }
ns.questBreadcrumbBypass[1684] = { 1639, 1678, 1683 }
ns.questBreadcrumbBypass[1715] = { 1688 }
ns.questBreadcrumbBypass[1717] = { 1716 }
ns.questBreadcrumbBypass[1789] = { 1784 }
ns.questBreadcrumbBypass[1790] = { 1787 }
ns.questBreadcrumbBypass[1818] = { 1498 }
ns.questBreadcrumbBypass[1819] = { 1498 }
ns.questBreadcrumbBypass[1859] = { 1885 }
ns.questBreadcrumbBypass[1860] = { 1880 }
ns.questBreadcrumbBypass[1861] = { 1880 }
ns.questBreadcrumbBypass[1879] = { 1861 }
ns.questBreadcrumbBypass[1880] = { 1861 }
ns.questBreadcrumbBypass[1881] = { 1884 }
ns.questBreadcrumbBypass[1882] = { 1884 }
ns.questBreadcrumbBypass[1883] = { 1882 }
ns.questBreadcrumbBypass[1884] = { 1882 }
ns.questBreadcrumbBypass[1885] = { 1859 }
ns.questBreadcrumbBypass[2378] = { 2380 }
ns.questBreadcrumbBypass[2380] = { 2378 }
ns.questBreadcrumbBypass[2983] = { 1522, 1523, 2984 }
ns.questBreadcrumbBypass[2984] = { 1522, 1523, 2983 }
ns.questBreadcrumbBypass[2985] = { 1528, 1529, 2986 }
ns.questBreadcrumbBypass[2986] = { 1528, 1529, 2985 }
ns.questBreadcrumbBypass[2997] = { 2999, 3000 }
ns.questBreadcrumbBypass[2998] = { 3681 }
ns.questBreadcrumbBypass[2999] = { 2997, 3000 }
ns.questBreadcrumbBypass[3000] = { 2997, 2999 }
ns.questBreadcrumbBypass[3631] = { 4487, 4488, 4489 }
ns.questBreadcrumbBypass[3681] = { 2998 }
ns.questBreadcrumbBypass[4485] = { 1661, 4486 }
ns.questBreadcrumbBypass[4486] = { 1661, 4485 }
ns.questBreadcrumbBypass[4487] = { 3631, 4488, 4489 }
ns.questBreadcrumbBypass[4488] = { 3631, 4487, 4489 }
ns.questBreadcrumbBypass[4489] = { 3631, 4487, 4488 }
ns.questBreadcrumbBypass[4736] = { 4737, 4738, 4739 }
ns.questBreadcrumbBypass[4737] = { 4736, 4738, 4739 }
ns.questBreadcrumbBypass[4738] = { 4736, 4737, 4739 }
ns.questBreadcrumbBypass[4739] = { 4736, 4737, 4738 }
ns.questBreadcrumbBypass[4962] = { 4963 }
ns.questBreadcrumbBypass[4963] = { 4962 }
ns.questBreadcrumbBypass[4964] = { 4963 }
ns.questBreadcrumbBypass[4965] = { 4967, 4968, 4969 }
ns.questBreadcrumbBypass[4967] = { 4965, 4968, 4969 }
ns.questBreadcrumbBypass[4968] = { 4965, 4967, 4969 }
ns.questBreadcrumbBypass[4969] = { 4965, 4967, 4968 }
ns.questBreadcrumbBypass[4975] = { 4962 }
ns.questBreadcrumbBypass[5627] = { 5628, 5629, 5630, 5631, 5632, 5633 }
ns.questBreadcrumbBypass[5628] = { 5627, 5629, 5630, 5631, 5632, 5633 }
ns.questBreadcrumbBypass[5629] = { 5627, 5628, 5630, 5631, 5632, 5633 }
ns.questBreadcrumbBypass[5630] = { 5627, 5628, 5629, 5631, 5632, 5633 }
ns.questBreadcrumbBypass[5631] = { 5627, 5628, 5629, 5630, 5632, 5633 }
ns.questBreadcrumbBypass[5632] = { 5627, 5628, 5629, 5630, 5631, 5633 }
ns.questBreadcrumbBypass[5633] = { 5627, 5628, 5629, 5630, 5631, 5632 }
ns.questBreadcrumbBypass[5635] = { 5636, 5637, 5638, 5639, 5640 }
ns.questBreadcrumbBypass[5636] = { 5635, 5637, 5638, 5639, 5640 }
ns.questBreadcrumbBypass[5637] = { 5635, 5636, 5638, 5639, 5640 }
ns.questBreadcrumbBypass[5638] = { 5635, 5636, 5637, 5639, 5640 }
ns.questBreadcrumbBypass[5639] = { 5635, 5636, 5637, 5638, 5640 }
ns.questBreadcrumbBypass[5640] = { 5635, 5636, 5637, 5638, 5639 }
ns.questBreadcrumbBypass[5641] = { 5645, 5647 }
ns.questBreadcrumbBypass[5642] = { 5643, 5680 }
ns.questBreadcrumbBypass[5643] = { 5642, 5680 }
ns.questBreadcrumbBypass[5644] = { 5646, 5679 }
ns.questBreadcrumbBypass[5645] = { 5641, 5647 }
ns.questBreadcrumbBypass[5646] = { 5644, 5679 }
ns.questBreadcrumbBypass[5647] = { 5641, 5645 }
ns.questBreadcrumbBypass[5654] = { 5655, 5657 }
ns.questBreadcrumbBypass[5655] = { 5654, 5657 }
ns.questBreadcrumbBypass[5657] = { 5654, 5655 }
ns.questBreadcrumbBypass[5660] = { 5661, 5662, 5663 }
ns.questBreadcrumbBypass[5661] = { 5660, 5662, 5663 }
ns.questBreadcrumbBypass[5662] = { 5660, 5661, 5663 }
ns.questBreadcrumbBypass[5663] = { 5660, 5661, 5662 }
ns.questBreadcrumbBypass[5672] = { 5673, 5675 }
ns.questBreadcrumbBypass[5673] = { 5672, 5675 }
ns.questBreadcrumbBypass[5675] = { 5672, 5673 }
ns.questBreadcrumbBypass[5676] = { 5677, 5678 }
ns.questBreadcrumbBypass[5677] = { 5676, 5678 }
ns.questBreadcrumbBypass[5678] = { 5676, 5677 }
ns.questBreadcrumbBypass[5679] = { 5644, 5646 }
ns.questBreadcrumbBypass[5680] = { 5642, 5643 }
ns.questBreadcrumbBypass[5923] = { 5924, 5925 }
ns.questBreadcrumbBypass[5924] = { 5923, 5925 }
ns.questBreadcrumbBypass[5925] = { 5923, 5924 }
ns.questBreadcrumbBypass[5926] = { 5927, 5928 }
ns.questBreadcrumbBypass[5927] = { 5926, 5928 }
ns.questBreadcrumbBypass[5928] = { 5926, 5927 }
ns.questBreadcrumbBypass[6065] = { 6066, 6067 }
ns.questBreadcrumbBypass[6066] = { 6065, 6067 }
ns.questBreadcrumbBypass[6067] = { 6065, 6066 }
ns.questBreadcrumbBypass[6068] = { 6069, 6070 }
ns.questBreadcrumbBypass[6069] = { 6068, 6070 }
ns.questBreadcrumbBypass[6070] = { 6068, 6069 }
ns.questBreadcrumbBypass[6074] = { 6075, 6076 }
ns.questBreadcrumbBypass[6075] = { 6074, 6076 }
ns.questBreadcrumbBypass[6076] = { 6074, 6075 }
ns.questBreadcrumbBypass[7670] = { 7638 }
ns.questBreadcrumbBypass[8410] = { 8411 }
ns.questBreadcrumbBypass[8411] = { 8410 }
ns.questBreadcrumbBypass[8419] = { 8420 }
ns.questBreadcrumbBypass[8420] = { 8419 }
ns.questBreadcrumbBypass[65593] = { 1507 }
ns.questBreadcrumbBypass[65597] = { 1507 }
ns.questBreadcrumbBypass[65601] = { 1472 }
ns.questBreadcrumbBypass[65604] = { 1472 }
ns.questBreadcrumbBypass[65610] = { 1472 }

ns:RegisterQuestPrerequisite({
    quest = 91209,
    mode = "all",
    quests = { 91208 },
    conditions = {
        all = {
            { faction = "Horde" },
            { race = 5 },
            { class = 2 },
        },
    },
    note = "Continue Your Training is offered after Coming to Terms.",
})

ns:RegisterQuestPrerequisite({
    quest = 94773,
    mode = "all",
    quests = { 94774 },
    conditions = { all = { { faction = "Alliance" }, { race = 1 }, { class = 5 } } },
    note = "Laurena's Divine Grace follows Priestess Josetta's handoff.",
})

ns:RegisterQuestPrerequisite({
    quest = 94863,
    mode = "all",
    quests = { 94792 },
    conditions = { all = { { faction = "Alliance" }, { class = 3 } } },
    note = "Goldshire Taming the Beast continues in quest order.",
})

ns:RegisterQuestPrerequisite({
    quest = 94864,
    mode = "all",
    quests = { 94863 },
    conditions = { all = { { faction = "Alliance" }, { class = 3 } } },
    note = "Goldshire Taming the Beast continues in quest order.",
})

ns:RegisterQuestPrerequisite({
    quest = 94793,
    mode = "all",
    quests = { 94864 },
    conditions = { all = { { faction = "Alliance" }, { class = 3 } } },
    note = "Training the Beast follows the last Goldshire tame.",
})

ns:RegisterQuestPrerequisite({
    quest = 94374,
    mode = "all",
    quests = { 94373 },
    conditions = { all = { { faction = "Alliance" }, { class = 7 } } },
    note = "Coldridge Call of Earth continues at the earth shrine.",
})

ns:RegisterQuestPrerequisite({
    quest = 94375,
    mode = "all",
    quests = { 94374 },
    conditions = { all = { { faction = "Alliance" }, { class = 7 } } },
    note = "Coldridge Call of Earth returns to Teo Hammerstorm.",
})

ns:RegisterQuestPrerequisite({
    quest = 94465,
    mode = "all",
    quests = { 94449 },
    conditions = { all = { { faction = "Alliance" }, { class = 7 } } },
    note = "Call of Fire continues from Bruegs Kindleborn.",
})

ns:RegisterQuestPrerequisite({
    quest = 94817,
    mode = "all",
    quests = { 94824 },
    conditions = { all = { { faction = "Alliance" }, { race = 7 }, { class = 5 } } },
    note = "High Priestess Mims continues Confounding Flash.",
})

ns:RegisterQuestPrerequisite({
    quest = 94913,
    mode = "all",
    quests = { 94911 },
    conditions = { all = { { faction = "Horde" }, { race = 96 } } },
    note = "Skyborne Moonglade follows Child of Nature.",
})

ns:RegisterQuestPrerequisite({
    quest = 91282,
    mode = "all",
    quests = { 91209 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Second Home is offered by Shari Stilwell after Continue Your Training.",
})

ns:RegisterQuestPrerequisite({
    quest = 91285,
    mode = "all",
    quests = { 91282 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "Murlocs at the Gates follows A Second Home.",
})

ns:RegisterQuestPrerequisite({
    quest = 91294,
    mode = "all",
    quests = { 91285 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "Touring the Grounds follows Murlocs at the Gates.",
})

ns:RegisterQuestPrerequisite({
    quest = 91317,
    mode = "all",
    quests = { 91294 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "The Tarnished follows Touring the Grounds.",
})

ns:RegisterQuestPrerequisite({
    quest = 95803,
    mode = "all",
    quests = { 91317 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Token of Good Faith follows The Tarnished.",
})

ns:RegisterQuestPrerequisite({
    quest = 94427,
    mode = "all",
    quests = { 91317 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity follows The Tarnished.",
})

ns:RegisterQuestPrerequisite({
    quest = 94434,
    mode = "all",
    quests = { 94427 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity continues with Tanis Alderwood.",
})

ns:RegisterQuestPrerequisite({
    quest = 94435,
    mode = "all",
    quests = { 94434 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity returns to Danitha Morr.",
})

ns:RegisterQuestPrerequisite({
    quest = 94436,
    mode = "all",
    quests = { 94435 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity continues with Deathguard Billmuth.",
})

ns:RegisterQuestPrerequisite({
    quest = 94438,
    mode = "all",
    quests = { 94436 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity continues with Deathguard Falgan.",
})

ns:RegisterQuestPrerequisite({
    quest = 94440,
    mode = "all",
    quests = { 94438 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity continues from Deathguard Falgan.",
})

ns:RegisterQuestPrerequisite({
    quest = 94441,
    mode = "all",
    quests = { 94440 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity returns to Danitha Morr.",
})

ns:RegisterQuestPrerequisite({
    quest = 5727,
    mode = "any",
    quests = { 5726 },
    conditions = { faction = "Horde" },
    note = "Thrall's Hidden Enemies follow-up is offered after the Lieutenant's Insignia is returned.",
})

ns:RegisterQuestPrerequisite({
    quest = 430,
    mode = "all",
    quests = { 429 },
    conditions = { faction = "Horde" },
    note = "Return to Quinn is offered after Wild Hearts is turned in to Apothecary Renferrel.",
})

ns:RegisterQuestPrerequisite({
    quest = 91920,
    mode = "all",
    quests = { 430 },
    conditions = { faction = "Horde" },
    note = "Wild Eyes is offered after the minor potion is delivered to Quinn Yorick.",
})

ns:RegisterQuestPrerequisite({
    quest = 91921,
    mode = "all",
    quests = { 91920 },
    conditions = { faction = "Horde" },
    note = "Return to Quinn (Again) is offered after Wild Eyes is turned in to Apothecary Renferrel.",
})

ns:RegisterQuestPrerequisite({
    quest = 425,
    mode = "all",
    quests = { 91921 },
    conditions = { faction = "Horde" },
    note = "Ivar the Foul is offered after Quinn Yorick receives the second potion.",
})

ns:RegisterQuestPrerequisite({
    quest = 98298,
    mode = "all",
    quests = { 99 },
    conditions = { faction = "Horde" },
    note = "Dalar's worgen follow-up is offered after Pyrewood Village is turned in.",
})

ns:RegisterQuestPrerequisite({
    quest = 98299,
    mode = "all",
    quests = { 98298 },
    conditions = { faction = "Horde" },
    note = "Stop the Spread is offered after the worgen bits are turned in to Dalar Dawnweaver.",
})

ns:RegisterQuestPrerequisite({
    quest = 95774,
    mode = "all",
    quests = { 4921 },
    conditions = { faction = "Horde" },
    note = "Her Name Is Olgra is offered after Lost in Battle is turned in to Mankrik.",
})

ns:RegisterQuestPrerequisite({
    quest = 99156,
    mode = "all",
    quests = { 356 },
    conditions = { faction = "Horde" },
    note = "Linnea's abomination report is offered after Rear Guard Patrol is turned in.",
})

ns:RegisterQuestPrerequisite({
    quest = 2519,
    mode = "all",
    quests = { 98391 },
    conditions = { faction = "Alliance" },
    note = "The Temple of the Moon is offered after The Sisterhood of Elune is turned in to Sister Aquinne.",
})

ns:RegisterQuestPrerequisite({
    quest = 99142,
    mode = "all",
    quests = { 5482 },
    conditions = { faction = "Horde" },
    note = "Tomb Weed is offered after Doom Weed is turned in.",
})

ns:RegisterQuestPrerequisite({
    quest = 95125,
    mode = "all",
    quests = { 95111 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "Ott's Masterwork is offered after An Underrated Talent delivers the smithing materials.",
})

ns:RegisterQuestPrerequisite({
    quest = 99152,
    mode = "all",
    quests = { 96899 },
    conditions = { faction = "Horde" },
    note = "As Above, So Below is offered after Bandarion Keep is turned in.",
})

ns:RegisterQuestPrerequisite({
    quest = 99153,
    mode = "all",
    quests = { 96899 },
    conditions = { faction = "Horde" },
    note = "The One That Got Away is offered after Bandarion Keep is turned in.",
})

ns:RegisterQuestPrerequisite({
    quest = 95981,
    mode = "all",
    quests = { 479 },
    conditions = { faction = "Horde" },
    note = "Watching the Roads is offered after Ambermill Investigations is turned in.",
})

ns:RegisterQuestPrerequisite({
    quest = 480,
    mode = "all",
    quests = { 95981 },
    conditions = { faction = "Horde" },
    note = "The Weaver is offered after Watching the Roads is turned in.",
})

-- Sergra Darkthorn at the Crossroads. Classic series verified on Warcraft Wiki
-- (The Zhevra, Echeyakee, Jorn Skyseer): each quest is offered only after the
-- previous one is turned in.
ns:RegisterQuestPrerequisite({
    quest = 845,
    mode = "any",
    quests = { 844 },
    conditions = { faction = "Horde" },
    note = "The Zhevra is offered after Plainstrider Menace.",
})

ns:RegisterQuestPrerequisite({
    quest = 903,
    mode = "any",
    quests = { 845 },
    conditions = { faction = "Horde" },
    note = "Prowlers of the Barrens is offered after The Zhevra.",
})

ns:RegisterQuestPrerequisite({
    quest = 881,
    mode = "any",
    quests = { 903 },
    conditions = { faction = "Horde" },
    note = "Echeyakee is offered after Prowlers of the Barrens.",
})

ns:RegisterQuestPrerequisite({
    quest = 905,
    mode = "any",
    quests = { 881 },
    conditions = { faction = "Horde" },
    note = "The Angry Scytheclaws is offered after Echeyakee.",
})

ns:RegisterQuestPrerequisite({
    quest = 3261,
    mode = "any",
    quests = { 905 },
    conditions = { faction = "Horde" },
    note = "Jorn Skyseer is offered after The Angry Scytheclaws.",
})

-- QuestieDB prerequisite groups. Registered only when the turn-in step id is
-- turnin-<questId>- and that step is already earlier in the same guide.
-- Zephras entries below are the ones Wowhead prerequisiteQuestIds also lists.
ns:RegisterQuestPrerequisite({
    quest = 65593,
    mode = "any",
    quests = { 1472 },
    conditions = { all = { { faction = "Horde" }, { class = 9 } } },
    note = "Hearts of the Lovers is offered after Devourer of Souls.",
})

ns:RegisterQuestPrerequisite({
    quest = 65601,
    mode = "any",
    quests = { 1507 },
    conditions = { all = { { faction = "Horde" }, { class = 9 } } },
    note = "Love Hurts is offered after Devourer of Souls.",
})

ns:RegisterQuestPrerequisite({
    quest = 65602,
    mode = "any",
    quests = { 1716 },
    conditions = { all = { { faction = "Alliance" }, { class = 9 } } },
    note = "What Is Love? is offered after Devourer of Souls.",
})

-- Wowhead prerequisiteQuestIds for Zephras Isle. Mode follows Questie when the
-- id list matches that page. Catching Wind's 99260 and Tower Defense's Questie
-- any-of are not on a usable Wowhead prerequisite list, so they are omitted.
ns:RegisterQuestPrerequisite({
    quest = 92551,
    mode = "any",
    quests = { 92528 },
    note = "Stolen Supplies follows Among the Faithful.",
})

ns:RegisterQuestPrerequisite({
    quest = 92685,
    mode = "all",
    quests = { 92682, 92683, 92684 },
    note = "The Hills Have Eyes follows the three Shendar tasks.",
})

ns:RegisterQuestPrerequisite({
    quest = 92693,
    mode = "any",
    quests = { 92685 },
    note = "Standing Our Ground follows The Hills Have Eyes.",
})

ns:RegisterQuestPrerequisite({
    quest = 92698,
    mode = "any",
    quests = { 92679 },
    note = "What Is My Purpose? follows Blood Tithe.",
})

ns:RegisterQuestPrerequisite({
    quest = 92699,
    mode = "any",
    quests = { 92701 },
    conditions = { faction = "Alliance" },
    note = "The Supreme Magister follows the Alliance report to Valanaar.",
})

ns:RegisterQuestPrerequisite({
    quest = 92700,
    mode = "any",
    quests = { 92579 },
    conditions = { faction = "Horde" },
    note = "The Grand Skyseer follows the Horde report to Valanaar.",
})

ns:RegisterQuestPrerequisite({
    quest = 92708,
    mode = "any",
    quests = { 92700 },
    conditions = { faction = "Horde" },
    note = "A Grand Adventure follows The Grand Skyseer.",
})

ns:RegisterQuestPrerequisite({
    quest = 92709,
    mode = "any",
    quests = { 92699 },
    conditions = { faction = "Alliance" },
    note = "A Grand Adventure follows The Supreme Magister.",
})

ns:RegisterQuestPrerequisite({
    quest = 92727,
    mode = "any",
    quests = { 92699 },
    conditions = { faction = "Alliance" },
    note = "The Missing Scholar follows The Supreme Magister.",
})

ns:RegisterQuestPrerequisite({
    quest = 92741,
    mode = "any",
    quests = { 92699 },
    conditions = { faction = "Alliance" },
    note = "Unwelcome Visitors follows The Supreme Magister.",
})

ns:RegisterQuestPrerequisite({
    quest = 92860,
    mode = "any",
    quests = { 92840 },
    conditions = { faction = "Alliance" },
    note = "In Service of Zephras follows Catching Wind.",
})

ns:RegisterQuestPrerequisite({
    quest = 93165,
    mode = "any",
    quests = { 94484 },
    note = "Mercy Falls on Deaf Ears follows Unnerving Silence.",
})

ns:RegisterQuestPrerequisite({
    quest = 93552,
    mode = "any",
    quests = { 92461 },
    note = "Harvesting Windstones follows Harmony in Balance.",
})

ns:RegisterQuestPrerequisite({
    quest = 93740,
    mode = "any",
    quests = { 93746 },
    conditions = { faction = "Horde" },
    note = "Blood for Blood follows A Firm Response.",
})

ns:RegisterQuestPrerequisite({
    quest = 93926,
    mode = "any",
    quests = { 92528 },
    note = "The Western Watch follows Among the Faithful.",
})

ns:RegisterQuestPrerequisite({
    quest = 93948,
    mode = "all",
    quests = { 92550, 93927 },
    note = "Deliver the Signet follows Havoc in the Highlands and A Last Request.",
})

ns:RegisterQuestPrerequisite({
    quest = 98024,
    mode = "any",
    quests = { 95350 },
    conditions = {
        all = {
            { faction = "Horde" },
            { race = 96 },
        },
    },
    note = "Journey to the Crossroads is offered after Welcome to Azeroth.",
})

ns:RegisterQuestPrerequisite({
    quest = 94488,
    mode = "all",
    quests = { 94486, 94487 },
    note = "The Ties That Bind follows Feathers for Binding and Unwanted and Unworthy.",
})

ns:RegisterQuestPrerequisite({
    quest = 94489,
    mode = "all",
    quests = { 94486, 94487 },
    note = "The Wounds of Betrayal follows Feathers for Binding and Unwanted and Unworthy.",
})

ns:RegisterQuestPrerequisite({
    quest = 94490,
    mode = "all",
    quests = { 94486, 94487 },
    note = "Ripped Missive follows Feathers for Binding and Unwanted and Unworthy.",
})

ns:RegisterQuestPrerequisite({
    quest = 94491,
    mode = "any",
    quests = { 94490 },
    note = "The Fate of the Den follows Ripped Missive.",
})
