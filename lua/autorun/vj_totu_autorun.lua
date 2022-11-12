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
local AutorunFile = "autorun/vj_lnrhl2_autorun.lua"
-------------------------------------------------------
local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")
local LNRHL2Exists = file.Exists("lua/autorun/vj_lnrhl2_autorun.lua","GAME")
local LNRSpecialsExists = file.Exists("lua/autorun/vj_lnrspecials_autorun.lua","GAME")

if VJExists == true then
if LNRHL2Exists == true then
-- /*
if LNRSpecialsExists == false then
		if CLIENT then
				local teal = Color(0,255,255)
				local yellow = Color(255,255,0)
				local red = Color(255,0,0)
				local white = Color(255,255,255)
				local green = Color(33,255,0)
				timer.Simple(10,function()
					chat.AddText(teal,"== Terrors of The Unexplored ==")
					chat.AddText(red,"Lethal Necrotics Reanimated: Specials is not installed!")
					chat.AddText(red,"You will experience missing textures because of this.")
					chat.AddText(white,"To fix this, install the Specials Pack.")
					chat.AddText(green,"Specials Pack Download:")
					chat.AddText(white,"https://steamcommunity.com/sharedfiles/filedetails/?id=1887964505")
					chat.AddText(teal,"======================")
					local fiddlesticks = CreateSound(game.GetWorld(), "vo/k_lab/kl_ohdear.wav")
					fiddlesticks:SetSoundLevel(0)
					fiddlesticks:Play()
				end)
			end
		end
-- */
		
	include('autorun/vj_controls.lua')
	
	if SERVER then
		resource.AddWorkshop("1879776316") -- Base LNR addon (HL2)
		resource.AddWorkshop("1887964505") -- Specials Pack
	end
	
	local vCat = "Lethal Necrotics: Terrors of The Unexplored"
	-- VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored", {Icon = "icons/totu_icon.png"})
	-- VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored", {Icon = "icons/icon_new_16.png"})
	-- VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored", {Icon = "icons/icon_new_32.png"})
	-- VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored", {Icon = "icons/icon_new_64.png"})
	-- VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored", {Icon = "icons/icon_new_128.png"})
	-- VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored", {Icon = "icons/icon_new_256.png"})
	VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored", {Icon = "icons/symbolv3.png"})
	-- local vCat2 = "Lethal Necrotics: Terrors of The Unexplored - Misc & Spawners"
	-- VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Misc & Spawners", {Icon = "icons/totu_icon.png"})
	
	/*
	ask doofus if he can tweak the stalker idles so the left arm doesn't clip through the left leg
	
	sounds to add into the pack
	- css knife slash/stab
	- l4d shove sounds
	- l4d tank sounds
	- css helmet/kevlar hit sounds
	
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
		Smog
		Laticauda
	Unsure
		Meathead
		Cloaker (Walker)
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
		Carcass
		Carcass Torso
		Cazador
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
		
		Original Zombie - FoV Name
		
		Juggernaut - Skullcrusher
		Bulldozer  - Wrath
		Ghost      - Novistador
		Squaller   - Grief
		
		
		Todo:

		- Add cripple support for all current zombies
		- make it so ghosts cloak device is only broken if you hit the chest?
		- make it so detonators don't have itemdrops
		- add og gasmask sounds
		
		- add needed sounds
		* css knife slash/stab
		* l4d shove sounds
		* l4d tank sounds
		* css helmet/kevlar hit sounds
		* nightkin sounds
	
		- try giving milzombs the gibbed head thing from nh2 zombs
		- experiment with walker varient of ghost
		- add fast zombie leap attack animations
		- add ghost leap attack fnaf jumpscare egg
		- add detonator serious sam kamikaze sound easter egg
		- Make sure all convars work
		- Get non-working convars working
		- add tf2 headshot + fire death animations?
		- scientist carcass can do a zombine and pull out a virus vile?
		- give carcass zombine run animations
		- proofread convar descriptions, update if needed
		- make it so emp's and shit can short cirquit detonator bombs and ghost cloak devices
		- make it so detonators can attack and break apart barricades
		- experiment with removing the ci proportions thing from hunter and with animations to see if they look better
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
		
		
		- add some kinda in-game manual thing that tells info about zombies?
		- horde mentality?
		* if enough zombies are near eachother, they'll start moving faster
		
		nightkin
		- add sitting/lying behavior
		- finish cutting up howler sounds for shrieker
		- get sounds in
		- decomp original model for skin stuff
		* https://steamcommunity.com/sharedfiles/filedetails/?id=257870201&searchtext=feeder
		
		- add warks hla zomb anims for degenerate
		
		- add some kind of big zombie in a juggernaut suit?
		* lies on the floor for a sec if kicked over, then sluggishly gets back up
		* super tanky but walker only(?) and cannot run or can run short distances then gets tired + falls over if he misses an attack
		* name ideas: Oppressor, Shellback, Turtle
		
		- make sure all zombs have controller support
		
		- add snowy versions of milzombs
		- names
		* Snowgrunt
		* Iceberg Juggernaut
		* Snowdozer
		
		- worker zombs
		* Roughneck (basic zomb)
		* Sledgehammer (big guy)
		* Jackhammer (big guy but runs)
		* Foreman (summons help like shriekers)
		give the sledgehammer a fucking brick as a weapon and also make it throw bricks
		add seperate right hand only ci melee anims for this
		
		- backwoods zombies
		* commons in stuff like overalls/flannels/generic countryside clothing
		* monster boys (call them wendigos)
		
		- reconsider flora idea?
		* ghille zombie who lays there until something gets near
		* gets up and attacks when target's near
		
		convars to do
		- squaller iron will chance
		- squallers having iron will
		- shrieker spawn frequency
		
		
		leg hp calculation
		zombie health divided by 5 = leg hp
		
	*/
	
	
	
	/*
	VJ.AddNPC("Creeper","npc_vj_totu_creeper",vCat)
	real tall dude
	make it look like a tree and all mossy and stuff
	slow boi
	*/
	
	-- Uncategorized
		VJ.AddNPC("Base Walker","npc_vj_totu_base_walker",vCat)
		VJ.AddNPC("Base Infected","npc_vj_totu_base_infected",vCat)
		-- VJ.AddNPC("Base C-Strain Gunner Zombie Guy Dude Thing","npc_vj_totu_base_cstrain",vCat)
	
	-- Military
		VJ.AddNPC("Grunt (Walker)","npc_vj_totu_milzomb_walker",vCat)
		VJ.AddNPC("Grunt (Infected)","npc_vj_totu_milzomb_infected",vCat)
		VJ.AddNPC("Juggernaut","npc_vj_totu_milzomb_juggernaut",vCat)
		VJ.AddNPC("Bulldozer","npc_vj_totu_milzomb_bulldozer",vCat)
		VJ.AddNPC("Ghost","npc_vj_totu_milzomb_ghost",vCat)
		VJ.AddNPC("Detonator","npc_vj_totu_milzomb_detonator",vCat)
		VJ.AddNPC("Bulk Detonator","npc_vj_totu_milzomb_detonator_bulk",vCat)
	
	-- Nightkin
		VJ.AddNPC("Scragg","npc_vj_totu_nightkin_scragg",vCat)
		VJ.AddNPC("Skitter","npc_vj_totu_nightkin_skitter",vCat)
		
		VJ.AddNPC("Squaller","npc_vj_totu_nightkin_squaller",vCat)
		-- edit texture to have blood tear streaks
		-- have them beat the shit out of corpses that arnt kin?
		-- mourn corpses of kin
		-- mudguy run for a bit after being crippled but then do walker cripple business afterward
		
		VJ.AddNPC("Shrieker","npc_vj_totu_nightkin_shrieker",vCat)
		-- edit texture to make throat look all worn out
		
	-- Weaponized/Lab Specimens
		-- VJ.AddNPC("Drone","npc_vj_totu_weaponized_drone",vCat) -- stinky
		-- VJ.AddNPC("Razor","npc_vj_totu_weaponized_razor",vCat)
		-- VJ.AddNPC("Sentinel","npc_vj_totu_weaponized_sentinel",vCat)
		-- VJ.AddNPC("Peacekeeper","npc_vj_totu_weaponized_peacekeeper",vCat)
		-- VJ.AddNPC("Carcass","npc_vj_totu_weaponized_carcass",vCat)
		-- VJ.AddNPC("Cazador","npc_vj_totu_weaponized_cazador",vCat)
		-- VJ.AddNPC("Cyst","npc_vj_totu_weaponized_cyst",vCat)
		-- VJ.AddNPC("Cancer","npc_vj_totu_weaponized_cancer",vCat)
		-- VJ.AddNPC("Revenant","npc_vj_totu_weaponized_revenant",vCat)
		
	-- Spawners
		VJ.AddNPC("Spawner","sent_vj_totu_spawner",vCat)
		VJ.AddNPC("Spawner (Nightkin)","sent_vj_totu_spawner_nightkin",vCat)
		VJ.AddNPC("Spawner (MilZombs)","sent_vj_totu_spawner_milzombs",vCat)
	
	
	--Zombies
		--No Specific Area
			-- VJ.AddNPC("Degenerate","npc_vj_ln_totu_degenerate",vCat)
			-- VJ.AddNPC("Exploder (Walker)","npc_vj_ln_totu_exploder_walker",vCat)
			-- VJ.AddNPC("Exploder (Infected)","npc_vj_ln_totu_exploder_infected",vCat)
			-- VJ.AddNPC("Alternate","npc_vj_ln_totu_alternate",vCat)
			-- VJ.AddNPC("Ghoul","npc_vj_ln_totu_ghoul",vCat)
			-- VJ.AddNPC("Siren","npc_vj_ln_totu_siren",vCat)
			-- VJ.AddNPC("Fiend","npc_vj_ln_totu_fiend",vCat) -- Rename to Demon
			-- VJ.AddNPC("Well-Dressed Zombie","npc_vj_ln_totu_pvz",vCat2)
			-- VJ.AddNPC("Inanimatum Vas","npc_vj_ln_totu_iv",vCat2) -- Rename to Ambient Vessel
			-- VJ.AddNPC("[[Number 1 Rated Salesman1997]]","npc_vj_ln_totu_kromer",vCat2)
			-- VJ.AddNPC("Bubbler/Chelonioidea (Old Version)","npc_vj_ln_totu_bubbler_old",vCat2)
	

						
			
		--Coastline/Aquatic
			-- VJ.AddNPC("Chelonioidea","npc_vj_ln_totu_chelonioidea",vCat)
			-- VJ.AddNPC("Flounder","npc_vj_ln_totu_flounder",vCat)
			-- VJ.AddNPC("Laticauda","npc_vj_ln_totu_laticauda",vCat)
			
			-- VJ.AddNPC("Whale","npc_vj_ln_totu_whale",vCat)
			
			-- VJ.AddNPC("Megalodon","npc_vj_ln_totu_megalodon",vCat)
			-- VJ.AddNPC("Gavialidae","npc_vj_ln_totu_gavialidae",vCat)

		--Countryside
			-- VJ.AddNPC("Pest","npc_vj_ln_totu_pest",vCat)
			-- VJ.AddNPC("Fleshpound","npc_vj_ln_totu_fleshpound",vCat)
			-- VJ.AddNPC("Swarm","npc_vj_ln_totu_swarm",vCat)
			-- VJ.AddNPC("Hive","npc_vj_ln_totu_hive",vCat)
			
			-- VJ.AddNPC("Meathead","npc_vj_ln_totu_meathead",vCat)
			-- VJ.AddNPC("Verdugo","npc_vj_ln_totu_verdugo",vCat)
	
			-- VJ.AddNPC("Goliath","npc_vj_ln_totu_goliath",vCat)
			-- VJ.AddNPC("Behemoth","npc_vj_ln_totu_behemoth",vCat)
	
		--Residential
			-- VJ.AddNPC("Feedback","npc_vj_ln_totu_feedback",vCat)
			-- VJ.AddNPC("Fumigator","npc_vj_ln_totu_fumigator",vCat)
	
		--Weaponized
			-- VJ.AddNPC("Preserved Walker","npc_vj_ln_totu_preservedwalker",vCat)
			-- VJ.AddNPC("Regenerator","npc_vj_ln_totu_regenerator",vCat)
			-- VJ.AddNPC("Revenant","npc_vj_ln_totu_revenant",vCat)
			-- VJ.AddNPC("Carcass","npc_vj_ln_totu_carcass",vCat)
			-- VJ.AddNPC("Carcass Torso","npc_vj_ln_totu_carcass_torso",vCat)
			-- VJ.AddNPC("Cazador","npc_vj_ln_totu_cazador",vCat)
			-- VJ.AddNPC("Novistador","npc_vj_ln_totu_novistador",vCat)

			-- VJ.AddNPC("Smog","npc_vj_ln_totu_smog",vCat)
			-- VJ.AddNPC("Smog (Allied)","npc_vj_ln_totu_smog_friendly",vCat)
			-- VJ.AddNPC("Apollyon","npc_vj_ln_totu_apollyon",vCat)
			
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
	
	-- add these convars
	-- leg hp scales with difficulty
	-- zombies can mutate at all
	-- zombies can mutate when not possessed
	
	
	local AddConvars = {}
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
	AddConvars["VJ_ToTU_MilZ_Gasmasks_OriginalSounds"] = 0
	AddConvars["VJ_ToTU_MilZ_Det_Sounds"] = 0
	AddConvars["VJ_ToTU_MilZ_Bull_Voice"] = 0
	AddConvars["VJ_ToTU_General_EasterEggs"] = 1
	AddConvars["VJ_ToTU_MilZ_Ghost_Cloak_Health"] = 100
	AddConvars["VJ_ToTU_MilZ_Ghost_Cloak_Recharge"] = 1
	AddConvars["VJ_ToTU_MilZ_Ghost_Cloak_Recharge_RunWhileCharging"] = 1
	
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
	local vj_resetbutton = {Options = {}, CVars = {}, Label = "Reset Everything:", MenuButton = "0"}
		vj_resetbutton.Options["#vjbase.menugeneral.default"] = { 
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
			VJ_ToTU_MilZ_Gasmasks_OriginalSounds = "0",
			VJ_ToTU_MilZ_Det_Sounds = "0",
			VJ_ToTU_MilZ_Bull_Voice = "0",
			VJ_ToTU_General_EasterEggs = "1",
			VJ_ToTU_MilZ_Ghost_Cloak_Health = "100",
			VJ_ToTU_MilZ_Ghost_Cloak_Recharge = "1",
			VJ_ToTU_MilZ_Ghost_Cloak_Recharge_RunWhileCharging = "1",
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
	
	Panel:AddControl("Slider", {Label = "", Command = "", Min = 0, Max = 100})

	local example_combobox = {Options = {}, CVars = {}, Label = "", MenuButton = "0"}
	example_combobox.Options["Default"] = {convar_name = 1}
	example_combobox.Options["Option 1"] = {convar_name = 2}
	example_combobox.Options["Option 2"] = {convar_name = 3}
	Panel:AddControl("ComboBox", example_combobox)
	
	Panel:ControlHelp("")
	
	*/
	
	Panel:AddControl("ComboBox", vj_resetbutton)
	
	Panel:AddControl("Checkbox", {Label = "Enable Easter Eggs?", Command = "VJ_ToTU_General_EasterEggs"})
	
	Panel:AddControl("Checkbox", {Label = "Allow Dig-Outs Everywhere?", Command = "VJ_ToTU_Spawn_UniversalDig"})
	Panel:ControlHelp("If enabled, zombies can do dig-out animations no matter what the ground type is.")
	Panel:ControlHelp("If disabled, zombies can only do dig-out animations on 'soft' ground like dirt and sand.")
	
	Panel:AddControl("Slider", {Label = "Dig-Out Chance?", Command = "VJ_ToTU_Spawn_DigChance", Min = 1, Max = 100})
	Panel:ControlHelp("Chance that a zombie will dig out of the ground when spawned.")
	Panel:ControlHelp("Default chance is 5.")
	
	Panel:AddControl("Checkbox", {Label = "Alert Sound On Dig-Out?", Command = "VJ_ToTU_Spawn_AlertSound"})
	Panel:ControlHelp("If enabled, zombies will play an alert sound when they dig out, regardless if they have a target or not.")
	
	Panel:AddControl("Checkbox", {Label = "Allow Moving Death Animations?", Command = "VJ_ToTU_General_MovingDeathAnimations"})
	Panel:ControlHelp("If disabled, zombies can only use stationary death animations.")
	Panel:ControlHelp("Added because of a strange issue I experienced in the Horde gamemode.")
	Panel:ControlHelp("It didn't fix it, but I thought I might as well keep this since it was already set up.")
	
	Panel:AddControl("Checkbox", {Label = "Leg Health Scales With Difficulty?", Command = "VJ_ToTU_General_LegHealthScalesWithDifficulty"})
	Panel:ControlHelp("If enabled, zombie leg health will change depending on LNR Difficulty.")
	
	/*
	Panel:AddControl("Checkbox", {Label = "Enable Realism Mode?", Command = "VJ_ToTU_General_RealismMode"})
	Panel:ControlHelp("Realism Mode changes things with zombies in an attempt to make things more realistic.")
	Panel:ControlHelp("Realism Mode changes the following:")
	Panel:ControlHelp("- All Military Zombies will have their armor tweaked to act more realistically (based on discussion with friends who know things about military armor)")
	*/
	
	Panel:AddControl("Slider", {Label = "Crawler Spawn Chance?", Command = "VJ_ToTU_General_Crawler_Chance", Min = 1, Max = 100})
	Panel:ControlHelp("Chance that a zombie will spawn as a crawler.")
	Panel:ControlHelp("Default chance is 5.")
	
	Panel:AddControl("Slider", {Label = "Runner Spawn Chance?", Command = "VJ_ToTU_General_Runners_Chance", Min = 1, Max = 100})
	Panel:ControlHelp("Chance that a walker will spawn as a runner.")
	Panel:ControlHelp("Default chance is 3.")
	
	Panel:AddControl("Slider", {Label = "Super Sprinter Spawn Chance?", Command = "VJ_ToTU_General_SuperSprinters_Chance", Min = 1, Max = 100})
	Panel:ControlHelp("Chance that an infected will spawn as a super sprinter.")
	Panel:ControlHelp("Default chance is 3.")
	
	Panel:AddControl("Checkbox", {Label = "Allow Rushers?", Command = "VJ_ToTU_General_Rushers_Allow"})
	Panel:ControlHelp("If enabled, infected have a chance to spawn as a rusher.")
	Panel:ControlHelp("That basically means they will use L4D common infected running animations.")
	Panel:ControlHelp("They are quite fast.")
	Panel:ControlHelp("This convar idea was brought to you by Lacrinimo.")
	
	Panel:AddControl("Slider", {Label = "Rusher Spawn Chance?", Command = "VJ_ToTU_General_Rushers_Chance", Min = 1, Max = 100})
	Panel:ControlHelp("Chance that an infected will spawn as a rusher.")
	Panel:ControlHelp("Default chance is 5.")
	
	Panel:AddControl("Checkbox", {Label = "Zombies Can Only Jump Down?", Command = "VJ_ToTU_General_Jump_DownOnly"})
	Panel:ControlHelp("If enabled, zombies cannot jump upwards, but can still jump downwards.")
	
	Panel:AddControl("Checkbox", {Label = "Allow Armor?", Command = "VJ_ToTU_General_Armor_Allow"})
	Panel:ControlHelp("If enabled, certain zombies will have working armor.")
	
	/*
	Panel:AddControl("Checkbox", {Label = "Zombies Can Eat?", Command = "VJ_ToTU_General_CanEat"})
	Panel:ControlHelp("If enabled, zombies will sometimes chew on corpses.")
	
	Panel:AddControl("Checkbox", {Label = "Zombies Can Eat Gibs?", Command = "VJ_ToTU_General_CanEat_Gibs"})
	Panel:ControlHelp("If enabled, zombies will also be allowed to eat gibs.")
	*/
	
	Panel:AddControl("Checkbox", {Label = "Military Zombies Can Have Gasmasks?", Command = "VJ_ToTU_MilZ_Gasmasks_Allow"})
	Panel:ControlHelp("If enabled, Grunts can sometimes spawn with grenades.")
	
	Panel:AddControl("Slider", {Label = "Gasmask Spawn Chance?", Command = "VJ_ToTU_MilZ_Gasmasks_Chance", Min = 1, Max = 100})
	Panel:ControlHelp("Chance that a Military Zombie will spawn with a gasmask.")
	Panel:ControlHelp("Default chance is 3.")
	
	local combobox_milzgmasksounds = {Options = {}, CVars = {}, Label = "Gasmask Sounds?", MenuButton = "0"}
	combobox_milzgmasksounds.Options["NH2 Security (New Sounds)"] = {VJ_ToTU_MilZ_Gasmasks_OriginalSounds = 0}
	combobox_milzgmasksounds.Options["DL Gas Tanks (Original Sounds)"] = {VJ_ToTU_MilZ_Gasmasks_OriginalSounds = 1}
	combobox_milzgmasksounds.Options["Both"] = {VJ_ToTU_MilZ_Gasmasks_OriginalSounds = 2}
	Panel:AddControl("ComboBox", combobox_milzgmasksounds)
	
	Panel:AddControl("Checkbox", {Label = "Military Zombies Can Have Flak Armor?", Command = "VJ_ToTU_MilZ_FlakArmor_Allow"})
	Panel:ControlHelp("If enabled, Grunts can sometimes spawn with flak armor.")
	Panel:ControlHelp("Flak armor provides protection against explosive damage, aswell as a small bit of limb protection.")
	
	Panel:AddControl("Slider", {Label = "Flak Armor Spawn Chance?", Command = "VJ_ToTU_MilZ_FlakArmor_Chance", Min = 1, Max = 100})
	Panel:ControlHelp("Chance that a Military Zombie will spawn with flak armor.")
	Panel:ControlHelp("Default chance is 4.")
	
	local combobox_milzweps = {Options = {}, CVars = {}, Label = "Grunt Weaponry?", MenuButton = "0"}
	combobox_milzweps.Options["Nothing"] = {VJ_ToTU_MilZ_Weapons = 0}
	combobox_milzweps.Options["Knives and Guns"] = {VJ_ToTU_MilZ_Weapons = 1}
	combobox_milzweps.Options["Knives only"] = {VJ_ToTU_MilZ_Weapons = 2}
	combobox_milzweps.Options["Guns only"] = {VJ_ToTU_MilZ_Weapons = 3}
	Panel:AddControl("ComboBox", combobox_milzweps)
	
	Panel:AddControl("Slider", {Label = "Grunt Weapon Spawn Chance?", Command = "VJ_ToTU_MilZ_Weapons_Chance", Min = 1, Max = 100})
	Panel:ControlHelp("Chance that a Grunt will spawn with a weapon, assuming they can.")
	Panel:ControlHelp("Default chance is 4.")
	
	Panel:AddControl("Checkbox", {Label = "Grunts Can Have Grenades?", Command = "VJ_ToTU_MilZ_Grenades"})
	Panel:ControlHelp("If enabled, Grunts can sometimes spawn with grenades.")
	
	Panel:AddControl("Slider", {Label = "Grunt Grenade Spawn Chance?", Command = "VJ_ToTU_MilZ_Grenades_Chance", Min = 1, Max = 100})
	Panel:ControlHelp("Chance that a Grunt will spawn with grenades, assuming they can.")
	Panel:ControlHelp("Default chance is 10.")
	
	Panel:AddControl("Slider", {Label = "Grunt Grenade Ammout?", Command = "VJ_ToTU_MilZ_Grenades_Ammount", Min = -1, Max = 100})
	Panel:ControlHelp("Ammount of grenades a Grunt will have if they spawn with them.")
	Panel:ControlHelp("Set to -1 for default values.")
	
	Panel:AddControl("Checkbox", {Label = "Grunts Can Have Shootable Guns?", Command = "VJ_ToTU_MilZ_ShootableGun"})
	Panel:ControlHelp("If enabled, Grunts that spawn with guns can sometimes shoot them.")
	
	Panel:AddControl("Slider", {Label = "Grunt Shootable Gun Chance?", Command = "VJ_ToTU_MilZ_ShootableGun_Chance", Min = 1, Max = 100})
	Panel:ControlHelp("Chance a Grunt with a gun is able to shoot it.")
	Panel:ControlHelp("Default chance is 3.")
	
	Panel:AddControl("Checkbox", {Label = "Grunts Have Infinite Bullets?", Command = "VJ_ToTU_MilZ_ShootableGun_Bullets_Infinite"})
	Panel:ControlHelp("If enabled, Grunts that spawn with shootable guns have infinite ammo.")
	
	Panel:AddControl("Checkbox", {Label = "Grunts Have Breakable Helmets?", Command = "VJ_ToTU_MilZ_Helmet_Breakable"})
	Panel:ControlHelp("If enabled, Grunt helmets can be broken if damaged enough.")
	
	Panel:AddControl("Slider", {Label = "Military Zombie Helmet Health?", Command = "VJ_ToTU_MilZ_Helmet_Health", Min = 1, Max = 10000})
	Panel:ControlHelp("Health Grunt helmets will have.")
	Panel:ControlHelp("Juggernaut helmets will have this value times 3.")
	Panel:ControlHelp("Default ammount is 100.")
	
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
	
	local combobox_detsounds = {Options = {}, CVars = {}, Label = "Gasmask Sounds?", MenuButton = "0"}
	combobox_detsounds.Options["NH2 Security"] = {VJ_ToTU_MilZ_Det_Sounds = 0}
	combobox_detsounds.Options["DL Gas Tanks"] = {VJ_ToTU_MilZ_Det_Sounds = 1}
	combobox_detsounds.Options["Both"] = {VJ_ToTU_MilZ_Det_Sounds = 2}
	Panel:AddControl("ComboBox", combobox_detsounds)
	
	Panel:AddControl("Checkbox", {Label = "Detonators Have Breakable Faceplates?", Command = "VJ_ToTU_MilZ_Det_Faceplate_Breakable"})
	Panel:ControlHelp("If enabled, Detonator faceplates can be broken if damaged enough.")
	
	Panel:AddControl("Slider", {Label = "Detonator Faceplate Health?", Command = "VJ_ToTU_MilZ_Det_Faceplate_Health", Min = 1, Max = 10000})
	Panel:ControlHelp("Health Detonator faceplates will have.")
	Panel:ControlHelp("Default ammount is 50.")
	
	Panel:AddControl("Checkbox", {Label = "Detonators Infect Victims?", Command = "VJ_ToTU_MilZ_Det_Infection"})
	Panel:ControlHelp("If enabled, Detonators and Bulk Detonators will infect stuff they kill.")

	local combobox_detlight = {Options = {}, CVars = {}, Label = "Detonator Lights?", MenuButton = "0"}
	combobox_detlight.Options["Disable Entirely"] = {VJ_ToTU_MilZ_Det_BombLights = 0}
	combobox_detlight.Options["Sprite Only"] = {VJ_ToTU_MilZ_Det_BombLights = 1}
	combobox_detlight.Options["Sprite and Light"] = {VJ_ToTU_MilZ_Det_BombLights = 2}
	Panel:AddControl("ComboBox", combobox_detlight)
		
	Panel:AddControl("Slider", {Label = "Ghost Cloak Device Health?", Command = "VJ_ToTU_MilZ_Ghost_Cloak_Health", Min = 1, Max = 10000})
	Panel:ControlHelp("Health a Ghosts' Cloak Device will have.")
	Panel:ControlHelp("Default ammount is 100.")
	
	Panel:AddControl("Checkbox", {Label = "Ghosts' Cloak Recharges?", Command = "VJ_ToTU_MilZ_Ghost_Cloak_Recharge"})
	Panel:ControlHelp("If enabled, a Ghosts' Cloak Device will recharge after a bit when it's broken.")
	Panel:ControlHelp("If disabled, the Cloak Device will remain permanently broken when destroyed.")
	
	Panel:AddControl("Checkbox", {Label = "Ghost Flees While Charging Cloak?", Command = "VJ_ToTU_MilZ_Ghost_Cloak_Recharge_RunWhileCharging"})
	Panel:ControlHelp("If enabled, Ghosts will attempt to flee while their Cloak Device is recharging.")
	Panel:ControlHelp("They will only do this is their current enemy is far enough.")
	Panel:ControlHelp("If Cloak Recharging is disabled, then this convar doesn't do anything.")
	
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
	
	-- thank you to darkborn for this bit
	if CLIENT then
		net.Receive("VJ_ToTU_Squaller_Hud",function(len,pl)
		local delete = net.ReadBool()
		local ent = net.ReadEntity()
		
		if !IsValid(ent) then delete = true end

		if GetConVar("VJ_LNR_ZombieOverlay"):GetInt() == 1 then
			hook.Add("RenderScreenspaceEffects","VJ_LNR_InfectedHUD_Overlay",function(zom)
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
			hook.Remove("RenderScreenspaceEffects","VJ_LNR_InfectedHUD_Overlay") 
			hook.Remove("RenderScreenspaceEffects", "VJ_ToTU_SquallerHud_Colors")
		end
		end)
	end
	
	
	else
		if CLIENT then
				local teal = Color(0,255,255)
				local yellow = Color(255,255,0)
				local red = Color(255,0,0)
				local white = Color(255,255,255)
				local green = Color(33,255,0)
				timer.Simple(10,function()
					chat.AddText(teal,"== Terrors of The Unexplored ==")
					chat.AddText(red,"Lethal Necrotics Reanimated: Half-Life 2 is not installed!")
					chat.AddText(red,"Terrors of The Unexplored has not been loaded, since it doesn't work without the Half-Life 2 Pack.")
					chat.AddText(white,"To fix this, install the Half-Life 2 Pack.")
					chat.AddText(green,"Half-Life 2 Pack Download:")
					chat.AddText(white,"https://steamcommunity.com/sharedfiles/filedetails/?id=1879776316")
					chat.AddText(teal,"======================")
					local pissing = CreateSound(game.GetWorld(), "vo/k_lab/ba_pissinmeoff.wav")
					pissing:SetSoundLevel(0)
					pissing:Play()
				end)
			end
		end
	

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