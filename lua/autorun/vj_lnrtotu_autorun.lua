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
if VJExists == true then
	include('autorun/vj_controls.lua')
	local vCat = "Lethal Necrotics: Terrors of The Unexplored"
	VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored", {Icon = "icons/totu_icon.png"})
	local vCat2 = "Lethal Necrotics: Terrors of The Unexplored - Misc & Spawners"
	VJ.AddCategoryInfo("Lethal Necrotics: Terrors of The Unexplored - Misc & Spawners", {Icon = "icons/totu_icon.png"})
	
	VJ.AddNPC("Base Walker","npc_vj_totu_base_walker",vCat)
	VJ.AddNPC("Base Infected","npc_vj_totu_base_infected",vCat)
	
	-- Definitely Keeping
		-- Bubbler/Chelonioidea/Shellback
		-- Cloaker (Infected)
		-- Feedback
		-- Hive
		-- Military Zombie (Infected)
		-- Military Zombie (Walker)
		-- Pest
		-- Squaller
	-- Likely Keeping
		-- Exploder (Walker)
		-- Goliath
		-- Juggernaut
		-- Smog
		-- Suicider -- maybe rename?
		-- Laticauda
		-- Stalker
	-- Unsure
		-- Meathead
		-- Cloaker (Walker)
		-- Degenerate
		-- Exploder (Infected)
		-- Fiend
		-- Bulldozer
		-- Whale
		-- Gavialidae
		-- Fleshpound
		-- Verdugo
		-- Fumigator -- merge aoe damage with hive if not kept
		-- Regenerator
		-- Revenant
		-- Carcass
		-- Carcass Torso
		-- Cazador
		-- Praetorian
		-- Novistador
		-- Apollyon
	-- Likely Not Keeping
		-- Alternate
		-- Ghoul
		-- Flounder
		-- Megalodon
		-- Swarm -- probably gonna just turn into a projectile instead of an npc
		-- Behemoth
		-- Screecher -- gonna merge with stalkers if not kept
		-- PvZ Zombie
		-- Scraggler
		-- Inanimatum Vas
		-- Preserved Walker
		-- Gunner -- probably just gonna merge with mil. zomb walkers
	-- Definately Not Keeping
		-- Old Bubbler
		-- Siren -- forgot what this even was supposed to do
		-- Spamtong
	
	
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
	
		--Military
			-- VJ.AddNPC("Military Zombie (Walker)","npc_vj_ln_totu_military_walker",vCat)
			-- VJ.AddNPC("Military Zombie (Infected)","npc_vj_ln_totu_military_infected",vCat)
			-- VJ.AddNPC("Cloaker (Walker)","npc_vj_ln_totu_cloaker_walker",vCat)
			-- VJ.AddNPC("Cloaker (Infected)","npc_vj_ln_totu_cloaker_infected",vCat)
			-- VJ.AddNPC("Suicider","npc_vj_ln_totu_suicider",vCat)
			-- VJ.AddNPC("Gunner","npc_vj_ln_totu_gunner",vCat)

			-- VJ.AddNPC("Juggernaut","npc_vj_ln_totu_juggernaut",vCat)
			-- VJ.AddNPC("Bulldozer","npc_vj_ln_totu_bulldozer",vCat)
	
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
	
			--Nightstalkers
				-- VJ.AddNPC("Scraggler","npc_vj_ln_totu_scraggler",vCat)
				-- VJ.AddNPC("Stalker","npc_vj_ln_totu_stalker",vCat)
				-- VJ.AddNPC("Screecher","npc_vj_ln_totu_screecher",vCat)
				
				-- VJ.AddNPC("Squaller","npc_vj_ln_totu_squaller",vCat)
	
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
			-- VJ.AddNPC("Praetorian","npc_vj_ln_totu_praetorian",vCat)
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
	
	-- local AddConvars = {}
	-- AddConvars["vj_LN_TOTU_RealismMode"] = 0
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
	
	-- for k, v in pairs(AddConvars) do
		-- if !ConVarExists( k ) then CreateConVar( k, v, {FCVAR_ARCHIVE} ) end
	-- end
	
	-- if (CLIENT) then
		-- local function VJ_LN_TOTU(Panel)
			-- if !game.SinglePlayer() then
			-- if !LocalPlayer():IsAdmin() or !LocalPlayer():IsSuperAdmin() then
				-- Panel:AddControl( "Label", {Text = "You are not an admin!"})
				-- Panel:ControlHelp("Note: Only admins can change these settings!")
			-- return
		-- end
	-- end
		-- Panel:AddControl( "Label", {Text = "Note: Only admins can change these settings!"})
	-- local vj_resetbutton = {Options = {}, CVars = {}, Label = "Reset Everything:", MenuButton = "0"}
		-- vj_resetbutton.Options["#vjbase.menugeneral.default"] = { 
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
-- }
	-- Panel:AddControl("ComboBox", vj_resetbutton)
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

-- end

	-- function VJ_ADDTOMENU_TOTU(Panel)
		-- spawnmenu.AddToolMenuOption("DrVrej","SNPC Configures","LN: TOTU","LN: TOTU","","", VJ_LN_TOTU, {} )
	-- end
		-- hook.Add("PopulateToolMenu","VJ_ADDTOMENU_TOTU", VJ_ADDTOMENU_TOTU )
	-- end

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