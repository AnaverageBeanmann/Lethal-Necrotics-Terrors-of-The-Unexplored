/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
------------------ Addon Information ------------------
local PublicAddonName = "Lethal Necrotics: Terrors of The Unexplored"
local AddonName = "Lethal Necrotics: Terrors of The Unexplored"
local AddonType = "SNPC"
local AutorunFile = "autorun/vj_totu_autorun.lua"
-------------------------------------------------------
local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")
local LNRHL2Exists = file.Exists("lua/autorun/vj_lnrhl2_autorun.lua","GAME")
local LNRSpecialsExists = file.Exists("lua/autorun/vj_lnrspecials_autorun.lua","GAME")
local LNRExtrasExists = file.Exists("lua/autorun/vj_lnre_autorun.lua","GAME")

if VJExists == true then

	include('autorun/vj_controls.lua')

	game.AddDecal(
		"VJ_TOTU_LNR_Blood_Red",
		{
			"models/totu/bloodbloodblood/blood1",
			"models/totu/bloodbloodblood/blood2",
			"models/totu/bloodbloodblood/blood3",
			"models/totu/bloodbloodblood/blood4",
			"models/totu/bloodbloodblood/blood5",
			"models/totu/bloodbloodblood/blood6",
			"models/totu/bloodbloodblood/blood7",
			"models/totu/bloodbloodblood/blood8"
		}
	)

	VJ.AddParticle(
		"particles/letthebloodcleanseyou.pcf",
		{
			"lnr_bullet_impact_01",
			"lnr_bullet_impact_02",
			"lnr_bullet_impact_02_w_squirt",
			"lnr_bullet_impact_03",
			"lnr_bullet_impact_04",
			"lnr_melee_hit_01",
			"lnr_melee_hit_01_w_squirt",
			"lnr_headshot_burst_splat_1",
			"lnr_headshot_blood_splats",
			"lnr_blood_Impact_boom",
			"lnr_head_s",
			"lnr_headdyyy",
			"lnr_headshot_spurt_trail",
			"lnr_headshot_squirt_2",
			"lnr_headshot_squirting",
			"lnr_headshot_trails_1",
			"lnr_splat_1",
			"lnr_splat_2",
			"lnr_gorechunk1",
			"lnr_gorechunk1_trail1",
			"lnr_gorechunkhead1",
			"lnr_gorechunkhead_trail1",
			"lnr_headshot_velocity_back",
			"lnr_sqlkj",
		}
	)

	/*
	ask doofus if he can tweak the stalker idles so the left arm doesn't clip through the left leg
	
	Gameplay first, realism second!
			
	add browncoat zombies
	- use modified male_04 model
	- can randomly spawn with a cone or bucket on their heads (gives extra hp)
	- walker only, cannot spawn as runners
	- biters only
	- pvz zombie sounds
	
	have meathead use tank as new model?
	- give it a ground slam attack?
	
	remake cod black ops poster w/ drone
	
	add hl2 zombs as a bonus
	- use original anims and not lnr zomb anims
	
	l4d1 smoker for fumigator
	
	use this for peacekeeper shield
	https://steamcommunity.com/sharedfiles/filedetails/?id=2329408464&searchtext=shield
	
	edit it to say MP on it instead of POLICE
	
	
	Add these?
	Morti Scientist
	Morti Test Subject
	Morti Rogue Test Subject
	Morti Security
	Morti Hazmat Agent (Specials Hazmat, Light Teal Suit)
	Morti Necrotic Outbreak Response Unit / Morti N.O.R.U. (CS:S Gasmask CT)
	
	Morti Zombie (HL2 Civvie Zombs, Scientists/Security/Test Subjects)
	Morti Hazmat Zombie
	Morti N.O.R.U. Zombie
	Filth (Cleaner Zombies)

	Rename Revenant to Metastasis?
	
	freaks of nature?
	like dying light
	zobe but tougher and more bosslike
	
	original zombie      freak of nature name
	
	base walker                 gregory
	 juggernaut				 skullcrusher
	 bulldozer					wrath
	  squaller				shriek/sorrow
	  sentinal				  apollyon
	   razor						echo
	 peacekeeper				   brutus
	 gargantuar				   goliath
	
	Definitely Keeping
		Bubbler/Chelonioidea/Shellback
		Feedback
		Hive
		Pest
	Likely Keeping
		Exploder (Walker)
		Goliath
		Laticauda
	Unsure
		Meathead
		Degenerate
		Exploder (Infected)
		Fiend
		Whale
		Gavialidae
		Fleshpound
		Verdugo
		Fumigator -- merge aoe damage with hive if not kept
		Regenerator
		Revenant
		Praetorian
		Novistador
		Apollyon
	Likely Not Keeping
		Alternate
		Ghoul
		Flounder
		Megalodon
		Swarm -- probably gonna just turn into a projectile instead of an npc
		Behemoth
		PvZ Zombie
		Inanimatum Vas
		Preserved Walker
	Definately Not Keeping
		Old Bubbler
		Siren -- forgot what this even was supposed to do
		Spamtong
		
		incendiary detonator?
		leaves fire behind apon exploding
		
		bring back zombie dog idea?
		model ideas:
		re2make dog
		re outbreak dog
		https://steamcommunity.com/sharedfiles/filedetails/?l=german&id=2009216124
		cod zombies hellhound
		
		spooky month update?
		
		give this to squaller as a funny
		https://youtu.be/GdHLtbo80dk
		
		Freaks of Nature - "Boss" version of non-boss zombies
		
		Original Zombie - FoV Name - Boss Music
		
		Juggernaut 	- Skullcrusher - Gravity Perforation Detail
		Bulldozer  	- Wrath 	   - Cauterizer https://www.youtube.com/watch?v=_rRAaUa_VAQ&list=OLAK5uy_lipO8WT10o3Q5y8OYc6lOnb0txtnPl-ps&index=4&ab_channel=Valve-Topic
		Tank		- B.S.F. (Big Slow Fucker) -
		Ghost      	- Novistador   -
		Squaller   	- Sorrow 	   - Gerhman, The First Hunter
		Scylla 	    -			   - Attack of The Killer Queen
		Decayed 	- Pestilence   - Crypted Chaos
		Sentinel 	- Apollyon 	   - Abandon All
		Smog 		- Asphyxia 	   - Avatar Beat
		Goliath		-			   - 
		
		Todo:

		- Add cripple support for all current zombies
		- make it so ghosts cloak device is only broken if you hit the chest?
		
		- add needed sounds
		* nightkin sounds
	

		- add ghost leap attack fnaf jumpscare egg
		- Make sure all convars work
		- Get non-working convars working
		- scientist carcass can do a zombine and pull out a virus vile?
		- proofread convar descriptions, update if needed
		- make it so emp's and shit can short cirquit detonator bombs and ghost cloak devices
		- make it so detonators can attack and break apart barricades
		- for the creeper use drg creature sounds and retextured the barbed wire to be leaves and shit
		- add void-black scragg model as Something Wicked
		- add sitting and lying behavior to nightkin
		- use those monster boys models for a zombie? (name it wendigo)
		https://steamcommunity.com/sharedfiles/filedetails/?id=1720614156&searchtext=monster_boys
		
		- holiday skins? (atleast for halloween)
		- for halloween/october
		* juggernauts get skeleton suits under their armor + armor is painted black
		* bulldozers get eye effects and pumpkin heads alongside tf2 hhh sounds
		* nightkin are painted up as demons
		* grigoris are vampires
		* ghosts outfits are painted white because ghost (write "boo!" somewhere on the model)
		* detonators are like tf2 pumpkin bombs?
		* squaller is a mummy?
		
		- for chrimas/december
		* mil zombs get ugly sweaters and santa hats(?)
		* dozer gets reindeer horns and glowing nose (haha rudolph)
		* nightkin get chrimas lights instead of barbwire and reindeer horns
		* detonators are painted like santa + have a santa hat (bulk has black outfit) and have explosive presents instead of bombs,
		  the bombs make a different sound (maybe sleighbels?) instead of beeping, and instead of the normal sound
		  when it's about to go of, play a soundclip of santa going hohoho or something 
		  ("merry christmas, ho ho hooo!" or just the merry christmas part for bulk)
		  use spongebob christmas who end scene for this sound
		

		- horde mentality?
		* if enough zombies are near eachother, they'll start moving faster
		
		nightkin
		- get sounds in
		
		- add warks hla zomb anims for degenerate

		
		- make sure all zombs have controller support
		
		- add snowy versions of milzombs
		- names
		* Snowgrunt
		* Iceberg Juggernaut
		* Snowdozer
		
		- Backcounty zombies
		* commons in stuff like overalls/flannels/generic countryside clothing
		* monster boys (call them wendigos)
		
		convars to do
		- shrieker spawn frequency
		
		- add entrenchment shovel to milzomb weapon pool?
		
		- more snowy zombies?
		
		leg hp calculation
		zombie health divided by 5 = leg hp
		
		use this for the trailer
		https://youtu.be/QEUS4uh4c4Y
		
		todo
		- convar for failsafe doorsound options (sound used if it doesn't detect a doortype)
		- fix up possession
		
		make it so spectre corpse floats up and then vanishes

		for nightkin showcase vid
		- opening: show off a nightkin den with slow zooms
			* show a squaller sitting alone at the end
			* use "As the Wall Protects, So Must We" as the music (Postal Brain Damaged soundtrack)
		- show of giant zomb stomp move, hazmats, and resting behavior beforehand
		- map: necro forest?
		- weapons: urban coalition
			* Glock 17
			* M1911
			* Model 329PD
			* Mini-14
			* Remington 870
			* IZh-58
		- playermodels: hunter-looking dudes or monster boys
		- senseless violence part: shitty gmod realism section
		- for the squaller bit:
		* do a sudden cut to where it would be standing, but nothing's there
		* camera is completely still
		* cut to black, then cut to shaky cam pov
		* guy is running from a squaller and hiding
		* at the end, show the squallers face and freeze-frame + glitch sounds
		* move onto the next zomb like nothing happened

		script for nightkin showcase video
		- fade to necro forest
		- show the store by the train tracks or the bunker behind the barn
		- have a scragg bust through the door (and run off?) and put up the "hey welcome" text
		- explain we have some things to show rq first
		- go back to de_secretcamp
		- show off resting behavior
		- show stomp attack using tank
		- show hazmat
		- return to forest
		- do a shitty pizza tower character swap thing with the scragg (have it say "back to that guy")
		- show the zomb standing there then fade into the demonstration
		- show off the scragg
		- show off the skitter
		- show off the scourge
		- show off the squaller
		- show off scylla
		- show off the spectre
		- show off the shrieker
		- show off the convars for these
		- senseless violence bit
		* fade into a view of the church
		* show death everywhere
		* have a priest guy shoot a zombie out a door
		* have him go on a rampage shooting down nightkin before leaving
		* have a duel with scylla at the end
		- deimos teaser
		* fade into boreas lab place
		* show death around the place
		* have a cazador run past the camera before fading to black
		
		shots to redo
		- squaller 1v2
		- show squaller has different attack sounds depending on if it's moving or not

		for cepheus strain showcase vid
		- map: boreas indoor areas
		- weapons: mw2019
		- playermodels: uhhh
		- senseless violence part: gmod realism again
		
		cepheus release trailer/teaser
		- slow zooms in boreas
		- use Flatline by Scattle (Hotline Miami 1 OST)
		- show shadows of the guys
		- don't explicitly show them until the end

		deimos release trailer/teaser
		- slow zooms around boreas
		- death and destruction everywhere
		- use We're Sorry by Life Companions (Hotline Miami 2 OST) or Wading Through The Bodies (Killing Floor 1 OST)
		
		- get text addon (like 3d/2d text or something) for future sets
		
		trailer music contenders
		- https://youtu.be/ICjD3f-8SXE
		- https://youtu.be/QEUS4uh4c4Y
		- https://youtu.be/yBm4K00SMEk
		- Miami by Jasper Byrne (Hotline Miami 1 OST)
		- As the Wall Protects, So Must We (Postal: Brain Damaged OST)
		
		- add convar for tank moving attacks
		
		c-strain = Cepheus
		- drone
		- razor
		- sentinel
		- peacekeeper
		- caretaker
		- smog
		
		d-strain = Deimos
		- carcass
		- cazador
		- cyst
		- redead
		- cancer
		- revenant
		
		dmg types
		name - what causes it
		
		DMG_GENERIC				  - Generic damage (used by weapon_fists)
		DMG_CLUB				  - Blunt attacks such as from the Crowbar, Antlion Guard & Hunter
		DMG_SLASH				  - Used by the Stunstick, Manhacks, Antlions, Antlion Guards, Headcrabs, Fast Headcrabs, all Zombies types, Hunter, and potentially other NPCs attacks
		DMG_CRUSH				  - Caused by physics interaction and ignored by airboat drivers. This is used by the Rollermine and an unused animation attack called 'Fireattack' by the Antlion Guard ACT_RANGE_ATTACK1
		DMG_VEHICLE				  - Hit by a vehicle (This will need to be set for passengers of some vehicle to receive damage)
		DMG_FALL				  - Fall damage
		DMG_DIRECT				  - Direct damage to the entity that does not go through any damage value modifications
		DMG_SONIC				  - Sonic damage, used by the Gargantua and Houndeye NPCs
		DMG_NEVERGIB			  - Crossbow damage, never creates gibs.
		DMG_PHYSGUN				  - Damage done by the gravity gun.
		
		DMG_BULLET				  - Bullet damage from Ceiling Turrets, the Strider, Turrets and most guns.
		- use dmginfo:IsBulletDamage() for this
		DMG_BUCKSHOT			  - The pellets fired from a shotgun
		DMG_SNIPER				  - Damage from SniperRound/SniperPenetratedRound ammo types
		DMG_AIRBOAT				  - Airboat gun damage
		
		DMG_BURN				  - Damage from fire
		DMG_SLOWBURN			  - In an oven
		
		DMG_BLAST				  - Explosion damage like grenades, helicopter bombs, combine mines, Will be ignored by most vehicle passengers.
		- use dmginfo:IsExplosionDamage() for this
		DMG_BLAST_SURFACE		  - This won't hurt the player underwater
		DMG_MISSILEDEFENSE		  - Damage from npc_missiledefense, npc_combinegunship, or monster_mortar
		DMG_ALWAYSGIB			  - Always create gibs
		
		DMG_POISON				  - Poison damage used by Antlion Workers & Poison Headcrabs.
		DMG_PARALYZE			  - Same as DMG_POISON
		
		DMG_SHOCK				  - Electrical damage, shows smoke at the damage position and its used by Stalkers & Vortigaunts
		DMG_ENERGYBEAM			  - Laser damage
		DMG_PLASMA				  - Plasma damage
		DMG_DISSOLVE			  - Forces the entity to dissolve on death. This is what the combine ball uses when it hits a target.
		
		DMG_ACID				  - Toxic chemical or acid burn damage used by the Antlion Workers
		
		DMG_PREVENT_PHYSICS_FORCE - Prevent a physics force.
		
		DMG_DROWN				  - Drown damage
		DMG_DROWNRECOVER		  - Damage applied to the player to restore health after drowning
		DMG_REMOVENORAGDOLL		  - Don't create a ragdoll on death
		
		- they're immune so these don't apply
		DMG_NERVEGAS			  - Neurotoxin damage
		DMG_RADIATION			  - Radiation damage & it will be ignored by most vehicle passengers

		collapse LNR_Crippled and LNR_Crawler into 1 variable
		- make sure all existing zombies don't have LNR_Crawler in them
		add lying and sitting behavior
		- update animations to include events
		add more spawners
		- standard (5)
		- large (10)
		- extra large (20)
		- small (3)
		- single (1)
		- random zombie
		
		do varients for walker only, infected only, and both
		see if you can use spawners as a base for spawners

		april 20th
		- upload bbbos to the workshop

		june 7th
		- upload whatever's polished to the workshop as a w.i.p. early access thing
		- update it with a new group when the group is all ready
		- edit the og one so it's like "hey this is the old one check out the new one"
		- continue working on it till it's all ready
		- when it's finished unlist the old one

		add nmrih crawler biting anim for eating crawlers
		
		add these to milzombs? https://steamcommunity.com/sharedfiles/filedetails/?id=2926996172&searchtext=
		
		have wark help with the deimos showcase
		
		desert zombs?
		- ideas
		- desert milzombs
		- mummy (basic zomb equivilant?)
		- lizard (speedy crawler)
		- move bonfire to this group
		
		make it so electricity can short-cirquit the ghost cloak and maybe the milzomb radio
		
		halloween mode feedback loop https://youtu.be/HPlKUziuXC0
		
		think of ideas for mutated deimosified peacekeeper
		make it all big and muscly like a tank/demolisher
		
		add these weapons for redeads
		- models/gibs/furniture_gibs/furnituretable001a_chunk05.mdl
		- models/gibs/furniture_gibs/furnituretable002a_chunk08.mdl
		- models/gibs/furniture_gibs/furnituretable003a_gib01.mdl
		- models/props_c17/chair_stool01a.mdl
		- models/props_c17/furnituredrawer001a_shard01.mdl
		- models/props_c17/handrail04_cap.mdl
		- models/props_c17/metalpot002a.mdl 
		- models/props_c17/tools_wrench01a.mdl
		- models/props_canal/winch02d.mdl
		- models/props_debris/rebar002a_32.mdl
		- models/props_debris/wood_chunk04b.mdl
		- models/props_lab/cleaver.mdl (add physics to this one)
		- models/props_lab/desklamp01.mdl
		- models/props_wasteland/prison_pipefaucet001a.mdl
		- models/props_wasteland/prison_throwswitchlever001.mdl
		

		- script for deimos showcase
		- intro shot
			- map: bigcity night
			- song: land (0.5 pitch)
			- show that the place is absolutely destroyed, lots of fires going on and stuff
			- get closer to the streets to show off mostly redeads wandering around
			- when we get to the first zomb at facility gamma do this instead
				- map: boreas
				- song: my cold lover or freezing point (probably this one), either of which gets slowed down alot
				- show that the place is a wreck
				- see if you can get stormfox 2 to look good outside
		- npc intro shot
			- do the cool spinny camera again but slower
			- show name, health, damage, voice actor, and special gimmicks if it has any
			- for bigcity zombs use land, for mort zombs use whatever we pick for the gamma intro shots
			- do fades to show off different skin/bodygroup combinations and/or different subtypes
		- film locations
			- bigcitynight: an open section in the packed city section
			- boreas: the cargo bay area
		

		music for deimos showcase
		
		taitoki
		* definitely
		- Lone Guy
		- Land (probably 0.5 pitch)
		- I'm Alive
		
		good
		- Scum of the Earth

		* maybe
		- Bracket
		- Living in Hell
		- Men Only
		- Soft Hearts
		- Something isn't right
		- The Feel of Her (probably 0.8)
		- Father
		
		music for backcounty showcase
		
		taitoki
		- Ballad of the Hernandez Family
		- Daddy's Home
		
		Broken Sword
		- Infinite Trash (https://youtu.be/G0V1Yn2Wf2k)
		
		music for water critter showcase
		
		J-Dubbs
		- Backflip Faceplant
		- Stabby Fishy
		- God Is Dead
		- Behind You...
		- Unlikely Teamup(?)
		- River Ride
		- Good Ol' .42
		
		Noisemaker
		- Gills of Steel
		
		CatsGoPurple
		- Bleached Hair (https://youtu.be/TDvygxghsg8)
		
		A CHAIR
		- Clam Chowder (https://youtu.be/R0FMVQX6zwg?t=199)

		music for nightkin showcase redo
		
		good
		- Scum of the Earth
		
		music for milzomb showcase redo


		models to add $includemodel "totu/animations/zombie_animrig_valve_movement.mdl" to:
		
		base infected
		
		airman wal
		airman inf
		bulldozer
		detonator
		bulk detonator
		ghillie wal
		ghillie inf
		ghost wal
		ghost inf
		hazmat wal
		hazmat inf
		grunt wal
		grunt inf
		tank
		juggernaut
		
		scragg
		scylla
		shrieker
		skitter
		spectre
		spitballer
		squaller
		
		gail
		
		add pain mode convar
		- turns on ability changes that are in nightmare difficulty
		
		make it so healing zombs can un-cripple zombs when they heal them
		
		do heavy playtesting to find any missing stuff from lnr hl2
		
		update the sitting/lying events
		
		add these convars
		- damage immunity toggles/options
			- no immunities
			- only immune to radiation
			- only immune to nervegas
			- immune to both
		- re-add milzgasmaskers being immune to nervegas w/ radiation resistance if this gets added
		deimos
		- zombs being able to mutate into reborn
		- reborn mutate chance
		- redeads having weapons
		- redead weapon chance
		- redeads spawning as throwers
		- redead thrower chance
		- remort guards being able to spawn with armor
		- remort guard vest chance
		- remort guard helmet chance
		- remort guard helmet health
		- remort drone having gasmask
		- remort drone gasmask chance
		- remort drone having flak armor
		- remort drone flak armor chance
		- remort drone helmet health
		- remort drone having grenades
		- remort drone grenade chance
		- carcass spawning as exploders
		- carcass exploder chance
		- carcass remort subtype
		- carcass remort chance
		- carcass remort actually doing anything
		- cancer reviving at all
		- cancer being able to mutate
		- cancer mutate chance
		- revenant healing stuff
		- revenant buffing nearby deimos
		
		zombs move slower in water?
		- speed would change at waist-high and chest-high ammounts
		- add a convar to disable this
		
		bugbait particles is env_sporeexplosion
		
		lacrinimo ideas
		
		= can do already
			- make reborn slower
			- add effects when carcass splits
			- make deimos zomb eyes sparkle before running
			- zombies react to being on fire
			- see about using the unused bodygroups for nightkin to make the different types more distinct from eachother
			- see what's going on with crippled shriekers attacking the air
			- fix cripple shit with everyone
			- make cyst play headcrab release if it dies from self-damage from range attacking (play barnacle death sound?)
			- lighting a ghost on fire breaks the cloaker/cloaker breaks faster from heat
			- if a hazmat is on fire long enough the tank will just explode instantly
			- lighting a detonator on fire will cause the bomb to short cirquit (play city scanner pain sounds) and then shortly explode (don't make him panic when it's about to go off)
			- infected ghosts can toss down smoke grenades when they run to charge their cloak
			- walker ghosts can sometimes drop smoke grenades if you push them over
			- giant zombies cause aoe damage if you knock them over (or maybe just tank)

		= need to add stuff to do
			- add some sort of sound w/ effect to headshot hits/kills
			- suit depressurize sound on death for hazmat zombs of some sort (probably smog for now)
			- detonators drop live bombs when killed (explode if shot)
			- some sort of giant deimos zombie that falls over when it stops running
			- "hazmat suit zombie which explodes into damaging virus cloud"

	*/



/*
	-- [] = done
	-- {} = work in progess
	-- () = hasn't been started
	
	-- Uncategorized
		VJ.AddNPC("Base Walker","npc_vj_totu_base_walker",vCat1)
		-- []
		VJ.AddNPC("Base Infected","npc_vj_totu_base_infected",vCat1)
		-- []
		VJ.AddNPC("Base Cepheus Gunner Zombie Guy Dude Thing","npc_vj_totu_base_cstrain",vCat1)
		-- ()
		-- VJ.AddNPC("Base Tank","npc_vj_totu_base_tank",vCat1)
	
	-- MilZombs
		VJ.AddNPC("Grunt (Walker)","npc_vj_totu_milzomb_walker",vCat2)
		-- []
		VJ.AddNPC("Grunt (Infected)","npc_vj_totu_milzomb_infected",vCat2)
		-- []
		VJ.AddNPC("Juggernaut","npc_vj_totu_milzomb_juggernaut",vCat2)
		-- []
		VJ.AddNPC("Bulldozer","npc_vj_totu_milzomb_bulldozer",vCat2)
		-- []
		VJ.AddNPC("Ghost (Infected)","npc_vj_totu_milzomb_ghost",vCat2)
		-- []
		VJ.AddNPC("Detonator","npc_vj_totu_milzomb_detonator",vCat2)
		-- []
		VJ.AddNPC("Bulk Detonator","npc_vj_totu_milzomb_detonator_bulk",vCat2)
		-- []
		VJ.AddNPC("Tank","npc_vj_totu_milzomb_tank",vCat2)
		-- []
		VJ.AddNPC("Ghost (Walker)","npc_vj_totu_milzomb_ghost_walker",vCat2)
		-- []
		VJ.AddNPC("Ghillie (Infected)","npc_vj_totu_milzomb_ghillie",vCat2)
		-- []
		VJ.AddNPC("Ghillie (Walker)","npc_vj_totu_milzomb_ghillie_walker",vCat2)
		-- []
		VJ.AddNPC("Airman (Walker)","npc_vj_totu_milzomb_airman",vCat2)
		-- []
		VJ.AddNPC("Airman (Infected)","npc_vj_totu_milzomb_airman_infected",vCat2)
		-- []
		VJ.AddNPC("Hazmat (Walker)","npc_vj_totu_milzomb_hazmat",vCat2)
		-- []
		VJ.AddNPC("Hazmat (Infected)","npc_vj_totu_milzomb_hazmat_infected",vCat2)
		-- []
		
	-- Nightkin
		VJ.AddNPC("Scragg","npc_vj_totu_nightkin_scragg",vCat3)
		-- []
		VJ.AddNPC("Skitter","npc_vj_totu_nightkin_skitter",vCat3)
		-- []
		
		VJ.AddNPC("Squaller","npc_vj_totu_nightkin_squaller",vCat3)
		-- []
		-- edit texture to have blood tear streaks
		-- have them beat the shit out of corpses that arnt kin?
		-- mourn corpses of kin
		-- mudguy run for a bit after being crippled but then do walker cripple business afterward
		-- add easter egg of francis saying "phew.. good thing i'm indestructable" when activating iron will
		
		VJ.AddNPC("Shrieker","npc_vj_totu_nightkin_shrieker",vCat3)
		-- []
		-- edit texture to make throat look all worn out
		
		VJ.AddNPC("Spectre","npc_vj_totu_nightkin_spectre",vCat3)
		-- []
		-- basically ghost but nightkin
		-- say it's an anomaly
		-- base it on blackscary in clr?
		
		VJ.AddNPC("Scourge","npc_vj_totu_nightkin_spitballer",vCat3)
		-- []
		-- make eyes purple
		-- make corpse glow
		
		VJ.AddNPC("Scylla","npc_vj_totu_nightkin_scylla",vCat3)
		-- []
		-- get it its own model
		
		-- VJ.AddNPC("S","npc_vj_totu_nightkin_s",vCat3)
		-- add a passive one called Shyke?
		-- voice acted by antlion grub
		
	-- Tundra Wastes
		-- general gimmick
		-- slow on hit
		-- move slower
		-- walking - nmrih walks
		-- running - walking
		-- sprinting - running
		-- super sprinting - sprinting
		-- rushing - super sprinting
		VJ.AddNPC("Frostbitten Grunt (Walker)","npc_vj_totu_milzomb_walker_snowy",vCat9)
		-- rename to snow grunt?
		-- ()
		VJ.AddNPC("Frostbitten Grunt (Infected)","npc_vj_totu_milzomb_infected_snowy",vCat9)
		-- ()
		VJ.AddNPC("Frostbitten Juggernaut","npc_vj_totu_milzomb_juggernaut_snowy",vCat9)
		-- rename to snowgernaut
		-- ()
		VJ.AddNPC("Snowdozer","npc_vj_totu_milzomb_bulldozer_snowy",vCat9)
		-- rename to snowdozer
		-- ()
		VJ.AddNPC("Frostbitten","npc_vj_totu_tundra_frostbite",vCat9)
		-- walkers that like to bite you
		-- frozen stiff
		
		VJ.AddNPC("Glacier","npc_vj_totu_tundra_glacier",vCat9)
		-- big tanky dude
		
		-- zombified rioters?
		
		-- guys in heavy winter coats/clothing (rust model in mind)
		
		-- VJ.AddNPC("Scavenger","npc_vj_totu_tundra_scavenger",vCat9)
		-- some kind of ravager copy but cold
		-- name it scavenger?

		-- VJ.AddNPC("Chiliblain","npc_vj_totu_tundra_chiliblain",vCat9)
		-- retextured evo covered in sores and cuts
		-- bleedy heavy
		-- "Chilblains are small, itchy swellings on the skin that occur as a reaction to cold temperatures."

		-- VJ.AddNPC("Yukionna","npc_vj_totu_tundra_yukionna",vCat9)
		-- squaller-like thing

		-- VJ.AddNPC("Snowman","npc_vj_totu_tundra_snowman",vCat9)
		-- ice anomaly dude?

	-- Deimos
		
		-- add female redeads and remort researchers
		-- new voice ideas
			-- redeads: re8 lycans

		VJ.AddNPC("Redead","npc_vj_totu_deimos_redead",vCat4)
		-- []
		
		VJ.AddNPC("Remort (Drone)","npc_vj_totu_deimos_redead_grunt",vCat4)
		-- []

		VJ.AddNPC("Remort (Researcher)","npc_vj_totu_deimos_redead_sci",vCat4)

		VJ.AddNPC("Remort (Guard)","npc_vj_totu_deimos_redead_guard",vCat4)

		VJ.AddNPC("Corrupt","npc_vj_totu_deimos_corrupt",vCat4)
		-- []

		VJ.AddNPC("Reaper","npc_vj_totu_deimos_corrupt_brute",vCat4)
		-- corrupt but amnesia brute
		-- say the crap on the front is chitin
		-- make the stuff on the front bullet proof/resistant
		-- voice actor is hl:a jeff
		
		VJ.AddNPC("Carcass","npc_vj_totu_deimos_carcass",vCat4)
		-- []
		-- see about fixing gesture flinches
		-- add black mesa scientist and security guard zombie models
		
		VJ.AddNPC("Carcass Thorax","npc_vj_totu_deimos_carcass_torso",vCat4)
		-- []

		VJ.AddNPC("Cazador","npc_vj_totu_deimos_cazador",vCat4)
		-- []
		-- give it a climbing down animation

		VJ.AddNPC("Cazador Thorax","npc_vj_totu_deimos_cazador_torso",vCat4)
		-- []

		VJ.AddNPC("Cyst","npc_vj_totu_deimos_cyst",vCat4)
		-- []

		VJ.AddNPC("Cancer","npc_vj_totu_deimos_cancer",vCat4)
		-- []

		VJ.AddNPC("Revenant","npc_vj_totu_deimos_revenant",vCat4)
		-- []

		VJ.AddNPC("Reborn","npc_vj_totu_deimos_reborn",vCat4)

		-- VJ.AddNPC("Crusader","npc_vj_totu_deimos_crus",vCat4)
		-- deimosified sentinel
		-- always spawns with flak armor
		-- flak armor now actually protects decently against bullets?

		-- VJ.AddNPC("Cratus","npc_vj_totu_deimos_cratus",vCat4)
		-- reincarnated behemoth
		-- desaturate skin and give purple eye
		-- one eye is missing
		-- tends to trip over when it stops running
		-- can kneel down and rip out a chunk of concrete or a tree stump to hurl at you
		-- easter egg: play wii sports home run sound when projectile breaks
		-- causes area damage when falls over

		-- deimosified morti scientists and guards?
		
	-- Cephues
		VJ.AddNPC("Smog","npc_vj_totu_weaponized_smog",vCat12)
		-- []
		-- add friendly version
		VJ.AddNPC("Drone","npc_vj_totu_weaponized_drone",vCat12) -- stinky
		-- ()
		VJ.AddNPC("Razor","npc_vj_totu_weaponized_razor",vCat12)
		-- ()
		VJ.AddNPC("Sentinel","npc_vj_totu_weaponized_sentinel",vCat12)
		-- ()
		VJ.AddNPC("Peacekeeper","npc_vj_totu_weaponized_peacekeeper",vCat12)
		-- ()
		VJ.AddNPC("Caretaker","npc_vj_totu_weaponized_caretaker",vCat12)
		-- ()
		-- medic npc
		-- voiced by this? https://youtu.be/YCk6AvqA95k
		
		-- diet coke the hidden

		-- VJ.AddNPC("Cremator","npc_vj_totu_weaponized_cremator",vCat12)
		-- fire dude
		-- can spawn with a flamethrower or a shotgun with dragons breath shells
		-- has thermite grenades
		-- tank sprays fuel if you shoot it
		-- tank ignites if on fire while tank is leaking, or tank takes fire damage
		
		-- gadgets drones could toss down maybe
			-- clayrmore
			-- alarmed motion sensor
			-- turret ( call it the Mechanical Automated Defence Unit/M.A.D.U. )
			
		-- use these for something?
			-- https://steamcommunity.com/sharedfiles/filedetails/?id=2964258917
				-- drones
			-- https://steamcommunity.com/sharedfiles/filedetails/?id=2963872425
				-- sentinel
			-- https://steamcommunity.com/sharedfiles/filedetails/?id=2879594601
				-- caretaker


	-- Morti Research Facility
		VJ.AddNPC("Morti Scientist (Friendly)","npc_vj_totu_morti_scientist",vCat)
		-- ()
		VJ.AddNPC("Morti Scientist (Hostile)","npc_vj_totu_morti_scientist_hostile",vCat)
		-- ()
		VJ.AddNPC("Morti Security Guard (Friendly)","npc_vj_totu_morti_secguard",vCat)
		-- ()
		VJ.AddNPC("Morti Security Guard (Hostile)","npc_vj_totu_morti_secguard_hostile",vCat)
		-- ()
		VJ.AddNPC("Morti Test Subject (Friendly)","npc_vj_totu_morti_testsub",vCat)
		-- ()
		VJ.AddNPC("Morti Test Subject (Hostile)","npc_vj_totu_morti_testsub_hostile",vCat)
		-- ()
		VJ.AddNPC("Morti Test Subject (Frenzied)","npc_vj_totu_morti_testsub_frenzied",vCat)
		-- ()
		VJ.AddNPC("Morti Hazmat Agent (Friendly)","npc_vj_totu_morti_hazmat",vCat)
		-- ()
		VJ.AddNPC("Morti Hazmat Agent (Hostile)","npc_vj_totu_morti_hazmat_hostile",vCat)
		-- ()
		VJ.AddNPC("Morti N.O.R.U. Agent (Friendly)","npc_vj_totu_morti_noru",vCat)
		-- ()
		VJ.AddNPC("Morti N.O.R.U. Agent (Hostile)","npc_vj_totu_morti_noru_hostile",vCat)
		-- ()
		VJ.AddNPC("Morti N.O.R.U. Agent (Code 4)","npc_vj_totu_morti_noru_nosurvivors",vCat)
		-- ()
		-- VJ.AddNPC("","npc_vj_totu_morti_",vCat)

	
	-- Zombified Morti Personnel
		VJ.AddNPC("Morti Scientist Zombie (Walker)","npc_vj_totu_morti_zombie_scientist_walker",vCat10)
		-- ()
		VJ.AddNPC("Morti Scientist Zombie (infected)","npc_vj_totu_morti_zombie_scientist_infected",vCat10)
		-- ()
		-- use black mesa scientist
		VJ.AddNPC("Morti Security Zombie (Walker)","npc_vj_totu_morti_zombie_secguard_walker",vCat10)
		-- ()
		VJ.AddNPC("Morti Security Zombie (Infected)","npc_vj_totu_morti_zombie_secguard_infected",vCat10)
		-- ()
		-- use black mesa guard
		VJ.AddNPC("Morti Hazmat Zombie (Walker)","npc_vj_totu_morti_zombie_hazmat_walker",vCat10)
		-- ()
		VJ.AddNPC("Morti Hazmat Zombie (Infected)","npc_vj_totu_morti_zombie_hazmat_infected",vCat10)
		-- ()
		-- make the suit light teal
		-- make the white suit darker
		-- make it so if you bust the tank it lights on fire then explodes after a sec
		-- use the hla grunt tank ignite sounds for that
		-- have it try to grab you if the tank's ignited
		VJ.AddNPC("Morti Test Subject Zombie (Walker)","npc_vj_totu_morti_zombie_testsub_walker",vCat10)
		-- ()
		VJ.AddNPC("Morti Test Subject Zombie (Infected)","npc_vj_totu_morti_zombie_testsub_infected",vCat10)
		-- ()
		VJ.AddNPC("Morti N.O.R.U Zombie (Walker)","npc_vj_totu_morti_zombie_noru_walker",vCat10)
		-- ()
		VJ.AddNPC("Morti N.O.R.U Zombie (Infected)","npc_vj_totu_morti_zombie_noru_infected",vCat10)
		-- ()
		-- use edited css gasmask ct model
		-- noru stands for necrotic outbreak response unit
		
		-- rename these guys to impure/impurebodies

	-- Backcounty
	
		-- add a zombie called Bear?

		VJ.AddNPC("Backcounty Walker","npc_vj_totu_backcounty_walker",vCat5)
		-- ()
		VJ.AddNPC("Backcounty Infected","npc_vj_totu_backcounty_infected",vCat5)
		-- ()
		-- have them wear generic country outfits like flannels/overalls and stuff
		
		VJ.AddNPC("Lumberjack","npc_vj_totu_backcounty_lumberjack",vCat5)
		-- ()
		-- wood worker (works with trees and shit)
		-- have axe, chainsaw, and broom in weapon pool
		-- for the chainsaw use re5 chainsaw majiini anims
		
		VJ.AddNPC("Exploder","npc_vj_totu_backcounty_exploder",vCat5)
		-- ()
		-- fat bastard that explodes on death
		-- shoots out hard chunks on exploding
		-- edit texture so you can see its guts through the skin (use that see-through boomer mod as reference)
		-- could also just call it the exploder
		
		VJ.AddNPC("Pusbag","npc_vj_totu_backcounty_pusbag",vCat5)
		-- ()
		-- spitting fatman
		-- explodes on death
		
		VJ.AddNPC("Meathead","npc_vj_totu_backcounty_meathead",vCat5)
		-- ()
		-- l4d tank model
		-- has a ground slam attack
		-- can throw rocks(?)
		
		VJ.AddNPC("Feedback","npc_vj_totu_backcounty_feedback",vCat5)
		-- ()
		-- radio noises
		-- sirens/alarms
		-- make it look like a radio jockey or something
		
		VJ.AddNPC("Buck","npc_vj_totu_backcounty_buck",vCat5)
		-- ()
		-- fleshpound/charger
		
		VJ.AddNPC("Leatherneck","npc_vj_totu_backcounty_sawman",vCat5)
		-- ()
		-- verdugo/chainsaw fatman
		-- rename to leatherneck
		
		VJ.AddNPC("Goliath","npc_vj_totu_backcounty_goliath",vCat5)
		-- ()
		-- really big dude
		-- set scale to 1.75
		-- make it have no corpse on death (see if it's possible to make it fade out of reality)
		-- easter egg: 1 in 100 chance to have corpse, play fart sound when corpse is made
		
		
		VJ.AddNPC("Creeper","npc_vj_totu_backcounty_creeper",vCat5)
		-- ()
		-- real tall dude
		-- make it look like a tree and all mossy and stuff
		-- slow boi
		
		VJ.AddNPC("Wendigo","npc_vj_totu_backcounty_wendigo",vCat5)
		-- ()
		-- monster boys
		-- they crawl at you
		
		
		VJ.AddNPC("Worker Zombie (Walker)","npc_vj_totu_backcounty_roughneck_walker",vCat5)
		-- {}
		VJ.AddNPC("Worker Zombie (Infected)","npc_vj_totu_backcounty_roughneck_infected",vCat5)
		-- {}
		-- give them weapons (took screenshot of all options)
		-- for heavier weapons use re5 executioner anims or bogeyman anims
		-- add hammer and sledgehammer to weapon list
		-- brick
		-- rename to roughneck

		-- VJ.AddNPC("Backcounty Survivor","npc_vj_totu_backcounty_survivor",vCat5)

		-- VJ.AddNPC("Jerseyhead","npc_vj_totu_backcounty_jerseyhead",vCat5)
		-- infinity franchiser
		-- some sort of rage mechanic

		-- VJ.AddNPC("Killjoy","npc_vj_totu_backcounty_killjoy",vCat5)
		-- civvie in a pulled-up hoodie with a joy dealer mask
		-- dodges often, even at close range
		-- always spawns with a melee weapon

		-- VJ.AddNPC("Corvid","npc_vj_totu_backcounty_corvid",vCat5)

		-- VJ.AddNPC("Bandit","npc_vj_totu_backcounty_bandit",vCat5)
		-- generic hostile human npcs
		-- voice actor: https://youtu.be/FwhcZDYk6xU
		-- get goose to help translate
		
		-- backcounty survivors
		
	-- The Rotten
		VJ.AddNPC("Degenerate","npc_vj_totu_rotten_degenerate",vCat6)
		-- ()
		-- use starved model
		-- basically just walker version of starved

		VJ.AddNPC("Pest","npc_vj_totu_rotten_pest",vCat6)
		-- ()
		-- weak infected
		-- crawls at you
		-- likes to get up after dying alot
		
		VJ.AddNPC("Decayed","npc_vj_totu_rotten_decayed",vCat6)
		-- ()
		-- rotting walker
		-- make it more likely to be a biter?
		-- likes poisoning you
		
		VJ.AddNPC("Puffball","npc_vj_totu_rotten_puffball",vCat6)
		-- ()
		-- boomer but leaves poison gas instead of being a grenade
		
		VJ.AddNPC("Hive","npc_vj_totu_rotten_hive",vCat6)
		-- ()
		-- has a bug nest in 'em
		-- bug swarms leave to attack
		
		VJ.AddNPC("Fumigator","npc_vj_totu_rotten_fumigator",vCat6)
		-- ()
		-- smelly
		-- breaths gas on you
		-- the gas hurts
		-- has passive aoe damage
		
		VJ.AddNPC("Bonfire","npc_vj_totu_rotten_bonfire",vCat6)
		-- ()
		-- immolator/fiend
		
		VJ.AddNPC("Swarm","npc_vj_totu_rotten_swarm",vCat6)
		-- ()
		VJ.AddNPC("Filth","npc_vj_totu_backcounty_filth",vCat6)
		-- ()
		-- zombie cleaners
		
		
		

	-- Aquos
	
		-- theme: vacation resort that got hit
		
		VJ.AddNPC("Cod","npc_vj_totu_water_cod",vCat7)
		-- rotten drowned walker dude
		-- dressed up like generic island vacationers

		VJ.AddNPC("Salmon","npc_vj_totu_water_salmon",vCat7)
		-- fresher basic drowned zombie
		-- same apparel as cod

		VJ.AddNPC("Crab","npc_vj_totu_water_crab",vCat7)
		-- basic tanky dude
		-- skin has calloused, which gives it protection

		VJ.AddNPC("Pirahna","npc_vj_totu_water_pirahna",vCat7)
		-- ()
		-- flounder
		VJ.AddNPC("Laticauda","npc_vj_totu_water_laticauda",vCat7)
		-- ()
		
		VJ.AddNPC("Whale","npc_vj_totu_water_whale",vCat7)
		-- make the shirt one of those floral/flower shirts
		-- merge with the gavialidae
		-- ()
		VJ.AddNPC("Turtle","npc_vj_totu_water_turtle",vCat7)
		-- ()
		-- bubbler/chelonioidea
		-- new model https://steamcommunity.com/sharedfiles/filedetails/?id=2871813007&searchtext=diver
		-- ask wark about making a visor bodygroup w/ head inside
		
		VJ.AddNPC("Stingray","npc_vj_totu_water_stingray",vCat7)
		-- ()
		VJ.AddNPC("Alligator","npc_vj_totu_water_alligator",vCat7)
		-- ()
		VJ.AddNPC("Crocodile","npc_vj_totu_water_crocodile",vCat7)
		-- ()
		VJ.AddNPC("Megalodon","npc_vj_totu_water_megalodon",vCat7)
		-- ()
		-- VJ.AddNPC("Gharial","npc_vj_totu_water_gharial",vCat7)
		-- ()

	-- Bonus
		VJ.AddNPC("Something Wicked","npc_vj_totu_bonus_wicked",vCat8)
		-- ()
		VJ.AddNPC("Browncoat Zombie","npc_vj_totu_bonus_browncoat",vCat8)
		-- ()
		-- regular garden variety zombie
		-- can spawn with cone or bucket for protection
		-- biter only
		
		VJ.AddNPC("Remnant Husk","npc_vj_totu_bonus_remnant",vCat8)
		-- ()
		-- michael afton moment
		-- easter egg death sounds
		-- fnaf 3 death
		-- fnaf vhs purple man burning
		
		VJ.AddNPC("Ambient Vessel","npc_vj_totu_bonus_ambves",vCat8)
		-- ()
		-- completely black skin (can still shine light off though)
		-- bright white eyes
		-- weak to sonic damage, highly resistant to everything else
		
		VJ.AddNPC("Flemming","npc_vj_totu_bonus_flemming",vCat8)
		-- ()
		-- hi
		
		VJ.AddNPC("Voodoo-Cursed Mercenary","npc_vj_totu_bonus_tf2",vCat8)
		-- ()
		-- skins for both teams
		-- all 9 classes as 1 npc
		-- each class has original in game hp
		-- scout always spawns as atleast a runner/super sprinter/rusher
		-- pyro is immune to afterburn
		-- medic has hp regen
		-- spy can cloak

		-- VJ.AddNPC("Kromling","npc_vj_totu_bonus_kromer",vCat8)
		
		VJ.AddNPC("Funnyman","npc_vj_totu_backcounty_clown",vCat8)
		-- ()
		-- is clown
		-- shoe go honk honk haha
		
		-- obese male?
		-- https://steamcommunity.com/sharedfiles/filedetails/?id=1199974271
		
		-- VJ.AddNPC("b0ne(r)","npc_vj_totu_bonus_b0ner",vCat)
		-- rattle me b0ne(r)s
	
	-- Spawners
		VJ.AddNPC("Spawner","sent_vj_totu_spawner",vCat8)
		VJ.AddNPC("Spawner (Nightkin)","sent_vj_totu_spawner_nightkin",vCat8)
		VJ.AddNPC("Spawner (MilZombs)","sent_vj_totu_spawner_milzombs",vCat8)
		VJ.AddNPC("Spawner (Deimos)","sent_vj_totu_spawner_deimos",vCat8)
		VJ.AddNPC("Spawner (Cepheus)","sent_vj_totu_spawner_cepheus",vCat8)
		VJ.AddNPC("Spawner (Backcounty)","sent_vj_totu_spawner_backcounty",vCat8)
		VJ.AddNPC("Spawner (Water Critters)","sent_vj_totu_spawner_watercritters",vCat8)
		VJ.AddNPC("Spawner (The Rotten)","sent_vj_totu_spawner_rotten",vCat8)
		-- VJ.AddNPC("Spawner (Zombified Morti Staff)","sent_vj_totu_spawner_morti_zombified",vCat)
		-- VJ.AddNPC("Spawner (Morti Staff)","sent_vj_totu_spawner_morti",vCat)
		
	-- Freaks of Nature
		-- VJ.AddNPC("Skullcrusher","npc_vj_totu_fon_juggernaut",vCat11)
		-- VJ.AddNPC("Wrath","npc_vj_totu_fon_bulldozer",vCat11)
		-- redo these 2

		VJ.AddNPC("Gail","npc_vj_totu_fon_gail",vCat11)
		-- remort researcher
		-- deimos patient zero
		-- music ideas; Just Run, The Feel of Her, Casino Deficento
		-- make it do crawl stuff like skitters and whatnot

		VJ.AddNPC("Lament","npc_vj_totu_fon_lament",vCat11)
		-- reaper
		-- music: blood for sex 1.3 playback speed, i'm alive, old friend
		-- can scream/yell, damaing anything nearby

		-- VJ.AddNPC("Condor","npc_vj_totu_deimos_condor",vCat4)
		-- bigger and tougher cazador that's more agile
		-- music https://youtu.be/ajxEH42nJ4U

	--Zombies
		--No Specific Area
			-- VJ.AddNPC("Alternate","npc_vj_ln_totu_alternate",vCat)
			-- VJ.AddNPC("Siren","npc_vj_ln_totu_siren",vCat)
			-- VJ.AddNPC("Inanimatum Vas","npc_vj_ln_totu_iv",vCat2) -- Rename to Ambient Vessel
			-- VJ.AddNPC("[[Number 1 Rated Salesman1997]]","npc_vj_ln_totu_kromer",vCat2)
			-- VJ.AddNPC("Bubbler/Chelonioidea (Old Version)","npc_vj_ln_totu_bubbler_old",vCat2)
			-- VJ.AddNPC("Behemoth","npc_vj_ln_totu_behemoth",vCat)
	
		--Weaponized
			-- VJ.AddNPC("Preserved Walker","npc_vj_ln_totu_preservedwalker",vCat)

			
		--Spawners and Randoms
			-- VJ.AddNPC("TOTU Mixed Spawner","sent_vj_ln_totu_spawner",vCat2)
			-- VJ.AddNPC("TOTU Walker Spawner","sent_vj_ln_totu_spawner_walker",vCat2)
			-- VJ.AddNPC("TOTU Infected Spawner","sent_vj_ln_totu_spawner_infected",vCat2)
			-- VJ.AddNPC("TOTU Boss Spawner","sent_vj_ln_totu_spawner_boss",vCat2)
			-- VJ.AddNPC("TOTU Boss Spawner (Fun Sized)","sent_vj_ln_totu_spawner_boss_funsized",vCat2)
			-- VJ.AddNPC("TOTU Mixed Spawner (Single)","sent_vj_ln_totu_spawner_single",vCat2)
			-- VJ.AddNPC("TOTU Walker Spawner (Single)","sent_vj_ln_totu_spawner_walker_single",vCat2)
			-- VJ.AddNPC("TOTU Infected Spawner (Single)","sent_vj_ln_totu_spawner_infected_single",vCat2)
			-- VJ.AddNPC("Random TOTU Zombie","sent_vj_ln_totu_random",vCat2)
			-- VJ.AddNPC("Random TOTU Walker","sent_vj_ln_totu_random_walker",vCat2)
			-- VJ.AddNPC("Random TOTU Infected","sent_vj_ln_totu_random_infected",vCat2)
			-- VJ.AddNPC("Random TOTU Boss","sent_vj_ln_totu_random_boss",vCat2)
			-- VJ.AddNPC("Random TOTU Boss (Fun Sized)","sent_vj_ln_totu_random_boss_funsized",vCat2)
			
			
		-- VJ.AddNPCWeapon("vj_LN_TOTU_LMG","weapon_vj_ln_totu_lmg")
		-- VJ.AddNPCWeapon("vj_LN_TOTU_KNIFE","weapon_vj_ln_totu_knife")

*/

    VJ.AddClientConVar("VJ_ToTU_LNR_ZombieOverlay", 1, {FCVAR_ARCHIVE})
    VJ.AddClientConVar("VJ_ToTU_LNR_BloodDecals", 1, {FCVAR_ARCHIVE})
	
	local AddConvars = {}
	
	AddConvars["VJ_ToTU_LNR_Infection"] = 1
	AddConvars["VJ_ToTU_LNR_InfectionHit"] = 1
	AddConvars["VJ_ToTU_LNR_InfectionEffects"] = 1
	AddConvars["VJ_ToTU_LNR_PlayerZombie"] = 1
	AddConvars["VJ_ToTU_LNR_Biter"] = 1
	AddConvars["VJ_ToTU_LNR_Runner"] = 0
	AddConvars["VJ_ToTU_LNR_SuperSprinter"] = 1
	AddConvars["VJ_ToTU_LNR_Crawl"] = 1
	AddConvars["VJ_ToTU_LNR_MeleeWeapons"] = 1
	AddConvars["VJ_ToTU_LNR_CitizenSkins"] = 0
	AddConvars["VJ_ToTU_LNR_Eyes"] = 1
	AddConvars["VJ_ToTU_LNR_PMEyes"] = 1
	AddConvars["VJ_ToTU_LNR_Alert"] = 1
	AddConvars["VJ_ToTU_LNR_JumpClimb"] = 0
	AddConvars["VJ_ToTU_LNR_GroundRise"] = 1
	AddConvars["VJ_ToTU_LNR_BreakDoors"] = 1
	-- AddConvars["VJ_ToTU_LNR_BreakDoors_Func"] = 1
	AddConvars["VJ_ToTU_LNR_Headshot"] = 0
	AddConvars["VJ_ToTU_LNR_Gib"] = 1
	AddConvars["VJ_ToTU_LNR_Dismember"] = 1
	AddConvars["VJ_ToTU_LNR_Cripple"] = 1
	AddConvars["VJ_ToTU_LNR_DeathAnimations"] = 1
	AddConvars["VJ_ToTU_LNR_CorpseEffects"] = 1
	AddConvars["VJ_ToTU_LNR_UHItems"] = 0
	AddConvars["VJ_ToTU_LNR_Difficulty"] = 3
	AddConvars["VJ_ToTU_LNR_InfectionChance"] = 5
	AddConvars["VJ_ToTU_LNR_InfectionTime1"] = 20
	AddConvars["VJ_ToTU_LNR_InfectionTime2"] = 40
	AddConvars["VJ_ToTU_LNR_ResurrectionTime1"] = 5
	AddConvars["VJ_ToTU_LNR_ResurrectionTime2"] = 10
	
	
	AddConvars["VJ_ToTU_SpawnMenu_SortByCategory"] = 0

	AddConvars["VJ_ToTU_Spawn_UniversalDig"] = 0
	AddConvars["VJ_ToTU_Spawn_DigChance"] = 5
	AddConvars["VJ_ToTU_Spawn_AlertSound"] = 1
	AddConvars["VJ_ToTU_General_MovingDeathAnimations"] = 1
	AddConvars["VJ_ToTU_General_LegHealthScalesWithDifficulty"] = 1
	-- AddConvars["VJ_ToTU_General_RealismMode"] = 0
	AddConvars["VJ_ToTU_General_Runners_Chance"] = 3
	AddConvars["VJ_ToTU_General_SuperSprinters_Chance"] = 3
	AddConvars["VJ_ToTU_General_Rushers_Allow"] = 0
	AddConvars["VJ_ToTU_General_Rushers_Chance"] = 5
	AddConvars["VJ_ToTU_General_Armor_Allow"] = 1
	AddConvars["VJ_ToTU_General_Jump_DownOnly"] = 0
	AddConvars["VJ_ToTU_MilZ_Weapons"] = 1
	AddConvars["VJ_ToTU_MilZ_Weapons_Chance"] = 4
	AddConvars["VJ_ToTU_MilZ_Grenades"] = 1
	AddConvars["VJ_ToTU_MilZ_Grenades_Chance"] = 10
	AddConvars["VJ_ToTU_MilZ_Grenades_Ammount"] = -1
	AddConvars["VJ_ToTU_MilZ_ShootableGun"] = 1
	AddConvars["VJ_ToTU_MilZ_ShootableGun_Chance"] = 3
	AddConvars["VJ_ToTU_MilZ_ShootableGun_Bullets_Infinite"] = 0
	AddConvars["VJ_ToTU_MilZ_Helmet_Breakable"] = 1
	AddConvars["VJ_ToTU_MilZ_Helmet_Health"] = 100
	AddConvars["VJ_ToTU_MilZ_Gasmasks_Allow"] = 1
	AddConvars["VJ_ToTU_MilZ_Gasmasks_Chance"] = 3
	AddConvars["VJ_ToTU_MilZ_FlakArmor_Allow"] = 1
	AddConvars["VJ_ToTU_MilZ_FlakArmor_Chance"] = 4
	/*
	AddConvars["VJ_ToTU_MilZ_Jugg_NapalmWalk"] = 0
	AddConvars["VJ_ToTU_MilZ_Jugg_ChargeBehavior"] = 1
	AddConvars["VJ_ToTU_MilZ_Jugg_ChargeAnimation"] = 0
	AddConvars["VJ_ToTU_MilZ_Bull_ChargeBehavior"] = 1
	AddConvars["VJ_ToTU_MilZ_Bull_ChargeAnimation"] = 0
	*/
	-- AddConvars["VJ_ToTU_General_CanEat"] = 1
	-- AddConvars["VJ_ToTU_General_CanEat_Gibs"] = 1
	AddConvars["VJ_ToTU_MilZ_Det_Faceplate_Breakable"] = 1
	AddConvars["VJ_ToTU_MilZ_Det_Faceplate_Health"] = 50
	
	AddConvars["VJ_ToTU_MilZ_Det_Infection"] = 1
	AddConvars["VJ_ToTU_MilZ_Det_BombLights"] = 2
	AddConvars["VJ_ToTU_General_Crawler_Chance"] = 5
	-- AddConvars["VJ_ToTU_MilZ_Gasmasks_OriginalSounds"] = 0
	-- AddConvars["VJ_ToTU_MilZ_Det_Sounds"] = 0
	AddConvars["VJ_ToTU_MilZ_Bull_Voice"] = 0
	AddConvars["VJ_ToTU_General_EasterEggs"] = 1
	AddConvars["VJ_ToTU_MilZ_Ghost_Cloak_Health"] = 100
	AddConvars["VJ_ToTU_MilZ_Ghost_Cloak_Recharge"] = 1
	AddConvars["VJ_ToTU_MilZ_Ghost_Cloak_Recharge_RunWhileCharging"] = 1
	AddConvars["VJ_ToTU_Nightkin_General_Bleed"] = 1
	AddConvars["VJ_ToTU_Nightkin_Squaller_IronWill"] = 1
	AddConvars["VJ_ToTU_Nightkin_Squaller_IronWill_Chance"] = 3
	AddConvars["VJ_ToTU_Weaponized_Carcass_Exploders"] = 1
	AddConvars["VJ_ToTU_Weaponized_Carcass_Exploders_Chance"] = 4
	AddConvars["VJ_ToTU_Weaponized_Cyst_Exploders"] = 1
	AddConvars["VJ_ToTU_Weaponized_Cyst_HurtOnRanged"] = 1
	AddConvars["VJ_ToTU_Weaponized_Cyst_Exploders_Chance"] = 4
	AddConvars["VJ_ToTU_Weaponized_Smog_Faceplate_Breakable"] = 1
	AddConvars["VJ_ToTU_Weaponized_Smog_Faceplate_Health"] = 500
	AddConvars["VJ_ToTU_Weaponized_Smog_Tank_Breakable"] = 1
	AddConvars["VJ_ToTU_Weaponized_Smog_Tank_Health"] = 35
	AddConvars["VJ_ToTU_Weaponized_Smog_Bloody"] = 2
	AddConvars["VJ_ToTU_MilZ_Grunt_Corpsman_Allow"] = 1
	AddConvars["VJ_ToTU_MilZ_Grunt_Corpsman_Chance"] = 4
	AddConvars["VJ_ToTU_MilZ_Tank_NMRIHWalks"] = 1
	AddConvars["VJ_ToTU_MilZ_Det_Bulk_NMRIHWalks"] = 1
	AddConvars["VJ_ToTU_MilZ_Tank_SubtypeBlacklisted"] = 1
	AddConvars["VJ_ToTU_MilZ_Det_Bulk_SubtypeBlacklisted"] = 1
	AddConvars["VJ_ToTU_MilZ_Det_SubtypeBlacklisted"] = 1
	AddConvars["VJ_ToTU_General_Stumbling_Disable"] = 0
	AddConvars["VJ_ToTU_MilZ_Det_Bomb_Bustable"] = 1
	AddConvars["VJ_ToTU_MilZ_Det_Bomb_Health"] = 10
	AddConvars["VJ_ToTU_MilZ_Det_ExplosionSetup"] = 0
	AddConvars["VJ_ToTU_General_DefaultVoices_AltInfected"] = 1
	AddConvars["VJ_ToTU_General_DefaultVoices_AltWalker"] = 1
	AddConvars["VJ_ToTU_General_RestingSystem"] = 1
	AddConvars["VJ_ToTU_Nightkin_Spectre_RangeAttack"] = 1
	AddConvars["VJ_ToTU_Nightkin_Scylla_SubtypeBlacklisted"] = 1
	AddConvars["VJ_ToTU_Nightkin_Shrieker_OriginalBehavior"] = 0
	AddConvars["VJ_ToTU_Weaponized_Carcass_Bleed"] = 1
	AddConvars["VJ_ToTU_Weaponized_Remort_Caretakers_Allow"] = 1
	AddConvars["VJ_ToTU_Weaponized_Remort_Caretakers_Chance"] = 4
	AddConvars["VJ_ToTU_Weaponized_Cancer_Reviving"] = 1
	AddConvars["VJ_ToTU_Weaponized_Deimos_Infection"] = 1
	AddConvars["VJ_ToTU_Weaponized_Deimos_Eyes"] = 2
	AddConvars["VJ_ToTU_General_TF2Mode"] = 0
	AddConvars["VJ_ToTU_Weaponized_Revenant_ReviveBlacklist"] = 1
	AddConvars["VJ_ToTU_Weaponized_Remort_Gasmasks_Allow"] = 1
	AddConvars["VJ_ToTU_Weaponized_Remort_Gasmasks_Chance"] = 3
	AddConvars["VJ_ToTU_Weaponized_Remort_FlakArmor_Allow"] = 1
	AddConvars["VJ_ToTU_Weaponized_Remort_FlakArmor_Chance"] = 4
	AddConvars["VJ_ToTU_General_NotZombieAllied"] = 0

	-- AddConvars["VJ_ToTU_General_TF2Mode"] = 0
	-- AddConvars["VJ_ToTU_Weaponized_Carcass_"] = 
	-- AddConvars[""] = 
	-- AddConvars["VJ_ToTU_Nightkin_Shrieker_"] = 
	-- AddConvars["VJ_ToTU_Nightkin_"] = 
	
	-- AddConvars["VJ_ToTU_MilZ_Helmet_HealthScales"] = 1
	-- AddConvars["VJ_ToTU_Ghost_Cloak_"] = 
	
	-- AddConvars["vj_LN_TOTU_HostileSquallers"] = 1
	-- AddConvars["vj_LN_TOTU_HostileScragglers"] = 1
	-- AddConvars["vj_LN_TOTU_HostileDegenerates"] = 1
	-- AddConvars["vj_LN_TOTU_GoliathGibbing"] = 1
	-- AddConvars["vj_LN_TOTU_BehemothGibbing"] = 1
	-- AddConvars["vj_LN_TOTU_CarcassGibbing"] = 1
	-- AddConvars["vj_LN_TOTU_VulnerableSwarms"] = 1
	-- AddConvars["vj_LN_TOTU_FeedbackSpawning"] = 1
	-- AddConvars["vj_LN_TOTU_HiveProjectile"] = 1
	-- AddConvars["vj_LN_TOTU_GoliathLightsOff"] = 0
	-- AddConvars["vj_LN_TOTU_BossSpawning"] = 0
	-- AddConvars["vj_LN_TOTU_SensoryDeprivedCazadores"] = 0
	-- AddConvars["vj_LN_TOTU_SensoryDeprivedCarcasses"] = 0
	-- AddConvars["vj_LN_TOTU_AhHellImBleedin"] = 0
	-- AddConvars["vj_LN_TOTU_BlindRegenerators"] = 0
	-- AddConvars["vj_LN_TOTU_NoMusic"] = 0
	-- AddConvars["vj_LN_TOTU_DeadSuicidersNoBoom"] = 0
	-- AddConvars["vj_LN_TOTU_MilZombAmmo"] = 0
	-- AddConvars["vj_LN_TOTU_StimMeUpDoc"] = 0
	-- AddConvars["vj_LN_TOTU_AdditionalReviveBlacklist"] = 0
	-- AddConvars["vj_LN_TOTU_Tinnitus"] = 1
	-- AddConvars["vj_LN_TOTU_AdditionalCarcCazAnims"] = 0
	-- AddConvars["vj_LN_TOTU_Ghosting"] = 0
	-- AddConvars["vj_LN_TOTU_ArmorConvarName"] = 0
	-- AddConvars["vj_LN_TOTU_FeedbackShutUp"] = 0
	
	for k, v in pairs(AddConvars) do
		if !ConVarExists( k ) then CreateConVar( k, v, {FCVAR_ARCHIVE} ) end
	end
	
	if (CLIENT) then
		local function VJ_ToTU(Panel)
			if !game.SinglePlayer() then
			if !LocalPlayer():IsAdmin() or !LocalPlayer():IsSuperAdmin() then
				Panel:AddControl( "Label", {Text = "You are not an admin!"})
				Panel:ControlHelp("Note: Only admins can change these settings!")
			return
		end
	end
		Panel:AddControl( "Label", {Text = "Note: Only admins can change these settings!"})
		Panel:AddControl( "Label", {Text = "Please respawn any existing zombies after changing things in here!"})
	local vj_resetbutton = {Options = {}, CVars = {}, Label = "Reset Everything:", MenuButton = "0"}
		vj_resetbutton.Options["#vjbase.menugeneral.default"] = { 




	VJ_ToTU_LNR_Infection = "1",
	VJ_ToTU_LNR_InfectionHit = "1",
	VJ_ToTU_LNR_InfectionEffects = "1",
	VJ_ToTU_LNR_PlayerZombie = "1",
	VJ_ToTU_LNR_Biter = "1",
	VJ_ToTU_LNR_Runner = "0",
	VJ_ToTU_LNR_SuperSprinter = "1",
	VJ_ToTU_LNR_Crawl = "1",
	VJ_ToTU_LNR_MeleeWeapons = "1",
	VJ_ToTU_LNR_CitizenSkins = "0",
	VJ_ToTU_LNR_Eyes = "1",
	VJ_ToTU_LNR_PMEyes = "1",
	VJ_ToTU_LNR_Alert = "1",
	VJ_ToTU_LNR_JumpClimb = "0",
	VJ_ToTU_LNR_GroundRise = "1",
	VJ_ToTU_LNR_BreakDoors = "1",
	-- VJ_ToTU_LNR_BreakDoors_Func = "1",
	VJ_ToTU_LNR_Headshot = "0",
	VJ_ToTU_LNR_Gib = "1",
	VJ_ToTU_LNR_Dismember = "1",
	VJ_ToTU_LNR_Cripple = "1",
	VJ_ToTU_LNR_DeathAnimations = "1",
	VJ_ToTU_LNR_CorpseEffects = "1",
	VJ_ToTU_LNR_UHItems = "0",
	VJ_ToTU_LNR_Difficulty = "3",
	VJ_ToTU_LNR_InfectionChance = "5",
	VJ_ToTU_LNR_InfectionTime1 = "20",
	VJ_ToTU_LNR_InfectionTime2 = "40",
	VJ_ToTU_LNR_ResurrectionTime1 = "5",
	VJ_ToTU_LNR_ResurrectionTime2 = "10",



			VJ_ToTU_SpawnMenu_SortByCategory = "0",
			
			VJ_ToTU_Spawn_UniversalDig = "0",
			VJ_ToTU_Spawn_DigChance = "5",
			VJ_ToTU_Spawn_AlertSound = "1",
			VJ_ToTU_General_MovingDeathAnimations = "1",
			VJ_ToTU_General_LegHealthScalesWithDifficulty = "1",
			-- VJ_ToTU_General_RealismMode = "0",
			VJ_ToTU_General_Runners_Chance = "3",
			VJ_ToTU_General_SuperSprinters_Chance = "3",
			VJ_ToTU_General_Rushers_Allow = "0",
			VJ_ToTU_General_Rushers_Chance = "5",
			VJ_ToTU_General_Jump_DownOnly = "0",
			VJ_ToTU_General_Armor_Allow = "1",
			VJ_ToTU_MilZ_Weapons = "1",
			VJ_ToTU_MilZ_Weapons_Chance = "4",
			VJ_ToTU_MilZ_Grenades = "1",
			VJ_ToTU_MilZ_Grenades_Chance = "10",
			VJ_ToTU_MilZ_Grenades_Ammount = "-1",
			VJ_ToTU_MilZ_ShootableGun = "1",
			VJ_ToTU_MilZ_ShootableGun_Chance = "3",
			VJ_ToTU_MilZ_ShootableGun_Bullets_Infinite = "0",
			VJ_ToTU_MilZ_Helmet_Breakable = "1",
			VJ_ToTU_MilZ_Helmet_Health = "100",
			VJ_ToTU_MilZ_Gasmasks_Allow = "1",
			VJ_ToTU_MilZ_Gasmasks_Chance = "3",
			VJ_ToTU_MilZ_FlakArmor_Allow = "1",
			VJ_ToTU_MilZ_FlakArmor_Chance = "4",
			/*
			VJ_ToTU_MilZ_Jugg_NapalmWalk = "0",
			VJ_ToTU_MilZ_Jugg_ChargeBehavior = "1",
			VJ_ToTU_MilZ_Jugg_ChargeAnimation = "0",
			VJ_ToTU_MilZ_Bull_ChargeBehavior = "1",
			VJ_ToTU_MilZ_Bull_ChargeAnimation = "0",
			*/
			-- VJ_ToTU_General_CanEat = "1",
			-- VJ_ToTU_General_CanEat_Gibs = "1",
			VJ_ToTU_MilZ_Det_Faceplate_Breakable = "1",
			VJ_ToTU_MilZ_Det_Faceplate_Health = "50",
			VJ_ToTU_MilZ_Det_Infection = "1",
			VJ_ToTU_MilZ_Det_BombLights = "2",
			VJ_ToTU_General_Crawler_Chance = "5",
			-- VJ_ToTU_MilZ_Gasmasks_OriginalSounds = "0",
			-- VJ_ToTU_MilZ_Det_Sounds = "0",
			VJ_ToTU_MilZ_Bull_Voice = "0",
			VJ_ToTU_General_EasterEggs = "1",
			VJ_ToTU_MilZ_Ghost_Cloak_Health = "100",
			VJ_ToTU_MilZ_Ghost_Cloak_Recharge = "1",
			VJ_ToTU_MilZ_Ghost_Cloak_Recharge_RunWhileCharging = "1",
			VJ_ToTU_Nightkin_General_Bleed = "1",
			VJ_ToTU_Nightkin_Squaller_IronWill = "1",
			VJ_ToTU_Nightkin_Squaller_IronWill_Chance = "3",
			VJ_ToTU_Weaponized_Carcass_Exploders = "1",
			VJ_ToTU_Weaponized_Carcass_Exploders_Chance = "4",
			VJ_ToTU_Weaponized_Cyst_Exploders = "1",
			VJ_ToTU_Weaponized_Cyst_Exploders_Chance = "4",
			VJ_ToTU_Weaponized_Cyst_HurtOnRanged = "1",
			VJ_ToTU_Weaponized_Smog_Faceplate_Breakable = "1",
			VJ_ToTU_Weaponized_Smog_Tank_Breakable = "1",
			VJ_ToTU_Weaponized_Smog_Faceplate_Health = "500",
			VJ_ToTU_Weaponized_Smog_Tank_Health = "35",
			VJ_ToTU_Weaponized_Smog_Bloody = "2",
			VJ_ToTU_MilZ_Grunt_Corpsman_Allow = "1",
			VJ_ToTU_MilZ_Grunt_Corpsman_Chance = "4",
			VJ_ToTU_MilZ_Tank_NMRIHWalks = "1",
			VJ_ToTU_MilZ_Det_Bulk_NMRIHWalks = "1",
			VJ_ToTU_MilZ_Tank_SubtypeBlacklisted = "1",
			VJ_ToTU_MilZ_Det_Bulk_SubtypeBlacklisted = "1",
			VJ_ToTU_MilZ_Det_SubtypeBlacklisted = "1",
			VJ_ToTU_General_Stumbling_Disable = "0",
			VJ_ToTU_MilZ_Det_Bomb_Bustable = "1",
			VJ_ToTU_MilZ_Det_Bomb_Health = "10",
			VJ_ToTU_MilZ_Det_ExplosionSetup = "0",
			VJ_ToTU_General_DefaultVoices_AltInfected = "1",
			VJ_ToTU_General_DefaultVoices_AltWalker = "1",
			VJ_ToTU_General_RestingSystem = "0",
			VJ_ToTU_Nightkin_Spectre_RangeAttack = "1",
			VJ_ToTU_Nightkin_Scylla_SubtypeBlacklisted = "1",
			VJ_ToTU_Nightkin_Shrieker_OriginalBehavior = "0",
			VJ_ToTU_Weaponized_Carcass_Bleed = "1",
			VJ_ToTU_Weaponized_Remort_Caretakers_Allow = "1",
			VJ_ToTU_Weaponized_Remort_Caretakers_Chance = "1",
			VJ_ToTU_Weaponized_Cancer_Reviving = "1",
			VJ_ToTU_Weaponized_Deimos_Infection = "1",
			VJ_ToTU_Weaponized_Deimos_Eyes = "2",
			VJ_ToTU_General_TF2Mode = "0",
			VJ_ToTU_Weaponized_Revenant_ReviveBlacklist = "1",
			VJ_ToTU_Weaponized_Remort_Gasmasks_Allow = "1",
			VJ_ToTU_Weaponized_Remort_Gasmasks_Chance = "3",
			VJ_ToTU_Weaponized_Remort_FlakArmor_Allow = "1",
			VJ_ToTU_Weaponized_Remort_FlakArmor_Chance = "4",
			VJ_ToTU_General_NotZombieAllied = "0",
			-- VJ_ToTU_MilZ_Det_ = "",
			
			
			-- vj_LN_TOTU_RealismMode = "0",
			-- vj_LN_TOTU_HostileSquallers = "1",
			-- vj_LN_TOTU_HostileScragglers = "1",
			-- vj_LN_TOTU_HostileDegenerates = "1",
			-- vj_LN_TOTU_GoliathGibbing = "1",
			-- vj_LN_TOTU_BehemothGibbing = "1",
			-- vj_LN_TOTU_CarcassGibbing = "1",
			-- vj_LN_TOTU_VulnerableSwarms = "1",
			-- vj_LN_TOTU_FeedbackSpawning = "1",
			-- vj_LN_TOTU_HiveProjectile = "1",
			-- vj_LN_TOTU_GoliathLightsOff = "0",
			-- vj_LN_TOTU_BossSpawning = "0",
			-- vj_LN_TOTU_SensoryDeprivedCazadores = "0",
			-- vj_LN_TOTU_SensoryDeprivedCarcasses = "0",
			-- vj_LN_TOTU_AhHellImBleedin = "0",
			-- vj_LN_TOTU_BlindRegenerators = "0",
			-- vj_LN_TOTU_NoMusic = "0",
			-- vj_LN_TOTU_DeadSuicidersNoBoom = "0",
			-- vj_LN_TOTU_MilZombAmmo = "0",
			-- vj_LN_TOTU_StimMeUpDoc = "0",
			-- vj_LN_TOTU_AdditionalReviveBlacklist = "0",
			-- vj_LN_TOTU_Tinnitus = "1",
			-- vj_LN_TOTU_AdditionalCarcCazAnims = "0",
			-- vj_LN_TOTU_Ghosting = "0",
			-- vj_LN_TOTU_ArmorConvarName = "0",
			-- vj_LN_TOTU_FeedbackShutUp = "0",
}

	
	/*
	examples
	
	Panel:AddControl("Checkbox", {Label = "", Command = ""})
	
	Panel:AddControl("Slider", {Label = "", Command = "", Min = 1, Max = 10000})

	local example_combobox = {Options = {}, CVars = {}, Label = "", MenuButton = "0"}
	example_combobox.Options["Default"] = {convar_name = 1}
	example_combobox.Options["Option 1"] = {convar_name = 2}
	example_combobox.Options["Option 2"] = {convar_name = 3}
	Panel:AddControl("ComboBox", example_combobox)
	
	Panel:ControlHelp("")
	
	Panel:AddControl( "Label", {Text = "Note: Only admins can change these settings!"})
	*/
	
	Panel:AddControl("ComboBox", vj_resetbutton)
	
	Panel:ControlHelp("--------------------------------------------------------")
	Panel:AddControl( "Label", {Text = "Global ConVars"})
	Panel:ControlHelp("These affect all zombies in ToTU.")
	Panel:ControlHelp("--------------------------------------------------------")
	
	
	
	
	
	
	
	
	
	
	
	
	

			
			
			
			Panel:AddControl("Checkbox", {Label ="Sort zombies categorically?", Command ="VJ_ToTU_SpawnMenu_SortByCategory"})
			Panel:ControlHelp("If enabled, zombies will be sorted by category instead of them all being in one list.")			
			Panel:ControlHelp("You need to restart the server for this to take effect.")			
			
			Panel:AddControl("Checkbox", {Label ="Enable Player-Controlled Zombies Upon Turning?", Command ="VJ_TOTU_LNR_PlayerZombie"})
			
			Panel:AddControl("Checkbox", {Label ="Enable Biters?", Command ="VJ_TOTU_LNR_Biter"})			
			
			

			
			Panel:AddControl("Checkbox", {Label ="Enable Crawlers?", Command ="VJ_TOTU_LNR_Crawl"})
			
			Panel:AddControl("Checkbox", {Label ="Enable Melee Weapons?", Command ="VJ_TOTU_LNR_MeleeWeapons"})			
			
			Panel:AddControl("Checkbox", {Label ="Enable HL2 Skins Only?", Command ="VJ_TOTU_LNR_CitizenSkins"})
			Panel:ControlHelp("Ex: HL2-themed skins only for Citizen, Corpse & Charple Zombies.")			
			
			Panel:AddControl("Checkbox", {Label ="Enable Eye Effects For Infected Players/(S)NPCs?", Command ="VJ_TOTU_LNR_Eyes"})
			
			Panel:AddControl("Checkbox", {Label ="Enable Eye Effects For PM Zombies?", Command ="VJ_TOTU_LNR_PMEyes"})
			Panel:ControlHelp("Note: Can look weird & out of place depending on the model.")			
			
			Panel:AddControl("Checkbox", {Label ="Enable Zombies To Alert Each Other?", Command ="VJ_TOTU_LNR_Alert"})
			
			Panel:AddControl("Checkbox", {Label ="Enable Zombies To Jump & Climb?", Command ="VJ_TOTU_LNR_JumpClimb"})
			Panel:ControlHelp("Note: Doesn't affect Evos, Ravagers, Tanks or Titans.")
			
			Panel:AddControl("Checkbox", {Label ="Enable Zombies To Rise Out Of The Ground?", Command ="VJ_TOTU_LNR_GroundRise"})	
			Panel:ControlHelp("Note: They can only rise out of the ground on specific ground types.")
			
			Panel:AddControl("Checkbox", {Label ="Enable Zombies To Break Doors?", Command ="VJ_TOTU_LNR_BreakDoors"})
			
			-- Panel:AddControl("Checkbox", {Label ="Enable Zombies To Break Entities Classified As 'func_door_rotating?'", Command ="VJ_TOTU_LNR_BreakDoors_Func"})
			
			Panel:AddControl("Checkbox", {Label ="Enable Instant Headshot Death?", Command ="VJ_TOTU_LNR_Headshot"})
			Panel:ControlHelp("Note: Only applies for normal Zombies.")
			
			Panel:AddControl("Checkbox", {Label ="Enable Gibbing?", Command ="VJ_TOTU_LNR_Gib"})			
			
			Panel:AddControl("Checkbox", {Label ="Enable Arm Dismemberment?", Command ="VJ_TOTU_LNR_Dismember"})
			
			Panel:AddControl("Checkbox", {Label ="Enable Leg Crippling?", Command ="VJ_TOTU_LNR_Cripple"})				
			
			Panel:AddControl("Checkbox", {Label ="Enable Death Animations?", Command ="VJ_TOTU_LNR_DeathAnimations"})			
			
			Panel:AddControl("Checkbox", {Label ="Enable Corpse Effects & Decals?", Command ="VJ_TOTU_LNR_CorpseEffects"})
			
			Panel:AddControl("Checkbox", {Label ="Enable Zombies To Drop Underhell Items?", Command ="VJ_TOTU_LNR_UHItems"})
			Panel:ControlHelp("Note: You need the Underhell SWEPs in order for this to work.")			
			
			Panel:AddControl("Slider", {Label ="Infection Chance",Command ="VJ_TOTU_LNR_InfectionChance", Min = "1", Max = "100"})
			Panel:ControlHelp("Chance to be infected by a Zombie.")
			
			Panel:AddControl("Slider", {Label ="Infection Time Rand #1",Command ="VJ_TOTU_LNR_InfectionTime1", Min = "5", Max = "120"})
			
			Panel:AddControl("Slider", {Label ="Infection Time Rand #2",Command ="VJ_TOTU_LNR_InfectionTime2", Min = "5", Max = "120"})
			Panel:ControlHelp("Time until succumbing to infection.")
			
			Panel:AddControl("Slider", {Label ="Resurrection Time Rand #1",Command ="VJ_TOTU_LNR_ResurrectionTime1", Min = "5", Max = "120"})
			
			Panel:AddControl("Slider", {Label ="Resurrection Time Rand #2",Command ="VJ_TOTU_LNR_ResurrectionTime2", Min = "5", Max = "120"})
			Panel:ControlHelp("Time until infected Players/(S)NPCs resurrect.")
			Panel:ControlHelp("Note: Rand #2 must be higher than Rand #1")
	
	
	
	
	
	
	
	
	
	
	
	
	Panel:ControlHelp("-------------piss-------------")
	
	
				
	local difficultycombobox = {Options = {}, CVars = {}, Label = "Difficulty", MenuButton = "0"}
	difficultycombobox.Options["[1] I'm Too Young To Die"] = {VJ_TOTU_LNR_Difficulty = 1}
	difficultycombobox.Options["[2] Hey, Not Too Rough"] = {VJ_TOTU_LNR_Difficulty = 2}
	difficultycombobox.Options["[3] Hurt Me Plenty (Default)"] = {VJ_TOTU_LNR_Difficulty = 3}
	difficultycombobox.Options["[4] Ultra Violence"] = {VJ_TOTU_LNR_Difficulty = 4}
	difficultycombobox.Options["[5] NIGHTMARE!"] = {VJ_TOTU_LNR_Difficulty = 5}
	Panel:AddControl("ComboBox", difficultycombobox)

	Panel:ControlHelp("------------------------------")
	Panel:AddControl( "Label", {Text = "I'm Too Young To Die"})
	Panel:ControlHelp("Baby mode, zombies barely pose a threat.")
	Panel:ControlHelp("For situations where you want action of people killing zombies but don't want the zombies to kill them.")
	Panel:ControlHelp("- Zombies have heavily reduced health and damage.")
	Panel:ControlHelp("---------------")
	Panel:AddControl( "Label", {Text = "Hey, Not Too Rough"})
	Panel:ControlHelp("More lenient with the difficulty.")
	Panel:ControlHelp("Zombies are generally more easier to deal with, but not to the extent of ITYTD.")
	Panel:ControlHelp("Balanced around HL2 weaponry.")
	Panel:ControlHelp("- Zombies have reduced health and damage.")
	Panel:ControlHelp("---------------")
	Panel:AddControl( "Label", {Text = "Hurt Me Plenty"})
	Panel:ControlHelp("The main, standard difficulty.")
	Panel:ControlHelp("Difficult enough to be threatening but easy enough to deal with without too much effort.")
	Panel:ControlHelp("Balanced around ArcCW and ARC9 weaponry.")
	Panel:ControlHelp("- Zombies have their regular health and damage.")
	Panel:ControlHelp("---------------")
	Panel:AddControl( "Label", {Text = "Ultra Violence"})
	Panel:ControlHelp("We're not holding back as much.")
	Panel:ControlHelp("Zombies are generally harder to kill, you'll probably have to put in some effort now.")
	Panel:ControlHelp("Balanced around CoD MW2019 weaponry.")
	Panel:ControlHelp("- Zombies have increased health and damage.")
	Panel:ControlHelp("---------------")
	Panel:AddControl( "Label", {Text = "NIGHTMARE!"})
	Panel:ControlHelp("You're going to die.")
	Panel:ControlHelp("We're not holding back anymore.")
	Panel:ControlHelp("Zombies are the hardest to kill here.")
	Panel:ControlHelp("Some zombies have their special moves upgraded or have been given new moves outright.")
	Panel:ControlHelp("- Zombies have heavily increased health and damage.")
	Panel:ControlHelp("- Zombies will never spawn as crawlers.")
	Panel:ControlHelp("- Zombies always spawn as Rushers.")
	Panel:ControlHelp("- Zombies with subclass restrictions have those restrictions removed.")
	Panel:ControlHelp("- Walkers use more aggressive standing attack animations.")
	Panel:ControlHelp("- Hazmats can do a kamikaze attack.")
	Panel:ControlHelp("- Grunts with grenades can do a kamikaze attack.")
	Panel:ControlHelp("- Ghosts don't flicker randomly or when attacking.")
	Panel:ControlHelp("- Detonators don't stop in place when they're about to explode.")
	Panel:ControlHelp("- Scourges spit more often and now also spit multiple projectiles at once.")
	Panel:ControlHelp("- Shriekers spawn more dangerous Nightkin more often.")
	Panel:ControlHelp("- Deimos zombies run for far longer and have almost non-existant run cooldowns.")
	Panel:ControlHelp("- Revenants can revive corpses into more dangerous Deimos zombies.")
	Panel:ControlHelp("- Reapers gain an aoe yell attack and a spit attack.")
	Panel:ControlHelp("------------------------------")

	Panel:AddControl("Checkbox", {Label ="Enable infection system?", Command ="VJ_TOTU_LNR_Infection"})
	Panel:ControlHelp("If enabled, zombs will turn players and npcs they kill into zombies.")
	Panel:ControlHelp("Only works with models that have a valvebiped skeleton.")

	Panel:AddControl("Checkbox", {Label ="Enable zombies infecting from attacks?", Command ="VJ_TOTU_LNR_InfectionHit"})
	Panel:ControlHelp("If enabled, zombs have a chance to infect their target when they hit them.")
	Panel:ControlHelp("Infected targets will eventually keel over and die after enough time.")
	Panel:ControlHelp("There is no cure to prevent this.")

			Panel:AddControl("Checkbox", {Label ="Enable infection sounds and effects?", Command ="VJ_TOTU_LNR_InfectionEffects"})
			Panel:ControlHelp("Note: Only ValveBiped models will be affected.")
			Panel:ControlHelp("I don't know what this does actually.")

	Panel:AddControl("Checkbox", {Label = "Enable easter eggs?", Command = "VJ_ToTU_General_EasterEggs"})

	Panel:AddControl("Checkbox", {Label = "Non-Zombie allied?", Command = "VJ_ToTU_General_NotZombieAllied"})
	Panel:ControlHelp("If enabled, ToTU zombs will have their relationship class set to CLASS_TOTU instead of CLASS_ZOMBIE.")

	Panel:AddControl("Checkbox", {Label = "Enable TF2 Mode?", Command = "VJ_ToTU_General_TF2Mode"})
	Panel:ControlHelp("If enabled, zombies will be voiced by TF2 characters.")
	Panel:ControlHelp("Requires TF2 to be mounted.")
	
	Panel:AddControl("Checkbox", {Label = "Disable the stumbling system?", Command = "VJ_ToTU_General_Stumbling_Disable"})
	
	Panel:AddControl("Checkbox", {Label = "Enable the resting system?", Command = "VJ_ToTU_General_RestingSystem"})
	Panel:ControlHelp("If enabled, zombies can occasionally sit or lye down.")
	Panel:ControlHelp("Disabled by default due to oddities that can occour.")
	
	Panel:AddControl("Checkbox", {Label = "Global digouts?", Command = "VJ_ToTU_Spawn_UniversalDig"})
	Panel:ControlHelp("If enabled, zombies can do dig-out animations no matter what the ground type is.")
	Panel:ControlHelp("If disabled, zombies can only do dig-out animations on 'soft' ground like dirt and sand.")
	
	Panel:AddControl("Slider", {Label = "Digout chance?", Command = "VJ_ToTU_Spawn_DigChance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a zombie will dig out of the ground when spawned.")
	Panel:ControlHelp("Default chance is 5.")
	
	Panel:AddControl("Checkbox", {Label = "Digout alert sound?", Command = "VJ_ToTU_Spawn_AlertSound"})
	Panel:ControlHelp("If enabled, zombies will play an alert sound when they dig out, regardless if they have a target or not.")
	
	Panel:AddControl("Checkbox", {Label = "Allow moving death animations?", Command = "VJ_ToTU_General_MovingDeathAnimations"})
	Panel:ControlHelp("If disabled, zombies can only use stationary death animations.")
	Panel:ControlHelp("Added because of a strange issue I experienced in the Horde gamemode.")
	Panel:ControlHelp("It didn't fix it, but I thought I might as well keep this since it was already set up.")
	
	Panel:AddControl("Checkbox", {Label = "Enable leg health scaling?", Command = "VJ_ToTU_General_LegHealthScalesWithDifficulty"})
	Panel:ControlHelp("If enabled, zombie leg health will change depending on LNR Difficulty.")
	
	/*
	Panel:AddControl("Checkbox", {Label = "Enable Realism Mode?", Command = "VJ_ToTU_General_RealismMode"})
	Panel:ControlHelp("Realism Mode changes things with zombies in an attempt to make things more realistic.")
	Panel:ControlHelp("Realism Mode changes the following:")
	Panel:ControlHelp("- All Military Zombies will have their armor tweaked to act more realistically (based on discussion with friends who know things about military armor)")
	*/
	
	Panel:AddControl("Slider", {Label = "Crawler spawn chance.", Command = "VJ_ToTU_General_Crawler_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a zombie will spawn as a crawler.")
	Panel:ControlHelp("Default chance is 5.")
	
	Panel:AddControl("Checkbox", {Label ="Enable Runners?", Command ="VJ_TOTU_LNR_Runner"})
	Panel:ControlHelp("If enabled, walkers can spawn as runners, which move faster.")

	Panel:AddControl("Slider", {Label = "Runner spawn chance.", Command = "VJ_ToTU_General_Runners_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a walker will spawn as a runner.")
	Panel:ControlHelp("Default chance is 3.")

	Panel:AddControl("Checkbox", {Label ="Enable Super Sprinters?", Command ="VJ_TOTU_LNR_SuperSprinter"})
	Panel:ControlHelp("If enabled, infected can spawn as super sprinters, which move faster.")

	Panel:AddControl("Slider", {Label = "Super Sprinter spawn chance?", Command = "VJ_ToTU_General_SuperSprinters_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that an infected will spawn as a super sprinter.")
	Panel:ControlHelp("Default chance is 3.")
	
	local combobox_rushers = {Options = {}, CVars = {}, Label = "Allow Rushers?", MenuButton = "0"}
	combobox_rushers.Options["No"] = {VJ_ToTU_General_Rushers_Allow = 0}
	combobox_rushers.Options["Infected Only"] = {VJ_ToTU_General_Rushers_Allow = 1}
	combobox_rushers.Options["Walker Only"] = {VJ_ToTU_General_Rushers_Allow = 2}
	combobox_rushers.Options["Both"] = {VJ_ToTU_General_Rushers_Allow = 3}
	Panel:AddControl("ComboBox", combobox_rushers)
	Panel:ControlHelp("If enabled, zombies have a chance to spawn as a rusher.")
	Panel:ControlHelp("Infected will use L4D common infected running animations.")
	Panel:ControlHelp("Walkers will just sprint.")
	Panel:ControlHelp("Infected Rushers are quite fast.")
	Panel:ControlHelp("This convar idea was brought to you by Lacrinimo.")
	
	
	Panel:AddControl("Slider", {Label = "Rusher spawn chance.", Command = "VJ_ToTU_General_Rushers_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a zombie will spawn as a rusher.")
	Panel:ControlHelp("Default chance is 5.")
	
	Panel:AddControl("Checkbox", {Label = "Downward jumps only?", Command = "VJ_ToTU_General_Jump_DownOnly"})
	Panel:ControlHelp("If enabled, zombies cannot jump upwards, but can still jump downwards.")
	
	Panel:AddControl("Checkbox", {Label = "Allow armor?", Command = "VJ_ToTU_General_Armor_Allow"})
	Panel:ControlHelp("If enabled, certain zombies will have working armor.")

	Panel:AddControl("Checkbox", {Label = "Alternate Walker voices?", Command = "VJ_ToTU_General_DefaultVoices_AltWalker"})
	Panel:ControlHelp("If enabled, zombies that use the default voice pack will use alternate voices instead.")
	Panel:ControlHelp("Walkers will be voiced by Dying Light 1 Biters if this is enabled.")
	
	Panel:AddControl("Checkbox", {Label = "Alternate Infected voices?", Command = "VJ_ToTU_General_DefaultVoices_AltInfected"})
	Panel:ControlHelp("If enabled, zombies that use the default voice pack will use alternate voices instead.")
	Panel:ControlHelp("Infected will be voiced by Left 4 Dead Common Infected if this is enabled.")
	
	/*
	Panel:AddControl("Checkbox", {Label = "Zombies Can Eat?", Command = "VJ_ToTU_General_CanEat"})
	Panel:ControlHelp("If enabled, zombies will sometimes chew on corpses.")
	
	Panel:AddControl("Checkbox", {Label = "Zombies Can Eat Gibs?", Command = "VJ_ToTU_General_CanEat_Gibs"})
	Panel:ControlHelp("If enabled, zombies will also be allowed to eat gibs.")
	*/
	
	Panel:ControlHelp("--------------------------------------------------------")
	Panel:AddControl( "Label", {Text = "MilZombs"})
	Panel:ControlHelp("--------------------------------------------------------")
	
	Panel:AddControl("Checkbox", {Label = "MilZombs have breakable helmets?", Command = "VJ_ToTU_MilZ_Helmet_Breakable"})
	Panel:ControlHelp("If enabled, Grunt helmets can be broken if damaged enough.")
	
	Panel:AddControl("Slider", {Label = "MilZomb helmet health", Command = "VJ_ToTU_MilZ_Helmet_Health", Min = 1, Max = 10000})
	Panel:ControlHelp("Health Grunt helmets will have.")
	Panel:ControlHelp("Juggernaut helmets will have this value times 3.")
	Panel:ControlHelp("Default ammount is 100.")
	
	Panel:AddControl("Checkbox", {Label = "MilZombs can spawn with gasmasks?", Command = "VJ_ToTU_MilZ_Gasmasks_Allow"})
	Panel:ControlHelp("If enabled, Grunts can sometimes spawn with grenades.")
	Panel:ControlHelp("It used to give nervegas protection, but is now just a cosmetic thing.")
	
	Panel:AddControl("Slider", {Label = "Gasmask chance.", Command = "VJ_ToTU_MilZ_Gasmasks_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a MilZomb will spawn with a gasmask.")
	Panel:ControlHelp("Default chance is 3.")
	
	-- local combobox_milzgmasksounds = {Options = {}, CVars = {}, Label = "Gasmask sounds.", MenuButton = "0"}
	-- combobox_milzgmasksounds.Options["Nightmare House 2 Security Zombie (New Sounds)"] = {VJ_ToTU_MilZ_Gasmasks_OriginalSounds = 0}
	-- combobox_milzgmasksounds.Options["Dying Light 1 Gas Tanks (Original Sounds)"] = {VJ_ToTU_MilZ_Gasmasks_OriginalSounds = 1}
	-- combobox_milzgmasksounds.Options["Use Both"] = {VJ_ToTU_MilZ_Gasmasks_OriginalSounds = 2}
	-- Panel:AddControl("ComboBox", combobox_milzgmasksounds)
	
	Panel:AddControl("Checkbox", {Label = "MilZombs can spawn with flak armor?", Command = "VJ_ToTU_MilZ_FlakArmor_Allow"})
	Panel:ControlHelp("If enabled, MilZombs can sometimes spawn with flak armor.")
	Panel:ControlHelp("Flak armor provides protection against explosive damage, aswell as a small bit of limb protection.")
	
	Panel:AddControl("Slider", {Label = "Flak armor chance.", Command = "VJ_ToTU_MilZ_FlakArmor_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a MilZomb will spawn with flak armor.")
	Panel:ControlHelp("Default chance is 4.")
	
	local combobox_milzweps = {Options = {}, CVars = {}, Label = "Grunt weaponry.", MenuButton = "0"}
	combobox_milzweps.Options["Nothing"] = {VJ_ToTU_MilZ_Weapons = 0}
	combobox_milzweps.Options["Knives and Guns"] = {VJ_ToTU_MilZ_Weapons = 1}
	combobox_milzweps.Options["Knives only"] = {VJ_ToTU_MilZ_Weapons = 2}
	combobox_milzweps.Options["Guns only"] = {VJ_ToTU_MilZ_Weapons = 3}
	Panel:AddControl("ComboBox", combobox_milzweps)
	
	Panel:AddControl("Slider", {Label = "Grunt weapon chance.", Command = "VJ_ToTU_MilZ_Weapons_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a Grunt will spawn with a weapon, assuming they can.")
	Panel:ControlHelp("Default chance is 4.")
	
	Panel:AddControl("Checkbox", {Label = "Grunts can have grenades?", Command = "VJ_ToTU_MilZ_Grenades"})
	Panel:ControlHelp("If enabled, Grunts can sometimes spawn with grenades.")
	
	Panel:AddControl("Slider", {Label = "Grunt grenade chance.", Command = "VJ_ToTU_MilZ_Grenades_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a Grunt will spawn with grenades, assuming they can.")
	Panel:ControlHelp("Default chance is 10.")
	
	Panel:AddControl("Slider", {Label = "Grunt grenade ammount.", Command = "VJ_ToTU_MilZ_Grenades_Ammount", Min = -1, Max = 10000})
	Panel:ControlHelp("Ammount of grenades a Grunt will have if they spawn with them.")
	Panel:ControlHelp("Set to -1 for default values.")
	
	Panel:AddControl("Checkbox", {Label = "Grunts can have shootable guns?", Command = "VJ_ToTU_MilZ_ShootableGun"})
	Panel:ControlHelp("If enabled, Grunts that spawn with guns can sometimes shoot them.")
	
	Panel:AddControl("Slider", {Label = "Grunt shootable gun chance.", Command = "VJ_ToTU_MilZ_ShootableGun_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance a Grunt with a gun is able to shoot it.")
	Panel:ControlHelp("Default chance is 3.")
	
	Panel:AddControl("Checkbox", {Label = "Grunts have infinite bullets?", Command = "VJ_ToTU_MilZ_ShootableGun_Bullets_Infinite"})
	Panel:ControlHelp("If enabled, Grunts that spawn with shootable guns have infinite ammo.")
	
	Panel:AddControl("Checkbox", {Label = "Grunts can spawn as Corpsman?", Command = "VJ_ToTU_MilZ_Grunt_Corpsman_Allow"})
	Panel:ControlHelp("If enabled, Grunts have a chance to spawn as Corpsman.")
	Panel:ControlHelp("Corpsman can heal nearby zombies.")
	
	Panel:AddControl("Slider", {Label = "Grunt Corpsman chance.", Command = "VJ_ToTU_MilZ_Grunt_Corpsman_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a Grunt will spawn as a Corpsman.")
	Panel:ControlHelp("Default chance is 4.")
	
	/*
	Panel:AddControl("Checkbox", {Label = "Juggernaut Napalm Walks?", Command = "VJ_ToTU_MilZ_Jugg_NapalmWalk"})
	Panel:ControlHelp("If enabled, Juggernauts will use the napalm walking animations.")
	
	Panel:AddControl("Checkbox", {Label = "Juggernauts Can Charge?", Command = "VJ_ToTU_MilZ_Jugg_ChargeBehavior"})
	Panel:ControlHelp("If enabled, Juggernauts can occasionally start running at their target.")
	Panel:ControlHelp("They will stop running if they hit an enemy or if they run for long enough.")
	Panel:ControlHelp("They cannot spawn as runners if this is enabled.")
	
	local combobox_juggchargeanim = {Options = {}, CVars = {}, Label = "Juggernaut Charging Animations?", MenuButton = "0"}
	combobox_juggchargeanim.Options["Running"] = {VJ_ToTU_MilZ_Jugg_ChargeAnimation = 0}
	combobox_juggchargeanim.Options["Sprinting"] = {VJ_ToTU_MilZ_Jugg_ChargeAnimation = 1}
	combobox_juggchargeanim.Options["Sprint if close, otherwise Run"] = {VJ_ToTU_MilZ_Jugg_ChargeAnimation = 2}
	Panel:AddControl("ComboBox", combobox_juggchargeanim)
	
	Panel:AddControl("Checkbox", {Label = "Juggernauts Can Charge?", Command = "VJ_ToTU_MilZ_Bull_ChargeBehavior"})
	Panel:ControlHelp("If enabled, Bulldozers can occasionally start sprinting real fast at their target.")
	Panel:ControlHelp("They will stop that if they hit an enemy or if they sprint for long enough.")
	Panel:ControlHelp("They cannot spawn as super sprinters or rushers if this is enabled.")
	
	local combobox_bullchargeanim = {Options = {}, CVars = {}, Label = "Bulldozer Charging Animations?", MenuButton = "0"}
	combobox_bullchargeanim.Options["Rushing"] = {VJ_ToTU_MilZ_Bull_ChargeAnimation = 0}
	combobox_bullchargeanim.Options["Super Sprinting"] = {VJ_ToTU_MilZ_Bull_ChargeAnimation = 1}
	combobox_bullchargeanim.Options["Rush if close, otherwise Super Sprint"] = {VJ_ToTU_MilZ_Bull_ChargeAnimation = 2}
	Panel:AddControl("ComboBox", combobox_bullchargeanim)
	*/
	
	local combobox_bullvoice = {Options = {}, CVars = {}, Label = "Bulldozer Voice?", MenuButton = "0"}
	combobox_bullvoice.Options["L4D Tank"] = {VJ_ToTU_MilZ_Bull_Voice = 0}
	combobox_bullvoice.Options["L4D2 Charger"] = {VJ_ToTU_MilZ_Bull_Voice = 1}
	combobox_bullvoice.Options["Both"] = {VJ_ToTU_MilZ_Bull_Voice = 2}
	Panel:AddControl("ComboBox", combobox_bullvoice)
	
	-- local combobox_detsounds = {Options = {}, CVars = {}, Label = "Detonator sounds.", MenuButton = "0"}
	-- combobox_detsounds.Options["Nightmare House 2 Security Zombie"] = {VJ_ToTU_MilZ_Det_Sounds = 0}
	-- combobox_detsounds.Options["Dying Light 1 Gas Tank"] = {VJ_ToTU_MilZ_Det_Sounds = 1}
	-- combobox_detsounds.Options["Use Both"] = {VJ_ToTU_MilZ_Det_Sounds = 2}
	-- Panel:AddControl("ComboBox", combobox_detsounds)
	
	Panel:AddControl("Checkbox", {Label = "Detonators have breakable faceplates?", Command = "VJ_ToTU_MilZ_Det_Faceplate_Breakable"})
	Panel:ControlHelp("If enabled, Detonator faceplates can be broken if damaged enough.")
	
	Panel:AddControl("Checkbox", {Label = "Alternate Detonator damage system?", Command = "VJ_ToTU_MilZ_Det_ExplosionSetup"})
	Panel:ControlHelp("If enabled, Detonator explosions will use multiple damage spheres instead of just 1.")
	Panel:ControlHelp("This allows damage falloff, but this could also create invisible zombies.")
	Panel:ControlHelp("This is more noticable with the Bulk Detonator.")
	
	Panel:AddControl("Slider", {Label = "Detonator faceplate health.", Command = "VJ_ToTU_MilZ_Det_Faceplate_Health", Min = 1, Max = 10000})
	Panel:ControlHelp("Health Detonator faceplates will have.")
	Panel:ControlHelp("Bulk Detonators will have this amount times 3.")
	Panel:ControlHelp("Default ammount is 50.")
	
	Panel:AddControl("Checkbox", {Label = "Detonator bombs can be shot off?", Command = "VJ_ToTU_MilZ_Det_Bomb_Bustable"})
	Panel:ControlHelp("If enabled, Detonator bombs will explode if you shoot them enough.")
	
	Panel:AddControl("Slider", {Label = "Detonator bomb health.", Command = "VJ_ToTU_MilZ_Det_Bomb_Health", Min = 1, Max = 10000})
	Panel:ControlHelp("Health Detonator bombs will have.")
	Panel:ControlHelp("Bulk Detonators will have this amount times 5.")
	Panel:ControlHelp("Default ammount is 10.")

	Panel:AddControl("Checkbox", {Label = "Detonators infect victims?", Command = "VJ_ToTU_MilZ_Det_Infection"})
	Panel:ControlHelp("If enabled, Detonators and Bulk Detonators will infect stuff they kill.")
	
	Panel:AddControl("Checkbox", {Label = "Blacklist Detonator subtypes?", Command = "VJ_ToTU_MilZ_Det_SubtypeBlacklisted"})
	Panel:ControlHelp("If enabled, Detonators cannot spawn as Super Sprinters or Rushers.")
	
	Panel:AddControl("Checkbox", {Label = "Bulk Detonator uses NMRiH walks?", Command = "VJ_ToTU_MilZ_Det_Bulk_NMRIHWalks"})
	Panel:ControlHelp("If enabled, Bulk Detonators will use walking animations from No More Room in Hell instead of the cod zombies ones.")
	
	Panel:AddControl("Checkbox", {Label = "Blacklist Bulk Detonator subtypes?", Command = "VJ_ToTU_MilZ_Det_Bulk_SubtypeBlacklisted"})
	Panel:ControlHelp("If enabled, Bulk Detonators cannot spawn as Runners or Rushers.")

	local combobox_detlight = {Options = {}, CVars = {}, Label = "Detonator lights.", MenuButton = "0"}
	combobox_detlight.Options["Disable Entirely"] = {VJ_ToTU_MilZ_Det_BombLights = 0}
	combobox_detlight.Options["Sprite Only"] = {VJ_ToTU_MilZ_Det_BombLights = 1}
	combobox_detlight.Options["Sprite and Light"] = {VJ_ToTU_MilZ_Det_BombLights = 2}
	Panel:AddControl("ComboBox", combobox_detlight)
		
	Panel:AddControl("Slider", {Label = "Ghost cloak device health.", Command = "VJ_ToTU_MilZ_Ghost_Cloak_Health", Min = 1, Max = 10000})
	Panel:ControlHelp("Health a Ghosts' cloak device will have.")
	Panel:ControlHelp("Default ammount is 100.")
	
	Panel:AddControl("Checkbox", {Label = "Ghosts' cloak recharges?", Command = "VJ_ToTU_MilZ_Ghost_Cloak_Recharge"})
	Panel:ControlHelp("If enabled, a Ghosts' cloak device will recharge after a bit when it's broken.")
	Panel:ControlHelp("If disabled, the cloak device will remain permanently broken when destroyed.")
	
	Panel:AddControl("Checkbox", {Label = "Ghost flees while charging cloak?", Command = "VJ_ToTU_MilZ_Ghost_Cloak_Recharge_RunWhileCharging"})
	Panel:ControlHelp("If enabled, Infected Ghosts will attempt to flee while their cloak device is recharging.")
	Panel:ControlHelp("They will only do this is their current enemy is far enough.")
	Panel:ControlHelp("If cloak recharging is disabled, then this convar doesn't do anything.")
	
	Panel:AddControl("Checkbox", {Label = "Tank uses NMRiH walks?", Command = "VJ_ToTU_MilZ_Tank_NMRIHWalks"})
	Panel:ControlHelp("If enabled, Tanks will use walking animations from No More Room in Hell instead of the cod zombies ones.")
	
	Panel:AddControl("Checkbox", {Label = "Blacklist Tank subtypes?", Command = "VJ_ToTU_MilZ_Tank_SubtypeBlacklisted"})
	Panel:ControlHelp("If enabled, Tanks cannot spawn as Runners or Rushers.")
	
	Panel:ControlHelp("--------------------------------------------------------")
	Panel:AddControl( "Label", {Text = "Nightkin"})
	Panel:ControlHelp("--------------------------------------------------------")
	
	Panel:AddControl("Checkbox", {Label = "Nightkin can cause bleeding?", Command = "VJ_ToTU_Nightkin_General_Bleed"})
	Panel:ControlHelp("If enabled, Nightkin melee attacks can occasionally cause their target to bleed, doing damage over time.")
	
	Panel:AddControl("Checkbox", {Label = "Squallers can spawn with Iron Will?", Command = "VJ_ToTU_Nightkin_Squaller_IronWill"})
	Panel:ControlHelp("If enabled, Squallers can sometimes spawn with Iron Will.")
	Panel:ControlHelp("If they have it, it triggers a bit after death.")
	Panel:ControlHelp("When triggered, the following will happen to the Squaller:")
	Panel:ControlHelp("+ It will revive itself.")
	Panel:ControlHelp("+ It will recieve half of its max hp.")
	Panel:ControlHelp("+ It will gain massive damage resistance.")
	Panel:ControlHelp("+ It cannot be crippled.")
	Panel:ControlHelp("= It will gain a glow effect.")
	Panel:ControlHelp("- It will be reduced to Super Sprinting instead of Rushing.")
	Panel:ControlHelp("- It will die after 16 seconds.")

	Panel:AddControl("Slider", {Label = "Squaller Iron Will chance.", Command = "VJ_ToTU_Nightkin_Squaller_IronWill_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a Squaller will spawn with Iron Will.")
	Panel:ControlHelp("Default chance is 3.")

	Panel:AddControl("Checkbox", {Label = "Spectre has ranged attack?", Command = "VJ_ToTU_Nightkin_Spectre_RangeAttack"})
	Panel:ControlHelp("If enabled, Spectres can shoot balls of Anomalic Energy at their enemies.")

	Panel:AddControl("Checkbox", {Label = "Blacklist Scylla subtypes?", Command = "VJ_ToTU_Nightkin_Scylla_SubtypeBlacklisted"})
	Panel:ControlHelp("If enabled, Scyllas cannot spawn as Super Sprinters or Rushers.")
	
	Panel:AddControl("Checkbox", {Label = "Original Shrieker behavior?", Command = "VJ_ToTU_Nightkin_Shrieker_OriginalBehavior"})
	Panel:ControlHelp("If enabled, Shriekers will use their original behavior from the original ToTU, back when they were called Screamers.")
	Panel:ControlHelp("Instead of running away and summoning allies, they will instead run at you and try to yell in your face.")

	Panel:ControlHelp("--------------------------------------------------------")
	Panel:AddControl( "Label", {Text = "Deimos Strain"})
	Panel:ControlHelp("--------------------------------------------------------")

	Panel:AddControl("Checkbox", {Label = "Enable Deimos infection?", Command = "VJ_ToTU_Weaponized_Deimos_Infection"})
	Panel:ControlHelp("If enabled, Deimos strain zombs will infect victims.")

	local combobox_deimoseyes = {Options = {}, CVars = {}, Label = "Deimos eyelights.", MenuButton = "0"}
	combobox_deimoseyes.Options["Disable Entirely"] = {VJ_ToTU_Weaponized_Deimos_Eyes = 0}
	combobox_deimoseyes.Options["Sprites Only"] = {VJ_ToTU_Weaponized_Deimos_Eyes = 1}
	combobox_deimoseyes.Options["Sprites and Trails"] = {VJ_ToTU_Weaponized_Deimos_Eyes = 2}
	Panel:AddControl("ComboBox", combobox_deimoseyes)

	Panel:AddControl("Checkbox", {Label = "Enable Deimos bleeding?", Command = "VJ_ToTU_Weaponized_Carcass_Bleed"})
	Panel:ControlHelp("If enabled, Carcasses, Cazadores, Cysts, and Corrupts can occasionally cause bleeding when they hit their target.")

	Panel:AddControl("Checkbox", {Label = "Remorts can spawn with gasmasks?", Command = "VJ_ToTU_Weaponized_Remort_Gasmasks_Allow"})
	Panel:ControlHelp("If enabled, Remorts can sometimes spawn with gasmasks.")
	
	Panel:AddControl("Slider", {Label = "Gasmask chance.", Command = "VJ_ToTU_Weaponized_Remort_Gasmasks_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a Remort will spawn with a gasmask.")
	Panel:ControlHelp("Default chance is 3.")
	
	Panel:AddControl("Checkbox", {Label = "Remorts can spawn with flak armor?", Command = "VJ_ToTU_Weaponized_Remort_FlakArmor_Allow"})
	Panel:ControlHelp("If enabled, Remorts can sometimes spawn with flak armor.")
	Panel:ControlHelp("Flak armor provides protection against explosive damage, aswell as a small bit of limb protection.")
	
	Panel:AddControl("Slider", {Label = "Flak armor chance.", Command = "VJ_ToTU_Weaponized_Remort_FlakArmor_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a Remort will spawn with flak armor.")
	Panel:ControlHelp("Default chance is 4.")

	Panel:AddControl("Checkbox", {Label = "Enable Caretaker Remorts?", Command = "VJ_ToTU_Weaponized_Remort_Caretakers_Allow"})
	Panel:ControlHelp("If enabled, Remorts can spawn as the Caretaker varient.")
	Panel:ControlHelp("They will heal nearby zombies.")
	
	Panel:AddControl("Slider", {Label = "Caretaker Remort chance.", Command = "VJ_ToTU_Weaponized_Remort_Caretakers_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a Remort will spawn as a Caretaker.")
	Panel:ControlHelp("Default chance is 4.")

	Panel:AddControl("Checkbox", {Label = "Enable Carcass exploders?", Command = "VJ_ToTU_Weaponized_Carcass_Exploders"})
	Panel:ControlHelp("If enabled, Carcass can sometimes spawn as exploders.")
	Panel:ControlHelp("Unbelievably, they explode when they die.")
	Panel:ControlHelp("They also shoot out projectiles because reasons.")
	
	Panel:AddControl("Slider", {Label = "Carcass exploder chance.", Command = "VJ_ToTU_Weaponized_Carcass_Exploders_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a Carcass will spawn as an Exploder.")
	Panel:ControlHelp("Default chance is 4.")
		
	Panel:AddControl("Checkbox", {Label = "Enable Cyst exploders?", Command = "VJ_ToTU_Weaponized_Cyst_Exploders"})
	Panel:ControlHelp("If enabled, Cysts can sometimes spawn as exploders.")
	
	Panel:AddControl("Slider", {Label = "Cyst exploder chance.", Command = "VJ_ToTU_Weaponized_Cyst_Exploders_Chance", Min = 1, Max = 10000})
	Panel:ControlHelp("Chance that a Cyst will spawn as an Exploder.")
	Panel:ControlHelp("Default chance is 4.")
	
	Panel:AddControl("Checkbox", {Label = "Cysts take damage when range attacking?", Command = "VJ_ToTU_Weaponized_Cyst_HurtOnRanged"})
	Panel:ControlHelp("If enabled, Cysts will take damage when they use their ranged attack.")

	Panel:AddControl("Checkbox", {Label = "Enable Cancer reviving?", Command = "VJ_ToTU_Weaponized_Cancer_Reviving"})
	Panel:ControlHelp("If enabled, Cancers can revive or mutate if not killed with fire.")

	Panel:AddControl("Checkbox", {Label = "Enable Revenant revive blacklist?", Command = "VJ_ToTU_Weaponized_Revenant_ReviveBlacklist"})
	Panel:ControlHelp("If enabled, Revenants cannot use certain models for reviving.")
	Panel:ControlHelp("If disabled, anything considered prop_ragdoll is revivable.")

	Panel:ControlHelp("--------------------------------------------------------")
	Panel:AddControl( "Label", {Text = "Cepheus Strain"})
	Panel:ControlHelp("--------------------------------------------------------")

	Panel:AddControl("Checkbox", {Label = "Smogs faceplate is breakable?", Command = "VJ_ToTU_Weaponized_Smog_Faceplate_Breakable"})
	Panel:ControlHelp("If enabled, Smogs faceplate can be broken after taking enough damage.")
	
	Panel:AddControl("Slider", {Label = "Smog faceplate health.", Command = "VJ_ToTU_Weaponized_Smog_Faceplate_Health", Min = 1, Max = 10000})
	Panel:ControlHelp("Health that Smogs faceplate will have.")
	Panel:ControlHelp("Default ammount is 500.")
	
	Panel:AddControl("Checkbox", {Label = "Smogs tank is breakable?", Command = "VJ_ToTU_Weaponized_Smog_Tank_Breakable"})
	Panel:ControlHelp("If enabled, shooting the tank on Smogs back enough will cause it to leak.")
	Panel:ControlHelp("If it's leaking, Smog can no longer spray biotoxin, but also gains aoe damage around himself.")
	
	Panel:AddControl("Slider", {Label = "Smog tank health.", Command = "VJ_ToTU_Weaponized_Smog_Tank_Health", Min = 1, Max = 10000})
	Panel:ControlHelp("Health Smogs biotoxin tank will have.")
	Panel:ControlHelp("Default ammount is 35.")
	
	local combobox_smogbloody = {Options = {}, CVars = {}, Label = "Smog uses bloody model?", MenuButton = "0"}
	combobox_smogbloody.Options["Use It"] = {VJ_ToTU_Weaponized_Smog_Bloody = 0}
	combobox_smogbloody.Options["Don't Use It"] = {VJ_ToTU_Weaponized_Smog_Bloody = 1}
	combobox_smogbloody.Options["Use Both"] = {VJ_ToTU_Weaponized_Smog_Bloody = 2}
	Panel:AddControl("ComboBox", combobox_smogbloody)
	
	
	
	-- Panel:AddControl("Checkbox", {Label ="Enable Realism Mode?", Command ="vj_LN_TOTU_RealismMode"})
	-- Panel:ControlHelp("Enabling Realism Mode will cause the following:")
	-- Panel:ControlHelp("-Chelonioidea will have their sight range and hear distance severely reduced, but breaking their faceplate will restore both.")
	-- Panel:ControlHelp("-Carcasses and Cazadores will be sensorly deprived.")
	-- Panel:ControlHelp("-The following zombies will not infect their victims and will simply kill them.")
	-- Panel:ControlHelp("*Chelonioidea")
	-- Panel:ControlHelp("-your mother.")
	-- Panel:ControlHelp("-your mother.")
	-- Panel:ControlHelp("-your mother.")
	-- Panel:ControlHelp("-your mother.")
	-- Panel:ControlHelp("-Certain zombies will have more realistic health values.")
	-- Panel:ControlHelp("-Certain zombies will have more realistic damage values.")
	-- Panel:ControlHelp("-Swarms are immune to bullet, club, and slash damage.")
	-- Panel:ControlHelp("-Revenants can't resurrect corpses or heal nearby zombies.")
	-- Panel:ControlHelp("-Certain zombies can cause bleed damage.")
	-- Panel:ControlHelp("-Regenerators and Pests can't revive themselves.")
	-- Panel:ControlHelp("-Cazadores and Carcasses are blind and deaf.")
	-- Panel:ControlHelp("-Feedback and Bosses cannot summon help.")
	-- Panel:ControlHelp("-Juggernauts, Bulldozers, Smogs, and Meatheads have ENT.IsHugeMonster set to 0.")
	-- Panel:ControlHelp("-Bosses won't have music.")
	
	-- Panel:AddControl("Checkbox", {Label ="Disable Boss music?", Command ="vj_LN_TOTU_NoMusic"})
	
	
	-- Panel:AddControl("Checkbox", {Label ="Allow Feedback to summon allies?", Command ="vj_LN_TOTU_FeedbackSpawning"})
	-- Panel:ControlHelp("Realism Mode overrides this.")
	-- Panel:AddControl("Checkbox", {Label ="Allow Bosses to summon allies?", Command ="vj_LN_TOTU_BossSpawning"})
	-- Panel:ControlHelp("Realism Mode overrides this.")
	
	
	-- Panel:AddControl("Checkbox", {Label ="Additional Revenant corpse revive blacklist?", Command ="vj_LN_TOTU_AdditionalReviveBlacklist"})
	-- Panel:ControlHelp("If enabled, Revenants cannot use the models used for Corpse Walkers, Carcasses, or Cazadors to create more zombies.")
	-- Panel:AddControl("Checkbox", {Label ="Enable NoCollide for Revenants and their minions?", Command ="vj_LN_TOTU_Ghosting"})
	-- Panel:ControlHelp("If enabled, Revenants, Carcasses, and Cazadores won't collide with eachother.")
	-- Panel:ControlHelp("Should help deal with Revenants being stuck in them apon creating one.")
	
	
	-- Panel:AddControl("Checkbox", {Label ="Completely Disable the Armor System?", Command ="vj_LN_TOTU_ArmorConvarName"})
	-- Panel:ControlHelp("If Enabled, the following zombies will have their armor privileges revoked.")
	-- Panel:ControlHelp("Mil. Zombs, Gunners, Cloakers, Suiciders, Praetorians, Juggernauts, Bulldozers, and Apollyon.")
	
	
	-- Panel:AddControl("Checkbox", {Label ="Suiciders don't explode if killed?", Command ="vj_LN_TOTU_DeadSuicidersNoBoom"})
	
	-- Panel:AddControl("Checkbox", {Label ="Have Swarms take damage from everything?", Command ="vj_LN_TOTU_VulnerableSwarms"})
	-- Panel:ControlHelp("If this is disabled, Swarms are immune to bullet, slash, and club damage.")
	-- Panel:ControlHelp("If this is disabled, Swarms can only be killed with explosives or fire.")
	-- Panel:ControlHelp("Realism Mode overrides this.")
	
	
	-- Panel:AddControl("Checkbox", {Label ="Allow bleed damage for certain zombies?", Command ="vj_LN_TOTU_AhHellImBleedin"})
	-- Panel:ControlHelp("Realism Mode overrides this.")
	
	
	-- Panel:AddControl("Slider", {Label = "Ammo drop type?", Command = "vj_LN_TOTU_MilZombAmmo", Min = 0, Max = 6})
	-- Panel:ControlHelp("0 - HL2 Ammo.")
	-- Panel:ControlHelp("1 - ARCCW Ammo.")
	-- Panel:ControlHelp("2 - TFA Ammo.")
	-- Panel:ControlHelp("3 - Underhell Ammo.")
	-- Panel:ControlHelp("4 - C.W. 2.0 Ammo.")
	-- Panel:ControlHelp("5 - FA:S Ammo.")
	-- Panel:ControlHelp("6 - M9K Ammo.")
	-- Panel:ControlHelp("This affects the drops of the following:")
	-- Panel:ControlHelp("Military Zombies, Gunners, Cloakers, Suiciders, Praetorians, Juggernauts, Bulldozers, and Apollyon.")
	-- Panel:AddControl("Checkbox", {Label ="Revenants drop Stims?", Command ="vj_LN_TOTU_StimMeUpDoc"})
	-- Panel:ControlHelp("Requires Arctic's Combat Stims.")
	-- Panel:ControlHelp("Link: https://steamcommunity.com/sharedfiles/filedetails/?id=2370028261 ")
	
	-- Panel:AddControl("Checkbox", {Label ="Additional Carcasses and Cazadores animations?", Command ="vj_LN_TOTU_AdditionalCarcCazAnims"})
	-- Panel:ControlHelp("Requires Episodic Zombie Animation Fix to work.")
	-- Panel:ControlHelp("Link: https://steamcommunity.com/workshop/filedetails/?id=1879556056 ")
	
	-- Panel:AddControl("Checkbox", {Label ="Have Squallers always be aggressive?", Command ="vj_LN_TOTU_HostileSquallers"})
	-- Panel:AddControl("Checkbox", {Label ="Have Scragglers always be aggressive?", Command ="vj_LN_TOTU_HostileScragglers"})
	-- Panel:AddControl("Checkbox", {Label ="Have Degenerates always be aggressive?", Command ="vj_LN_TOTU_HostileDegenerates"})
	-- Panel:AddControl("Checkbox", {Label ="Regenerators are blind?", Command ="vj_LN_TOTU_BlindRegenerators"})
	-- Panel:AddControl("Checkbox", {Label ="Cazadores are sensorly deprived?", Command ="vj_LN_TOTU_SensoryDeprivedCazadores"})
	-- Panel:ControlHelp("Realism Mode overrides this.")
	-- Panel:AddControl("Checkbox", {Label ="Carcasses are sensorly deprived?", Command ="vj_LN_TOTU_SensoryDeprivedCarcasses"})
	-- Panel:ControlHelp("Realism Mode overrides this.")
	
	
	-- Panel:AddControl("Checkbox", {Label ="Hives fire projectiles instead of summoning Swarms?", Command ="vj_LN_TOTU_HiveProjectile"})
	
	-- Panel:AddControl("Checkbox", {Label ="Screechers use an ear ringing effect apon hit?", Command ="vj_LN_TOTU_Tinnitus"})
	-- Panel:AddControl("Checkbox", {Label ="Reduce Feedbacks noise pollution?", Command ="vj_LN_TOTU_FeedbackShutUp"})
	
	-- Panel:AddControl("Checkbox", {Label ="Disable Goliaths' eye spotlights?", Command ="vj_LN_TOTU_GoliathLightsOff"})
	-- Panel:ControlHelp("[Disable Idle Particles and Effects] overrides this.")
	
	-- Panel:AddControl("Checkbox", {Label ="Allow Goliaths to spawn gibs?", Command ="vj_LN_TOTU_GoliathGibbing"})
	-- Panel:AddControl("Checkbox", {Label ="Allow Behemoths to spawn gibs?", Command ="vj_LN_TOTU_BehemothGibbing"})
	-- Panel:AddControl("Checkbox", {Label ="Allow Carcass's to spawn gibs?", Command ="vj_LN_TOTU_CarcassGibbing"})
	-- Panel:ControlHelp("Disable these if any of the respective three cause crashes when they gib.")
	-- Panel:AddPanel(typebox)

	end

	function VJ_AddToMenu_ToTU(Panel)
		spawnmenu.AddToolMenuOption("DrVrej","SNPC Configures","Terrors of The Unexplored","Terrors of The Unexplored","","", VJ_ToTU, {} )
	end
		hook.Add("PopulateToolMenu","VJ_AddToMenu_ToTU", VJ_AddToMenu_ToTU )
	end



	if GetConVar("VJ_ToTU_SpawnMenu_SortByCategory"):GetInt() == 1 then

		local vCat2 = "Lethal Necrotics: Terrors of The Unexplored - Military Zombies"
		local vCat3 = "Lethal Necrotics: Terrors of The Unexplored - Nightkin"
		local vCat4 = "Lethal Necrotics: Terrors of The Unexplored - Deimos"
		local vCat8 = "Lethal Necrotics: Terrors of The Unexplored - Spawners/Bonus"
		/*
		local vCat1 = "Lethal Necrotics: Terrors of The Unexplored - Base Zombies"
		local vCat5 = "Lethal Necrotics: Terrors of The Unexplored - Backcounty"
		local vCat6 = "Lethal Necrotics: Terrors of The Unexplored - The Rotten"
		local vCat7 = "Lethal Necrotics: Terrors of The Unexplored - Aquos"
		local vCat9 = "Lethal Necrotics: Terrors of The Unexplored - Tundra Wastes"
		local vCat10 = "Lethal Necrotics: Terrors of The Unexplored - Morti Labs"
		local vCat11 = "Lethal Necrotics: Terrors of The Unexplored - Freaks of Nature"
		local vCat12 = "Lethal Necrotics: Terrors of The Unexplored - Cepheus"
		*/

		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Military Zombies", {Icon = "icons/symbolv3.png"})
		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Nightkin", {Icon = "icons/symbolv3.png"})
		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Deimos", {Icon = "icons/symbolv3.png"})
		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Spawners/Bonus", {Icon = "icons/symbolv3.png"})
		/*
		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Base Zombies", {Icon = "icons/symbolv3.png"})
		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Backcounty", {Icon = "icons/symbolv3.png"})
		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - The Rotten", {Icon = "icons/symbolv3.png"})
		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Aquos", {Icon = "icons/symbolv3.png"})
		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Tundra Wastes", {Icon = "icons/symbolv3.png"})
		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Morti Labs", {Icon = "icons/symbolv3.png"})
		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Freaks of Nature", {Icon = "icons/symbolv3.png"})
		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Cepheus", {Icon = "icons/symbolv3.png"})
		*/

		-- MilZombs
			VJ.AddNPC("Airman (Walker)","npc_vj_totu_milzomb_airman",vCat2)
			VJ.AddNPC("Airman (Infected)","npc_vj_totu_milzomb_airman_infected",vCat2)
			VJ.AddNPC("Hazmat (Walker)","npc_vj_totu_milzomb_hazmat",vCat2)
			VJ.AddNPC("Hazmat (Infected)","npc_vj_totu_milzomb_hazmat_infected",vCat2)
			VJ.AddNPC("Grunt (Walker)","npc_vj_totu_milzomb_walker",vCat2)
			VJ.AddNPC("Grunt (Infected)","npc_vj_totu_milzomb_infected",vCat2)
			VJ.AddNPC("Ghillie (Walker)","npc_vj_totu_milzomb_ghillie_walker",vCat2)
			VJ.AddNPC("Ghillie (Infected)","npc_vj_totu_milzomb_ghillie",vCat2)
			VJ.AddNPC("Ghost (Walker)","npc_vj_totu_milzomb_ghost_walker",vCat2)
			VJ.AddNPC("Ghost (Infected)","npc_vj_totu_milzomb_ghost",vCat2)
			VJ.AddNPC("Juggernaut","npc_vj_totu_milzomb_juggernaut",vCat2)
			VJ.AddNPC("Bulldozer","npc_vj_totu_milzomb_bulldozer",vCat2)
			VJ.AddNPC("Tank","npc_vj_totu_milzomb_tank",vCat2)
			VJ.AddNPC("Detonator","npc_vj_totu_milzomb_detonator",vCat2)
			VJ.AddNPC("Bulk Detonator","npc_vj_totu_milzomb_detonator_bulk",vCat2)

		-- Nightkin
			VJ.AddNPC("Scragg","npc_vj_totu_nightkin_scragg",vCat3)
			VJ.AddNPC("Skitter","npc_vj_totu_nightkin_skitter",vCat3)
			VJ.AddNPC("Scourge","npc_vj_totu_nightkin_spitballer",vCat3)
			VJ.AddNPC("Squaller","npc_vj_totu_nightkin_squaller",vCat3)
			VJ.AddNPC("Spectre","npc_vj_totu_nightkin_spectre",vCat3)
			VJ.AddNPC("Scylla","npc_vj_totu_nightkin_scylla",vCat3)
			VJ.AddNPC("Shrieker","npc_vj_totu_nightkin_shrieker",vCat3)

		-- Deimos
			VJ.AddNPC("Reborn","npc_vj_totu_deimos_reborn",vCat4)
			VJ.AddNPC("Redead","npc_vj_totu_deimos_redead",vCat4)
			VJ.AddNPC("Remort (Researcher)","npc_vj_totu_deimos_redead_sci",vCat4)
			VJ.AddNPC("Remort (Guard)","npc_vj_totu_deimos_redead_guard",vCat4)
			VJ.AddNPC("Remort (Drone)","npc_vj_totu_deimos_redead_grunt",vCat4)
			VJ.AddNPC("Carcass","npc_vj_totu_deimos_carcass",vCat4)
			VJ.AddNPC("Carcass Thorax","npc_vj_totu_deimos_carcass_torso",vCat4)
			VJ.AddNPC("Cazador","npc_vj_totu_deimos_cazador",vCat4)
			VJ.AddNPC("Cazador Thorax","npc_vj_totu_deimos_cazador_torso",vCat4)
			VJ.AddNPC("Cyst","npc_vj_totu_deimos_cyst",vCat4)
			VJ.AddNPC("Cancer","npc_vj_totu_deimos_cancer",vCat4)
			VJ.AddNPC("Revenant","npc_vj_totu_deimos_revenant",vCat4)
			VJ.AddNPC("Corrupt","npc_vj_totu_deimos_corrupt",vCat4)
			VJ.AddNPC("Reaper","npc_vj_totu_deimos_corrupt_brute",vCat4)

		-- Spawners/Bonus
			VJ.AddNPC("Base Walker","npc_vj_totu_base_walker",vCat8)
			VJ.AddNPC("Base Infected","npc_vj_totu_base_infected",vCat8)

	else

		local vCatt = "Lethal Necrotics: Terrors of The Unexplored"
		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored", {Icon = "icons/symbolv3.png"})
		local vCatr = "Lethal Necrotics: Terrors of The Unexplored - Spawners/Bonus"
		VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Spawners/Bonus", {Icon = "icons/symbolv3.png"})

		-- MilZombs
			VJ.AddNPC("Airman (Walker)","npc_vj_totu_milzomb_airman",vCatt)
			VJ.AddNPC("Airman (Infected)","npc_vj_totu_milzomb_airman_infected",vCatt)
			VJ.AddNPC("Hazmat (Walker)","npc_vj_totu_milzomb_hazmat",vCatt)
			VJ.AddNPC("Hazmat (Infected)","npc_vj_totu_milzomb_hazmat_infected",vCatt)
			VJ.AddNPC("Grunt (Walker)","npc_vj_totu_milzomb_walker",vCatt)
			VJ.AddNPC("Grunt (Infected)","npc_vj_totu_milzomb_infected",vCatt)
			VJ.AddNPC("Ghillie (Walker)","npc_vj_totu_milzomb_ghillie_walker",vCatt)
			VJ.AddNPC("Ghillie (Infected)","npc_vj_totu_milzomb_ghillie",vCatt)
			VJ.AddNPC("Ghost (Walker)","npc_vj_totu_milzomb_ghost_walker",vCatt)
			VJ.AddNPC("Ghost (Infected)","npc_vj_totu_milzomb_ghost",vCatt)
			VJ.AddNPC("Juggernaut","npc_vj_totu_milzomb_juggernaut",vCatt)
			VJ.AddNPC("Bulldozer","npc_vj_totu_milzomb_bulldozer",vCatt)
			VJ.AddNPC("Tank","npc_vj_totu_milzomb_tank",vCatt)
			VJ.AddNPC("Detonator","npc_vj_totu_milzomb_detonator",vCatt)
			VJ.AddNPC("Bulk Detonator","npc_vj_totu_milzomb_detonator_bulk",vCatt)

		-- Nightkin
			VJ.AddNPC("Scragg","npc_vj_totu_nightkin_scragg",vCatt)
			VJ.AddNPC("Skitter","npc_vj_totu_nightkin_skitter",vCatt)
			VJ.AddNPC("Scourge","npc_vj_totu_nightkin_spitballer",vCatt)
			VJ.AddNPC("Squaller","npc_vj_totu_nightkin_squaller",vCatt)
			VJ.AddNPC("Spectre","npc_vj_totu_nightkin_spectre",vCatt)
			VJ.AddNPC("Scylla","npc_vj_totu_nightkin_scylla",vCatt)
			VJ.AddNPC("Shrieker","npc_vj_totu_nightkin_shrieker",vCatt)

		-- Deimos
			VJ.AddNPC("Reborn","npc_vj_totu_deimos_reborn",vCatt)
			VJ.AddNPC("Redead","npc_vj_totu_deimos_redead",vCatt)
			VJ.AddNPC("Remort (Researcher)","npc_vj_totu_deimos_redead_sci",vCatt)
			VJ.AddNPC("Remort (Guard)","npc_vj_totu_deimos_redead_guard",vCatt)
			VJ.AddNPC("Remort (Drone)","npc_vj_totu_deimos_redead_grunt",vCatt)
			VJ.AddNPC("Carcass","npc_vj_totu_deimos_carcass",vCatt)
			VJ.AddNPC("Carcass Thorax","npc_vj_totu_deimos_carcass_torso",vCatt)
			VJ.AddNPC("Cazador","npc_vj_totu_deimos_cazador",vCatt)
			VJ.AddNPC("Cazador Thorax","npc_vj_totu_deimos_cazador_torso",vCatt)
			VJ.AddNPC("Cyst","npc_vj_totu_deimos_cyst",vCatt)
			VJ.AddNPC("Cancer","npc_vj_totu_deimos_cancer",vCatt)
			VJ.AddNPC("Revenant","npc_vj_totu_deimos_revenant",vCatt)
			VJ.AddNPC("Corrupt","npc_vj_totu_deimos_corrupt",vCatt)
			VJ.AddNPC("Reaper","npc_vj_totu_deimos_corrupt_brute",vCatt)

		-- Spawners/Bonus
			VJ.AddNPC("Base Walker","npc_vj_totu_base_walker",vCatr)
			VJ.AddNPC("Base Infected","npc_vj_totu_base_infected",vCatr)

	end



	-- thank you to darkborn for this bit
	if CLIENT then
		net.Receive("VJ_ToTU_Squaller_Hud",function(len,pl)
		local delete = net.ReadBool()
		local ent = net.ReadEntity()
		
		if !IsValid(ent) then delete = true end

		if GetConVar("VJ_ToTU_LNR_ZombieOverlay"):GetInt() == 1 then
			hook.Add("RenderScreenspaceEffects","VJ_ToTU_LNR_InfectedHUD_Overlay",function(zom)
            local threshold = 0.30
            DrawMaterialOverlay("lnr/overlay/infected_vision",threshold)
			
			
			hook.Add("RenderScreenspaceEffects", "VJ_ToTU_SquallerHud_Colors", function(zom)
			local tab = {
			["$pp_colour_addr"] = 0,
			["$pp_colour_addg"] = 0,
			["$pp_colour_addb"] = 0,
			["$pp_colour_brightness"] = -0.10,
			["$pp_colour_contrast"] = 1,
			["$pp_colour_colour"] = 0.05,
			["$pp_colour_mulr"] = 0.1,
			["$pp_colour_mulg"] = 0,
			["$pp_colour_mulb"] = 0
			}
			DrawColorModify( tab )
				end )	
			end)
		end
		if delete then 
			hook.Remove("RenderScreenspaceEffects","VJ_ToTU_LNR_InfectedHUD_Overlay") 
			hook.Remove("RenderScreenspaceEffects", "VJ_ToTU_SquallerHud_Colors")
		end
		end)
	end
	
	





















	hook.Add("OnNPCKilled","TOTU_Infection_Deimos",function(victim,inflictor,attacker)

		if attacker.ToTU_Deimos == true && victim:LookupBone("ValveBiped.Bip01_Pelvis") && GetConVar("VJ_ToTU_Weaponized_Deimos_Infection"):GetInt() == 1 then

			local zombie = ents.Create("npc_vj_totu_deimos_redead")
			local oldModel = victim:GetModel()
			local oldSkin = victim:GetSkin()
			local oldColor = victim:GetColor()
			local oldMaterial = victim:GetMaterial()	  
			local bg = {}
			for i = 0,18 do
				bg[i] = victim:GetBodygroup(i)
			end
			zombie:SetMaterial("hud/killicons/default")
            zombie:SetPos(victim:GetPos())
            zombie:SetAngles(victim:GetAngles())
			zombie.ToTU_Weaponized_Redead_Infectee = true
			zombie.ToTU_Weaponized_PoopShitter = true
            zombie:Spawn()
			zombie:Activate()
            //zombie:SetParent(zombie)
            zombie:Spawn()
            zombie:VJ_TOTU_Deimos_CreateBoneMerge(zombie,oldModel,oldSkin,bg)

			local DeathAnims = {ACT_SIGNAL2,ACT_SIGNAL3}	
			local AnimTime = VJ_GetSequenceDuration(zombie,zombie:GetSequenceName(zombie:GetSequence()))

			timer.Simple(0.01,function() if IsValid(zombie) then
				zombie:VJ_ACT_PLAYACTIVITY(DeathAnims,true,120,false)
				zombie.LNR_AllowedToStumble = false		
				zombie.GodMode = true
				zombie.HasPoseParameterLooking = false
				zombie.DisableFindEnemy = true		
				zombie.DisableMakingSelfEnemyToNPCs = true
				zombie:AddFlags(FL_NOTARGET)
				zombie.MovementType = VJ_MOVETYPE_STATIONARY		
				zombie.CanTurnWhileStationary = false
				zombie.HasSounds = false
				zombie.DisableSelectSchedule = true

				timer.Simple(math.random(GetConVar("VJ_ToTU_LNR_ResurrectionTime1"):GetInt(),GetConVar("VJ_ToTU_LNR_ResurrectionTime2"):GetInt()),function()

					if IsValid(zombie) then

						zombie:EmitSound(Sound("zombies/anywhere/ghoul/hit_"..math.random(1,3)..".mp3",80,math.random(100,90)))

						local bloodspray = EffectData()
						bloodspray:SetOrigin(zombie:GetPos())
						bloodspray:SetScale(10)
						bloodspray:SetFlags(3)
						bloodspray:SetColor(0)
						util.Effect("bloodspray",bloodspray)
						util.Effect("bloodspray",bloodspray)
						
						local bloodeffect = EffectData()
						bloodeffect:SetOrigin(zombie:GetPos())
						bloodeffect:SetColor(VJ_Color2Byte(Color(17,6,6,255)))
						bloodeffect:SetScale(125)
						util.Effect("VJ_Blood1",bloodeffect)
		
						local newredead = ents.Create("npc_vj_totu_deimos_reborn")
						newredead:SetPos(zombie:GetPos())
						newredead:SetAngles(zombie:GetAngles())
						newredead.ToTU_Weaponized_Shitter = true
						newredead:Spawn()
						newredead:Activate()

						if zombie:GetActivity() == ACT_SIGNAL2 then
							if math.random(1,3) == 1 then
								newredead:VJ_ACT_PLAYACTIVITY("slumprise_a2",true,false,false)
								AnimTime = VJ_GetSequenceDuration(newredead,"slumprise_a2")
							else
								newredead:VJ_ACT_PLAYACTIVITY("slumprise_a",true,false,false)
								AnimTime = VJ_GetSequenceDuration(newredead,"slumprise_a")
							end
						end

						if zombie:GetActivity() == ACT_SIGNAL3 then	
							newredead:VJ_ACT_PLAYACTIVITY("infectionrise2",true,false,false)
							AnimTime = VJ_GetSequenceDuration(newredead,"infectionrise2")		
						end

						timer.Simple(AnimTime,function() if IsValid(zombie) then

							zombie.HasPoseParameterLooking = true	   
							zombie:DoChangeMovementType(VJ_MOVETYPE_GROUND)
							zombie.LNR_AllowedToStumble = true
							zombie.DisableSelectSchedule = false

						end end)

						zombie:Remove()
					
					end

				end)

			end end)

			if victim.IsVJBaseSNPC == true then
				victim.HasDeathRagdoll = false
				victim.HasDeathAnimation = false				
			end

			if victim:IsNPC() then
				victim:Remove()
			end

		end

	end)

	hook.Add("PlayerDeath","TOTU_Infection_Deimos_Player",function(victim,inflictor,attacker)

		if attacker.ToTU_Deimos == true && victim:LookupBone("ValveBiped.Bip01_Pelvis") && GetConVar("VJ_ToTU_Weaponized_Deimos_Infection"):GetInt() == 1 then

			local zombie = ents.Create("npc_vj_totu_deimos_redead")
			local bonemerge = ents.Create("vj_totu_lnr_infection")
			local oldModel = victim:GetModel()
			local oldSkin = victim:GetSkin()
			local oldColor = victim:GetColor()
			local oldMaterial = victim:GetMaterial()		  
			local oldPlayerColor = victim:GetPlayerColor() 	  
			local bg = {}
			for i = 0,18 do
				bg[i] = victim:GetBodygroup(i)
			end

			zombie:SetMaterial("hud/killicons/default")
            zombie:SetPos(victim:GetPos())
            zombie:SetAngles(victim:GetAngles())
			zombie.ToTU_Weaponized_Redead_Infectee = true
			zombie.ToTU_Weaponized_PoopShitter = true
            zombie:Spawn()
			zombie:Activate()
            //zombie:SetParent(zombie)
            zombie:Spawn()

            zombie:VJ_TOTU_Deimos_CreateBoneMerge(zombie,oldModel,oldSkin,bg)

			local DeathAnims = {ACT_SIGNAL2,ACT_SIGNAL3}	
			local AnimTime = VJ_GetSequenceDuration(zombie,zombie:GetSequenceName(zombie:GetSequence()))

			timer.Simple(0.01,function() if IsValid(zombie) then
				zombie:VJ_ACT_PLAYACTIVITY(DeathAnims,true,120,false)
				zombie.LNR_AllowedToStumble = false		
				zombie.GodMode = true
				zombie.HasPoseParameterLooking = false
				zombie.DisableFindEnemy = true		
				zombie.DisableMakingSelfEnemyToNPCs = true
				zombie:AddFlags(FL_NOTARGET)
				zombie.MovementType = VJ_MOVETYPE_STATIONARY		
				zombie.CanTurnWhileStationary = false
				zombie.HasSounds = false
				zombie.DisableSelectSchedule = true

				timer.Simple(math.random(GetConVar("VJ_ToTU_LNR_ResurrectionTime1"):GetInt(),GetConVar("VJ_ToTU_LNR_ResurrectionTime2"):GetInt()),function()

					if IsValid(zombie) then

						zombie:EmitSound(Sound("zombies/anywhere/ghoul/hit_"..math.random(1,3)..".mp3",80,math.random(100,90)))

						local bloodspray = EffectData()
						bloodspray:SetOrigin(zombie:GetPos())
						bloodspray:SetScale(10)
						bloodspray:SetFlags(3)
						bloodspray:SetColor(0)
						util.Effect("bloodspray",bloodspray)
						util.Effect("bloodspray",bloodspray)
						
						local bloodeffect = EffectData()
						bloodeffect:SetOrigin(zombie:GetPos())
						bloodeffect:SetColor(VJ_Color2Byte(Color(17,6,6,255)))
						bloodeffect:SetScale(125)
						util.Effect("VJ_Blood1",bloodeffect)
		
						local newredead = ents.Create("npc_vj_totu_deimos_redead")
						newredead:SetPos(zombie:GetPos())
						newredead:SetAngles(zombie:GetAngles())
						newredead.ToTU_Weaponized_Redead_Infectee = true
						newredead:Spawn()
						newredead:Activate()

						if zombie:GetActivity() == ACT_SIGNAL2 then
							if math.random(1,3) == 1 then
								newredead:VJ_ACT_PLAYACTIVITY("slumprise_a2",true,false,false)
								AnimTime = VJ_GetSequenceDuration(newredead,"slumprise_a2")
							else
								newredead:VJ_ACT_PLAYACTIVITY("slumprise_a",true,false,false)
								AnimTime = VJ_GetSequenceDuration(newredead,"slumprise_a")
							end
						end

						if zombie:GetActivity() == ACT_SIGNAL3 then	
							newredead:VJ_ACT_PLAYACTIVITY("infectionrise2",true,false,false)
							AnimTime = VJ_GetSequenceDuration(newredead,"infectionrise2")		
						end

						timer.Simple(AnimTime,function() if IsValid(zombie) then

							zombie.HasPoseParameterLooking = true	   
							zombie:DoChangeMovementType(VJ_MOVETYPE_GROUND)
							zombie.LNR_AllowedToStumble = true
							zombie.DisableSelectSchedule = false

						end end)

						zombie:Remove()
					
					end

				end)

			end end)	

			local creator = NULL

			if zombie:IsNPC() then
				creator = IsValid(zombie:GetCreator()) && zombie:GetCreator()
				zombie:SetCollisionBounds(Vector(13,13,72),Vector(-13,-13,0))
			end

			if victim:IsPlayer() then
				if IsValid(victim:GetRagdollEntity()) then
					victim:GetRagdollEntity():Remove()
				end				
			end

		end

	 end)

	if CLIENT then

		net.Receive("VJ_TOTU_LNR_Walker_HUD",function(len,pl)
			local delete = net.ReadBool()
			local ply = net.ReadEntity()
			if
				!IsValid(ply) or
				GetConVar("VJ_TOTU_LNR_ZombieOverlay"):GetInt() == 0
			then
				delete = true
			end
			hook.Add("RenderScreenspaceEffects","VJ_TOTU_LNR_WalkerHUD_Overlay",function()
				local threshold = 0.30
				DrawMaterialOverlay("overlay/walker_vision",threshold)
			end)
			if delete then 
				hook.Remove("RenderScreenspaceEffects","VJ_TOTU_LNR_WalkerHUD_Overlay")
			end
		end)

		net.Receive("VJ_TOTU_LNR_Infected_HUD",function(len,pl)
			local delete = net.ReadBool()
			local ply = net.ReadEntity()
			if
				!IsValid(ply) or
				GetConVar("VJ_TOTU_LNR_ZombieOverlay"):GetInt() == 0
			then
				delete = true
			end
			hook.Add("RenderScreenspaceEffects","VJ_TOTU_LNR_InfectedHUD_Overlay",function()
				local threshold = 0.30
				DrawMaterialOverlay("vj_lnr/overlay/infected_vision",threshold)
			end)
			if delete then
				hook.Remove("RenderScreenspaceEffects","VJ_TOTU_LNR_InfectedHUD_Overlay")
			end
		end)

		net.Receive("VJ_TOTU_LNR_Drowner_HUD",function(len,pl)
			local delete = net.ReadBool()
			local ply = net.ReadEntity()
			if
				!IsValid(ply) or
				GetConVar("VJ_TOTU_LNR_ZombieOverlay"):GetInt() == 0
			then
				delete = true
			end
			hook.Add("RenderScreenspaceEffects","VJ_TOTU_LNR_DrownerHUD_Overlay",function()
				local threshold = 0.30
				DrawMaterialOverlay("vj_lnr/overlay/drowner_vision",threshold)
			end)
			if delete then
				hook.Remove("RenderScreenspaceEffects","VJ_TOTU_LNR_DrownerHUD_Overlay")
			end
		end)

		net.Receive("VJ_TOTU_LNR_InfectionScreenEffect",function()
			local ply = net.ReadEntity()
			local color = Color(75, 0, 0, 255)			
			ply.VJ_TOTU_LNR_InfectionEffect_Time = CurTime() +0.1
			hook.Add("RenderScreenspaceEffects","VJ_TOTU_LNR_InfectionEffect" .. ply:EntIndex(),function()
				if
					!IsValid(ply) or
					IsValid(ply) && (CurTime() > ply.VJ_TOTU_LNR_InfectionEffect_Time)
				then
					hook.Remove("RenderScreenspaceEffects","VJ_TOTU_LNR_InfectionEffect" .. ply:EntIndex())
				return end
				ply:ScreenFade(SCREENFADE.IN, color, 0.5, 0)
			end)
		end)

	end

	if SERVER then
		util.AddNetworkString("VJ_TOTU_LNR_Walker_HUD") 
		util.AddNetworkString("VJ_TOTU_LNR_Infected_HUD") 
		util.AddNetworkString("VJ_TOTU_LNR_Drowner_HUD")
		util.AddNetworkString("VJ_TOTU_LNR_InfectionScreenEffect")
	end

	if SERVER then	
		hook.Add("PlayerSpawn","VJ_TOTU_LNR_PlyInfectionCheck",function(ply)
			if ply.LNR_InfectedVictim then
				ply.LNR_InfectedVictim = false
			end
			if ply.LNR_Walker or ply.LNR_Infected or ply.LNR_Drowner then
				ply.LNR_Walker = false
				ply.LNR_Infected = false
				ply.LNR_Drowner = false
			end
		end)
	end

	local NPC = FindMetaTable("NPC")
	local ENT = FindMetaTable("Entity")
	local Phys = FindMetaTable("PhysObj")

	hook.Add("OnNPCKilled","VJ_ToTU_LNR_Infection_NPC",function(victim,inflictor,attacker)
		VJ_ToTU_LNR_Infect(victim,inflictor,attacker,false)
	end)
	hook.Add("PlayerDeath","VJ_ToTU_LNR_Infection_Player",function(victim,inflictor,attacker)
		VJ_ToTU_LNR_Infect(victim,inflictor,attacker,true)
	end)
---------------------------------------------------------------------------------------------------------------------------------------------
function VJ_ToTU_LNR_InfectionApply(victim,zombie)

	if
		victim.CNCR_InfectedVictim or
		victim.GOTDR_InfectedVictim or
		victim.NMRIHR_InfectedVictim or
		victim.ZPS_InfectedVictim or
		victim:IsNextBot()
	then return end

	local IgnoreHL2Zombies = {
		npc_fastzombie_torso = true,
		npc_zombine = true,
		npc_zombie_torso = true,
		npc_zombie = true,
		npc_poisonzombie = true,
		npc_headcrab_fast = true,
		npc_headcrab_black = true,
		npc_headcrab = true,
		npc_fastzombie = true,
		monster_zombie = true,
		monster_headcrab = true,
		monster_babycrab = true
	}

	if
		GetConVar("VJ_ToTU_LNR_Infection"):GetInt() == 0 or
		victim.IsLNRZombie or
		(
			victim.VJ_NPC_Class && table.HasValue(victim.VJ_NPC_Class,"CLASS_ZOMBIE")
		) or
		IgnoreHL2Zombies[victim:GetClass()] or
		(
			victim.IsVJBaseSNPC && victim.Dead or
			victim.DeathAnimationCodeRan or
			victim.GodMode
		) or
		(
			victim:LookupBone("ValveBiped.Bip01_Pelvis") == nil
		)
	then return end

	if zombie.LNR_Walker then victim.LNR_Walker = true end

	if zombie.LNR_Infected then victim.LNR_Infected = true end

	if zombie.LNR_Drowner then victim.LNR_Drowner = true end

	local victimModel = victim:GetModel()

	victim.LNR_NextCoughT = CurTime() + math.Rand(1,30)

	if GetConVar("VJ_ToTU_LNR_InfectionEffects"):GetInt() == 1 then

		hook.Add("Think","VJ_ToTU_LNR_VictimCough",function()

		if
			!IsValid(victim) or
			!victim.LNR_InfectedVictim or
			(
				victim:IsPlayer() && !victim:Alive()
			) or
			(
				victim:IsPlayer() && victim.IsControlingNPC
			) or 
			(
				victim.IsVJBaseSNPC && victim.Dead or 
				victim.DeathAnimationCodeRan
			)
			then
				hook.Remove("Think","VJ_ToTU_LNR_VictimCough")
		return end

		if CurTime() > victim.LNR_NextCoughT then
			if
				string.find(victimModel,"female") or 
				string.find(victimModel,"alyx") or
				string.find(victimModel,"mossman") or
				string.find(victimModel,"chell")
			then
				VJ_CreateSound(victim,"ambient/voices/cough"..math.random(1,4)..".wav",75,120)
			else
				VJ_CreateSound(victim,"ambient/voices/cough"..math.random(1,4)..".wav",75,100)
			end
			if victim:IsPlayer() then
				net.Start("VJ_ToTU_LNR_InfectionScreenEffect")
				net.WriteEntity(victim)
				net.Send(victim)
			end
			victim.LNR_NextCoughT = CurTime() + math.Rand(1,30)
		end

		end)

	end

	local deaths
	if victim:IsPlayer() then
		deaths = victim:Deaths()
	end

	timer.Simple(math.random(GetConVar("VJ_ToTU_LNR_InfectionTime1"):GetInt(),GetConVar("VJ_ToTU_LNR_InfectionTime2"):GetInt()),function()

		if IsValid(victim) && victim.LNR_InfectedVictim then

			if 
			(
				victim:IsPlayer() && !victim:Alive()
			) or 
			(
				victim:IsPlayer() && victim:Deaths() > deaths
			) or 
			(
				victim:IsPlayer() && victim.IsControlingNPC
			) or 
			(
				victim:IsPlayer() && GetConVar("sbox_godmode"):GetInt() == 1
			) or 
			(
				victim.IsVJBaseSNPC && victim.Dead or 
				victim.DeathAnimationCodeRan or 
				victim.GodMode
			) 
			then 
				victim.LNR_InfectedVictim = false 
			return end

			if victim:IsPlayer() && GetConVar("VJ_ToTU_LNR_PlayerZombie"):GetInt() == 0 then
				victim:Kill()
				VJ_ToTU_LNR_CreateZombie(victim,victim)
			end

			if victim:IsPlayer() && GetConVar("VJ_ToTU_LNR_PlayerZombie"):GetInt() == 1 then
				VJ_ToTU_LNR_SetPlayerZombie(victim,victim)
			end

			if victim:IsNPC() then
				VJ_ToTU_LNR_CreateZombie(victim,victim)
			end

			if GetConVar("VJ_ToTU_LNR_InfectionEffects"):GetInt() == 1 then
				if
					string.find(victimModel,"female") or 
					string.find(victimModel,"alyx") or 
					string.find(victimModel,"mossman") or 
					string.find(victimModel,"chell") 
				then
					VJ_CreateSound(victim,"ambient/voices/citizen_beaten"..math.random(1,5)..".wav",75,120)
				else
					VJ_CreateSound(victim,"ambient/voices/citizen_beaten"..math.random(1,5)..".wav",75,100)
                end
            end

        end

	end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function VJ_ToTU_LNR_Infect(victim,inflictor,attacker,isPlayer)

	if
		GetConVar("VJ_ToTU_LNR_Infection"):GetInt() == 0 or
		(
			victim:LookupBone("ValveBiped.Bip01_Pelvis") == nil
		) or 
		victim:IsNextBot()
		then
	return end

	if !isPlayer then

		if inflictor.LNR_VirusInfection then

			if inflictor == attacker && victim != inflictor then
		  
				if victim.LNR_VictimIsInfected then return end
			   
				victim.LNR_VictimIsInfected = true
			   
				VJ_ToTU_LNR_CreateZombie(victim,inflictor)

			end

		end

	else

		if inflictor.LNR_VirusInfection then
		
			if inflictor == attacker && victim != inflictor then
			
				VJ_ToTU_LNR_CreateZombie(victim,inflictor)
				
			end
			
		end
		
	end
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function VJ_ToTU_LNR_SetPlayerZombie(victim,inflictor,attacker)

	if 
		GetConVar("VJ_ToTU_LNR_Infection"):GetInt() == 0 or 
		GetConVar("VJ_ToTU_LNR_PlayerZombie"):GetInt() == 0 or 
		GetConVar("sbox_godmode"):GetInt() == 1 or 
		victim.IsControlingNPC or 
		(
			victim:LookupBone("ValveBiped.Bip01_Pelvis") == nil
		)
		then
	return end

	local zombie = NULL
	local oldModel = victim:GetModel()
	local oldSkin = victim:GetSkin()
	local oldMaterial = victim:GetMaterial()	
	local oldColor = victim:GetColor() 
	local oldPlayerColor = victim:GetPlayerColor()

	if inflictor.LNR_Walker or victim.LNR_Walker then
		victim.LNR_Infected = false
		victim.LNR_Drowner = false
        -- zombie = ents.Create("npc_vj_totu_lnr_wal_ply")	
        zombie = ents.Create("npc_vj_totu_base_walker")	
	end

    if inflictor.LNR_Infected or victim.LNR_Infected then
		victim.LNR_Walker = false
		victim.LNR_Drowner = false
        -- zombie = ents.Create("npc_vj_totu_lnr_inf_ply")	
        zombie = ents.Create("npc_vj_totu_base_infected")	
	end

	if inflictor.LNR_Drowner or victim.LNR_Drowner then
		victim.LNR_Walker = false
		victim.LNR_Infected = false
		zombie = ents.Create("npc_vj_totu_lnr_drowned_ply")
	end

	zombie:SetPos(victim:GetPos())

	zombie:SetAngles(victim:GetAngles())

	zombie:Spawn()

	zombie:VJ_ToTU_LNR_CreateBoneMerge(zombie,oldModel,oldSkin,oldColor,oldMaterial,oldPlayerColor,victim)

	if !IsValid(SpawnControllerObject) then
	
        local SpawnControllerObject = ents.Create("obj_vj_npccontroller")
		
        SpawnControllerObject.VJCE_Player = victim
		
        SpawnControllerObject:SetControlledNPC(zombie)
		
        SpawnControllerObject:Spawn()
		
        SpawnControllerObject:StartControlling()
		
	end

	-- This fixes an error that would pop up if an SNPC or entity infected more than one enemy at a time
    if zombie.IsVJBaseSNPC && zombie.CurrentPossibleEnemies == nil then
	    zombie.CurrentPossibleEnemies = {} 
	end

	if
		string.find(oldModel,"female") or 
		string.find(oldModel,"alyx") or 
		string.find(oldModel,"mossman") or 
		string.find(oldModel,"chell")
	then

		if zombie.LNR_Walker then
			zombie:ZombieVoice_FemaleWal()		   
		elseif zombie.LNR_Infected then
			zombie:ZombieVoice_FemaleInf()
		elseif zombie.LNR_Drowner then
			zombie:ZombieVoice_FemaleDro()
		end

	end

	if string.find(oldModel,"police") then
		zombie:ZombieVoice_CP()	
	elseif 
		string.find(oldModel,"combine") or
		string.find(oldModel,"zombie_soldier")
	then
		zombie:ZombieVoice_Combine()
	end

	local DeathAnims = {ACT_SIGNAL1,ACT_SIGNAL2,ACT_SIGNAL3}	
	local AnimTime = VJ_GetSequenceDuration(zombie,zombie:GetSequenceName(zombie:GetSequence()))
	  
	zombie:VJ_ACT_PLAYACTIVITY(DeathAnims,true,120,false)
	zombie.LNR_AllowedToStumble = false	
	zombie.GodMode = true
	zombie.CanInvestigate = false
	zombie.HasMeleeAttack = false
	zombie.HasPoseParameterLooking = false
	zombie.DisableFindEnemy = true		
	zombie.DisableMakingSelfEnemyToNPCs = true
	zombie:AddFlags(FL_NOTARGET)
	zombie.MovementType = VJ_MOVETYPE_STATIONARY		
	zombie.CanTurnWhileStationary = false
	zombie.HasSounds = false
	zombie.DisableSelectSchedule = true

	timer.Simple(math.random(GetConVar("VJ_ToTU_LNR_ResurrectionTime1"):GetInt(),GetConVar("VJ_ToTU_LNR_ResurrectionTime2"):GetInt()),function()

		if IsValid(zombie) then

			zombie.GodMode = false
			zombie.CanInvestigate = true
			zombie.HasMeleeAttack = true		
			zombie.DisableFindEnemy = false		
			zombie.DisableMakingSelfEnemyToNPCs = false
			zombie:RemoveFlags(FL_NOTARGET)

			if 
				GetConVar("vj_npc_sd_nosounds"):GetInt() == 0 
			then 
				zombie.HasSounds = true 
			end

			if zombie:GetActivity() == ACT_SIGNAL1 then

				zombie:VJ_ACT_PLAYACTIVITY("infectionrise",true,false,false)
				AnimTime = VJ_GetSequenceDuration(zombie,"infectionrise")		

			elseif zombie:GetActivity() == ACT_SIGNAL2 then

				zombie:VJ_ACT_PLAYACTIVITY("slumprise_a",true,false,false)
				AnimTime = VJ_GetSequenceDuration(zombie,"slumprise_a")
		  
				if zombie:GetActivity() == ACT_SIGNAL2 && math.random(1,3) == 1 then
					zombie:VJ_ACT_PLAYACTIVITY("slumprise_a2",true,false,false)
					AnimTime = VJ_GetSequenceDuration(zombie,"slumprise_a2")			
				end

			elseif zombie:GetActivity() == ACT_SIGNAL3 then

				zombie:VJ_ACT_PLAYACTIVITY("infectionrise2",true,false,false)
				AnimTime = VJ_GetSequenceDuration(zombie,"infectionrise2")

			end

			if GetConVar("vj_npc_noidleparticle"):GetInt() == 0 && GetConVar("VJ_ToTU_LNR_Eyes"):GetInt() == 1 then

				for i = 1,2 do

					local att = i == 2 && "eye1" or "eye2"	
					local EyeGlow = ents.Create("env_sprite")			
					EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
					EyeGlow:SetKeyValue("scale","0.02")
					EyeGlow:SetKeyValue("rendermode","5")
					if
						zombie:GetClass() == "npc_vj_totu_lnr_inf" or
						zombie:GetClass() == "npc_vj_totu_lnr_inf_ply"
					then
						EyeGlow:SetKeyValue("rendercolor","255 0 0")
					end
					if
						zombie:GetClass() == "npc_vj_totu_lnr_drowned" or
						zombie:GetClass() == "npc_vj_totu_lnr_drowned_ply"
					then
						EyeGlow:SetKeyValue("rendercolor","0 255 255 255")
					end	
					if
						zombie:GetClass() == "npc_vj_totu_lnr_wal" or
						zombie:GetClass() == "npc_vj_totu_lnr_wal_ply"
					then
						EyeGlow:SetKeyValue("rendercolor","255 255 0 255")
					end
					EyeGlow:SetKeyValue("spawnflags","1") 
					EyeGlow:SetParent(zombie)
					EyeGlow:Fire("SetParentAttachment",att,0)
					EyeGlow:Spawn()
					EyeGlow:Activate()
					zombie:DeleteOnRemove(EyeGlow)

				end

			end

			timer.Simple(AnimTime,function()
			
				if IsValid(zombie) then 
					zombie.HasPoseParameterLooking = true	   
					zombie:DoChangeMovementType(VJ_MOVETYPE_GROUND)
					if
						zombie:GetClass() == "npc_vj_totu_lnr_drowned" or
						zombie:GetClass() == "npc_vj_totu_lnr_drowned_ply"
					then
						zombie:DoChangeMovementType(VJ_MOVETYPE_AQUATIC)
					end
					zombie.LNR_AllowedToStumble = true
					zombie.DisableSelectSchedule = false		 
				end

			end)

        end

    end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function VJ_ToTU_LNR_CreateZombie(victim,inflictor)

	 local findPos = victim:GetPos()
	 local findMDL = victim:GetModel()
	 timer.Simple(0.01,function()
		for _,v in pairs(ents.FindInSphere(findPos,75)) do
			if v:GetClass() == "prop_ragdoll" && v:GetModel() == findMDL then
				v:Remove()
			end
		end
	end)

	local zombie = NULL 
	local sndTbl = nil
	local oldModel = victim:GetModel()
	local oldSkin = victim:GetSkin()
	local oldMaterial = victim:GetMaterial()	
	local oldColor = victim:GetColor()

	if victim.GetPlayerColor && victim:GetPlayerColor() then  
		oldPlayerColor = victim:GetPlayerColor()
	else
		oldPlayerColor = false
	end

	local DefaultFootSteps = {
			"npc/metropolice/gear1.wav",
			"npc/metropolice/gear2.wav",
			"npc/metropolice/gear3.wav",
			"npc/metropolice/gear4.wav",
			"npc/metropolice/gear5.wav",
			"npc/metropolice/gear6.wav"
		}

	if victim.SoundTbl_FootStep && #victim.SoundTbl_FootStep > 0 then
		sndTbl = victim.SoundTbl_FootStep
	else
		if victim.IsVJBaseSNPC_Human && !VJ_PICK(victim.SoundTbl_FootStep) then
			sndTbl = DefaultFootSteps
		end
	end

	if victim:IsNPC() or victim:IsPlayer() then
		if inflictor.LNR_Walker or victim.LNR_Walker then
		    victim.LNR_Infected = false
			victim.LNR_Drowner = false
            zombie = ents.Create("npc_vj_totu_lnr_wal")
			if victim:IsPlayer() then
				zombie = ents.Create("npc_vj_totu_lnr_wal_ply")
			end
		end
        if inflictor.LNR_Infected or victim.LNR_Infected then
		    victim.LNR_Walker = false
			victim.LNR_Drowner = false
            zombie = ents.Create("npc_vj_totu_lnr_inf")
			if victim:IsPlayer() then
				zombie = ents.Create("npc_vj_totu_lnr_inf_ply")
			end
		end
		if inflictor.LNR_Drowner or victim.LNR_Drowner then
		    victim.LNR_Walker = false
		    victim.LNR_Infected = false
            zombie = ents.Create("npc_vj_totu_lnr_drowned")
			if victim:IsPlayer() then
				zombie = ents.Create("npc_vj_totu_lnr_drowned_ply")
			end
		end
		zombie:SetPos(victim:GetPos())
		zombie:SetAngles(victim:GetAngles())
		zombie:Spawn()
		undo.ReplaceEntity(victim,zombie)			
		zombie:VJ_ToTU_LNR_CreateBoneMerge(zombie,oldModel,oldSkin,oldColor,oldMaterial,oldPlayerColor,victim)	
	end

	if sndTbl then
		zombie.SoundTbl_FootStep = sndTbl
	end
	-- This fixes an error that would pop up if an SNPC or entity infected more than one enemy at a time
	if zombie.IsVJBaseSNPC && zombie.CurrentPossibleEnemies == nil then
		zombie.CurrentPossibleEnemies = {} 
	end

	if
		string.find(oldModel,"female") or
		string.find(oldModel,"alyx") or
		string.find(oldModel,"mossman") or
		string.find(oldModel,"chell")
	then
		zombie:ZombieSounds_GiveDefault_Female()
	end

	if string.find(oldModel,"police") then
		zombie:ZombieSounds_Custom_MaskBoi()	
	elseif string.find(oldModel,"combine") or string.find(oldModel,"zombie_soldier") then
		zombie:ZombieSounds_Custom_RadioCuntFuq()
	end

	local DeathAnims = {ACT_SIGNAL1,ACT_SIGNAL2,ACT_SIGNAL3}	
	local AnimTime = VJ_GetSequenceDuration(zombie,zombie:GetSequenceName(zombie:GetSequence()))
	  
	zombie:VJ_ACT_PLAYACTIVITY(DeathAnims,true,120,false)
	zombie.LNR_AllowedToStumble = false		
	zombie.GodMode = true
	zombie.CanInvestigate = false
	zombie.HasPoseParameterLooking = false
	zombie.DisableFindEnemy = true		
	zombie.DisableMakingSelfEnemyToNPCs = true
	zombie:AddFlags(FL_NOTARGET)
	zombie.MovementType = VJ_MOVETYPE_STATIONARY		
	zombie.CanTurnWhileStationary = false
	zombie.HasSounds = false
	zombie.DisableSelectSchedule = true

	timer.Simple(math.random(GetConVar("VJ_ToTU_LNR_ResurrectionTime1"):GetInt(),GetConVar("VJ_ToTU_LNR_ResurrectionTime2"):GetInt()),function()

		if IsValid(zombie) then	

			zombie.GodMode = false
			zombie.CanInvestigate = true		
			zombie.DisableFindEnemy = false		
			zombie.DisableMakingSelfEnemyToNPCs = false
			zombie:RemoveFlags(FL_NOTARGET)

			if GetConVar("vj_npc_sd_nosounds"):GetInt() == 0 then zombie.HasSounds = true end

			if zombie:GetActivity() == ACT_SIGNAL1 then

				zombie:VJ_ACT_PLAYACTIVITY("infectionrise",true,false,false)
				AnimTime = VJ_GetSequenceDuration(zombie,"infectionrise")

			elseif zombie:GetActivity() == ACT_SIGNAL2 then

				zombie:VJ_ACT_PLAYACTIVITY("slumprise_a",true,false,false)
				AnimTime = VJ_GetSequenceDuration(zombie,"slumprise_a")

				if zombie:GetActivity() == ACT_SIGNAL2 && math.random(1,3) == 1 then
					zombie:VJ_ACT_PLAYACTIVITY("slumprise_a2",true,false,false)
					AnimTime = VJ_GetSequenceDuration(zombie,"slumprise_a2")
				end

			elseif zombie:GetActivity() == ACT_SIGNAL3 then

				zombie:VJ_ACT_PLAYACTIVITY("infectionrise2",true,false,false)
				AnimTime = VJ_GetSequenceDuration(zombie,"infectionrise2")
				
			end

			if GetConVar("vj_npc_noidleparticle"):GetInt() == 0 && GetConVar("VJ_ToTU_LNR_Eyes"):GetInt() == 1 then

				for i = 1,2 do
					local att = i == 2 && "eye1" or "eye2"	
					local EyeGlow = ents.Create("env_sprite")			
					EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
					EyeGlow:SetKeyValue("scale","0.02")
					EyeGlow:SetKeyValue("rendermode","5")
					if
						zombie:GetClass() == "npc_vj_totu_lnr_inf" or
						zombie:GetClass() == "npc_vj_totu_lnr_inf_ply"
					then
						EyeGlow:SetKeyValue("rendercolor","255 0 0")
					end
					if
						zombie:GetClass() == "npc_vj_totu_lnr_drowned" or
						zombie:GetClass() == "npc_vj_totu_lnr_drowned_ply"
					then
						EyeGlow:SetKeyValue("rendercolor","0 255 255 255")
					end	
					if
						zombie:GetClass() == "npc_vj_totu_lnr_wal" or
						zombie:GetClass() == "npc_vj_totu_lnr_wal_ply"
					then
						EyeGlow:SetKeyValue("rendercolor","255 255 0 255")
					end
					EyeGlow:SetKeyValue("spawnflags","1") 
					EyeGlow:SetParent(zombie)
					EyeGlow:Fire("SetParentAttachment",att,0)
					EyeGlow:Spawn()
					EyeGlow:Activate()
					zombie:DeleteOnRemove(EyeGlow)	
				end
			end

		   timer.Simple(AnimTime,function()
				if IsValid(zombie) then 
					zombie.HasPoseParameterLooking = true	   
					zombie:DoChangeMovementType(VJ_MOVETYPE_GROUND)
				if
					zombie:GetClass() == "npc_vj_totu_lnr_drowned" or
					zombie:GetClass() == "npc_vj_totu_lnr_drowned_ply"
				then
					zombie:DoChangeMovementType(VJ_MOVETYPE_AQUATIC)
				end
				zombie.LNR_AllowedToStumble = true
				zombie.DisableSelectSchedule = false		 
				end	
			end)

		end

	end)

	if victim.IsVJBaseSNPC then
		victim.HasDeathRagdoll = false
		victim.HasDeathAnimation = false				
	end

	if victim:IsPlayer() then
		if IsValid(victim:GetRagdollEntity()) then
			SafeRemoveEntity(victim:GetRagdollEntity())
		end
	end

	if victim:IsNPC() then
		SafeRemoveEntity(victim)	
	end

	if IsValid(victim:GetActiveWeapon()) then
		SafeRemoveEntity(victim:GetActiveWeapon())			
	end
	
    end
	
-- end				
---------------------------------------------------------------------------------------------------------------------------------------------
/*
if SERVER then
function ENT:VJ_ToTU_LNR_CreateBoneMerge(zombieEnt,oldModel,oldSkin,oldColor,oldMaterial,oldPlayerColor,bgEnt)

	 local creator = NULL

	if zombieEnt:IsNPC() && !zombieEnt.LNR_Crawler then
		creator = IsValid(zombieEnt:GetCreator()) && zombieEnt:GetCreator()
		zombieEnt:SetCollisionBounds(zombieEnt:GetCollisionBounds())				
	end

	local body = ents.Create("vj_totu_lnr_infection")
	body:SetModel(oldModel)
	body:SetPos(zombieEnt:GetPos())
	body:SetAngles(zombieEnt:GetAngles())
	body.VJ_Owner = zombieEnt
	body:Spawn()			
	body:SetParent(zombieEnt)
	body:SetSkin(oldSkin)
	body:SetColor(oldColor)
	body:SetMaterial(oldMaterial)
	
	if	oldPlayerColor != false then
		body:SetPlayerColor(oldPlayerColor)
	else
		body:SetPlayerColor(Color(61,87,105):ToVector())
	end

	if IsValid(bgEnt) then
		for i = 0, body:GetNumBodyGroups() -1 do
			body:SetBodygroup(i,bgEnt:GetBodygroup(i))
		end	
	end

	zombieEnt.Bonemerge = body
		
end
end
*/
---------------------------------------------------------------------------------------------------------------------------------------------


-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
	AddCSLuaFile(AutorunFile)
	VJ.AddAddonProperty(AddonName,AddonType)
else
	if (CLIENT) then
		chat.AddText(Color(0,200,200),PublicAddonName,
		Color(0,255,0)," was unable to install, you are missing ",
		Color(255,100,0),"VJ Base!")
	end
	timer.Simple(1,function()
		if not VJF then
			if (CLIENT) then
				VJF = vgui.Create("DFrame")
				VJF:SetTitle("ERROR!")
				VJF:SetSize(790,560)
				VJF:SetPos((ScrW()-VJF:GetWide())/2,(ScrH()-VJF:GetTall())/2)
				VJF:MakePopup()
				VJF.Paint = function()
					draw.RoundedBox(8,0,0,VJF:GetWide(),VJF:GetTall(),Color(200,0,0,150))
				end
				
				local VJURL = vgui.Create("DHTML",VJF)
				VJURL:SetPos(VJF:GetWide()*0.005, VJF:GetTall()*0.03)
				VJURL:Dock(FILL)
				VJURL:SetAllowLua(true)
				VJURL:OpenURL("https://sites.google.com/site/vrejgaming/vjbasemissing")
			elseif (SERVER) then
				timer.Create("VJBASEMissing",5,0,function() print("VJ Base is Missing! Download it from the workshop!") end)
			end
		end
	end)
end