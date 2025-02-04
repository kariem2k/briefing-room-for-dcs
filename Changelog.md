## Changelog
* Version 0.5.204.17(Apr, 17, 2022)
  * Added
    * Added: Coordinate readouts now contains altitude in ft
    * Added: Persistent Waypoint Coordinates in Objective Radio Menu
    * Added: Persistent Target Coordinates in Objective Radio Menu
    * Added: Combined Arms Pilot Control mission option
    * Added: Combined Arms Template support
    * Added: Backend support for Combined Arms
    * Added: Campaign support multiple player flights
    * Added: Mission Feature Ships for Enemy and Friendly
    * Added: Static and Offshore static buildings
    * Added: Missing Spinner to Campaign Generator
    * Added: Syria Iraq 2003 situation (no short flights)
    * Added: Syria new airbases
    * Added: Playable Apache
    * Added: Blackhawk Clean and External Tanks Loadouts
    * Added: First implementation of Briefing Editor
    * Added: ME compatible mod requirements.
    * Added: HTML Rendered KneeBoards
    * Added: Initial attempt at multi objective descriptions
    * Added: Initial situation briefing sections
    * Added: Support for more rich Briefings
    * Added: Missing Clear Weather Preset
    * Added: CTLD native support
    * Added: Zone support
    * Added: Escort Presets
    * Added: Transport Troop Preset
    * Added: Troop Transport Radio Calls
    * Added: BR script for transport over CTLD
    * Added: Taskable attack helicopters
    * Added: Fleshed out escort task
    * Added: basic initial escort task
    * Added: Script Assisted Troop Transport
    * Added: Initial Troop Transport Task (WIP)
    * Added: CTLD Script
    * Added: CSAR script
    * Added: FOB Static items
    * Added: Takeoff distance to Bomber
    * Added: Takeoff distance to PlaneFighter
    * Added: changes to some Fighter AC on Rwy length
    * Added: More units variety in static targets
    * Added: some more static groups mostly large things
    * Added: Static Enemy Aircraft
    * Added: High Cloud
  * Updated
    * Updated: Channel new airfields - thanks Sandman
    * Updated: Skynet IADS to 3.0.0-dev
    * Updated: Enable CM control for Anti-Air disable for Carrier and FOB
    * Updated: Carriers loop back to start point
    * Updated: Limit Units from spawning more than 70nm from own controlled area.
    * Updated: Syria Situations
    * Updated: Syria default zone
    * Updated: Merge Flight Plan, Airbase and JTAC Kneepages
    * Updated: Removed or shortened remarks
    * Updated: Kneeboard notes and added JTAC section to briefings
    * Updated: Increase KneeBoard Resolution
    * Updated: Tune Taskable AI
    * Updated: Limit kill radio call outs to just players
    * Updated: AI Radio Freqencies
    * Updated: CSAR script
    * Updated: Commando Drop in Preset to be Transport Troop mission
    * Updated: No longer allow CTLD to manage Transport AI groups
    * Updated: EnemyStaticAircraft.ini
    * Updated: FriendlyHelicopters.ini
    * Updated: FriendlyCAS.ini
    * Updated: EnemyStaticAircraft.ini
    * Updated: FriendlyStaticAircraft.ini
    * Updated: FriendlySEAD.ini
    * Updated: FriendlyHelicopters.ini
    * Updated: FriendlyCAS.ini
    * Updated: EnemyTanker.ini
    * Updated: EnemySEAD.ini
    * Updated: EnemyHelicopters.ini
    * Updated: EnemyCAS.ini
    * Updated: EnemyAWACS.ini
    * Updated: FriendlySEAD.ini
    * Updated: F-117A moved to bomber
  * Fixed
    * Fix: Correct bad HDS mod required ID
    * Fix: Campaign unable to select starting airbase
    * Fix: Campaign Generator  not using mission retry logic
    * Fix: Logs where needlessly cleared on mission generation
    * Fix: Correctly scale map
    * Fix: Correct weapon configs Mi-24V & JF-17
    * Fix: Show FCR on Apache
    * Fix: Turkey was assigned to UK underneath
    * Fix: Dog Ear radar ref
    * Fix: add missing exe
    * Fix: Can't find image issue due to pathing issues
    * Fix: Increase Briefing Editor save mission size
    * Fix: Use temp file in proper temp folder for windows
    * Fix: Increase Zip memory size
    * Fix: Bad Incirlik VHF frequency
    * Fix: Black Hawk mod references
    * Fix: Preset typo
    * Fix: Broke kill messages (ignore player only calls)
    * Fix: Callsigns started with 2 not 1
    * Fix: ignore parking on airbase if not aircraft
    * Fix: Taskable support not spawning
    * Fix: Always populate country units block even if no units.
    * Fix: only remove payload for harrier on STOVL ships
    * Fix: FOB's where not regularly closer than main airbase
    * Fix: Not spawning FOBs at all
    * Fix: Flight groups not auto changing CJTF sides
  * UI
    * UI: added Channel ground mapping - thanks sandman
    * UI: Update with Combined Arms options
    * UI: Added Combined Arms Options to Full and Campaign Builder
    * UI: Warnings only shown for mission shown in UI not failed generation attempts
    * UI: Added copy logs button
    * UI: Map added to Campaign Builder UI
    * UI: Added abstract map of mission
    * UI: Add simple loading spinner
    * UI: More accurate names for some situation options
    * UI: More indications in quick builder of inherited options
    * UI: Added home base option to quick builder
    * UI: Stronger indications of Quick Builder limitations and features loaded from templates
    * UI: Add more task validation
  * Misc
    * Misc: Lower Found a non-assigned value warning to info
    * Misc: Log Excessive Distances
    * Misc: Log Recoverable Error
    * Misc: add airbase ID grabber
    * Misc: added build version to github issue
    * Misc: report error logs when kneeboard convert fails
    * Misc: Remove usage of temp file for KneeBoard generation
    * Misc: improve auto release name
    * Misc: Use MIST by default
    * Misc: Update Country conflict warning
    * Misc: Bump Markdig from 0.28.0 to 0.28.1 in /Source
    * Misc: Bump Markdig from 0.27.0 to 0.28.0 in /Source
    * Misc: Bump Microsoft.AspNetCore.Components.Web in /Source
    * Misc: Bump Swashbuckle.AspNetCore from 6.2.3 to 6.3.0 in /Source
    * Misc: Bump Microsoft.AspNetCore.Components.Web in /Source
    * Misc: Bump Blazored.LocalStorage from 4.1.5 to 4.2.0 in /Source
    * Misc: Bump Polly from 7.2.2 to 7.2.3 in /Source
    * Misc: Bump Markdig from 0.26.0 to 0.27.0 in /Source
* Version 0.5.201.21(Jan, 22, 2022)
  * BREAKING: feature Ids (You will need to reapply these on templates)
  * Added
    * Added: Lower Cloud Migrated to Mission options (Mission options now more extendable)
    * Added: Low Cloud option (references cloud to sea level rather than airbase)
    * Added: Skynet Command Center Support
    * Added: simple docs on creating Situations
    * Added: Situations for map varied map zoning
    * Added: auto retry if BriefingRoomException received on generation
    * Added: auto retry and warning when objective distance is over 1.7x requested
    * Added: scenery artillery for takable artillery
    * Added: Ground Start Aircraft
    * Added: General Training level under situation
    * Added: Infantry and Cars to front line pool.
    * Added: High Digit SAMS mod support - thanks gregfp66
    * Added: Updated Campaign enough to call out of BETA
    * Added: Friendly CAS and SEAD (not tasked)
    * Added: Feature Enemy SEAD and CAS
    * Added: Scenery, Friendly Static Aircraft
    * Added: Situation Syria Israel War with Lebanon (No Allies)
    * Added: Situations Marianas (multipule)
    * Added: Situation Gulf Oman Invades UAE
    * Added: Random option to Situation
    * Added: Situation: Syrian Civil War (Pre Lebanon spill over)
    * Added: Support for No Spawning area in Situations
    * Added: Situation: Caucasus Russo Georgian War 2008
    * Added: Situation: Caucasus Russian Costal Invasion (Early and late)
    * Added: Situation: Caucasus Beslan Rebellion
    * Added: Situation Persian Gulf - Civil War in Iran -Thanks anthon
    * Added: PersianGulf Situations - Thanks Diesel
    * Added: Nevada Situations - Thanks Diesel
    * Added: Friendly and Enemy Helicopters (split out from CAS)
    * Added: SubTask Template loading and saving
    * Added: KJ-2000, Tornado (IDS & GR4), KC-130, SU-24MR, Yak-40
    * Added: Players can be on hostile side (Simple)
    * Added: Hide Borders Mission option
    * Added: USAF Aggressors
    * Added: JTAC Single Laser Code mission option
    * Added: Mark cold start player aircraft with "(C)"
    * Added: 10,000ft minimum runway requirement for large aircraft (Data still needed)
    * Added: Dynamic Laser codes for each objective
    * Added: Allow Custom Coalition Configs
    * Added: Units Assigned to respective coalition countries if possible
    * Added: Credits under Manual.
    * Added: Runway Lengths for The Channel
    * Added: Runway Lengths to Normandy
    * Added: Nevada runway lengths
    * Added: Warn player if specifically chosen airbase has a too short runway for chosen aircraft
    * Added: Support Aircraft Minimum Runway lengths (Data still required)
    * Added: Syria Nicosa airbase spawn points (tiny chance of FOB spawning there)
    * Added: Syria Runway Lengths
    * Added: PersianGuld Runway Lengths
    * Added: Runway Lengths Mariana Islands
    * Added: Runway Lengths Caucuses
    * Added: Spawning on non dedicated carrier ships
    * Added: Speaker Identifiers on radio message text
    * Added: SkynetIADS EWR Radars
    * Added: Initial SKYNET IADS system
    * Added: In mission user manual
    * Added: Extra Group feature support
    * Added: Sub Objectives as extra Tasks.
    * Added: SubObjective Template Props
    * Added: Initial UH-60L Mod support
    * Added: Splash Damage script as optional feature
    * Added: More Task Description options to Briefings
    * Added: UH-60L Radio config
    * Added: Gave JTAC Bigger brain swishes target if its considered complete in objectives. Can also switch target on command
    * Added: Disable Task (better suited for attacking parked aircraft)
    * Added: Plane Attack minimum Runway Length
    * Added: Basic DSMC compatibility by auto completing objectives on start
    * Added: Minimum Runway Length to Tankers
    * Added: complete User Mission Manual
    * Added: Scenery Drone and JTAC as objective features
    * Added: Spawn Friendly CAS and SEAD by player
    * Added: Missing Sounds for Laser Designation
  * Updated
    * Updated: default template
    * Updated: Gulf Parking Positions
    * Updated: Marianas Parking Positions
    * Updated: Caucasus parking positions
    * Updated: Syria Parking Positions
    * Updated: SEAD loadouts: F-16 & F-14B- Thanks Rhys
    * Updated: Front line troops now return fire
    * Updated: Gulf Civil War in Iran - thanks anthon
    * Updated: Cyprus Conflict to not spawn in Syria, Israel ect
    * Updated: Waypoint Marker is now Drawn
    * Updated: NevadaEchobay.ini
    * Updated: Reduced large aircraft runway requirement to 7000ft
    * Updated: A-10 Minimum Runway Length.
  * Fixed
    * Fix: JTAC looping issue
    * Fix: Airbase Parking spawn tasks waypoints are now on ground
    * Fix: Airbase spawn listens to side limitations
    * Fix: increased base cloud level range was just 650ft
    * Fix: Player not being set when wingman used (you didn't see this)
    * Fix: UI wasn't setting Situation right when map change
    * Fix: use parking over parking_id
    * Fix: Correct Kingsfield location
    * Fix: Correct first in player group position
    * Fix: Improvements to ground spawning logic
    * Fix: Group features a bit
    * Fix: Ground Late activating aircraft not working
    * Fix: Taskable aircraft take off right away on ground spawn
    * Fix: Aircraft refusing to take off
    * Fix: hopefully stop silly aircraft parking spawning (assuming data is ok)
    * Fix: aircraft spawning improvements
    * Fix: Helos loadouts where not editable
    * Fix: CAP and SEAD parked where late activation
    * Fix: A bunch of issues with aircraft parking and unit directions
    * Fix: Rename original situations
    * Fix: Reset default file again
    * Fix: Culture issue stopping certain Os setups from generating missions
    * Fix: Tell Scenic Ground Vehicles they can defend themselves
    * Fix: Extra aircraft show on flight list.
    * Fix: Convinced Admirals to position their carriers much closer to home base
    * Fix: Failing to find airbase had unusable error message.
    * Fix: Air and Sea units was able to ignore control zones
    * FIx: Scenery, JTAC was too danger close
    * FIx: SEAD and CAP not doing their roles
    * Fix: Parked Late Activation Aircraft not editable in ME
    * Fix: Missing Country Name Crashing Skynet Script
    * Fix: Laser Target Not existing
    * Fix: MarianaIslands badly named
    * Fix: Carrier Destinations on land.
    * Fix: Ground Start Aircraft and Spawn anywhere not mixing
    * Fix: Missing default mission features
    * Fix: GroundStart Tankers race-tracking right back to airbase
    * Fix: Build version path
    * Fix: Sub Objectives not loading right
    * Fix: Strike Packages not waypoints to with Sub Objectives
    * Fix: Close Air Support description
    * Fix: Player Aircraft with required runway length couldn't be generated.
    * Fix: Artillery asking for Zero units
    * Fix: UnitVehicleParked somehow was possible
    * Fix: Distance warning was wrong way round
    * Fix: Invert Coalitions wasn't reliable
    * Fix: Enemy Feature Units follow objective hidden
    * Fix: SubObjective can be on airbase if main objective is on airbase.
    * Fix: correct Al Maktoum Intl radios
    * Fix: UH-1H & OH-58D having no loadouts
  * UI
    * UI: General Sort out
    * UI: More improvement to Mission Features
    * UI: Mark player groups with (P) on flight list
    * UI: Re-label Air force to Combat air patrols.
    * UI: Add build version on index page
    * UI: Load Template is limited to expected file formats
    * UI: Missing Web Favicon
  * Misc
    * Misc: Properly set save and load file types
    * Misc: Add dependabot to automation
    * Misc: Newer Airbase Position extract method
    * Misc: Update Template extractor to do vehicles
    * Misc: Run code format pass and remove Summaries
    * Misc: Fix build issue
    * Misc: Switch to TemplateRecord in generator to avoid mutating template
    * Misc: Big code cleanup
    * Misc: remove pre-release from builds
    * Misc: Remove excess valid spawn types
    * Misc: Remove Disabled Units
    * Misc: Include Readme in download & Desktop warnings thanks - BlackRook
    * Misc: Try manual build version
    * Misc: Remove useless code.
    * Misc: Missing Bracket
    * Misc: auto lower case payload
    * Misc: Bump Microsoft.AspNetCore.Components.Web in /Source
    * Misc: another attempt at build version
    * Misc: Credit Walder for Skynet
    * Misc: Github Update Issue for new upload limits
* Version 0.5.111.18 (Nov, 9, 2021)
  * New spawning system:
    * Aircraft can spawn anywhere
    * Sea zoned out with island exclusions (not limited by spawn points, carriers affected too)
    * Blue and Red Areas of control (rest is neutral)
    * Spawn points don't have hardcoded side (checks run to see if side zones for limitation)
    * Insurgency mission option to allow spawning irrespective of side zoning (replaces "Only spawn in friendly countries")
    * Maps with added spawn points
      * Caucasus (Spawn points added to south and Mountains)
      * PersianGulf (Spawn points added for mountains, islands & cities)
      * Syria (Completely new set of spawn points ~200 => ~3700)
      * Marianas Islands (Completely new set of spawn points ~200 => ~900)
  * General spawning changes:
    * Objective distance is now between home base and objective no matter if first objective or not
    * Objective distance now on quick generator
    * Objective distance max 200 => 300
    * Objective separation option on Full and Quick generator
    * Make Medium air defences large space only
    * FOB as Carrier Option
    * Improve spawning of objective units
  * Map Changes:
    * Add Mariansas Islands
    * Add Syria Gaziantep Airbase
    * Fix Syria H4 airbase
  * Units:
    * Added NASAMS
    * Added Mosquito FB Mk VI
    * Added SA-5 site
    * Added H-6J Bomber
    * Added some missing ships
    * Add USS Forrestal
    * Add JAS-39-C Grippen Mod
  * Customisation:
    * Add custom db for liveries and loadouts
    * Add Implement custom loadout names
    * Add Implement basic custom loadouts
  * Add Campaign Beta (Don't report bugs on this please its too early)
  * Add Set aircraft liveries
  * Add Radio Transmission Objective Feature
  * Add Taskable Bomber, CAS, CAP & SEAD (Known issues with AI and callouts)
  * Add Implement Strike Packages setup
  * Add a ton of default liveries
  * Added UI Show warnings from generation (warnings may indicate some features requested could not be spawned)
  * Add Ingress and Egress waypoints optional
  * Add FX radio sound
  * Add Text to Template buttons
  * Add Custom Config Docs
  * Add colouring to map
  * Add drawings maker
  * Add Tarwa back in as usable by adding temp extra family
  * Add logs on all pages
  * Add more structures
  * Add embedded air defence for structures
  * Add Static groups
  * Add more target options
  * Add Manual Page
  * Add MarianaIslands images
  * Update to .Net 6 main release
  * Rename Packages => Strike Packages
  * Remove carrier waypoint faff
  * Fix Typehead removed scroll limit
  * Fix Template Load/Save improvements
  * Fix Scenery infantry is no longer immortal #253
  * Fix Improve Kneeboard Font
  * Fix Move awacs back towards base
  * Fix UI Improvements
  * Fix stop Custom config deleting default payload
  * Fix description error
  * Fix spawn selector for CAP
  * Fix Briefing Encoding
  * Fix MP script not loading
  * Fix Ships breaking mission
  * Fix to Various payloads not being editable in ME #168  (please report any remaining buggy aircraft)
  * Fix Load Template click issues
  * Fix Mark Waypoints #247  migrated to new mission option - default on
  * Fix multiple FOBS wouldn't spawn
  * Fix download UI issue
  * Fix Package Saving logic
  * Fix missing config folder in release
  * Fix Static Buildings not seen in JTAC and other marking features

* Version 0.5.107.18 (July 18, 2021)
  * Virtually rewrote everything from scratch, countless bugs fixed
  * Most notable new features
    * Project split between a library (BriefingRoom.dll), a command-line interface and a Razor/WebView GUI
    * New GUI (by John Harvey) allows both quick mission generation (for quick skirmish generation) and full mission generation (for complete control over all aspect of the mission)
    * New objective system with custom selection of task and target type, count and behavior for each objective
    * New objective/mission feature system allows for fine selection of mission elements, from target designation to rules of engagement
    * Proper carrier group generation (by John Harvey)
    * Graphical kneeboard briefing (by John Harvey)
  * Regressions
    * Campaign generator temporarily disabled, will be restored in the next version
* Version 0.4.104.21 (April 21, 2021)
  * All new UI
  * Bug fixes
    * Fixed minor typos (by tgrandgent)
    * Fixed typo in "Soldier M249" unit ID
    * Fixed missing gun in Fix F-5E-3 (by John Harvey)
    * Fixed AWACS altitude (by John Harvey)
    * Removed erroneous settings in Options.lua
    * Improved wind settings, high winds should not be as frequent (by John Harvey)
  * Improvements
    * CAP/SEAD support called by radio (with John Harvey)
    * Changed cruise altitude and cruise speed to integers in aircraft ini files
    * Better weather management (by John Harvey)
  * New features
    * Added "show waypoints as map markers" extensions (by John Harvey)
    * Support for DCS World 2.7 cloud presets (by John Harvey)
    * New "aircraft properties" field in unit properties, radio presets managements (by John Harvey)
* Version 0.3.103.05 (March 5, 2021)
  * Bug fixes
    * AFAC and search & destroy targets are now always hidden on map, regardless of "show enemy units on map" setting
    * Fixed a bug with static units/building not spawned exactly the proper coordinates
    * Fixed "Deep strike" static buldings now only spawn on large spawnpoints (so only on open ground, not in the middle of a field)
    * Fixed JTAC not lasing/marking static objects correctly (by David Pierron)
    * Fixed wrong spawning altitude for aircraft units, which sometimes spawned in the ground (by John Harvey)
  * New template options
    * Civilian traffic level can be selected
    * Distance to objective(s) is now set via an integer value, so very large or very short distances (e.g. for rotary wing operations) can be generated
    * Realism settings (disable external views, enable bird strikes...) can be enforced*
    * Starting airbase and starting carrier selection added to the campaign generator
  * New flyable aircraft
    * A-4E-C Skyhawk (mod) (by John Harvey)
    * F-14A player aircraft (by John Harvey)
    * F-22A Raptor (mod) (by John Harvey)
    * F-86F Sabre
    * Messerschmitt Bf 109K
    * Spitfire (by John Harvey)
  * New mission objectives
    * Battle damage assessment
    * Bomber escort
    * Offensive counter air (with help from John Harvey)
    * Patrol (by John Harvey)
  * Misc. improvements
    * Added keyboard shortcut for campaign generator
    * Aircraft carriers now sail into the wind (by John Harvey)
    * Crash site (with fire and smoke) now spawned near the stranded pilots in CSAR missions
    * Default settings are now set in a "Default.brt" mission template files stored in program directory (by John Harvey)
    * Embedded air defense is now spawned near static buildings, not only near vehicles
    * Now supports custom Lua for unit-specific settings (laser code for the F-16, NVG/HMD selection, etc)
    * GPS is now available to all coalitions, so there's no need to artificially add the USA to the player's coalition to give them access to the GPS
    * Mission features can now be used to spawn unit groups, like objectives
    * Multiple carriers can now be spawned (by John Harvey)
    * Different payloads for each decade can now be specified for aircraft in the database. The payloads themselves have not been added yet. (by John Harvey)
    * Updated Moroccan units (by Nomadzy)
* Version 0.3.101.20 (January 20, 2021)
  * Bug fixes
    * Now assigns the USA to the player's coalition because DCS World restricts access to the GPS to coalitions including the US (thanks to John Harvey for noticing)
    * Fixed parking spawn coordinates (fix by John Harvey)
    * SAM sites prefabs rotation now works correctly (code by John Harvey)
    * Static/buildings now spawned properly
    * Tanker TACAN now works properly, with remark in the briefing FG list (code by John Harvey)
    * Fixed single player AI CAP escorts going back to base on mission start: they now fly straight to the mission area on player takoff like their multiplayer counterparts
  * New units
    * Added many missing aircraft and ground units
    * All player-controllable aircraft are now available (except for user mods)
    * WW2 assets pack units are available
  * New theaters
    * The Channel (EARLY VERSION)
    * Nevada
    * Normandy
    * Syria (EARLY VERSION) (created by John Harvey)
  * New objectives
    * CAS and convoy escort (by John Harvey)
    * Deep strike on enemy structures (by John Harvey)
  * New coalitions/countries: Algeria, Argentina, Belgium, Canada, China, EU, France, Germany, Imperial Japan, India, Insurgents, Iran, Iraq, Israel, Italy, Japan, Libya, Mexico, NATO, Nazi Germany, Norway, Pakistan, Spain, Sweden, Switzerland, Syria, Terrorists, Tunisia, Turkey, UK, Vietnam, WW2 Allies, WW2 Axis
  * New features
    * Campaign generator (EARLY VERSION)
    * All new coalitions/units pairing system (list of operators in each unit definition instead of a list of units for each coalition)
    * Selection of mission decade/era is now independent from coalition, proper units are chosen for the year during which the mission takes place
    * Enemy AI skill can now be selected (uses code by John Harvey)
    * Friendly air defense (code by John Harvey)
    * Carrier groups and carrier takeoff/landing (EARLY VERSION) (code by John Harvey)
    * Now generates custom "title" pictures to campaigns and missions
    * Option to end the mission when the last player has landed or a few minutes after objectives have been completed (code by John Harvey)
    * Option to generate additional ingress/egress waypoints (uses some code by John Harvey)
    * "Random" setting for enemy CAP/SAMs (code by John Harvey)
  * Misc. changes
    * Merged all options (extra waypoints, hide enemy units, etc) into a single list for better readability of the mission template editor
    * Improved briefing descriptions
    * Mission template file extension changed from .brtemplate to .brt
* Version 0.3.012.28 (December 28, 2020)
  * Bug fixes
    * Fixed DCS crashing when a Ka-27 was spawned
    * Fixed F-14B spawning an F-14A
    * Fixed antiship payload of F/A-18 registered as a SEAD payload (fix by John Harvey)
    * Fixed bug with Maverick F in F/A-18 default loadout (fix by John Harvey)
    * Waypoints for ground targets are now spawned on the ground
    * Starting airbase now picked correctly when red/blue countries are inverted on the map
  * New player aircraft: all SA342 Gazelles, F-5E, F-5E-3
  * New objectives
    * CSAR: locate downed pilots (who can shoot distress flares to help you locate them) and land near them in a helicopter to pick them up
    * FAC(A): direct artillery strikes on target
    * Recon: locate enemy vehicles and fly over them to gather information
  * Improved GUI
    * Better toolbar buttons
    * App now scales better at higher DPI (code by Taosenai)
    * "Miz export complete" (with time taken for the export) now displayed in status bar
  * New mission template settings
    * CAP/SEAD AI escorts now available both in singleplayer and in multiplayer
    * Option to disable radio voices (uses code by John Harvey)
    * "Enemy units location": new option to make sure enemy units and objectives are only spawned in red or blue countries for increased realism
    * AI level selection for friendly aircraft, enemy ground units and enemy aircraft
  * New factions
    * Russia/USSR from the 1970s to the 1990s
  * JTAC can now transmit target coordinates (LL and MGRS) to the players
  * Decreased distance between waypoints and targets on most objectives
  * Improved home airbase selection algorithm
  * Default values for the mission templates now stored in Database/Defaults.ini
  * Project now targets .NET Framework 4.8 instead of 4.5
* Version 0.3.012.19 (December 19, 2020)
  * Added Persian Gulf theater
* Version 0.3.012.17 (December 17, 2020)
  * First public release
