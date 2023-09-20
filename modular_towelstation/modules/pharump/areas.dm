//Fallout 13 specific areas directory

/area
	var/open_space = 0
	var/list/ambientmusic = list('sound/misc/null.ogg')
//	var/ambience_area =  list('sound/f13ambience/wasteland.ogg')
	ambientsounds = list('sound/misc/null.ogg')
	var/environment = -1
	var/grow_chance = 100

/area/pahrump
	name = "error"
	icon_state = "error"
	has_gravity = 1
//	requires_power = 0

//Wasteland generic areas

//Ambigen sound tips for ambientsounds: 1 - 2 : outside the ruined buildings, 3 - 9 : inside the wasteland buildings, 10 - 14 : vaults and bunkers specific, 15-19 : caves

/area/pahrump/wasteland
	name = "Wasteland"
	icon_state = "wasteland"
//	ambience_area =  list('sound/f13ambience/wasteland.ogg')
	ambientmusic = WASTELAND_AMBIENCE
	ambientsounds = list('sound/f13ambience/battle_1.ogg','sound/f13ambience/battle_2.ogg','sound/f13ambience/battle_3.ogg', \
	'sound/f13ambience/rattlesnake_1.ogg','sound/f13ambience/rattlesnake_2.ogg','sound/f13ambience/rattlesnake_3.ogg','sound/f13ambience/bird_1.ogg','sound/f13ambience/bird_2.ogg','sound/f13ambience/bird_3.ogg','sound/f13ambience/bird_4.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 19
	grow_chance = 45

/area/pahrump/wasteland/event
	name = "Wasteland (Event)"

/area/pahrump/forest
	name = "Forest"
	icon_state = "forest"
//	ambience_area =  list('sound/f13ambience/wasteland.ogg')
//	ambientmusic = list('sound/f13music/fo2_wasteland.ogg','sound/f13music/fo2_chapel.ogg','sound/f13music/fo2_world.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/bird_1.ogg','sound/f13ambience/bird_2.ogg','sound/f13ambience/bird_3.ogg','sound/f13ambience/bird_4.ogg','sound/f13ambience/bird_5.ogg','sound/f13ambience/bird_6.ogg','sound/f13ambience/bird_7.ogg','sound/f13ambience/bird_8.ogg', \
	'sound/f13ambience/rattlesnake_1.ogg','sound/f13ambience/rattlesnake_2.ogg','sound/f13ambience/rattlesnake_3.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 15
	grow_chance = 75

/area/pahrump/ruins
	name = "Ruins"
	icon_state = "ruins"
//	ambience_area =  list('sound/f13ambience/wasteland.ogg')
//	ambientmusic = list('sound/f13music/fo2_ruins.ogg','sound/f13music/fo2_necropolis.ogg','sound/f13music/fo2_raider.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_1.ogg','sound/f13ambience/ambigen_2.ogg','sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/rattlesnake_1.ogg','sound/f13ambience/rattlesnake_2.ogg','sound/f13ambience/rattlesnake_3.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 5
	grow_chance = 5

/area/pahrump/shack
	name = "Shack"
	icon_state = "shack"
//	ambience_area =  list('sound/f13ambience/shack.ogg')
//	ambientmusic = list('sound/f13music/fo2_ruins.ogg','sound/f13music/fo2_city.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg','sound/f13ambience/ambigen_15.ogg','sound/f13ambience/ambigen_16.ogg')
	environment = 2
	grow_chance = 5

/area/pahrump/building
	name = "Building"
	icon_state = "building"
//	ambience_area =  list('sound/f13ambience/building.ogg')
//	ambientmusic = list('sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_ruins.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg','sound/f13ambience/ambigen_9.ogg')
	environment = 2
	grow_chance = 5

/area/pahrump/farm
	name = "Farm"
	icon_state = "farm"
//	ambience_area =  list('sound/f13ambience/wasteland.ogg')
//	ambientmusic = list('sound/f13music/fo2_village.ogg','sound/f13music/fo2_wasteland.ogg','sound/f13music/fo2_chapel.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/bird_1.ogg','sound/f13ambience/bird_2.ogg','sound/f13ambience/bird_3.ogg','sound/f13ambience/bird_4.ogg','sound/f13ambience/bird_5.ogg','sound/f13ambience/bird_6.ogg','sound/f13ambience/bird_7.ogg','sound/f13ambience/bird_8.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 15
	grow_chance = 50

/area/pahrump/tribe
	name = "Tribe"
	icon_state = "tribe"
//	ambience_area =  list('sound/f13ambience/wasteland.ogg')
//	ambientmusic = list('sound/f13music/fo2_village.ogg','sound/f13music/fo2_wasteland.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/bird_1.ogg','sound/f13ambience/bird_2.ogg','sound/f13ambience/bird_3.ogg','sound/f13ambience/bird_4.ogg','sound/f13ambience/bird_5.ogg','sound/f13ambience/bird_6.ogg','sound/f13ambience/bird_7.ogg','sound/f13ambience/bird_8.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 15
	grow_chance = 5

/area/pahrump/village
	name = "Village"
	icon_state = "village"
//	ambience_area =  list('sound/f13ambience/wasteland.ogg')
//	ambientmusic = list('sound/f13music/fo2_village.ogg','sound/f13music/fo2_wasteland.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/bird_1.ogg','sound/f13ambience/bird_2.ogg','sound/f13ambience/bird_3.ogg','sound/f13ambience/bird_4.ogg')
	blob_allowed = 0
	environment = 15
	grow_chance = 5

/area/pahrump/outpost
	name = "Outpost"
	icon_state = "outpost"
//	ambience_area =  list('sound/f13ambience/wasteland.ogg')
//	ambientmusic = list('sound/f13music/fo2_outpost.ogg','sound/f13music/fo2_brotherhood.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/battle_1.ogg','sound/f13ambience/battle_2.ogg','sound/f13ambience/battle_3.ogg', \
	'sound/f13ambience/bird_1.ogg','sound/f13ambience/bird_2.ogg','sound/f13ambience/bird_3.ogg','sound/f13ambience/bird_4.ogg')
	blob_allowed = 0
	environment = 16
	grow_chance = 5

/area/pahrump/hub
	name = "Hub"
	icon_state = "hub"
//	ambience_area =  list('sound/f13ambience/wasteland.ogg')
//	ambientmusic = list('sound/f13music/fo2_hub.ogg','sound/f13music/fo2_village.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/rattlesnake_1.ogg','sound/f13ambience/rattlesnake_2.ogg','sound/f13ambience/rattlesnake_3.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 16
	grow_chance = 5

/area/pahrump/city
	name = "City"
	icon_state = "city"
//	ambience_area =  list('sound/f13ambience/wasteland.ogg')
//	ambientmusic = list('sound/f13music/fo2_city.ogg','sound/f13music/fo2_hub.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/ambigen_1.ogg','sound/f13ambience/ambigen_2.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 16
	grow_chance = 5

/area/pahrump/city/museum
	name = "Museum"
	outdoors = FALSE

/area/pahrump/citycaves
	name = "City Caves"
	icon_state = "citycaves"
//	ambience_area =  list('sound/f13ambience/cave.ogg')
//	ambientmusic = list('sound/f13music/fo2_city.ogg','sound/f13music/fo2_hub.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_15.ogg','sound/f13ambience/ambigen_16.ogg','sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg')
	environment = 8
	grow_chance = 25

/area/pahrump/chapel
	name = "Chapel"
	icon_state = "chapel"
//	ambience_area =  list('sound/f13ambience/building.ogg')
//	ambientmusic = list('sound/f13music/fo2_chapel.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/ambience/ambicha1.ogg','sound/ambience/ambicha2.ogg','sound/ambience/ambicha3.ogg','sound/ambience/ambicha4.ogg')
	environment = 5
	grow_chance = 5

/area/pahrump/bar
	name = "Bar"
	icon_state = "bar"
//	ambience_area =  list('sound/f13ambience/building.ogg')
//	ambientmusic = list('sound/f13music/fo2_bar.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	environment = 2
	grow_chance = 5

/area/pahrump/casino
	name = "Casino"
	icon_state = "casino"
//	ambience_area =  list('sound/f13ambience/warehouse.ogg')
//	ambientmusic = list('sound/f13music/fo2_bar.ogg','sound/f13music/fo2_raiders.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg')
	environment = 6
	grow_chance = 5

/area/pahrump/clinic
	name = "Clinic"
	icon_state = "clinic"
//	ambience_area =  list('sound/f13ambience/warehouse.ogg')
//	ambientmusic = list('sound/f13music/fo2_necropolis.ogg','sound/f13music/fo2_ruins.ogg','sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_caves.ogg','sound/f13music/fo2_desert.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_1.ogg','sound/f13ambience/ambigen_2.ogg','sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg', \
	'sound/f13ambience/ambigen_5.ogg','sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg','sound/f13ambience/ambigen_9.ogg','sound/f13ambience/ambigen_17.ogg','sound/f13ambience/ambigen_18.ogg','sound/f13ambience/ambigen_19.ogg')
	environment = 6
	grow_chance = 5

/area/pahrump/office
	name = "Office"
	icon_state = "office"
//	ambience_area =  list('sound/f13ambience/warehouse.ogg')
//	ambientmusic = list('sound/f13music/fo2_city.ogg','sound/f13music/fo2_ruins.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg')
	environment = 2
	grow_chance = 5

/area/pahrump/store
	name = "Store"
	icon_state = "store"
//	ambience_area =  list('sound/f13ambience/building.ogg')
//	ambientmusic = list('sound/f13music/fo2_bar.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg')
	environment = 4
	grow_chance = 5

/area/pahrump/bunker
	name = "Bunker"
	icon_state = "bunker"
//	ambience_area =  list('sound/f13ambience/building.ogg')
//	ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/f13music/fo2_outpost.ogg','sound/f13music/fo2_ruins.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_1.ogg','sound/f13ambience/ambigen_2.ogg','sound/f13ambience/ambigen_9.ogg','sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg', \
	'sound/f13ambience/ambigen_12.ogg','sound/f13ambience/ambigen_13.ogg')
	environment = 11
	grow_chance = 5

/area/pahrump/bunker/bunkertwo
	name = "Bunker Two"

/area/pahrump/bunker/museum
	name = "Bunker Museum"

/area/pahrump/tunnel
	name = "Tunnel"
	icon_state = "tunnel"
//	ambience_area =  list('sound/f13ambience/cave.ogg')
//	ambientmusic = list('sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_caves.ogg','sound/f13music/fo2_vats.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_9.ogg','sound/f13ambience/ambigen_12.ogg','sound/f13ambience/ambigen_15.ogg','sound/f13ambience/ambigen_16.ogg','sound/f13effects/steam_short.ogg','sound/f13effects/steam_long.ogg')
	environment = 21
	grow_chance = 25

/area/pahrump/trainstation
	name = "Tunnel"
	icon_state = "tunnel"
//	ambience_area =  list('sound/f13ambience/cave.ogg')
//	ambientmusic = list('sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_caves.ogg','sound/f13music/fo2_vats.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_9.ogg','sound/f13ambience/ambigen_12.ogg','sound/f13ambience/ambigen_15.ogg','sound/f13ambience/ambigen_16.ogg','sound/f13effects/steam_short.ogg','sound/f13effects/steam_long.ogg')
	environment = 21
	grow_chance = 25

/area/pahrump/sewer
	name = "Sewer"
	icon_state = "sewer"
//	ambience_area =  list('sound/f13ambience/sewer.ogg')
//	ambientmusic = list('sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_caves.ogg','sound/f13music/fo2_desert.ogg','sound/f13music/fo2_vats.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_9.ogg','sound/f13effects/steam_short.ogg','sound/f13effects/steam_long.ogg')
	environment = 21
	grow_chance = 50

/area/pahrump/caves
	name = "Caves"
	icon_state = "caves"
//	ambience_area =  list('sound/f13ambience/cave.ogg')
//	ambientmusic = list('sound/f13music/fo2_caves.ogg','sound/f13music/fo2_desert.ogg','sound/f13music/fo2_necropolis.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_15.ogg','sound/f13ambience/ambigen_16.ogg','sound/f13ambience/ambigen_17.ogg','sound/f13ambience/ambigen_18.ogg','sound/f13ambience/ambigen_19.ogg')
	environment = 8
	grow_chance = 75

/area/pahrump/subway
	name = "Subway"
	icon_state = "subway"
//	ambience_area =  list('sound/f13ambience/cave.ogg')
//	ambientmusic = list('sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_caves.ogg','sound/f13music/fo2_vats.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_1.ogg','sound/f13ambience/ambigen_2.ogg','sound/f13ambience/ambigen_9.ogg','sound/f13ambience/ambigen_12.ogg')
	environment = 21
	grow_chance = 25

/area/pahrump/secret
	name = "Secret"
	icon_state = "secret"
//	ambience_area =  list('sound/f13ambience/building.ogg')
//	ambientmusic = list('sound/f13music/fo2_chapel.ogg','sound/f13music/fo2_city.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/ambience/signal.ogg','sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg', \
	'sound/f13ambience/ambigen_12.ogg','sound/f13ambience/ambigen_13.ogg')
	environment = 11
	grow_chance = 0

/area/pahrump/radiation
	name = "Radiation"
	icon_state = "radiation"
//	ambience_area =  list('sound/f13ambience/wasteland.ogg')
//	ambientmusic = list('sound/f13music/fo2_wasteland.ogg','sound/f13music/fo2_desert.ogg','sound/f13music/fo2_world.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/rattlesnake_1.ogg','sound/f13ambience/rattlesnake_2.ogg','sound/f13ambience/rattlesnake_3.ogg')
	environment = 19
	grow_chance = 5

//Faction related areas

/area/pahrump/raiders
	name = "Raiders"
	icon_state = "raiders"
//	ambience_area =  list('sound/f13ambience/wasteland.ogg')
//	ambientmusic = list('sound/f13music/fo2_raider.ogg','sound/f13music/fo2_raiders.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_1.ogg','sound/f13ambience/ambigen_2.ogg','sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/battle_1.ogg','sound/f13ambience/battle_2.ogg','sound/f13ambience/battle_3.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 6
	grow_chance = 5

/area/pahrump/vault
	name = "Vault"
	icon_state = "vaulttec"
//	ambience_area =  list('sound/f13ambience/vaulttec_vault.ogg')
//	ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg','sound/f13ambience/ambigen_12.ogg', \
	'sound/f13ambience/ambigen_13.ogg','sound/f13ambience/ambigen_14.ogg','sound/f13effects/steam_short.ogg','sound/f13effects/steam_long.ogg')
	blob_allowed = 0
	environment = 6
	grow_chance = 5

/area/pahrump/vault/reactor
	name = "Reactor"
	icon_state = "engine"

/area/pahrump/vault/storage
	name = "Storage"
	icon_state = "storage"

/area/pahrump/vault/storageoffice
	name = "Storage Office"
	icon_state = "storage_wing"

/area/pahrump/vault/overseer
	name = "Overseer"
	icon_state = "overseer_office"

/area/pahrump/vault/chiefoffice
	name = "Chief Office"
	icon_state = "sec_hos"

/area/pahrump/vault/idcontrol
	name = "ID Control Office"
	icon_state = "hop_office"

/area/pahrump/vault/vents
	name = "Vents"
	icon_state = "red"

/area/pahrump/vault/botcontrol
	name = "Bot Control"
	icon_state = "mechbay"

/area/pahrump/vault/atrium
	name = "Vault Atrium"
	icon_state = "vault_atrium_upper"

/area/pahrump/vault/security
	name = "Brig"
	icon_state = "brig"

/area/pahrump/vault/security/checkpoint
	name = "Security Checkpoint"
	icon_state = "checkpoint1"

/area/pahrump/vault/security/armory
	name = "Armory"
	icon_state = "armory"

/area/pahrump/vault/medical
	name = "Medical Center"
	icon_state = "medbay"

/area/pahrump/vault/medical/surgery
	name = "Surgery"
	icon_state = "surgery"

/area/pahrump/vault/medical/breakroom
	name = "Break Room"
	icon_state = "medbay2"

/area/pahrump/vault/medical/morgue
	name = "Morgue"
	icon_state = "morgue"

/area/pahrump/vault/medical/chemistry
	name = "Chemistry"
	icon_state = "chem"

/area/pahrump/vault/science
	name = "Science"
	icon_state = "purple"

/area/pahrump/vault/science/biology
	name = "Biology"
	icon_state = "purple"

/area/pahrump/vault/garden
	name = "Garden"
	icon_state = "garden"

/area/pahrump/vault/diner
	name = "Dining Hall"
	icon_state = "cafeteria"

/area/pahrump/vault/custodial
	name = "Custodial Closet"
	icon_state = "auxstorage"

/area/pahrump/vault/dormitory
	name = "Dormitory"
	icon_state = "crew_quarters"

/area/pahrump/vault/lavatory
	name = "Lavatory"
	icon_state = "restrooms"

/area/pahrump/brotherhood
	name = "Brotherhood of Steel"//Brother Hood
	icon_state = "brotherhood"
//	ambience_area =  list('sound/f13ambience/enclave_vault.ogg')
//	ambientmusic = list('sound/f13music/fo2_brotherhood.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_9.ogg','sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg', \
	'sound/f13ambience/ambigen_12.ogg','sound/f13ambience/ambigen_13.ogg')
	blob_allowed = 0
	environment = 6
	grow_chance = 5

/area/pahrump/brotherhood/rnd
	name = "Brotherhood of Steel RnD Department"//Brother Hood
	icon_state = "brotherhoodrnddepartment"

/area/pahrump/brotherhood/offices1st
	name = "Brotherhood of Steel 1st Floor Offices"//Brother Hood
	icon_state = "brotherhoodoffices1st"

/area/pahrump/brotherhood/offices2nd
	name = "Brotherhood of Steel 1st Floor Offices"//Brother Hood
	icon_state = "brotherhoodoffices2nd"

/area/pahrump/brotherhood/surface
	name = "Brotherhood of Steel Surface Outpost"//Brother Hood
	icon_state = "brotherhood"

/area/pahrump/brotherhood/medical
	name = "Brotherhood of Steel Medbay"//Brother Hood
	icon_state = "brotherhoodmedbay"

/area/pahrump/brotherhood/operating
	name = "Brotherhood of Steel Operating Room"//Brother Hood
	icon_state = "brotherhoodoperating"

/area/pahrump/brotherhood/chemistry
	name = "Brotherhood of Steel Chemistry Lab"//Brother Hood
	icon_state = "brotherhoodchemistry"

/area/pahrump/brotherhood/dorms
	name = "Brotherhood of Steel Dormitories"//Brother Hood
	icon_state = "brotherhooddorms"

/area/pahrump/brotherhood/armory
	name = "Brotherhood of Steel Armory"//Brother Hood
	icon_state = "brotherhoodarmory"

/area/pahrump/brotherhood/archives
	name = "Brotherhood of Steel Archives"//Brother Hood
	icon_state = "brotherhoodarchives"

/area/pahrump/brotherhood/operations
	name = "Brotherhood of Steel Operations Department"//Brother Hood
	icon_state = "brotherhoodoperationsdepartment"

/area/pahrump/brotherhood/leisure
	name = "Brotherhood of Steel Leisure Areas"//Brother Hood
	icon_state = "brotherhoodleisure"

/area/pahrump/brotherhood/reactor
	name = "Brotherhood of Steel Reactor"//Brother Hood
	icon_state = "brotherhoodreactor"

/area/pahrump/brotherhood/mining
	name = "Brotherhood of Steel Mining"//Brother Hood
	icon_state = "brotherhoodmining"

/area/pahrump/enclave
	name = "Enclave"
	icon_state = "enclave"
//	ambience_area =  list('sound/f13ambience/enclave_vault.ogg')
//	ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg','sound/f13ambience/ambigen_12.ogg', \
	'sound/f13ambience/ambigen_13.ogg','sound/f13ambience/ambigen_14.ogg','sound/ambience/signal.ogg','sound/f13ambience/enclave_vault.ogg')
	blob_allowed = 0
	environment = 6
	grow_chance = 5

/area/pahrump/ahs
	name = "Adepts of Hubology Studies"
	icon_state = "ahs"
//	ambience_area =  list('sound/f13ambience/enclave_vault.ogg')
//	ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg','sound/f13ambience/ambigen_12.ogg', \
	'sound/f13ambience/ambigen_13.ogg','sound/ambience/signal.ogg')
	blob_allowed = 0
	environment = 5
	grow_chance = 5

/area/pahrump/ncr
	name = "NCR"
	icon_state = "ncr"
//	ambience_area =  list('sound/f13ambience/warehouse.ogg')
//	ambientmusic = list('sound/f13music/fo2_city.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg','sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg', \
	'sound/f13ambience/ambigen_8.ogg','sound/f13ambience/ambigen_9.ogg','sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg','sound/f13ambience/ambigen_12.ogg')
	blob_allowed = 0
	environment = 4
	grow_chance = 5
	requires_power = FALSE

/area/pahrump/legion
	name = "Legion"
	icon_state = "legion"
//	ambience_area =  list('sound/f13ambience/building.ogg')
//	ambientmusic = list('sound/f13music/fo2_hub.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambilava1.ogg','sound/f13ambience/ambilava2.ogg','sound/f13ambience/ambilava3.ogg')
	blob_allowed = 0
	environment = 4
	grow_chance = 5

/area/pahrump/followers
	name = "Followers of the Apocalypse"
	icon_state = "followers"
//	ambience_area =  list('sound/f13ambience/warehouse.ogg')
//	ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg', \
	'sound/ambience/ambigen13.ogg','sound/ambience/signal.ogg')
	blob_allowed = 0
	environment = 5
	grow_chance = 5
