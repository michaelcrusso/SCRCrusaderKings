# SC:R Crusader Kings
A map project to create a Crusader Kings-like experience on Starcraft: Remastered

![CK](https://user-images.githubusercontent.com/97493116/151619704-5609c3cf-ddbc-4238-bf47-b7f356e7f025.png)

## Premise

The intention is to take some of the basic mechanisms from Crusader Kings 2, simplify them, and throw them into a Starcraft diplomacy UMS map. The world is broken up into dozens of duchies. Soldiers aren't constructed but are instead raised from your holdings (depending on how upgraded they are); duchies and counties can be upgraded to provide more income or soldiers, and at the conclusion of war, players are limited in how much territory they can conquer from their enemy. One of the driving forces in the game will be religious conflict between Islam, Christianity, and Paganism; the Pope will call Crusades in Italy, Jerusalem, and Spain, and the Muslims will call jihads against Christendom.

There will be only five human players, and three CPU players that will interact with human players and each other. It will be a very melee heavy map with an attempt to create some rock-paper-scissors mechanics amongst unit types. Rivers and mountains will be featured in the game but will be reduced in scale so as to account for the lack of ranged units, to prevent annoying bottlenecks from happening in combat.


## Planned features

- Selectable starting date between 1066 (post-Hastings England) and 1337 (Hundred Year's War).
- Nearly unlimited selectable nations, from the majors like France, England, and the HRE to small kingdoms like Sicily, Croatia, and Ireland.
- Upgradeable "holdings"; individual Duchies will comprise four to five different structures that can be upgraded individually, up to level 5, to provide different bonuses; increased archers, increased cavalry, increased income, longer siege times, etc.
- Warscore; functionality that can determine a the victor in a war and whether the defender can be forced to accept demands.
- Sieges; In order to conquer enemy territory in war, you have to hold your men in the province and "siege" all of its holdings. Occupation shifts warscore in your favor.
- Crusades; the Christians and Muslims will occasionally call Crusades or Jihads on one another and participation is voluntary -- but the rewards are great. In religious wars, defenders will get bonuses in troop levies, higher vassal opinions, and access to religious orders that will fight for free.
- Army upkeep;  raised soldiers will substantially drain your treasury. Wars in Europe will be expensive ventures. Getting into "debt" will negatively impact you (levies spawn with reduced health, mercenaries will abandon you, revolts will become common).
– Mercenaries; the ability to raise fresh mercenary soldiers for a considerable cost to supplement your levies. They spawn instantly in your capital province.


## Basic systems

When starting the game, each player is given a relative number of "Duchies" (Cybernetics Cores) that each provide income (stored as a death counter) and manpower (stored as two death counters; manpower cap, and current available manpower). Each Duchy is tracked by both its location and unit Index ID. 

### Income/Expenses

Income is fixed as a death counter at game start based on selected nation. This death counter can be added to (by conquering an enemy territory, or upgrading your towns). Every 12 seconds in-game, the payout cycle begins by paying you Minerals relative to your income counter. However, you can also have expenses if you've raised your military or hired mercenaries. Once the payout cycle is complete, the expense cycle is started and subtracts current expenses from your Minerals. Expenses are directly proportional to raised manpower. If your expenses exceed your current minerals, it will then add the remaining expenses to Debt (represented by Vespene Gas).

If your debt goes too high, then any new soldiers raised will start with lower health and damage. Occasionally desertions will also begin to occur (1-3 units will have a chance of deserting/disappearing every payment cycle, and will not return their manpower to the pool). Mercenaries will disappear from the player's control, and there may also be economic consequences for the player. They will not be able to construct upgrades or use important diplomatic actions that require Minerals.

If the player is in debt, then during the Income cycle debt will be repaid first (subtracted from Gas) until Gas reaches 0, at which point the remaining payout will add to Minerals, and the player will be freed from the consequences of debt.

### Military

Militaries use a "levy" system. Players may mobilize their military forces by currently moving an Overlord located in the menu at the bottom center of the map.

When the levy is initiliazed, a location will move onto a random Duchy (Cybernetics Core) under the player's control. Then it will move to a separate trigger to detect the location of this Duchy and set the Unit Index ID, which will then move to a separate trigger to begin detecting the upgrade level of that Duchy, and spawning units based on its upgrades. Once the units for this Duchy is spawned in, the Duchy is given to Player 12 and an invisible unit for the Current Player is parked on top to track its original player's ownership. Then it skips to the next Duchy until there are no more duchies owned by the current player, at which point it goes to another trigger which centers a location over the invisible tracker unit and gives these Duchies back to the player.

Players may, of course, fight and kill each other's armies, but this actually accomplishes nothing but shifting the warscore a little (unimplemented). The core of the game is conducting **sieges**. When a player-nation holds at least 8 units inside an enemy's Duchy location and are not contested by any enemy soldiers, a siege is initiated. When this happens, a flying building using a spinning gear sprite appears over the Duchy (it is actually a burning Starport with less than 33% HP). Depending on the Duchy's castle upgrades, the building may have more or less HP, functioning as a crude timer. Once the building explodes, the siege is concluded, and ownership of the Duchy is transferred to the winning player (temporarily. In the meantime, the occupier gains no revenue and the base HP is -20,000 HP, which disables spawns.)

### Upgrades

Duchy upgrades are tracked via calculations performed on the decimal places of Cybernetics Core HP. Each Cybernetics Core starts with 52000 HP and has their HP% set to 87%, meaning the base HP of all duchies is **45,240 HP.** This means I have (at least) 4 values per decimal place that can be modified without going over 10, and thus affecting the decimal place to its right. The decimals are tracked thus:

| 4 | 5 | 2 | 4 | 0 |
| :---: | :---: | :---: | :---: | :---: |
| Base | Castle | Militia | Town | Stables | 

Thus, when a player upgrades the castle of their Duchy, an EUD trigger will increase the HP of the Duchy by 1,000, modifying the Thousandsth decimal place and increasing the HP to 46,240. If a player upgrades their militia training grounds by two, it will increase the Hundredths by 200,, increasing HP to 45,460.

Each time units are spawned, arithmetic is performed on each Duchy by subtracting sequentially from right to left down to the base of 45,240, and spawning units based on how many numbers are in each decimal place. When the spawn is complete, these numbers use a reverse binary counter to feed the HP back into the Duchy. This requires several steps and stages in sequence, but occurs quickly and only one time when the units are being summoned.

### Diplomacy

WIP.

## Files:

CrusaderKings.scx – the raw Starcraft map file before being fed through EUDEditor 2. Not playable.

CK.scx – the same map processed by EUDEditor 2. Playable but not editable in SCMDraft.

Universal.trigger – The current master file for all triggers in the map. When compiling them together into one file like this I trimmed a lot of fat, and so for the time being several systems that were previously working are not currently functional.

Replace Table.txt – this file is a find-and-replace table for Universal.trigger. In order to keep track of what units or variables do what (since Trigedit doesn't support custom unit names) I use all of the names represented by odd numbers, and then use a program which will replace each odd-numbered name with its even-numbered substitute directly below it so that Trigedit in SCMDraft will compile it successfully.

SC UMS.xml – user-defined language for Notepad++ which permits folding comments and helps with readability of trigger code.

Duchy Upgrades Death Count Table.xlsx – a simple MS Excel file that will automatically spit out the appropriate death counter location that I can copy and mass replace to make triggers that will fire for each specific Duchy/Cybernetics core based on its location in the Unit Index, along with its specific location name in the right-hand column.
