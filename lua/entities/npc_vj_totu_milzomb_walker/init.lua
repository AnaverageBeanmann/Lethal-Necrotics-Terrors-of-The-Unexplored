AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.HasItemDropsOnDeath = true
ENT.ItemDropsOnDeathChance = 4

ENT.MilZ_HasGasmask = false
ENT.MilZ_HasFlakSuit = false
ENT.MilZ_HasKnife = false
ENT.MilZ_CanShuutDeGun = false
ENT.MilZ_HasGun = false
ENT.MilZ_GunAmmo = 0
ENT.MilZ_HasGrenades = false
ENT.MilZ_Grenades = 0
ENT.MilZ_IsMilZ = true
ENT.MilZ_HelmetHealth = 1
ENT.MilZ_HelmetBroken = false
ENT.MilZ_Corpsman = false
ENT.MilZ_Corpsman_NextHealTime = CurTime()
ENT.MilZ_Grunt_IsGrunt = false

ENT.MilZ_Det_Faceplate_Health = 1
ENT.MilZ_Det_Faceplate_Broken = false
ENT.MilZ_Det_DeathExplosionAllowed = false
ENT.MilZ_Det_Beep_BeepT = 0
ENT.MilZ_Det_Beep_CanBeep = true
ENT.MilZ_Det_Faceplate_StartingHP = 1
ENT.MiLZ_Det_Hector = false
ENT.MilZ_Det_IsDetonator = false
ENT.MilZ_Det_Kamikaze = false
ENT.MilZ_Det_BombHealth = 1

ENT.MilZ_Ghost_CloakBroke = false
ENT.MilZ_Ghost_CloakHP = 1
ENT.MilZ_Ghost_Cloaked = true
ENT.MilZ_Ghost_CloakT = 0
ENT.MilZ_Ghost_CloakDamageable = true
ENT.MilZ_Ghost_CloakRechargable = true
ENT.MilZ_Ghost_IsGhost = false

ENT.MilZ_Ghillie_PlayChangeStateAnim = 1
ENT.MilZ_Ghillie_PlayChangeStateAnim_T = CurTime()
ENT.MilZ_Ghillie_IsOnFire = false
ENT.MiLZ_Ghillie_IsGhillie = false

ENT.MilZ_Airman_IsAirman = false

ENT.MilZ_FoN_Rage = false
ENT.MilZ_FoN_CanSpawnHelp = true
ENT.MilZ_FoN_SpawnCoolDownT = 5
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()

	self.MilZ_HelmetHealth = GetConVar("VJ_ToTU_MilZ_Helmet_Health"):GetInt()

	self.MilZ_Det_Faceplate_Health = GetConVar("VJ_ToTU_MilZ_Det_Faceplate_Health"):GetInt()
	self.MilZ_Det_Faceplate_StartingHP = GetConVar("VJ_ToTU_MilZ_Det_Faceplate_Health"):GetInt()
	self.MilZ_Det_BombHealth = GetConVar("VJ_ToTU_MilZ_Det_Bomb_Health"):GetInt()

	if
		-- maybe move this below the stuff that sets MilZ_Det_IsDetonator and MilZ_Airman_IsAirman to true
		self:GetClass() != "npc_vj_totu_milzomb_detonator" &&
		self:GetClass() != "npc_vj_totu_milzomb_detonator_bulk" &&
		self:GetClass() != "npc_vj_totu_milzomb_airman" &&
		self:GetClass() != "npc_vj_totu_milzomb_airman_infected"
	then
		self.ItemDropsOnDeath_EntityList = {
			"item_ammo_pistol",
			"item_ammo_357",
			"item_ammo_smg1",
			"item_ammo_ar2",
			"item_box_buckshot",
		}
	end

	if
		self:GetClass() == "npc_vj_totu_milzomb_walker" or
		self:GetClass() == "npc_vj_totu_milzomb_infected" or
		self:GetClass() == "npc_vj_totu_milzomb_walker_snowy" or
		self:GetClass() == "npc_vj_totu_milzomb_infected_snowy"
	then

		self.MilZ_Grunt_IsGrunt = true

		if
			GetConVar("VJ_ToTU_MilZ_Grunt_Corpsman_Allow"):GetInt() == 1 &&
			math.random(1,GetConVar("VJ_ToTU_MilZ_Grunt_Corpsman_Chance"):GetInt()) == 1
		then

			self.MilZ_Corpsman = true

			self.IsMedicSNPC = true
			self.AnimTbl_Medic_GiveHealth = {"vjseq_nz_attack_stand_ad_1"}
			self.Medic_TimeUntilHeal = 0.9
			self.Medic_HealthAmount = math.random(45,50)
			self.Medic_SpawnPropOnHealModel = "models/totu/hspray.mdl"
			self.Medic_SpawnPropOnHealAttachment = "anim_attachment_RH"
			self.SoundTbl_MedicAfterHeal = {"fx/medspray.wav"}

			self.ItemDropsOnDeath_EntityList = {
				"item_ammo_pistol",
				"item_ammo_357",
				"item_ammo_smg1",
				"item_ammo_ar2",
				"item_box_buckshot",
				"item_healthvial",
				"item_healthvial",
				"item_healthvial",
			}

		end

	end

	if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then

		self.MilZ_HelmetHealth = GetConVar("VJ_ToTU_MilZ_Helmet_Health"):GetInt() * 3

	end

	if self:GetClass() == "npc_vj_totu_fon_juggernaut" then

		self.MilZ_HelmetHealth = GetConVar("VJ_ToTU_MilZ_Helmet_Health"):GetInt() * 5

	end

	if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then

		self.MilZ_Det_Faceplate_Health = GetConVar("VJ_ToTU_MilZ_Det_Faceplate_Health"):GetInt() * 3

		self.MilZ_Det_Faceplate_StartingHP = GetConVar("VJ_ToTU_MilZ_Det_Faceplate_Health"):GetInt() * 3

		self.MilZ_Det_BombHealth = GetConVar("VJ_ToTU_MilZ_Det_Bomb_Health"):GetInt() * 5

	end

	if self:GetClass() == "npc_vj_totu_milzomb_ghost" or self:GetClass() == "npc_vj_totu_milzomb_ghost_walker" then

		self.MilZ_Ghost_IsGhost = true

		self.MilZ_Ghost_CloakHP = GetConVar("VJ_ToTU_MilZ_Ghost_Cloak_Health"):GetInt()

		if GetConVar("VJ_ToTU_MilZ_Ghost_Cloak_Recharge"):GetInt() == 0 then

			self.MilZ_Ghost_CloakRechargable = false

		end

	end

	if
		self:GetClass() == "npc_vj_totu_milzomb_ghillie" or
		self:GetClass() == "npc_vj_totu_milzomb_ghillie_walker"
	then
		self.MiLZ_Ghillie_IsGhillie = true
	end

	if
		self:GetClass() == "npc_vj_totu_milzomb_detonator" or
		self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk"
	then
		self.MilZ_Det_IsDetonator = true
	end

	if
		self:GetClass() == "npc_vj_totu_milzomb_airman" or
		self:GetClass() == "npc_vj_totu_milzomb_airman_infected"
	then
		self.MilZ_Airman_IsAirman = true
	end

	if
		!self.MilZ_Ghost_IsGhost &&
		!self.MiLZ_Ghillie_IsGhillie
	then

		self.SoundTbl_Breath = {
			"ambient/levels/prison/radio_random1.wav",
			"ambient/levels/prison/radio_random2.wav",
			"ambient/levels/prison/radio_random3.wav",
			"ambient/levels/prison/radio_random4.wav",
			"ambient/levels/prison/radio_random5.wav",
			"ambient/levels/prison/radio_random6.wav",
			"ambient/levels/prison/radio_random7.wav",
			"ambient/levels/prison/radio_random8.wav",
			"ambient/levels/prison/radio_random9.wav",
			"ambient/levels/prison/radio_random10.wav",
			"ambient/levels/prison/radio_random11.wav",
			"ambient/levels/prison/radio_random12.wav",
			"ambient/levels/prison/radio_random13.wav",
			"ambient/levels/prison/radio_random14.wav"
			}

		self.NextSoundTime_Breath = VJ_Set(7,20)

		if math.random(1,4) == 1 then

			-- move these to the fx folder and put them on the github
			self.SoundTbl_Breath = {
				"zombies/military/radio/1/radio_1.mp3",
				"zombies/military/radio/1/radio_2.mp3",
				"zombies/military/radio/1/radio_3.mp3",
				"zombies/military/radio/1/radio_4.mp3",
				"zombies/military/radio/1/radio_5.mp3",
				"zombies/military/radio/1/radio_6.mp3",
				"zombies/military/radio/1/radio_7.mp3",
				"zombies/military/radio/1/radio_8.mp3",
				"zombies/military/radio/1/radio_9.mp3"
			}

		end

		if math.random(1,7) == 1 then

			self.SoundTbl_Breath = {
				"zombies/military/radio/2/beep.mp3",
				"zombies/military/radio/2/radio_1.mp3",
				"zombies/military/radio/2/radio_2.mp3",
				"zombies/military/radio/2/radio_3.mp3",
				"zombies/military/radio/2/radio_4.mp3",
				"zombies/military/radio/2/radio_5.mp3",
				"zombies/military/radio/2/radio_6.mp3",
				"zombies/military/radio/2/radio_7.mp3",
				"zombies/military/radio/2/radio_8.mp3",
				"zombies/military/radio/2/radio_9.mp3",
				"zombies/military/radio/2/radio_10.mp3",
				"zombies/military/radio/2/radio_11.mp3",
				"zombies/military/radio/2/radio_12.mp3",
				"zombies/military/radio/2/radio_13.mp3",
				"zombies/military/radio/2/radio_14.mp3",
				"zombies/military/radio/2/radio_15.mp3",
				"zombies/military/radio/2/radio_16.mp3",
				"zombies/military/radio/2/radio_17.mp3",
				"zombies/military/radio/2/radio_18.mp3",
				"zombies/military/radio/2/radio_19.mp3",
				"zombies/military/radio/2/radio_20.mp3",
				"zombies/military/radio/2/radio_21.mp3",
				"zombies/military/radio/2/radio_22.mp3",
				"zombies/military/radio/2/radio_23.mp3",
				"zombies/military/radio/2/radio_24.mp3",
				"zombies/military/radio/2/radio_25.mp3",
				"zombies/military/radio/2/radio_26.mp3",
				"zombies/military/radio/2/radio_27.mp3",
				"zombies/military/radio/2/radio_28.mp3"
			}

		end

		if self.MilZ_Det_IsDetonator or self.MilZ_Airman_IsAirman then
			self.BreathSoundLevel = 40
		end

	end

	if self:GetClass() == "npc_vj_totu_milzomb_walker" or self:GetClass() == "npc_vj_totu_milzomb_walker_snowy" then

		if self.MilZ_Corpsman then

			self.Model = {"models/totu/milzomb_walker_corpsman.mdl"}

		else

			self.Model = {"models/totu/milzomb_walker.mdl"}

		end

	elseif self:GetClass() == "npc_vj_totu_milzomb_infected" or self:GetClass() == "npc_vj_totu_milzomb_infected_snowy" then

		if self.MilZ_Corpsman then

			self.Model = {"models/totu/milzomb_infected_corpsman.mdl"}

		else

			self.Model = {"models/totu/milzomb_infected.mdl"}

		end

	elseif self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_fon_juggernaut" then

		self.Model = {"models/totu/juggernaut.mdl"}

	elseif self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or self:GetClass() == "npc_vj_totu_fon_bulldozer" then

		self.Model = {"models/totu/bulldozer.mdl"}

	elseif self:GetClass() == "npc_vj_totu_milzomb_detonator" then

		self.Model = {"models/totu/detonator.mdl"}

		if GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then

			if math.random(1,100) == 1 then

				if math.random(1,2) == 1 then

					self.MilZ_Det_Kamikaze = true

				else

					self.MiLZ_Det_Hector = true

				end

			end

		end

	elseif self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then

		self.Model = {"models/totu/detonator_bulk.mdl"}

	elseif self:GetClass() == "npc_vj_totu_milzomb_ghost" then

		self.Model = {"models/totu/ghost.mdl"}

	elseif self:GetClass() == "npc_vj_totu_milzomb_ghost_walker" then

		self.Model = {"models/totu/ghost_walker.mdl"}

	elseif self:GetClass() == "npc_vj_totu_milzomb_tank" then

		self.Model = {"models/totu/tank.mdl"}

	elseif self:GetClass() == "npc_vj_totu_milzomb_ghillie" then

		self.Model = {"models/totu/ghille.mdl"}

	elseif self:GetClass() == "npc_vj_totu_milzomb_ghillie_walker" then

		self.Model = {"models/totu/ghille_walker.mdl"}
		
	elseif self:GetClass() == "npc_vj_totu_milzomb_airman" then

		self.Model = {"models/totu/airman.mdl"}

	elseif self:GetClass() == "npc_vj_totu_milzomb_airman_infected" then

		self.Model = {"models/totu/airman_infected.mdl"}

	end

	if self.MilZ_Airman_IsAirman then return end

	if 
		self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or 
		self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or 
		self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" or
		self:GetClass() == "npc_vj_totu_milzomb_tank" or
		self:GetClass() == "npc_vj_totu_fon_juggernaut" or
		self:GetClass() == "npc_vj_totu_fon_bulldozer"
	then

		if
			self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or 
			self:GetClass() == "npc_vj_totu_fon_juggernaut" or 
			self:GetClass() == "npc_vj_totu_fon_bulldozer" or 
			self:GetClass() == "npc_vj_totu_milzomb_bulldozer"
		then

			self:SetSkin(math.random(0,2))

		end

		if self:GetClass() == "npc_vj_totu_milzomb_tank" then

			if GetConVar("VJ_ToTU_MilZ_Tank_NMRIHWalks"):GetInt() == 1 then

				self.AnimTbl_Walk = {ACT_WALK_RELAXED}
				self.AnimTbl_Run = {ACT_WALK_RELAXED}

			end

			self.ToTU_CanUseMovingAttacks = false
			self.AnimTbl_MeleeAttack = {
				"vjseq_nz_attack_stand_ad_1",
				"vjseq_nz_attack_stand_ad_2-2",
				"vjseq_nz_attack_stand_ad_2-3",
				"vjseq_nz_attack_stand_ad_2-4",
				"vjseq_nz_attack_stand_au_1",
				"vjseq_nz_attack_stand_au_2-2",
				"vjseq_nz_attack_stand_au_2-3",
				"vjseq_nz_attack_stand_au_2-4"
			}

		end

		if self:GetClass() == "npc_vj_totu_fon_juggernaut" then
			self:SetModelScale(1.45)
			self:SetKeyValue("rendercolor","171 134 134 255")
		elseif self:GetClass() == "npc_vj_totu_fon_bulldozer" then
			self:SetModelScale(1.45)
			self:SetKeyValue("rendercolor","171 134 134 255")
		else
			self:SetModelScale(1.25)
		end

		self.AnimTbl_Death = {"vjseq_death_04"}
		self.DeathAnimationChance = 1

		self.VJ_IsHugeMonster = true

		self.HasWorldShakeOnMove = true

		if self:GetClass() == "npc_vj_totu_milzomb_tank" or self:GetClass() == "npc_vj_totu_fon_juggernaut" then

			self.WorldShakeOnMoveAmplitude = 2

		else

			self.WorldShakeOnMoveAmplitude = 1

		end

		self.MeleeAttackDistance = 50
		self.MeleeAttackDamageDistance = 70
		self.HasMeleeAttackKnockBack = true

		self.MeleeAttackKnockBack_Forward1 = 150
		self.MeleeAttackKnockBack_Forward2 = 175
		self.MeleeAttackKnockBack_Up1 = 75
		self.MeleeAttackKnockBack_Up2 = 100

	end

	if
		self.MilZ_Ghost_IsGhost or
		self:GetClass() == "npc_vj_totu_milzomb_tank" or
		self.MiLZ_Ghillie_IsGhillie
	then return end

	if
		GetConVar("VJ_ToTU_MilZ_Gasmasks_Allow"):GetInt() == 1 &&
		math.random(1,GetConVar("VJ_ToTU_MilZ_Gasmasks_Chance"):GetInt()) == 1 &&
		self:GetClass() != "npc_vj_totu_milzomb_bulldozer" &&
		self:GetClass() != "npc_vj_totu_fon_juggernaut" &&
		self:GetClass() != "npc_vj_totu_fon_bulldozer" &&
		!self.MilZ_Det_IsDetonator
	then
		self.MilZ_HasGasmask = true
	end

	if 
		GetConVar("VJ_ToTU_MilZ_FlakArmor_Allow"):GetInt() == 1 &&
		math.random(1,GetConVar("VJ_ToTU_MilZ_FlakArmor_Chance"):GetInt()) == 1 &&
		!self.MilZ_Det_IsDetonator
	then
		self.MilZ_HasFlakSuit = true
	end

	if self.MilZ_Det_IsDetonator then

		self.bobm = ents.Create("prop_physics")	
		if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
			self.bobm:SetModel("models/totu/detonator_bomb_bulk.mdl")
		else
			self.bobm:SetModel("models/totu/detonator_bomb.mdl")
		end
		self.bobm:SetLocalPos(self:GetPos())
		self.bobm:SetLocalAngles(self:GetAngles())			
		self.bobm:SetOwner(self)
		self.bobm:SetParent(self)
		self.bobm:Fire("SetParentAttachmentMaintainOffset","bofuckingbombfuckyou")
		self.bobm:Fire("SetParentAttachment","bobomb")
		self.bobm:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
		self.bobm:Spawn()
		self.bobm:Activate()
		self.bobm:SetSolid(SOLID_NONE)

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_UpdateAlmanacStuff()

	if self.MilZ_Airman_IsAirman then
		self.ToTU_Almanac_Name = "-= Airman =-"
		if self.LNR_Infected then
			self.ToTU_Almanac_Strain = "Strain: Infected"
		else
			self.ToTU_Almanac_Strain = "Strain: Walker"
		end
		self.ToTU_Almanac_Toughness = "Toughness: Above-Average"
		self.ToTU_Almanac_Damage = "Damage: Average"
	end


	if self.MilZ_Grunt_IsGrunt then

		self.ToTU_Almanac_Name = "-= Grunt =-"

		if self.LNR_Infected then

			self.ToTU_Almanac_Strain = "Strain: Infected"

		else

			self.ToTU_Almanac_Strain = "Strain: Walker"

		end

		self.ToTU_Almanac_Toughness = "Toughness: Above-Average"
		self.ToTU_Almanac_Damage = "Damage: Average"
		self.ToTU_Almanac_Notes = "The vest and helmet protect him from bullets."
		self.ToTU_Almanac_Notes2 = "The helmet will break if it takes enough damage."

		if self.MilZ_HasKnife then
			self.ToTU_Almanac_Notes3 = "This Grunt has a knife, which can cause bleeding."
		end

		if self.MilZ_HasGun then
			if self.MilZ_CanShuutDeGun then
				self.ToTU_Almanac_Notes3 = "This Grunt has a gun, and he can shoot it."
			else
				self.ToTU_Almanac_Notes3 = "This Grunt has a gun, but it's not loaded."
			end
		end

		if self.MilZ_HasGrenades then
			self.ToTU_Almanac_Notes4 = "This Grunt has grenades."
		end

		if self.MilZ_Corpsman then
			self.ToTU_Almanac_Notes5 = "This Grunt is a Corpsman, and can heal nearby allies."
		end

		if self.MilZ_HasFlakSuit then
			self.ToTU_Almanac_Gimmicks = "This Grunt has flak armor, which gives light limb protection alongside explosion protection."
		end

		local randflavortext = math.random(1,5)
		if randflavortext == 1 then
			self.ToTU_Almanac_FlavorText = "Basic military grunt turned zombie."
		elseif randflavortext == 2 then
			self.ToTU_Almanac_FlavorText = "Wasn't sure what he was expecting when he was previously told to go deal with some 'shambling meatbags', but quickly found out what those are."
		elseif randflavortext == 3 then
			self.ToTU_Almanac_FlavorText = "Thinks the armor is chafing, but doesn't have bodygroups to get rid of it."
		elseif randflavortext == 4 then
			self.ToTU_Almanac_FlavorText = "Looking forward to a cold beer when this is all over."
		elseif randflavortext == 5 then
			self.ToTU_Almanac_FlavorText = "Not sure how to silence his radio, but he's gotten so used to it that he wouldn't bother anyway."
		end

		if self.MilZ_Corpsman then
			local randflavortext = math.random(1,2)
			if randflavortext == 1 then
				self.ToTU_Almanac_FlavorText = "He thought taking the role of Corpsman would make things easier, but it actually made the job more stressful."
			elseif randflavortext == 2 then
				self.ToTU_Almanac_FlavorText = "While the initial idea of 'battle medic' sounded neat, in practice he finds it more tiresome than anything."
			end
		end

		if self.MilZ_HasFlakSuit then
			local randflavortext = math.random(1,3)
			if randflavortext == 1 then
				self.ToTU_Almanac_FlavorText = "The suit's standard issue for demolition squads, but don't tell him that, it'll ruin his confidence in it."
			elseif randflavortext == 2 then
				self.ToTU_Almanac_FlavorText = "Wishes his flak armor protected against bullets too."
			elseif randflavortext == 3 then
				self.ToTU_Almanac_FlavorText = "He thought the suit would make him a good demoman."
			end
		end

		if self.MilZ_HasFlakSuit && self.MilZ_Corpsman then
			self.ToTU_Almanac_FlavorText = "The suit isn't his, it was a former squadmates. He put it on cause it makes him feel safer, even though He has no idea what it's for."
		end

	end


	if self.MiLZ_Ghillie_IsGhillie then

		self.ToTU_Almanac_Name = "-= Ghillie =-"
		if self.LNR_Infected then
			self.ToTU_Almanac_Strain = "Strain: Infected"
		else
			self.ToTU_Almanac_Strain = "Strain: Walker"
		end
		self.ToTU_Almanac_Toughness = "Toughness: Above-Average"
		self.ToTU_Almanac_Damage = "Damage: Average"
		self.ToTU_Almanac_Notes = "Crawls at target, stands up when close."
		self.ToTU_Almanac_Notes2 = "Returns to crawling if target gets too far."
		self.ToTU_Almanac_Notes3 = "Igniting it will force it to stand."
		self.ToTU_Almanac_Notes4 = "The vest will protect him from bullets."

		local randflavortext = math.random(1,6)
		if randflavortext == 1 then
			self.ToTU_Almanac_FlavorText = "Once sat in a bush for several hours straight."
		elseif randflavortext == 2 then
			self.ToTU_Almanac_FlavorText = "Pretends to understand what bushmans rules are."
		elseif randflavortext == 3 then
			self.ToTU_Almanac_FlavorText = "He's not a crazed gunman, he's an assassin. Or, he was, atleast."
		elseif randflavortext == 4 then
			self.ToTU_Almanac_FlavorText = "Likes to hide in the grass and jump out at everyone."
		elseif randflavortext == 5 then
			self.ToTU_Almanac_FlavorText = "Had a Nightkin encounter while camping."
		elseif randflavortext == 6 then
			self.ToTU_Almanac_FlavorText = "He kinda likes the Detonator. He's not sure why, but he just does."
		end

	end

	if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then

		self.ToTU_Almanac_Name = "-= Juggernaut =-"
		self.ToTU_Almanac_Strain = "Strain: Walker"
		self.ToTU_Almanac_Toughness = "Toughness: Dense"
		self.ToTU_Almanac_Damage = "Damage: Strong"
		self.ToTU_Almanac_Notes = "The vest and helmet protect him from bullets."
		self.ToTU_Almanac_Notes2 = "The helmet will break if it takes enough damage."
		self.ToTU_Almanac_Notes3 = "His helmet has 3x the health of a Grunt helmet."

		local randflavortext = math.random(1,6)
		if randflavortext == 1 then
			self.ToTU_Almanac_FlavorText = "Secretly has a crush on PI's Grenadier, but is too shy to ask him out."
		elseif randflavortext == 2 then
			self.ToTU_Almanac_FlavorText = "Doesn't know what squad tactics or aiming is, just knows how to spray lead in the enemies general direction."
		elseif randflavortext == 3 then
			self.ToTU_Almanac_FlavorText = "Though his squadmates think he took the support gunner role due to his size, in reality he just did it because he wanted to use a big gun."
		elseif randflavortext == 4 then
			self.ToTU_Almanac_FlavorText = "Sometimes thinks about and gets confused over how he's called the Juggernaut, but the Tank wears a juggernaut suit."
		elseif randflavortext == 5 then
			self.ToTU_Almanac_FlavorText = "Likes candy."
		elseif randflavortext == 6 then
			self.ToTU_Almanac_FlavorText = "When asked about how the lack of face skin feels, he replied with 'I don't really think of it much, it just kinda itches every now and then, but that's it really.'"
		end

	end

	if self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then

		self.ToTU_Almanac_Name = "-= Bulldozer =-"
		self.ToTU_Almanac_Strain = "Strain: Infected"
		self.ToTU_Almanac_Toughness = "Toughness: Dense"
		self.ToTU_Almanac_Damage = "Damage: Strong"
		self.ToTU_Almanac_Notes = "The vest protects him from bullets."

		local randflavortext = math.random(1,6)
		if randflavortext == 1 then
			self.ToTU_Almanac_FlavorText = "Says everything looks red. While it's probably due to the infection messing with his vision, it's more likely because he got blood in his eye."
		elseif randflavortext == 2 then
			self.ToTU_Almanac_FlavorText = "Says he was the best shot in the support gunner unit, when in reality he was too busy getting frustrated with his machine gun to even shoot anything."
		elseif randflavortext == 3 then
			self.ToTU_Almanac_FlavorText = "Has been going to anger management classes. They haven't been working."
		elseif randflavortext == 4 then
			self.ToTU_Almanac_FlavorText = "Not sure why or what he's doing here, but knows one thing; He's going to kill."
		elseif randflavortext == 5 then
			self.ToTU_Almanac_FlavorText = "Does not like candy."
		elseif randflavortext == 6 then
			self.ToTU_Almanac_FlavorText = "Frequently adjusts his gear even though nothing's wrong with it."
		end

	end

	if self.MilZ_Ghost_IsGhost then

		self.ToTU_Almanac_Name = "-= Ghost =-"
		if self.LNR_Infected then
			self.ToTU_Almanac_Strain = "Strain: Infected"
		else
			self.ToTU_Almanac_Strain = "Strain: Walker"
		end
		self.ToTU_Almanac_Toughness = "Toughness: Above-Average"
		self.ToTU_Almanac_Damage = "Damage: Average"
		self.ToTU_Almanac_Notes = "Uses a cloak device to sneak up on you."
		self.ToTU_Almanac_Notes2 = "Damaging him enough will temporarily disable the cloak."

	end

	if self:GetClass() == "npc_vj_totu_milzomb_tank" then

		self.ToTU_Almanac_Name = "-= Tank =-"
		self.ToTU_Almanac_Strain = "Strain: Walker"
		self.ToTU_Almanac_Toughness = "Toughness: Undying"
		self.ToTU_Almanac_Damage = "Damage: Strong"
		self.ToTU_Almanac_Notes = "The suit protects him from bullets."
		self.ToTU_Almanac_Notes2 = "The suit completely covers him."

		local randflavortext = math.random(1,4)
		if randflavortext == 1 then
			self.ToTU_Almanac_FlavorText = "Considers himself to be the heavy weapons guy, but is more just the really heavy guy."
		elseif randflavortext == 2 then
			self.ToTU_Almanac_FlavorText = "Originally the idea of getting to wear a juggernaut suit sounded amazing, but now?, not so much."
		elseif randflavortext == 3 then
			self.ToTU_Almanac_FlavorText = "Taking the suit on and off is a complete nightmare, even with help."
		elseif randflavortext == 4 then
			self.ToTU_Almanac_FlavorText = "If those eyeholes were any smaller he'd be practically blind."
		end

	end

	if self.MilZ_Det_IsDetonator then

		self.ToTU_Almanac_Damage = "Damage: Lethal"
		self.ToTU_Almanac_Notes = "Attacks by blowing himself up."
		self.ToTU_Almanac_Notes2 = "The suit protects him from explosions."
		self.ToTU_Almanac_Notes4 = "Shooting the bomb enough wil cause it to explode."

		if self:GetClass() == "npc_vj_totu_milzomb_detonator" then

			self.ToTU_Almanac_Name = "-= Detonator =-"
			self.ToTU_Almanac_Strain = "Strain: Infected"
			self.ToTU_Almanac_Toughness = "Toughness: Above-Average"
			self.ToTU_Almanac_Notes3 = "The faceplate can block a bullet or two."

			local randflavortext = math.random(1,6)
			if randflavortext == 1 then
				self.ToTU_Almanac_FlavorText = "What makes him a good demoman? Good question, we're not sure either."
			elseif randflavortext == 2 then
				self.ToTU_Almanac_FlavorText = "Not even sure how a bomb got strapped to him, he just woke up and boom there it was."
			elseif randflavortext == 3 then
				self.ToTU_Almanac_FlavorText = "He'd take the helmet off but he's self conscious about how he looks with it off."
			elseif randflavortext == 4 then
				self.ToTU_Almanac_FlavorText = "Thinks running around in that suit is good exercise."
			elseif randflavortext == 5 then
				self.ToTU_Almanac_FlavorText = "He's a real blast at parties, or so we've heard."
			elseif randflavortext == 6 then
				self.ToTU_Almanac_FlavorText = "One crossed wire, one wayward pinch of potassium chlorate, one errant twitch.. aND KABLOOIE-"
			end

			if self.MiLZ_Det_Hector then
				self.ToTU_Almanac_FlavorText = "Has a deep-seated hatred for someone named Gustavo."
			end

		elseif self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then

			self.ToTU_Almanac_Name = "-= Bulk Detonator =-"
			self.ToTU_Almanac_Strain = "Strain: Walker"
			self.ToTU_Almanac_Toughness = "Toughness: Undying"
			self.ToTU_Almanac_Notes3 = "The faceplate has 3x the health of a normal Detonators."

			local randflavortext = math.random(1,5)
			if randflavortext == 1 then
				self.ToTU_Almanac_FlavorText = "If he goes off, they'll be burying what's left of ye in a soup can."
			elseif randflavortext == 2 then
				self.ToTU_Almanac_FlavorText = "The bomb was strapped to him as part of a dare."
			elseif randflavortext == 3 then
				self.ToTU_Almanac_FlavorText = "Tends to tease the Detonator infront of the others."
			elseif randflavortext == 4 then
				self.ToTU_Almanac_FlavorText = "He originally was going to get a black suit, but took the tan one due to not wanting to heatstroke."
			elseif randflavortext == 5 then
				self.ToTU_Almanac_FlavorText = "Likes grilled cheese sandwiches."
			end

		end

	end


end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()

	if self.MilZ_Airman_IsAirman then return end

	if self:GetClass() == "npc_vj_totu_fon_juggernaut" then
		self.HasRangeAttack = true
		self.RangeAttackEntityToSpawn = "obj_vj_totu_milzgren"
		self.RangeAttackAnimationFaceEnemy = true
		self.AnimTbl_RangeAttack = {"vjseq_throw_right"}
		self.RangeDistance = 750 
		self.RangeToMeleeDistance = 1 
		self.RangeAttackAngleRadius = 100
		self.TimeUntilRangeAttackProjectileRelease = 1.6
		self.NextRangeAttackTime = math.random(15,20)
		self.RangeUseAttachmentForPos = true 
		self.RangeUseAttachmentForPosID = "anim_attachment_RH"
		self.RangeAttackPos_Forward = 20
		self.RangeAttackPos_Up = 20
	end

	if
		self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or 
		self:GetClass() == "npc_vj_totu_fon_juggernaut" or 
		self:GetClass() == "npc_vj_totu_fon_bulldozer" or 
		self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or 
		self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" or
		self:GetClass() == "npc_vj_totu_milzomb_tank"
	then

		self:SetCollisionBounds(Vector(13, 13, 68), Vector(-13, -13, 0))

	end

	if self:GetClass() == "npc_vj_totu_milzomb_tank" then

		-- remove or reduce this?
		self.MeleeAttackDistance = 25
		self.MeleeAttackDamageDistance = 50

	end

	if
		self.MilZ_Det_IsDetonator or
		self:GetClass() == "npc_vj_totu_milzomb_tank"
	then return end

	if self.MiLZ_Ghillie_IsGhillie then 

		self:SetBodygroup(2,math.random(1,2))
		self:SetBodygroup(3,math.random(0,2))
		self:SetBodygroup(4,math.random(0,3))

	return end

	local gear = math.random(1,2)

	if self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then

		if gear == 1 then

			self:SetBodygroup(1,math.random(0,2))

		else

			self:SetBodygroup(1,math.random(4,6))

		end

	else

		if !self.MiLZ_Ghille_IsGhillie then

			if gear == 1 then

				self:SetBodygroup(2,math.random(0,2))

			else

				self:SetBodygroup(2,math.random(4,6))

			end

		end

	end

	-- Should sleeves be rolled up?
	if math.random(1,4) == 1 && !self.MiLZ_Ghille_IsGhillie then

		if self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then

			self:SetBodygroup(2,1)

		else

			self:SetBodygroup(3,1)

		end

	end

	if self.MilZ_HasFlakSuit == true then

		if self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then

			self:SetBodygroup(1,3)

		else

			self:SetBodygroup(2,3)

		end

	end

	if self.MilZ_HasGasmask == false && self:GetClass() != "npc_vj_totu_milzomb_bulldozer" then

		self:SetBodygroup(4,math.random(1,6))

		if self.LNR_Biter == false then

			self:SetBodygroup(1,math.random(0,1))

		end

	end

	if self.MilZ_Ghost_IsGhost then

		self:SetBodygroup(4,5)
		self:SetBodygroup(1,1)

	end

	if self:GetClass() == "npc_vj_totu_fon_juggernaut" then
		self.MilZ_HasFlakSuit = true
		self:SetSkin(2)
		self:SetBodygroup(1,1)
		self:SetBodygroup(2,3)
		self:SetBodygroup(3,0)
		self:SetBodygroup(4,2)
		self.AnimTbl_Walk = {ACT_WALK_AIM}
		self.AnimTbl_Run = {ACT_WALK_AIM}
	end

	if self:GetClass() == "npc_vj_totu_fon_bulldozer" then
		self.MilZ_HasFlakSuit = true
		self:SetSkin(2)
		self:SetBodygroup(1,3)
		self:SetBodygroup(2,0)
	end

	if
		self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or
		self:GetClass() == "npc_vj_totu_fon_juggernaut" or
		self:GetClass() == "npc_vj_totu_fon_bulldozer" or
		self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or
		self.MilZ_Ghost_IsGhost
	then return end

	if math.random(1,GetConVar("VJ_ToTU_MilZ_Weapons_Chance"):GetInt()) == 1 && !self.LNR_Crippled && !self.LNR_Biter then

		self:ZombieWeapons()

	end

	if GetConVar("VJ_ToTU_MilZ_Grenades"):GetInt() == 1 then

		if math.random(1,GetConVar("VJ_ToTU_MilZ_Grenades_Chance"):GetInt()) == 1 && !self.LNR_Crippled && !self.MilZ_CanShuutDeGun then

			self.HasRangeAttack = true
			self.RangeAttackEntityToSpawn = "obj_vj_totu_milzgren"
			self.RangeAttackAnimationFaceEnemy = true
			self.AnimTbl_RangeAttack = {"vjseq_throw_right"}
			self.RangeDistance = 750 
			self.RangeToMeleeDistance = 1 
			self.RangeAttackAngleRadius = 100
			self.TimeUntilRangeAttackProjectileRelease = 1.6
			self.NextRangeAttackTime = math.random(15,20)
			self.RangeUseAttachmentForPos = true 
			self.RangeUseAttachmentForPosID = "anim_attachment_RH"
			self.RangeAttackPos_Forward = 20
			self.RangeAttackPos_Up = 20

			self.MilZ_HasGrenades = true

			if GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() == -1 then

				self.MilZ_Grenades = math.random(1,3)

			elseif GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() == 0 then

				-- i mean what did you expect?
				self.MilZ_Grenades = 0
				self.HasRangeAttack = false

			elseif GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() != -1 then

				self.MilZ_Grenades = GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt()

			end

			if
				(GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() == -1 or GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() != -1) &&
				GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() != 0
			then
				self.ItemDropsOnDeath_EntityList = {
					"item_ammo_pistol",
					"item_ammo_357",
					"item_ammo_smg1",
					"item_ammo_ar2",
					"item_box_buckshot",
					"weapon_frag",
					"weapon_frag",
					"obj_vj_totu_milzgren",
				}
			end

			if self.ToTU_WeHaveAWeapon then

				self.AnimTbl_RangeAttack = {"vjseq_throw_left"}
				self.RangeUseAttachmentForPosID = "anim_attachment_LH"

			end

		end

	end

	if self.MilZ_Corpsman && self.ToTU_WeHaveAWeapon then
		self.AnimTbl_Medic_GiveHealth = {"vjseq_nz_attack_stand_ad_2-3"}
		self.Medic_TimeUntilHeal = 0.6
		self.Medic_SpawnPropOnHealAttachment = "anim_attachment_LH"
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MilZ_GiveGasmaskSounds()

	self.SoundTbl_Idle = {
		"voices/mil_gasmask/idle_1.wav",
		"voices/mil_gasmask/idle_2.wav",
		"voices/mil_gasmask/idle_3.wav",
		"voices/mil_gasmask/idle_4.wav"
	}

	self.SoundTbl_Alert = {
		"voices/mil_gasmask/alert_1.wav",
		"voices/mil_gasmask/alert_2.wav",
		"voices/mil_gasmask/alert_3.wav",
		"voices/mil_gasmask/alert_4.wav",
		"voices/mil_gasmask/alert_5.wav",
		"voices/mil_gasmask/alert_6.wav",
		"voices/mil_gasmask/alert_7.wav"
	}

	self.SoundTbl_CombatIdle = {
		"voices/mil_gasmask/cidle_1.wav",
		"voices/mil_gasmask/cidle_2.wav"
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"voices/mil_gasmask/alert_1.wav",
		"voices/mil_gasmask/alert_2.wav",
		"voices/mil_gasmask/alert_3.wav",
		"voices/mil_gasmask/alert_4.wav",
		"voices/mil_gasmask/alert_5.wav",
		"voices/mil_gasmask/alert_6.wav",
		"voices/mil_gasmask/alert_7.wav"
	}

	self.SoundTbl_Pain = {
		"voices/mil_gasmask/pain_1.wav",
		"voices/mil_gasmask/pain_2.wav",
		"voices/mil_gasmask/pain_3.wav",
		"voices/mil_gasmask/pain_4.wav"
	}

	self.SoundTbl_Death = {
		"voices/mil_gasmask/death_1.wav",
		"voices/mil_gasmask/death_2.wav"
	}

	if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
		self.IdleSoundPitch = VJ_Set(80, 70)
		self.AlertSoundPitch = VJ_Set(80, 70)
		self.CombatIdleSoundPitch = VJ_Set(80, 70)
		self.BeforeMeleeAttackSoundPitch = VJ_Set(80, 70)
		self.PainSoundPitch = VJ_Set(80, 70)
		self.DeathSoundPitch = VJ_Set(80, 70)	
	end

	if self:GetClass() == "npc_vj_totu_milzomb_tank" then
		self.IdleSoundPitch = VJ_Set(50, 60)
		self.AlertSoundPitch = VJ_Set(50, 60)
		self.CombatIdleSoundPitch = VJ_Set(50, 60)
		self.BeforeMeleeAttackSoundPitch = VJ_Set(50, 60)
		self.PainSoundPitch = VJ_Set(50, 60)
		self.DeathSoundPitch = VJ_Set(50, 60)
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 75
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 125
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 175
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 225
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 275
		self.MeleeAttackDamage = math.Rand(25,30)

	else

		self.StartHealth = 125
		self.MeleeAttackDamage = math.Rand(10,15)

	end

	self:SetHealth(self.StartHealth)	

	if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then

		if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

			self.LNR_LegHP = 15

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

			self.LNR_LegHP = 25

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

			self.LNR_LegHP = 35

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

			self.LNR_LegHP = 45

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

			self.LNR_LegHP = 55

		end

	else

		self.LNR_LegHP = 25

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRangeAttack_AfterStartTimer(seed)

	if self.MilZ_CanShuutDeGun == true then return end

	if self.MilZ_Grunt_IsGrunt then

		if self.MilZ_Grenades == 1 or self.MilZ_Grenades > 1 then

			self.MilZ_Grenades = self.MilZ_Grenades - 1

			if self.VJ_IsBeingControlled then
				self.VJ_TheController:ChatPrint("Grenades left: "..self.MilZ_Grenades.."")
			end

		end

		if self.MilZ_Grenades < 1 then

			self.HasRangeAttack = false

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()

	if self.MilZ_Grunt_IsGrunt then

		if self.MilZ_Corpsman then

			for _,v in ipairs(ents.FindInSphere(self:GetPos(),100)) do

				if v:IsNPC() && v:Disposition(self) == D_LI then

					if v:Health() < v:GetMaxHealth() && CurTime() > self.MilZ_Corpsman_NextHealTime then

						for i = 0,v:GetBoneCount() -1 do

							ParticleEffect("vortigaunt_glow_beam_cp0",v:GetBonePosition(i),Angle(0,0,0),nil)

						end

						for i = 0,self:GetBoneCount() -1 do

							ParticleEffect("vortigaunt_glow_beam_cp1",self:GetBonePosition(i),Angle(0,0,0),nil)

						end

						effects.BeamRingPoint(self:GetPos(), 0.3, 2, 250, 16, 0, Color(33, 255, 0, 255), {material="sprites/orangelight1", framerate=20})
						effects.BeamRingPoint(self:GetPos(), 0.3, 2, 125, 16, 0, Color(33, 255, 0, 255), {material="sprites/orangelight1", framerate=20})
						VJ_EmitSound(self,{"items/smallmedkit1.wav"},100,math.random(100,95))
						v:SetHealth(v:Health() +math.random(10,15))

						if v:Health() > v:GetMaxHealth() then

							v:SetHealth(v:GetMaxHealth())

						end

						self.MilZ_Corpsman_NextHealTime = CurTime() + (math.Rand(2,4))

					end

				end

			end

		end

	end

	if self.MiLZ_Ghillie_IsGhillie then

		if self:IsOnFire() && !self.MilZ_Ghillie_IsOnFire && !LNR_Crippled then

			if self.MilZ_Ghillie_PlayChangeStateAnim == 2 then

				local anim = {"vjseq_Run_Stumble_01"}
				self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)

			end

			self:ToTU_Ghillie_StartBurning()
			self.MilZ_Ghillie_IsOnFire = true

		end

		if !self:IsOnFire() && self.MilZ_Ghillie_IsOnFire && !LNR_Crippled then

			self:ToTU_Ghillie_StopBurning()

		end

		if self.Dead == false && self:GetEnemy() != nil && self.VJ_IsBeingControlled == false && !self.LNR_Crippled then

			local enemydist = self:GetPos():Distance(self:GetEnemy():GetPos())

			if
				self.LNR_Crippled or
				self.ToTU_Crawling or
				self:GetActivity() == ACT_STEP_BACK or
				self:GetActivity() == ACT_STEP_FORE or
				self:GetActivity() == ACT_SMALL_FLINCH or
				self:GetActivity() == ACT_BIG_FLINCH or
				self:GetActivity() == ACT_FLINCH_STOMACH or
				self:GetActivity() == ACT_GMOD_SHOWOFF_STAND_01 or
				self:GetActivity() == ACT_VM_DEPLOYED_FIRE or
				self:GetSequence() == self:LookupSequence("jump_attack") or
				self:GetSequence() == self:LookupSequence("nz_spawn_jump") or
				self:GetSequence() == self:LookupSequence("nz_spawn_climbout_fast") or
				self:GetSequence() == self:LookupSequence("Run_Stumble_01") or
				self:GetSequence() == self:LookupSequence("Climb120_00_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb120_00a_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb120_03_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb120_03a_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb120_04_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb144_00_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb144_00a_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb144_01_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb144_03_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb144_03a_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb144_04_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb72_03_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb72_04_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb72_05_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb72_06_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb72_07_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb96_00_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb96_00a_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb96_03_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb96_03a_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb96_04a_InPlace") or
				self:GetSequence() == self:LookupSequence("Climb96_05_InPlace") or
				self:IsOnFire()
			then return end

			-- increase the distance on this
			if enemydist >= 350 && self.MilZ_Ghillie_PlayChangeStateAnim == 1 && CurTime() > self.MilZ_Ghillie_PlayChangeStateAnim_T then

				self:ToTU_Ghillie_StartCrawling()
				self.MilZ_Ghillie_PlayChangeStateAnim_T = CurTime() + (0.5)
				local anim = {"vjseq_Stand_to_crouch"}
				self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)

			elseif enemydist <= 150 && self.MilZ_Ghillie_PlayChangeStateAnim == 2 && CurTime() > self.MilZ_Ghillie_PlayChangeStateAnim_T then

				self:ToTU_Ghillie_GetTheUp()
				self.MilZ_Ghillie_PlayChangeStateAnim_T = CurTime() + (0.5)
				local anim = {"vjseq_Crouch_to_stand"}				
				self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
				VJ_EmitSound(self,{"fx/ghille_rustling_"..math.random(1,3)..".mp3"},60,100)
				VJ_EmitSound(self,{"fx/ghille_rustling_"..math.random(1,3)..".mp3"},60,100)
				VJ_EmitSound(self,{"fx/ghille_rustling_"..math.random(1,3)..".mp3"},60,100)
				VJ_EmitSound(self,{"fx/ghille_rustling_"..math.random(1,3)..".mp3"},60,100)

			end

		end

	end

	if self:GetClass() == "npc_vj_totu_fon_juggernaut" or self:GetClass() == "npc_vj_totu_fon_bulldozer" then

		if self.MilZ_FoN_CanSpawnHelp && self.MilZ_FoN_SpawnCoolDownT < CurTime() then
			self:MilZ_FoN_SummonHelp_Spawn()
		end

		if self:Health() <= (self:GetMaxHealth() / 2) && !self.MilZ_FoN_Rage &&

		self:GetActivity() != ACT_STEP_BACK &&
		self:GetActivity() != ACT_STEP_FORE &&
		self:GetActivity() != ACT_SMALL_FLINCH &&
		self:GetActivity() != ACT_BIG_FLINCH &&
		self:GetActivity() != ACT_FLINCH_STOMACH &&
		self:GetActivity() != ACT_GMOD_SHOWOFF_STAND_01 &&
		self:GetActivity() != ACT_WALK_CROUCH_AIM &&
		self:GetActivity() != ACT_RUN_STEALTH &&
		self:GetSequence() != self:LookupSequence("Hunter_Crawl") &&
		self:GetSequence() != self:LookupSequence("mudguy_run") &&
		self:GetSequence() != self:LookupSequence("jump_attack") &&
		self:GetSequence() != self:LookupSequence("Run_Stumble_01")


		then
			self.MilZ_FoN_Rage = true
			if self:GetClass() == "npc_vj_totu_fon_bulldozer" then
				self.AnimTbl_Run = {ACT_RUN_AIM}
				self.LNR_SuperSprinter = true
				self:VJ_ACT_PLAYACTIVITY("vjseq_nz_sonic_attack_1",true,false,false)
				VJ_EmitSound(self,self.SoundTbl_Alert,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.AlertSoundPitch.a,self.AlertSoundPitch.b))
			end
			if self:GetClass() == "npc_vj_totu_fon_juggernaut" then
				self.AnimTbl_Run = {ACT_SPRINT}
				self.ToTU_Rusher = true
				self:VJ_ACT_PLAYACTIVITY("vjseq_nz_sonic_attack_1",true,false,false)
				self.SoundTbl_Alert = {
					"voices/mil_jugg/run_start_1.mp3",
					"voices/mil_jugg/run_start_2.mp3",
					"voices/mil_jugg/run_start_3.mp3"
				}
				self.SoundTbl_CombatIdle = {
					"voices/mil_jugg/cidle_1.mp3",
					"voices/mil_jugg/cidle_2.mp3"
				}
				VJ_EmitSound(self,"voices/mil_jugg/run_start_"..math.random(1,3)..".mp3",self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.AlertSoundPitch.a,self.AlertSoundPitch.b))
			end
		end
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MilZ_FoN_SummonHelp_Spawn()
	if !IsValid(self.KinHelp1) then
		self.KinHelp1 = self:MilZ_FoN_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp2) then
		self.KinHelp2 = self:MilZ_FoN_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp3) then
		self.KinHelp3 = self:MilZ_FoN_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp4) then
		self.KinHelp4 = self:MilZ_FoN_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp5) then
		self.KinHelp5 = self:MilZ_FoN_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp6) then
		self.KinHelp6 = self:MilZ_FoN_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp7) then
		self.KinHelp7 = self:MilZ_FoN_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp8) then
		self.KinHelp8 = self:MilZ_FoN_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp9) then
		self.KinHelp9 = self:MilZ_FoN_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp10) then
		self.KinHelp10 = self:MilZ_FoN_SummonHelp()
		return 15
	
	end
	return 8
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MilZ_FoN_SummonHelp()
	-- local randnest = math.random(1,100)
	-- if randnest == 1 then
		-- self.KinT = "npc_vj_totu_nightkin_shrieker"
	-- elseif randnest >= 2 && randnest <= 5 then
		-- self.KinT = "npc_vj_totu_nightkin_scylla"
	-- elseif randnest >= 6 && randnest <= 15 then
		-- self.KinT = "npc_vj_totu_nightkin_squaller"
	-- elseif randnest >= 16 && randnest <= 30 then
		-- if math.random (1,2) == 1 then
			-- self.KinT = "npc_vj_totu_nightkin_spitballer"
		-- else
			-- self.KinT = "npc_vj_totu_nightkin_skitter"
		-- end
	-- else
		-- self.KinT = "npc_vj_totu_milzomb_infected"
	-- end
			if self:GetClass() == "npc_vj_totu_fon_bulldozer" then
	local randnest = math.random(1,5)
	if randnest == 1 then
		self.KinT = "npc_vj_totu_milzomb_detonator"
	else
		self.KinT = "npc_vj_totu_milzomb_airman_infected"
	end
			end
	
			if self:GetClass() == "npc_vj_totu_fon_juggernaut" then
		self.KinT = "npc_vj_totu_milzomb_infected"
			end
	local tr = util.TraceLine({
		start = self:GetPos(),
		endpos = self:GetPos() + self:GetForward() * math.Rand(-700, -400) + self:GetRight() * math.Rand(-700, 700) + self:GetUp() * 60,
		filter = {self},
		mask = MASK_ALL,
	})
	local spawnpos = tr.HitPos + tr.HitNormal*300
	local ally = ents.Create(self.KinT)
	ally:SetPos(spawnpos)
	ally:SetAngles(self:GetAngles())
	ally:Spawn()
	ally:Activate()
	ally.ToTU_InstantDigout = true
	ally.VJ_NPC_Class = self.VJ_NPC_Class
	ally:RiseFromGround_Instant()
			if self:GetClass() == "npc_vj_totu_fon_bulldozer" then
	self.MilZ_FoN_SpawnCoolDownT = CurTime() + 15
			end
			if self:GetClass() == "npc_vj_totu_fon_juggernaut" then
	self.MilZ_FoN_SpawnCoolDownT = CurTime() + 5
			end
	return ally
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Ghillie_StartCrawling()

	self.CanTurnWhileStationary = false
	self.HasIdleSounds = false
	if self.LNR_Walker then
		self.FootStepSoundLevel = 55
	else
		self.FootStepSoundLevel = 65
	end
	self.HasMeleeAttack = false

	self.AnimTbl_IdleStand = {ACT_CROUCHIDLE}
	self.AnimTbl_Walk = {ACT_WALK_CROUCH_AIM}

	if self.LNR_Walker then

		self.AnimTbl_Run = {ACT_WALK_CROUCH_AIM}

	else

		self.AnimTbl_Run = {ACT_RUN_STEALTH}

	end

	self.VJC_Data = {
		CameraMode = 1,
		ThirdP_Offset = Vector(30, 25, -20),
		FirstP_Bone = "ValveBiped.Bip01_Head1",
		FirstP_Offset = Vector(5, 0, -1),
	}

	self.HasDeathAnimation = false
	self.MilZ_Ghillie_PlayChangeStateAnim = 2

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Ghillie_GetTheUp()

	self.CanTurnWhileStationary = true
	self.FootStepSoundLevel = 70
	self.HasMeleeAttack = true

	timer.Simple(2,function() if IsValid(self) then
		self.HasIdleSounds = true
	end end)

	self.AnimTbl_IdleStand = {ACT_IDLE}
	if self.LNR_UsingRelaxedIdle == true then
		self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
	end

	if self.LNR_Walker then

		self.AnimTbl_Walk = {ACT_WALK}
		self.AnimTbl_Run = {ACT_RUN}

	else

		self.AnimTbl_Walk = {ACT_SPRINT}
		self.AnimTbl_Run = {ACT_RUN_RELAXED}

	end

	self.VJC_Data = {
		CameraMode = 1,
		ThirdP_Offset = Vector(40, 20, -50),
		FirstP_Bone = "ValveBiped.Bip01_Head1",
		FirstP_Offset = Vector(0, 0, 5),
	}

	self.HasDeathAnimation = true
	self.MilZ_Ghillie_PlayChangeStateAnim = 1

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Ghillie_StartBurning()

	self.IdleAlwaysWander = true

	self.AnimTbl_IdleStand = {ACT_IDLE}
	self.AnimTbl_Walk = {ACT_WALK_ON_FIRE}

	if self.LNR_Walker then

		self.AnimTbl_Run = {ACT_WALK_ON_FIRE}

	else

		self.AnimTbl_Run = {ACT_RUN_ON_FIRE}

	end

	self.VJC_Data = {
		CameraMode = 1,
		ThirdP_Offset = Vector(30, 25, -20),
		FirstP_Bone = "ValveBiped.Bip01_Head1",
		FirstP_Offset = Vector(5, 0, -1),
	}

	self.MilZ_Ghillie_PlayChangeStateAnim = 1
	self.MilZ_Ghillie_IsOnFire = true

	if GetConVar("vj_npc_noidleparticle"):GetInt() == 0 then

		ParticleEffectAttach("burning_gib_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_head"))
		ParticleEffectAttach("embers_medium_03",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_head"))
		ParticleEffectAttach("burning_gib_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
		ParticleEffectAttach("embers_medium_03",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
		ParticleEffectAttach("burning_gib_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
		ParticleEffectAttach("embers_medium_03",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
		ParticleEffectAttach("fire_medium_01_glow",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))
		ParticleEffectAttach("fire_medium_03",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))

		self.Light1 = ents.Create("light_dynamic")
		self.Light1:SetKeyValue("brightness", "5")
		self.Light1:SetKeyValue("distance", "75")
		self.Light1:SetLocalPos(self:GetPos())
		self.Light1:SetLocalAngles(self:GetAngles())
		self.Light1:Fire("Color", "255 191 0 255")
		self.Light1:SetParent(self)
		self.Light1:Spawn()
		self.Light1:Activate()
		self.Light1:Fire("SetParentAttachment","chest")
		self.Light1:Fire("TurnOn", "", 0)
		self:DeleteOnRemove(self.Light1)

		VJ_EmitSound(self,{"ambient/fire/gascan_ignite1.wav","ambient/fire/ignite.wav"},100,math.random(100,95))

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Ghillie_StopBurning()

	self.IdleAlwaysWander = false
	self.MilZ_Ghillie_PlayChangeStateAnim = 1
	self.MilZ_Ghillie_IsOnFire = false

	self:StopParticles()
	self.Light1:Fire("Kill", "", 0)

	self.AnimTbl_IdleStand = {ACT_IDLE}
	if self.LNR_UsingRelaxedIdle == true then
		self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
	end

	if self.LNR_Walker then

		self.AnimTbl_Walk = {ACT_WALK}
		self.AnimTbl_Run = {ACT_RUN}

	else

		self.AnimTbl_Walk = {ACT_SPRINT}
		self.AnimTbl_Run = {ACT_RUN_RELAXED}

	end

	self.MilZ_Ghillie_PlayChangeStateAnim = 1

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RangeAttackCode_GetShootPos(projectile)

	if self.MilZ_CanShuutDeGun == true then return end

	return (self:GetEnemy():GetPos() - self:LocalToWorld(Vector(80,0,0)))*2 + self:GetUp()*120

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomRangeAttackCode()

	if self.MilZ_HasGun == false or self.MilZ_CanShuutDeGun == false then return end

    if
		(self:GetActivity() == ACT_WALK_PISTOL or self:GetActivity() == ACT_RUN_PISTOL or self:GetActivity() == ACT_RUN_AIM_PISTOL) &&
		(!self.VJ_IsBeingControlled or self.VJ_IsBeingControlled && self.VJ_TheController:KeyDown(IN_ATTACK2))
	then

		if self.MilZ_GunAmmo >= 0  then

			VJ_EmitSound(self, "vj_weapons/dryfire_pistol.wav", 70, 100)

		end

		if self.MilZ_GunAmmo < 18 and self.MilZ_GunAmmo > 0 then

			local bullet = {}
			bullet.Num = 1
			bullet.Src = self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos
			bullet.Dir = (self:GetEnemy():GetPos()+self:GetEnemy():OBBCenter()+self:GetEnemy():GetUp()*-45) -self:GetPos()
			bullet.Spread = Vector(50,40,30)
			bullet.Tracer = 1
			bullet.TracerName = "Tracer"
			bullet.Force = 5
			bullet.Damage = math.random(5,10)
			bullet.AmmoType = "SMG1"
			self:FireBullets(bullet)
			VJ_EmitSound(self, "vj_weapons/glock_17/glock17_single.wav", 100, 100)

			local flash = ents.Create("env_muzzleflash")
			flash:SetPos(self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos)
			flash:SetKeyValue("scale","1")
			flash:SetKeyValue("angles",tostring(self:GetForward():Angle()))
			flash:Fire("Fire",0,0)

			local FireLight1 = ents.Create("light_dynamic")
			FireLight1:SetKeyValue("brightness", "4")
			FireLight1:SetKeyValue("distance", "120")
			FireLight1:SetPos(self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos)
			FireLight1:SetLocalAngles(self:GetAngles())
			FireLight1:Fire("Color", "255 150 60")
			FireLight1:SetParent(self)
			FireLight1:Spawn()
			FireLight1:Activate()
			FireLight1:Fire("TurnOn","",0)
			FireLight1:Fire("Kill","",0.07)
			self:DeleteOnRemove(FireLight1)

			local effectData = EffectData()
			effectData:SetOrigin(self:GetPos())
			util.Effect("ShellEject", effectData)

			if GetConVar("VJ_ToTU_MilZ_ShootableGun_Bullets_Infinite"):GetInt() == 0 then
				self.MilZ_GunAmmo = self.MilZ_GunAmmo - 1
				if self.VJ_IsBeingControlled then
					self.VJ_TheController:ChatPrint("Ammo left: "..self.MilZ_GunAmmo.."")
				end
			end

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)

	if self.MilZ_Airman_IsAirman then return end

	if self.MilZ_Ghost_IsGhost && !self.MilZ_Ghost_CloakBroke && self.MilZ_Ghost_CloakDamageable then

		self.MilZ_Ghost_CloakHP = self.MilZ_Ghost_CloakHP -dmginfo:GetDamage()

		if self.MilZ_Ghost_CloakHP <= 0 && !self.MilZ_Ghost_CloakBroke && self.MilZ_Ghost_CloakDamageable then

			self:ToTU_Ghost_BreakCloak()

		end

	end

	if GetConVar("VJ_ToTU_General_Armor_Allow"):GetInt() == 0 then return end

	if self.MilZ_HasFlakSuit == true then

		if
			dmginfo:IsExplosionDamage() or
			dmginfo:IsDamageType(DMG_BLAST_SURFACE) or
			dmginfo:IsDamageType(DMG_MISSILEDEFENSE) or
			dmginfo:IsDamageType(DMG_ALWAYSGIB)
		then

			dmginfo:ScaleDamage(0.50)

		end

	end

	if
		hitgroup == HITGROUP_GENERIC &&
		(dmginfo:IsDamageType(DMG_CLUB) or
		dmginfo:IsDamageType(DMG_SLASH) or
		dmginfo:IsDamageType(DMG_GENERIC))
	then

		-- didn't hit a bodygroup, assume they sometimes hit the armor
		-- don't run this for houndeyes and stuff

		if math.random(1,2) == 1 then

			dmginfo:ScaleDamage(0.35)

			if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"fx/armor/bhit_helmet-1.wav",70) end

		end

	end

	if
		hitgroup == HITGROUP_HEAD &&
		self:GetClass() != "npc_vj_totu_milzomb_bulldozer" &&
		self:GetClass() != "npc_vj_totu_fon_bulldozer" &&
		!self.MilZ_HelmetBroken &&
		!self.MiLZ_Ghillie_IsGhillie
	then

		if GetConVar("VJ_ToTU_MilZ_Helmet_Breakable"):GetInt() == 1 then

			self.MilZ_HelmetHealth = self.MilZ_HelmetHealth -dmginfo:GetDamage()

			if self.MilZ_HelmetHealth <= 0 && !self.MilZ_HelmetBroken then

				self.MilZ_HelmetBroken = true

				if self.VJ_IsBeingControlled then
					self.VJ_TheController:ChatPrint("Your helmet broke!")
					local badtotheboner = CreateSound(self.VJ_TheController, "common/warning.wav")
					badtotheboner:SetSoundLevel(0)
					badtotheboner:Play()
				end

				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/wood/wood_box_break1.wav","physics/wood/wood_box_break2.wav"},70) end
				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/plastic/plastic_box_break1.wav","physics/plastic/plastic_box_break2.wav"},70) end
				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/wood/wood_strain2.wav","physics/wood/wood_strain3.wav","physics/wood/wood_strain4.wav"},70) end

				self:RemoveAllDecals()

				local spark = ents.Create("env_spark")
				spark:SetKeyValue("Magnitude","1")
				spark:SetKeyValue("Spark Trail Length","1")
				spark:SetPos(dmginfo:GetDamagePosition())
				spark:SetAngles(self:GetAngles())
				spark:SetParent(self)
				spark:Spawn()
				spark:Activate()
				spark:Fire("StartSpark","",0)
				spark:Fire("StopSpark","",0.001)
				self:DeleteOnRemove(spark)

				if self.MilZ_HasGasmask then

					self:SetBodygroup(4,8)

				else

					self:SetBodygroup(4,7)

				end

				self.Bleeds = true

		return end

		end

		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"fx/armor/bhit_helmet-1.wav",70) end

		self.Bleeds = false

		if
			dmginfo:IsBulletDamage() or
			dmginfo:IsDamageType(DMG_BUCKSHOT) or
			dmginfo:IsDamageType(DMG_SLASH) or
			dmginfo:IsDamageType(DMG_CLUB)
		then

			dmginfo:ScaleDamage(0.005)

			local spark = ents.Create("env_spark")
			spark:SetKeyValue("Magnitude","1")
			spark:SetKeyValue("Spark Trail Length","1")
			spark:SetPos(dmginfo:GetDamagePosition())
			spark:SetAngles(self:GetAngles())
			spark:SetParent(self)
			spark:Spawn()
			spark:Activate()
			spark:Fire("StartSpark","",0)
			spark:Fire("StopSpark","",0.001)
			self:DeleteOnRemove(spark)

		end

	end

	if hitgroup == HITGROUP_CHEST or hitgroup == HITGROUP_STOMACH then
	
		self.Bleeds = true

		if
			dmginfo:IsBulletDamage() or
			dmginfo:IsDamageType(DMG_BUCKSHOT) or
			dmginfo:IsDamageType(DMG_SLASH) or
			dmginfo:IsDamageType(DMG_CLUB)
		then

			if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"fx/armor/bhit_helmet-1.wav",70) end

			if math.random(1,3) == 1 then

				dmginfo:ScaleDamage(0.50)

				local spark = ents.Create("env_spark")
				spark:SetKeyValue("Magnitude","1")
				spark:SetKeyValue("Spark Trail Length","1")
				spark:SetPos(dmginfo:GetDamagePosition())
				spark:SetAngles(self:GetAngles())
				spark:SetParent(self)
				spark:Spawn()
				spark:Activate()
				spark:Fire("StartSpark","",0)
				spark:Fire("StopSpark","",0.001)
				self:DeleteOnRemove(spark)

			else

				dmginfo:ScaleDamage(0.35)

			end

		end

	end

	if !self.MilZ_HasFlakSuit then return end

	if hitgroup == HITGROUP_LEFTARM or hitgroup == HITGROUP_RIGHTARM or hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then

		self.Bleeds = true

		if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SLASH) then

		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"fx/armor/kevlar"..math.random(1,5)..".wav",70) end

			if math.random(1,3) == 1 then

				dmginfo:ScaleDamage(1)

				local spark = ents.Create("env_spark")
				spark:SetKeyValue("Magnitude","1")
				spark:SetKeyValue("Spark Trail Length","1")
				spark:SetPos(dmginfo:GetDamagePosition())
				spark:SetAngles(self:GetAngles())
				spark:SetParent(self)
				spark:Spawn()
				spark:Activate()
				spark:Fire("StartSpark","",0)
				spark:Fire("StopSpark","",0.001)
				self:DeleteOnRemove(spark)

			else

				dmginfo:ScaleDamage(0.50)

			end	

		end	

	end

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/