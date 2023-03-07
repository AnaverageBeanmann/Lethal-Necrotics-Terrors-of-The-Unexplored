AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.GeneralSoundPitch1 = 85
ENT.GeneralSoundPitch2 = 80
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()
	self.MilZ_IsMilZ = true

	self.Model = {"models/totu/remort.mdl"}
	timer.Simple(0.1,function() if IsValid(self) then
		self.AnimTbl_Walk = {ACT_WALK}
		self.AnimTbl_Run = {ACT_RUN}
	end end)
	self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(3,10)

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
			"fx/radio/1/radio_1.mp3",
			"fx/radio/1/radio_2.mp3",
			"fx/radio/1/radio_3.mp3",
			"fx/radio/1/radio_4.mp3",
			"fx/radio/1/radio_5.mp3",
			"fx/radio/1/radio_6.mp3",
			"fx/radio/1/radio_7.mp3",
			"fx/radio/1/radio_8.mp3",
			"fx/radio/1/radio_9.mp3"
		}

	end

	if math.random(1,7) == 1 then

		self.SoundTbl_Breath = {
			"fx/radio/2/beep.mp3",
			"fx/radio/2/radio_1.mp3",
			"fx/radio/2/radio_2.mp3",
			"fx/radio/2/radio_3.mp3",
			"fx/radio/2/radio_4.mp3",
			"fx/radio/2/radio_5.mp3",
			"fx/radio/2/radio_6.mp3",
			"fx/radio/2/radio_7.mp3",
			"fx/radio/2/radio_8.mp3",
			"fx/radio/2/radio_9.mp3",
			"fx/radio/2/radio_10.mp3",
			"fx/radio/2/radio_11.mp3",
			"fx/radio/2/radio_12.mp3",
			"fx/radio/2/radio_13.mp3",
			"fx/radio/2/radio_14.mp3",
			"fx/radio/2/radio_15.mp3",
			"fx/radio/2/radio_16.mp3",
			"fx/radio/2/radio_17.mp3",
			"fx/radio/2/radio_18.mp3",
			"fx/radio/2/radio_19.mp3",
			"fx/radio/2/radio_20.mp3",
			"fx/radio/2/radio_21.mp3",
			"fx/radio/2/radio_22.mp3",
			"fx/radio/2/radio_23.mp3",
			"fx/radio/2/radio_24.mp3",
			"fx/radio/2/radio_25.mp3",
			"fx/radio/2/radio_26.mp3",
			"fx/radio/2/radio_27.mp3",
			"fx/radio/2/radio_28.mp3"
		}

	end

	if
		GetConVar("VJ_ToTU_MilZ_Gasmasks_Allow"):GetInt() == 1 &&
		math.random(1,GetConVar("VJ_ToTU_MilZ_Gasmasks_Chance"):GetInt()) == 1
	then
		self.MilZ_HasGasmask = true
		self.CanEat = false
	end

	if 
		GetConVar("VJ_ToTU_MilZ_FlakArmor_Allow"):GetInt() == 1 &&
		math.random(1,GetConVar("VJ_ToTU_MilZ_FlakArmor_Chance"):GetInt()) == 1 &&
		!self.MilZ_Det_IsDetonator
	then
		self.MilZ_HasFlakSuit = true
	end

	
	if
		GetConVar("VJ_ToTU_Weaponized_Remort_Caretakers_Allow"):GetInt() == 1 &&
		math.random(1,GetConVar("VJ_ToTU_Weaponized_Remort_Caretakers_Chance"):GetInt()) == 1
	then

		self.ToTU_Weaponized_Redead_Grunt_IsCaretaker = true

		self.Model = {"models/totu/remort_med.mdl"}
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
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()

	if self:GetClass() == "npc_vj_totu_weaponized_redead_grunt" then

		self.ItemDropsOnDeath_EntityList = {
			"item_ammo_pistol",
			"item_ammo_357",
			"item_ammo_smg1",
			"item_ammo_ar2",
			"item_box_buckshot",
		}

	end

	if math.random(1,2) == 1 then

		self:SetBodygroup(2,math.random(0,2))

	else

		self:SetBodygroup(2,math.random(4,6))

	end

	if math.random(1,4) == 1 then

		self:SetBodygroup(3,1)

	end

	if self.MilZ_HasGasmask == false then

		self:SetBodygroup(4,math.random(1,6))

		if self:GetBodygroup(4) == 5 then
			self.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyeglow = false
		end

		if self:GetBodygroup(4) == 2 then
			self.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyetrail = false
		end

		if self.LNR_Biter == false then

			if math.random(1,2) == 1 then
				self:SetBodygroup(1,1)
				self.CanEat = false
			else
				self:SetBodygroup(1,0)
			end

		end

	end

	if self.MilZ_HasFlakSuit == true then

		self:SetBodygroup(2,3)

	end

	if self.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyeglow then
		if self.DisableFindEnemy == true then
			timer.Simple(1.4,function() if IsValid(self) then
				self:Zombie_GlowEyes_Give()
			end end)
		else
			self:Zombie_GlowEyes_Give()
		end
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

	self.ToTU_Almanac_VoiceActor = "Security Zombie (Nightmare House 2)"

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_GlowEyes_Give()

	for i = 1,2 do	
		local att = i == 2 && "eyeglow1" or "eyeglow2"		
		local EyeGlow = ents.Create("env_sprite")
		EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		EyeGlow:SetKeyValue("scale","0.02")
		EyeGlow:SetKeyValue("rendermode","5")
		EyeGlow:SetKeyValue("rendercolor","220 0 255 255")
		EyeGlow:SetKeyValue("spawnflags","1") 
		EyeGlow:SetParent(self)
		EyeGlow:Fire("SetParentAttachment",att,0)
		EyeGlow:Spawn()
		EyeGlow:Activate()
		self:DeleteOnRemove(EyeGlow)
	end

	if self.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyetrail && !self.MilZ_HasGasmask then
		local TrailColor = Color(220,0,255,255)
		local EyeTrail = util.SpriteTrail(self,10,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		local EyeTrail2 = util.SpriteTrail(self,9,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 100
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(25,30)

	else

		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(10,15)

	end

	self:SetHealth(self.StartHealth)

	self.LNR_LegHP = self.StartHealth * 0.20

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)

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
		!self.MilZ_HelmetBroken
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

				if !self.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyetrail && !self.MilZ_HasGasmask then
					local TrailColor = Color(220,0,255,255)
					local EyeTrail = util.SpriteTrail(self,10,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
					local EyeTrail2 = util.SpriteTrail(self,9,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
				end


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

				if self:GetBodygroup(4) == 5 then
					self:Zombie_GlowEyes_Give()
				end

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