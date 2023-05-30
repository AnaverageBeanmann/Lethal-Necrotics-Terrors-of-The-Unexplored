AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.ToTU_Weaponized_Redead_Infectee = false
ENT.ToTU_Weaponized_Redead_NextRunT = 0
ENT.ToTU_Weaponized_Redead_RunT = 0
ENT.ToTU_Weaponized_Redead_Running = false
ENT.MilZ_HasGasmask = false
ENT.MilZ_HasFlakSuit = false
ENT.MilZ_IsMilZ = false
ENT.MilZ_HelmetHealth = 1
ENT.MilZ_HelmetBroken = false
ENT.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyeglow = true
ENT.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyetrail = true
ENT.ToTU_Weaponized_Cancer_FireDeath = false
ENT.ToTU_Weaponized_Revenant_Reviving = false
ENT.ToTU_Weaponized_Revenant_CanDoReviveEffects = true
ENT.ToTU_Weaponized_NextHealTime = 0
ENT.ToTU_Weaponized_Redead_Grunt_IsCaretaker = false
ENT.ToTU_Weaponized_Revenant_NextBuffTime = 0
ENT.ToTU_Weaponized_PoopShitter = false
ENT.ToTU_Weaponized_Shitter = false
ENT.ToTU_Weaponized_HasWeapon = false
ENT.ToTU_Weaponized_WeaponBleed = false
ENT.ToTU_Weapnoized_Revenant_GoingToCorpse = false
ENT.ToTU_Weapnoized_Revenant_AtCorpse = false
ENT.ToTU_Weapnoized_Revenant_NextCheckT = 0
ENT.ToTU_Weaponized_Gail_GoHeal = false
ENT.ToTU_Weaponized_Gail_CanHeal = false
ENT.ToTU_Weaponized_Gail_Healing = false
ENT.ToTU_Weaponized_Gail_HealT = false
ENT.ToTU_Weaponized_Gail_HealRingT = 0
ENT.ToTU_Weaponized_Gail_DamageTillHeal = 1
ENT.ToTU_Weaponized_Redead_Guard_HasHelmet = false
ENT.ToTU_Weaponized_Redead_Guard_HelmetHealth = 100
ENT.ToTU_Weaponized_Redead_Guard_HasVest = false
ENT.ToTU_Weaponized_Redead_CanMutate = false
ENT.ToTU_Weaponized_Redead_CannotDigout = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()

	self.Model = {"models/totu/redead.mdl"}

	if self:GetClass() == "npc_vj_totu_deimos_reborn" then
		self.Model = {"models/totu/reborn.mdl"}
	end

	if self:GetClass() == "npc_vj_totu_deimos_redead_sci" then
		self.Model = {"models/totu/deimort_sci.mdl"}
	end

	if self:GetClass() == "npc_vj_totu_deimos_redead_guard" then
		self.Model = {"models/totu/deimort_guard.mdl"}
	end

	if self:GetClass() == "npc_vj_totu_fon_gail" then
		self.Model = {"models/totu/fon_gail.mdl"}
	end

	if self.ToTU_Weaponized_PoopShitter then
		self.Model = {"models/totu/thepoopshitter.mdl"}
	end

	timer.Simple(0.1,function() if IsValid(self) && !self.LNR_Crippled  then
		self.AnimTbl_Walk = {ACT_MP_MELEE_GRENADE1_IDLE}
		if self:GetClass() == "npc_vj_totu_fon_gail" then
			self.AnimTbl_Run = {ACT_RUN_AIM}
		else
			self.AnimTbl_Run = {ACT_SPRINT}
		end
		self.AnimTbl_IdleStand = {ACT_IDLE_AIM_STIMULATED}
		if self.LNR_UsingRelaxedIdle == true then
			self.AnimTbl_IdleStand = {ACT_IDLE}
		end
	end end)

	self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(3,10)

	if math.random(1,3) == 1 && !self.LNR_Crippled && !self.ToTU_Weaponized_Shitter && !self.ToTU_Weaponized_PoopShitter && self:GetClass() == "npc_vj_totu_deimos_redead" then

		self:ZombieWeapons()

	end

	if math.random(1,3) == 1 && !self.LNR_Crippled && !self.ToTU_Weaponized_Shitter && !self.ToTU_Weaponized_PoopShitter && self:GetClass() == "npc_vj_totu_deimos_redead" then

		self.HasRangeAttack = true
		-- self.RangeAttackEntityToSpawn = "obj_vj_totu_trash"
		self.RangeAttackEntityToSpawn = "obj_vj_totu_molotov"
		self.RangeAttackAnimationFaceEnemy = true
		self.AnimTbl_RangeAttack = {"vjseq_throwsomeshit"}
		self.RangeDistance = 750 
		self.RangeToMeleeDistance = 1 
		self.RangeAttackAngleRadius = 100
		self.TimeUntilRangeAttackProjectileRelease = 1.6
		self.NextRangeAttackTime = math.random(15,20)
		-- self.RangeUseAttachmentForPos = true 
		-- self.RangeUseAttachmentForPosID = "anim_attachment_LH"
		-- self.RangeAttackPos_Forward = 20
		self.RangeAttackPos_Up = 65
		self.RangeAttackPos_Right = -10

	end


end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()

	self:SetSkin(math.random(0,9))

	if math.random(1,9) != 1 && !self.ToTU_Weaponized_Redead_Infectee && !self.ToTU_Weaponized_Shitter && self:GetClass() == "npc_vj_totu_deimos_redead" then
		self:SetBodygroup(1,math.random(1,8))
		local RandomBody = math.random(1,2)
		if RandomBody == 1 then
			self:SetBodygroup(0,1)
			self:SetBodygroup(2,1)
			self:SetBodygroup(3,1)
			self:SetBodygroup(4,1)
		else
			self:SetBodygroup(0,2)
			self:SetBodygroup(2,2)
			self:SetBodygroup(3,2)
			self:SetBodygroup(4,2)
		end
	end

	if
		self:GetClass() == "npc_vj_totu_deimos_redead" or
		self:GetClass() == "npc_vj_totu_deimos_redead_sci" or
		self:GetClass() == "npc_vj_totu_deimos_redead_guard"
	then
		if math.random(1,3) == 1 then
			self.ToTU_Weaponized_Redead_CanMutate = true
		end
	end

	if self:GetClass() == "npc_vj_totu_deimos_redead_sci" or self:GetClass() == "npc_vj_totu_deimos_redead_guard" then
		self:SetSkin(math.random(0,14))
		if self:GetClass() == "npc_vj_totu_deimos_redead_guard" then
			self:SetBodygroup(2,1)
			if math.random(1,3) == 1 then
				self:SetBodygroup(3,3)
			end
			local randholster = math.random(1,5)
			if randholster == 1 then
				self:SetBodygroup(4,0)
			elseif randholster == 2 then
				self:SetBodygroup(4,1)
			else
				self:SetBodygroup(4,2)
			end
			if math.random(1,3) == 1 then
				self:SetBodygroup(5,1)
			end
			if math.random(1,3) == 1 then
				self.ToTU_Weaponized_Redead_Guard_HasVest = true
				self:SetBodygroup(3,1)
				if math.random(1,3) == 1 then
					self:SetBodygroup(3,2)
				end
			end
			if math.random(1,3) == 1 then
				self.ToTU_Weaponized_Redead_Guard_HasHelmet = true
				self:SetBodygroup(2,0)
			end
		end
	end

	if self.DisableFindEnemy == true then
		timer.Simple(1.4,function() if IsValid(self) then
			self:Zombie_GlowEyes_Give()
		end end)
	else
		self:Zombie_GlowEyes_Give()
	end

	if self:GetClass() == "npc_vj_totu_deimos_cancer" then	
		self:SetModelScale(1.2)
		self:SetSkin(math.random(0,3))
	end

	if self:GetClass() == "npc_vj_totu_fon_gail" then	
		self:SetBodygroup(2,0)
		self:SetModelScale(1.1)
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_GlowEyes_Give()

	if self.ToTU_Weaponized_Redead_Infectee or GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 0 or GetConVar("vj_npc_noidleparticle"):GetInt() == 1 then return end

	if self:GetBodygroup(0) == 0  then
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

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local TrailColor = Color(220,0,255,255)
			local EyeTrail = util.SpriteTrail(self,8,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,9,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

	if self:GetBodygroup(1) == 1  then
		for i = 1,2 do	
			local att = i == 2 && "eyeglow1_van" or "eyeglow2_van"		
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

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local TrailColor = Color(220,0,255,255)
			local EyeTrail = util.SpriteTrail(self,10,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,11,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

	if self:GetBodygroup(1) == 2  then
		for i = 1,2 do	
			local att = i == 2 && "eyeglow1_ted" or "eyeglow2_ted"		
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

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local TrailColor = Color(220,0,255,255)
			local EyeTrail = util.SpriteTrail(self,12,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,13,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

	if self:GetBodygroup(1) == 3  then
		for i = 1,2 do	
			local att = i == 2 && "eyeglow1_joe" or "eyeglow2_joe"		
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

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local TrailColor = Color(220,0,255,255)
			local EyeTrail = util.SpriteTrail(self,14,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,15,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

	if self:GetBodygroup(1) == 4  then
		for i = 1,2 do	
			local att = i == 2 && "eyeglow1_art" or "eyeglow2_art"
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

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local TrailColor = Color(220,0,255,255)
			local EyeTrail = util.SpriteTrail(self,16,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,17,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

	if self:GetBodygroup(1) == 5  then
		for i = 1,2 do	
			local att = i == 2 && "eyeglow1_sandro" or "eyeglow2_sandro"
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

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local TrailColor = Color(220,0,255,255)
			local EyeTrail = util.SpriteTrail(self,18,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,19,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

	if self:GetBodygroup(1) == 6  then

		local EyeGlow = ents.Create("env_sprite")
		EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		EyeGlow:SetKeyValue("scale","0.02")
		EyeGlow:SetKeyValue("rendermode","5")
		EyeGlow:SetKeyValue("rendercolor","220 0 255 255")
		EyeGlow:SetKeyValue("spawnflags","1") 
		EyeGlow:SetParent(self)
		EyeGlow:Fire("SetParentAttachment","eyeglow_mike",0)
		EyeGlow:Spawn()
		EyeGlow:Activate()
		self:DeleteOnRemove(EyeGlow)

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local TrailColor = Color(220,0,255,255)
			local EyeTrail = util.SpriteTrail(self,20,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end

	end
	
	if self:GetBodygroup(1) == 7  then
		for i = 1,2 do	
			local att = i == 2 && "eyeglow1_vance" or "eyeglow2_vance"
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

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local TrailColor = Color(220,0,255,255)
			local EyeTrail = util.SpriteTrail(self,21,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,22,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

	if self:GetBodygroup(1) == 8  then
		for i = 1,2 do	
			local att = i == 2 && "eyeglow1_erdim" or "eyeglow2_erdim"
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

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local TrailColor = Color(220,0,255,255)
			local EyeTrail = util.SpriteTrail(self,23,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,24,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Idle = {
		"voices/deimos/redead/idle_1.mp3",
		"voices/deimos/redead/idle_2.mp3",
		"voices/deimos/redead/idle_3.mp3"
	}

	self.SoundTbl_Alert = {
		"voices/deimos/redead/spawn_1.mp3",
		"voices/deimos/redead/spawn_2.mp3",
		"voices/deimos/redead/spawn_3.mp3"
	}

	self.SoundTbl_CombatIdle = {
		"voices/deimos/redead/idle_1.mp3",
		"voices/deimos/redead/idle_2.mp3",
		"voices/deimos/redead/idle_3.mp3"
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"voices/deimos/redead/attack_1.mp3",
		"voices/deimos/redead/attack_2.mp3",
		"voices/deimos/redead/attack_3.mp3"
	}

	self.SoundTbl_Pain = {
		"voices/deimos/redead/pain_1.mp3",
		"voices/deimos/redead/pain_2.mp3",
		"voices/deimos/redead/pain_3.mp3"
	}

	self.SoundTbl_Death = {
		"voices/deimos/redead/death_1.mp3",
		"voices/deimos/redead/death_2.mp3",
		"voices/deimos/redead/death_3.mp3"
	}
	
	self.ToTU_Almanac_VoiceActor = "Possessed (Doom 2016)"

	if GetConVar("VJ_ToTU_General_TF2Mode"):GetInt() == 1 then
		if self:GetClass() == "npc_vj_totu_deimos_redead" then
			self.SoundTbl_Idle = {
				"vo/taunts/engy/eng_guzzle_04_burp.mp3",
				"ambient/voices/cough1.wav",
				"ambient/voices/cough2.wav",
				"ambient/voices/cough3.wav",
				"ambient/voices/cough4.wav",
				"vo/engineer_laughshort01.mp3",
				"vo/engineer_laughshort02.mp3",
				"vo/engineer_laughshort03.mp3",
				"vo/engineer_laughshort04.mp3",
				"vo/engineer_laughevil01.mp3",
				"vo/engineer_laughevil02.mp3",
				"vo/engineer_laughevil03.mp3",
				"vo/engineer_laughevil04.mp3",
				"vo/engineer_laughevil05.mp3",
				"vo/engineer_laughevil06.mp3",
			}

			self.SoundTbl_Alert = {
				"vo/engineer_battlecry03.mp3",
				"vo/engineer_battlecry04.mp3",
				"vo/engineer_battlecry05.mp3",
				"vo/engineer_dominationengineer05.mp3",
				"vo/engineer_dominationengineer06.mp3",
				"vo/engineer_incoming01.mp3",
				"vo/engineer_incoming02.mp3",
				"vo/engineer_incoming03.mp3",
				"vo/engineer_meleedare01.mp3",
				"vo/engineer_meleedare02.mp3",
				"vo/engineer_meleedare03.mp3",
				"vo/taunts/engineer_taunts01.mp3",
				"vo/taunts/engineer_taunts03.mp3",
				"vo/taunts/engineer_taunts04.mp3",
				"vo/taunts/engineer_taunts05.mp3",
				"vo/taunts/engineer_taunts06.mp3",
				"vo/taunts/engineer_taunts08.mp3",
				"vo/taunts/engineer_taunts10.mp3",
				"vo/taunts/engineer_taunts12.mp3"
			}

			self.SoundTbl_CallForHelp = {
				"vo/engineer_go01.mp3",
				"vo/engineer_go02.mp3",
				"vo/engineer_go03.mp3",
				"vo/engineer_helpme01.mp3",
				"vo/engineer_helpme02.mp3",
				"vo/engineer_helpme03.mp3",
			}

			self.SoundTbl_CombatIdle = {
				"vo/engineer_battlecry01.mp3",
				"vo/engineer_battlecry06.mp3",
				"vo/engineer_battlecry07.mp3",
				"vo/engineer_cheers01.mp3",
				"vo/engineer_cheers02.mp3",
				"vo/engineer_cheers07.mp3",
				"vo/engineer_gunslingertriplepunchfinal01.mp3",
				"vo/engineer_laughevil01.mp3",
				"vo/engineer_laughevil02.mp3",
				"vo/engineer_laughevil03.mp3",
				"vo/engineer_laughevil04.mp3",
				"vo/engineer_laughevil05.mp3",
				"vo/engineer_laughevil06.mp3",
				"vo/engineer_laughhappy01.mp3",
				"vo/engineer_laughhappy02.mp3",
				"vo/engineer_laughhappy03.mp3",
				"vo/engineer_laughlong01.mp3",
				"vo/engineer_laughlong02.mp3",
				"vo/engineer_laughshort01.mp3",
				"vo/engineer_laughshort02.mp3",
				"vo/engineer_laughshort03.mp3",
				"vo/engineer_laughshort04.mp3",
				"vo/engineer_sentrymoving02.mp3"
			}

			self.SoundTbl_BeforeMeleeAttack = {
				"vo/engineer_gunslingerpunch01.mp3",
				"vo/engineer_gunslingerpunch02.mp3",
				"vo/engineer_gunslingerpunch03.mp3",
				"vo/engineer_gunslingertriplepunchfinal02.mp3",
				"vo/engineer_gunslingertriplepunchfinal03.mp3"
			}

			self.SoundTbl_OnKilledEnemy = {
				"vo/engineer_autocappedcontrolpoint01.mp3",
				"vo/engineer_autocappedcontrolpoint02.mp3",
				"vo/engineer_autocappedintelligence01.mp3",
				"vo/engineer_autocappedintelligence02.mp3",
				"vo/engineer_autocappedintelligence03.mp3",
				"vo/engineer_cheers03.mp3",
				"vo/engineer_cheers04.mp3",
				"vo/engineer_cheers05.mp3",
				"vo/engineer_cheers06.mp3",
				"vo/engineer_dominationdemoman01.mp3",
				"vo/engineer_dominationdemoman04.mp3",
				"vo/engineer_dominationengineer01.mp3",
				"vo/engineer_dominationengineer03.mp3",
				"vo/engineer_dominationengineer07.mp3",
				"vo/engineer_dominationengineer09.mp3",
				"vo/engineer_dominationheavy02.mp3",
				"vo/engineer_dominationheavy03.mp3",
				"vo/engineer_dominationheavy04.mp3",
				"vo/engineer_dominationheavy05.mp3",
				"vo/engineer_dominationheavy06.mp3",
				"vo/engineer_dominationheavy07.mp3",
				"vo/engineer_dominationheavy08.mp3",
				"vo/engineer_dominationheavy09.mp3",
				"vo/engineer_dominationheavy10.mp3",
				"vo/engineer_dominationheavy11.mp3",
				"vo/engineer_dominationheavy12.mp3",
				"vo/engineer_dominationheavy14.mp3",
				"vo/engineer_dominationpyro01.mp3",
				"vo/engineer_dominationpyro02.mp3",
				"vo/engineer_dominationpyro06.mp3",
				"vo/engineer_dominationscout01.mp3",
				"vo/engineer_dominationscout03.mp3",
				"vo/engineer_dominationscout06.mp3",
				"vo/engineer_dominationscout07.mp3",
				"vo/engineer_dominationscout11.mp3",
				"vo/engineer_dominationsoldier02.mp3",
				"vo/engineer_dominationsoldier03.mp3",
				"vo/engineer_dominationsoldier08.mp3",
				"vo/engineer_dominationspy07.mp3",
				"vo/engineer_dominationspy08.mp3",
				"vo/engineer_dominationspy11.mp3",
				"vo/engineer_dominationspy13.mp3",
				"vo/engineer_mvm_close_call01.mp3",
				"vo/engineer_mvm_get_upgrade01.mp3",
				"vo/engineer_positivevocalization01.mp3",
				"vo/engineer_revenge01.mp3",
				"vo/engineer_revenge02.mp3",
				"vo/engineer_sf13_influx_big01.mp3",
				"vo/engineer_specialcompleted01.mp3",
				"vo/engineer_specialcompleted02.mp3",
				"vo/engineer_specialcompleted03.mp3",
				"vo/engineer_specialcompleted04.mp3",
				"vo/engineer_specialcompleted05.mp3",
				"vo/engineer_specialcompleted10.mp3",
				"vo/engineer_specialcompleted11.mp3"
			}

			self.SoundTbl_AllyDeath = {
				"vo/engineer_autodejectedtie01.mp3",
				"vo/engineer_autodejectedtie02.mp3",
				"vo/engineer_autodejectedtie03.mp3",
				"vo/engineer_jeers01.mp3",
				"vo/engineer_jeers02.mp3",
				"vo/engineer_jeers03.mp3",
				"vo/engineer_jeers04.mp3",
				"vo/engineer_negativevocalization01.mp3",
				"vo/engineer_negativevocalization02.mp3",
				"vo/engineer_negativevocalization03.mp3",
				"vo/engineer_negativevocalization04.mp3",
				"vo/engineer_negativevocalization05.mp3",
				"vo/engineer_negativevocalization06.mp3",
				"vo/engineer_negativevocalization07.mp3",
				"vo/engineer_negativevocalization08.mp3",
				"vo/engineer_negativevocalization09.mp3",
				"vo/engineer_negativevocalization10.mp3",
				"vo/engineer_negativevocalization11.mp3",
				"vo/engineer_negativevocalization12.mp3"
			}

			self.SoundTbl_Pain = {
				"vo/engineer_medic01.mp3",
				"vo/engineer_medic02.mp3",
				"vo/engineer_medic03.mp3",
				"vo/engineer_painsevere01.mp3",
				"vo/engineer_painsevere02.mp3",
				"vo/engineer_painsevere03.mp3",
				"vo/engineer_painsevere04.mp3",
				"vo/engineer_painsevere05.mp3",
				"vo/engineer_painsevere06.mp3",
				"vo/engineer_painsevere07.mp3",
				"vo/engineer_painsharp01.mp3",
				"vo/engineer_painsharp02.mp3",
				"vo/engineer_painsharp03.mp3",
				"vo/engineer_painsharp04.mp3",
				"vo/engineer_painsharp05.mp3",
				"vo/engineer_painsharp06.mp3",
				"vo/engineer_painsharp07.mp3",
				"vo/engineer_painsharp08.mp3",
			}

			self.SoundTbl_Death = {
				"vo/engineer_paincrticialdeath01.mp3",
				"vo/engineer_paincrticialdeath02.mp3",
				"vo/engineer_paincrticialdeath03.mp3",
				"vo/engineer_paincrticialdeath04.mp3",
				"vo/engineer_paincrticialdeath05.mp3",
				"vo/engineer_paincrticialdeath06.mp3"
			}
			
			self.ToTU_Almanac_VoiceActor = "Engineer (Team Fortress 2)"
		end
		
		if self:GetClass() == "npc_vj_totu_deimos_redead_grunt" then
			self.SoundTbl_Idle = {
				"ambient/voices/cough1.wav",
				"ambient/voices/cough2.wav",
				"ambient/voices/cough3.wav",
				"ambient/voices/cough4.wav",
				"vo/soldier_laughevil01.mp3",
				"vo/soldier_laughevil02.mp3",
				"vo/soldier_laughevil03.mp3",
				"vo/soldier_laughshort01.mp3",
				"vo/soldier_laughshort02.mp3",
				"vo/soldier_laughshort03.mp3",
				"vo/soldier_laughshort04.mp3"
			}

			self.SoundTbl_Alert = {
				"vo/soldier_battlecry04.mp3",
				"vo/soldier_battlecry05.mp3",
				"vo/soldier_battlecry01.mp3",
				"vo/soldier_battlecry01.mp3",
				"vo/soldier_battlecry01.mp3",
				"vo/soldier_dominationengineer04.mp3",
				"vo/soldier_dominationscout04.mp3",
				"vo/soldier_incoming01.mp3",
				"vo/soldier_pickaxetaunt01.mp3",
				"vo/soldier_pickaxetaunt02.mp3",
				"vo/soldier_pickaxetaunt03.mp3",
				"vo/soldier_pickaxetaunt04.mp3",
				"vo/soldier_pickaxetaunt05.mp3",
				"vo/soldier_pickaxetaunt06.mp3",
				"vo/soldier_pickaxetaunt01.mp3",
				"vo/soldier_sf12_zombie01.mp3",
				"vo/soldier_specialcompleted04.mp3",
				"vo/taunts/soldier_taunts02.mp3",
				"vo/taunts/soldier_taunts03.mp3",
				"vo/taunts/soldier_taunts05.mp3",
				"vo/taunts/soldier_taunts06.mp3",
				"vo/taunts/soldier_taunts07.mp3",
				"vo/taunts/soldier_taunts08.mp3",
				"vo/taunts/soldier_taunts11.mp3",
				"vo/taunts/soldier_taunts12.mp3",
				"vo/taunts/soldier_taunts14.mp3",
				"vo/taunts/soldier_taunts15.mp3",
				"vo/taunts/soldier_taunts16.mp3",
				"vo/taunts/soldier_taunts17.mp3",
				"vo/taunts/soldier_taunts20.mp3"
			}

			self.SoundTbl_CallForHelp = {
				"vo/soldier_battlecry01.mp3",
				"vo/soldier_battlecry02.mp3",
				"vo/soldier_battlecry03.mp3",
				"vo/soldier_go01.mp3",
				"vo/soldier_go02.mp3",
				"vo/soldier_go03.mp3",
				"vo/soldier_helpme01.mp3",
				"vo/soldier_helpme02.mp3",
				"vo/soldier_helpme03.mp3",
				"vo/soldier_moveup01.mp3",
				"vo/soldier_moveup03.mp3"
			}

			self.SoundTbl_CombatIdle = {
				"vo/soldier_battlecry06.mp3",
				"vo/soldier_laughevil01.mp3",
				"vo/soldier_laughevil02.mp3",
				"vo/soldier_laughevil03.mp3",
				"vo/soldier_laughhappy01.mp3",
				"vo/soldier_laughhappy02.mp3",
				"vo/soldier_laughhappy03.mp3",
				"vo/soldier_laughlong01.mp3",
				"vo/soldier_laughlong02.mp3",
				"vo/soldier_laughlong03.mp3",
				"vo/soldier_laughshort01.mp3",
				"vo/soldier_laughshort02.mp3",
				"vo/soldier_laughshort03.mp3",
				"vo/soldier_laughshort04.mp3",
				"vo/soldier_laughshort01.mp3",
				"vo/soldier_sf12_zombie02.mp3",
				"vo/soldier_sf12_zombie03.mp3",
				"vo/soldier_sf12_zombie04.mp3"
			}

			self.SoundTbl_BeforeMeleeAttack = {
				"vo/soldier_directhittaunt01.mp3",
				"vo/soldier_directhittaunt02.mp3",
				"vo/soldier_directhittaunt03.mp3",
				"vo/soldier_directhittaunt04.mp3",
				"vo/soldier_kaboomalts01.mp3",
				"vo/soldier_kaboomalts02.mp3",
				"vo/soldier_kaboomalts03.mp3",
				"vo/soldier_specialcompleted05.mp3",
				"vo/taunts/soldier_taunts01.mp3"
			}

			self.SoundTbl_OnKilledEnemy = {
				"vo/soldier_cheers01.mp3",
				"vo/soldier_cheers02.mp3",
				"vo/soldier_cheers03.mp3",
				"vo/soldier_cheers04.mp3",
				"vo/soldier_cheers05.mp3",
				"vo/soldier_cheers06.mp3",
				"vo/soldier_autocappedintelligence02.mp3",
				"vo/soldier_dominationmedic03.mp3",
				"vo/soldier_dominationpyro07.mp3",
				"vo/soldier_dominationpyro09.mp3",
				"vo/soldier_dominationscout03.mp3",
				"vo/soldier_dominationscout04.mp3",
				"vo/soldier_dominationscout08.mp3",
				"vo/soldier_dominationscout09.mp3",
				"vo/soldier_dominationscout10.mp3",
				"vo/soldier_dominationsniper12.mp3",
				"vo/soldier_dominationsniper13.mp3",
				"vo/soldier_dominationsoldier01.mp3",
				"vo/soldier_dominationsoldier02.mp3",
				"vo/soldier_dominationsoldier03.mp3",
				"vo/soldier_dominationsoldier04.mp3",
				"vo/soldier_dominationsoldier05.mp3",
				"vo/soldier_dominationsoldier06.mp3",
				"vo/soldier_dominationsoldier01.mp3",
				"vo/soldier_hatoverhearttaunt01.mp3",
				"vo/soldier_hatoverhearttaunt02.mp3",
				"vo/soldier_hatoverhearttaunt03.mp3",
				"vo/soldier_hatoverhearttaunt04.mp3",
				"vo/soldier_hatoverhearttaunt05.mp3",
				"vo/soldier_hatoverhearttaunt06.mp3",
				"vo/soldier_hatoverhearttaunt07.mp3",
				"vo/soldier_hatoverhearttaunt01.mp3",
				"vo/soldier_item_wizard_domination02.mp3",
				"vo/soldier_positivevocalization01.mp3",
				"vo/soldier_positivevocalization02.mp3",
				"vo/soldier_positivevocalization03.mp3",
				"vo/soldier_positivevocalization04.mp3",
				"vo/soldier_positivevocalization05.mp3",
				"vo/soldier_positivevocalization01.mp3",
				"vo/soldier_sf12_taunts12.mp3",
				"vo/soldier_sf12_taunts13.mp3",
				"vo/soldier_sf12_taunts14.mp3",
				"vo/soldier_sf12_taunts17.mp3",
				"vo/soldier_specialcompleted01.mp3",
				"vo/soldier_specialcompleted03.mp3",
				"vo/taunts/soldier_taunts04.mp3",
				"vo/taunts/soldier_taunts09.mp3",
				"vo/taunts/soldier_taunts10.mp3",
				"vo/taunts/soldier_taunts13.mp3",
				"vo/taunts/soldier_taunts18.mp3",
				"vo/taunts/soldier_taunts19.mp3",
				"vo/taunts/soldier_taunts21.mp3"
			}

			self.SoundTbl_AllyDeath = {
				"vo/soldier_autodejectedtie01.mp3",
				"vo/soldier_autodejectedtie02.mp3",
				"vo/soldier_autodejectedtie03.mp3",
				"vo/soldier_jeers01.mp3",
				"vo/soldier_jeers02.mp3",
				"vo/soldier_jeers03.mp3",
				"vo/soldier_jeers04.mp3",
				"vo/soldier_jeers05.mp3",
				"vo/soldier_jeers06.mp3",
				"vo/soldier_jeers07.mp3",
				"vo/soldier_jeers08.mp3",
				"vo/soldier_jeers09.mp3",
				"vo/soldier_jeers10.mp3",
				"vo/soldier_jeers11.mp3",
				"vo/soldier_jeers12.mp3",
			}

			self.SoundTbl_Pain = {
				"vo/soldier_medic01.mp3",
				"vo/soldier_medic02.mp3",
				"vo/soldier_medic03.mp3",
				"vo/soldier_painsevere01.mp3",
				"vo/soldier_painsevere02.mp3",
				"vo/soldier_painsevere03.mp3",
				"vo/soldier_painsevere04.mp3",
				"vo/soldier_painsevere05.mp3",
				"vo/soldier_painsevere06.mp3",
				"vo/soldier_painsharp01.mp3",
				"vo/soldier_painsharp02.mp3",
				"vo/soldier_painsharp03.mp3",
				"vo/soldier_painsharp04.mp3",
				"vo/soldier_painsharp05.mp3",
				"vo/soldier_painsharp06.mp3",
				"vo/soldier_painsharp07.mp3",
				"vo/soldier_painsharp08.mp3",
				"vo/soldier_painsharp09.mp3"
			}

			self.SoundTbl_Death = {
				"vo/soldier_paincrticialdeath01.mp3",
				"vo/soldier_paincrticialdeath02.mp3",
				"vo/soldier_paincrticialdeath03.mp3",
				"vo/soldier_paincrticialdeath04.mp3"
			}
			
			self.ToTU_Almanac_VoiceActor = "Soldier (Team Fortress 2)"
		end
	end

	if self:GetClass() == "npc_vj_totu_deimos_redead_guard" then
		self.IdleSoundPitch = VJ_Set(90, 85)
		self.AlertSoundPitch = VJ_Set(90, 85)
		self.CombatIdleSoundPitch = VJ_Set(90, 85)
		self.BeforeMeleeAttackSoundPitch = VJ_Set(90, 85)
		self.PainSoundPitch = VJ_Set(90, 85)
		self.DeathSoundPitch = VJ_Set(90, 85)
	end

	if self:GetClass() == "npc_vj_totu_fon_gail" then
		self.IdleSoundPitch = VJ_Set(80, 75)
		self.AlertSoundPitch = VJ_Set(80, 75)
		self.CombatIdleSoundPitch = VJ_Set(80, 75)
		self.BeforeMeleeAttackSoundPitch = VJ_Set(80, 75)
		self.PainSoundPitch = VJ_Set(80, 75)
		self.DeathSoundPitch = VJ_Set(80, 75)
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 100
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

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
function ENT:Zombie_CustomOnThink_AIEnabled()

	if
		self.ToTU_Weaponized_Redead_NextRunT < CurTime() &&
		!self.ToTU_Weaponized_Redead_Running &&
		self:GetEnemy() != nil &&
		!self.LNR_Crippled &&
		!self.Dead &&
		!self:IsBusy()
	then

		VJ_EmitSound(self,self.SoundTbl_BeforeMeleeAttack,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.BeforeMeleeAttackSoundPitch.a,self.BeforeMeleeAttackSoundPitch.b))

		self.ToTU_Weaponized_Redead_Running = true
		self.ToTU_Weaponized_Redead_RunT = CurTime() + math.random(6,14)

		self.AnimTbl_Walk = {ACT_SPRINT}
		self.AnimTbl_Run = {ACT_RUN_RELAXED}
		
		if self:GetClass() == "npc_vj_totu_deimos_revenant" then
			self.AnimTbl_Walk = {ACT_MP_MELEE_GRENADE1_IDLE}
			self.AnimTbl_Run = {ACT_SPRINT}
		end

	end

	if
		self.ToTU_Weaponized_Redead_Running &&
		self.ToTU_Weaponized_Redead_RunT < CurTime() &&
		!self.Dead &&
		!self.LNR_Crippled
	then

		self.ToTU_Weaponized_Redead_Running = false
		self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(6,12)

		if self:GetClass() == "npc_vj_totu_deimos_cancer" then
			self.AnimTbl_Walk = {ACT_WALK_RELAXED}
			self.AnimTbl_Run = {ACT_WALK_AIM}
		elseif self:GetClass() == "npc_vj_totu_fon_gail" then
			self.AnimTbl_Walk = {ACT_MP_MELEE_GRENADE1_IDLE}
			self.AnimTbl_Run = {ACT_RUN_AIM}
		elseif self:GetClass() == "npc_vj_totu_deimos_revenant" then
			self.AnimTbl_Walk = {ACT_MP_MELEE_GRENADE1_IDLE}
			self.AnimTbl_Run = {ACT_RUN}
		else
			self.AnimTbl_Walk = {ACT_MP_MELEE_GRENADE1_IDLE}
			self.AnimTbl_Run = {ACT_SPRINT}
		end

		if self:IsMoving() then

			if math.random(1,2) == 1 then
				self:VJ_ACT_PLAYACTIVITY("vjseq_Running_to_Standing",true,false,false)
			else
				self:VJ_ACT_PLAYACTIVITY("vjseq_Running_to_Standing_02",true,false,false)
			end

		end

	end

	if self:GetClass() == "npc_vj_totu_deimos_revenant" && !self.Dead && !self.LNR_Crippled && !self.VJ_IsBeingControlled then

		if !self:IsBusy() && !self.ToTU_Weaponized_Revenant_Reviving then

			if self.ToTU_Weapnoized_Revenant_NextCheckT >= 0 then

			self.ToTU_Weapnoized_Revenant_NextCheckT = CurTime() + 3

				for _,v in ipairs(ents.FindInSphere(self:GetPos(),2600)) do
					if
						IsValid(v) &&
						!self.ToTU_Weapnoized_Revenant_GoingToCorpse &&
						!self.ToTU_Weapnoized_Revenant_AtCorpse &&
						v:GetClass() == "prop_ragdoll" &&
						v:GetClass() != "prop_physics" &&
						(GetConVar("VJ_ToTU_Weaponized_Revenant_ReviveBlacklist"):GetInt() == 1 &&
						v:GetModel() != "models/antlion.mdl" &&
						v:GetModel() != "models/antlion_guard.mdl" &&
						v:GetModel() != "models/combine_dropship.mdl" &&
						v:GetModel() != "models/combine_gate_citizen.mdl" &&
						v:GetModel() != "models/combine_gate_vehicle.mdl" &&
						v:GetModel() != "models/combine_scanner.mdl" &&
						v:GetModel() != "models/combine_strider.mdl" &&
						v:GetModel() != "models/crow.mdl" &&
						v:GetModel() != "models/dog.mdl" &&
						v:GetModel() != "models/gunship.mdl" &&
						v:GetModel() != "models/headcrab.mdl" &&
						v:GetModel() != "models/headcrabblack.mdl" &&
						v:GetModel() != "models/headcrabclassic.mdl" &&
						v:GetModel() != "models/lamarr.mdl" &&
						v:GetModel() != "models/manhack.mdl" &&
						v:GetModel() != "models/pigeon.mdl" &&
						v:GetModel() != "models/seagull.mdl" &&
						v:GetModel() != "models/shield_scanner.mdl" &&
						v:GetModel() != "models/cranes/crane_docks.mdl" &&
						v:GetModel() != "models/gibs/fast_zombie_legs.mdl" &&
						v:GetModel() != "models/gibs/fast_zombie_torso.mdl" &&
						v:GetModel() != "models/gibs/strider_head.mdl" &&
						v:GetModel() != "models/gibs/strider_left_leg.mdl" &&
						v:GetModel() != "models/gibs/strider_right_leg.mdl" &&
						v:GetModel() != "models/gibs/strider_weapon.mdl" &&
						v:GetModel() != "models/humans/charple01.mdl" &&
						v:GetModel() != "models/humans/charple02.mdl" &&
						v:GetModel() != "models/humans/charple03.mdl" &&
						v:GetModel() != "models/humans/charple04.mdl" &&
						v:GetModel() != "models/props_vehicles/car001a_phy.mdl" &&
						v:GetModel() != "models/props_vehicles/car001b_phy.mdl" &&
						v:GetModel() != "models/props_vehicles/wagon001a_phy.mdl" &&
						v:GetModel() != "models/zombie/classic.mdl" &&
						v:GetModel() != "models/zombie/classic_legs.mdl" &&
						v:GetModel() != "models/zombie/classic_torso.mdl" &&
						v:GetModel() != "models/zombie/fast.mdl" &&
						v:GetModel() != "models/zombie/poison.mdl" &&
						v:GetModel() != "models/props_c17/furnituremattress001a.mdl" &&
						v:GetModel() != "models/skeleton/skeleton_leg.mdl" &&
						v:GetModel() != "models/skeleton/skeleton_leg_l.mdl" &&
						v:GetModel() != "models/skeleton/skeleton_arm_l.mdl" &&
						v:GetModel() != "models/skeleton/skeleton_arm.mdl" &&
						v:GetModel() != "models/totu/carcass.mdl" &&
						v:GetModel() != "models/totu/carcass_legs.mdl" &&
						v:GetModel() != "models/totu/carcass_torso.mdl" &&
						v:GetModel() != "models/totu/cazador.mdl" &&
						v:GetModel() != "models/totu/cazador_thorax.mdl" &&
						v:GetModel() != "models/totu/cazador_legs.mdl" &&
						v:GetModel() != "models/totu/carcass2.mdl" &&
						v:GetModel() != "models/totu/carcass2_legs.mdl" &&
						v:GetModel() != "models/totu/carcass2_torso.mdl" &&
						v:GetModel() != "models/totu/carcass_fat.mdl" &&
						v:GetModel() != "models/totu/carcass_fat_legs.mdl" &&
						v:GetModel() != "models/totu/carcass_guard.mdl" &&
						v:GetModel() != "models/totu/carcass_sci.mdl" &&
						v:GetModel() != "models/totu/cyst.mdl" &&
						v:GetModel() != "models/totu/reborn.mdl"
						or
						GetConVar("VJ_ToTU_Weaponized_Revenant_ReviveBlacklist"):GetInt() == 0)
					then
						self:SetTarget(v)
						self:VJ_TASK_GOTO_TARGET("TASK_RUN_PATH")
						self.ToTU_Weapnoized_Revenant_GoingToCorpse = true
						-- VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(100,95))
						timer.Simple(5,function() if IsValid(self) && self.ToTU_Weapnoized_Revenant_GoingToCorpse && !self.ToTU_Weapnoized_Revenant_AtCorpse then
							self.ToTU_Weapnoized_Revenant_GoingToCorpse = false
						end end)
					end

				end
					for _,v in ipairs(ents.FindInSphere(self:GetPos(),20)) do
						if
							IsValid(v) &&
							!self.ToTU_Weapnoized_Revenant_AtCorpse &&
							v:GetClass() == "prop_ragdoll" &&
							v:GetClass() != "prop_physics" &&
							(GetConVar("VJ_ToTU_Weaponized_Revenant_ReviveBlacklist"):GetInt() == 1 &&
							v:GetModel() != "models/antlion.mdl" &&
							v:GetModel() != "models/antlion_guard.mdl" &&
							v:GetModel() != "models/combine_dropship.mdl" &&
							v:GetModel() != "models/combine_gate_citizen.mdl" &&
							v:GetModel() != "models/combine_gate_vehicle.mdl" &&
							v:GetModel() != "models/combine_scanner.mdl" &&
							v:GetModel() != "models/combine_strider.mdl" &&
							v:GetModel() != "models/crow.mdl" &&
							v:GetModel() != "models/dog.mdl" &&
							v:GetModel() != "models/gunship.mdl" &&
							v:GetModel() != "models/headcrab.mdl" &&
							v:GetModel() != "models/headcrabblack.mdl" &&
							v:GetModel() != "models/headcrabclassic.mdl" &&
							v:GetModel() != "models/lamarr.mdl" &&
							v:GetModel() != "models/manhack.mdl" &&
							v:GetModel() != "models/pigeon.mdl" &&
							v:GetModel() != "models/seagull.mdl" &&
							v:GetModel() != "models/shield_scanner.mdl" &&
							v:GetModel() != "models/cranes/crane_docks.mdl" &&
							v:GetModel() != "models/gibs/fast_zombie_legs.mdl" &&
							v:GetModel() != "models/gibs/fast_zombie_torso.mdl" &&
							v:GetModel() != "models/gibs/strider_head.mdl" &&
							v:GetModel() != "models/gibs/strider_left_leg.mdl" &&
							v:GetModel() != "models/gibs/strider_right_leg.mdl" &&
							v:GetModel() != "models/gibs/strider_weapon.mdl" &&
							v:GetModel() != "models/humans/charple01.mdl" &&
							v:GetModel() != "models/humans/charple02.mdl" &&
							v:GetModel() != "models/humans/charple03.mdl" &&
							v:GetModel() != "models/humans/charple04.mdl" &&
							v:GetModel() != "models/props_vehicles/car001a_phy.mdl" &&
							v:GetModel() != "models/props_vehicles/car001b_phy.mdl" &&
							v:GetModel() != "models/props_vehicles/wagon001a_phy.mdl" &&
							v:GetModel() != "models/zombie/classic.mdl" &&
							v:GetModel() != "models/zombie/classic_legs.mdl" &&
							v:GetModel() != "models/zombie/classic_torso.mdl" &&
							v:GetModel() != "models/zombie/fast.mdl" &&
							v:GetModel() != "models/zombie/poison.mdl" &&
							v:GetModel() != "models/props_c17/furnituremattress001a.mdl" &&
							v:GetModel() != "models/skeleton/skeleton_leg.mdl" &&
							v:GetModel() != "models/skeleton/skeleton_leg_l.mdl" &&
							v:GetModel() != "models/skeleton/skeleton_arm_l.mdl" &&
							v:GetModel() != "models/skeleton/skeleton_arm.mdl" &&
							v:GetModel() != "models/totu/carcass.mdl" &&
							v:GetModel() != "models/totu/carcass_legs.mdl" &&
							v:GetModel() != "models/totu/carcass_torso.mdl" &&
							v:GetModel() != "models/totu/cazador.mdl" &&
							v:GetModel() != "models/totu/cazador_thorax.mdl" &&
							v:GetModel() != "models/totu/cazador_legs.mdl" &&
							v:GetModel() != "models/totu/carcass2.mdl" &&
							v:GetModel() != "models/totu/carcass2_legs.mdl" &&
							v:GetModel() != "models/totu/carcass2_torso.mdl" &&
							v:GetModel() != "models/totu/carcass_fat.mdl" &&
							v:GetModel() != "models/totu/carcass_fat_legs.mdl" &&
							v:GetModel() != "models/totu/carcass_guard.mdl" &&
							v:GetModel() != "models/totu/carcass_sci.mdl" &&
							v:GetModel() != "models/totu/cyst.mdl" &&
							v:GetModel() != "models/totu/reborn.mdl"
							or
							GetConVar("VJ_ToTU_Weaponized_Revenant_ReviveBlacklist"):GetInt() == 0)
						then
							local eattime = 4.5 -- How long it should sleep
							if !self.ToTU_Weaponized_Revenant_Reviving then
								local anim = {"vjseq_Stand_to_crouch"}
								self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
								self.ToTU_Weaponized_Revenant_Reviving = true
							end
						-- VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(100,95))
						self.ToTU_Weapnoized_Revenant_AtCorpse = true
						self.ToTU_Weapnoized_Revenant_GoingToCorpse = false
							self.ToTU_Weaponized_Revenant_Reviving = true
							self.AnimTbl_IdleStand = {ACT_VM_DEPLOYED_DRYFIRE}
							self.ToTU_CanStumble = false
							self:FaceCertainEntity(v)
							self.DisableWandering = true -- Disables wandering when the SNPC is idle
							self.CanTurnWhileStationary = false
							self.MovementType = VJ_MOVETYPE_STATIONARY
							self.CanFlinch = false
							self.HasDeathAnimation = false
							self.HasMeleeAttack = false

							v:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

							timer.Simple(1,function() if IsValid(self) && self.ToTU_Weaponized_Revenant_CanDoReviveEffects then
								self.ToTU_Weaponized_Revenant_CanDoReviveEffects = false
								if IsValid(v) then
									VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(100,95))
									ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
									ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
								end
								timer.Simple(1,function() if IsValid(self) && IsValid(v)  then
									VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(100,95))
									VJ_EmitSound(self,"items/smallmedkit1.wav",80,math.random(70,65))
									ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
									ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
								end end)
								timer.Simple(2,function() if IsValid(self) && IsValid(v) then
									VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(100,95))
									ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
									ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
								end end)
								timer.Simple(3,function() if IsValid(self) && IsValid(v)  then
									VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(100,95))
									ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
									ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
								end end)
								timer.Simple(5,function() if IsValid(self) then
									self.ToTU_Weaponized_Revenant_CanDoReviveEffects = true
								end end)
							end end)

							timer.Simple(eattime, function() -- Reset after eattime seconds
								if IsValid(self) && self.ToTU_Weaponized_Revenant_Reviving == true then
									self.ToTU_Weaponized_Revenant_Reviving = false
									local anim = {"vjseq_Crouch_to_stand"}				
									self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
							
									if self.LNR_UsingRelaxedIdle then
										self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
									else	
										self.AnimTbl_IdleStand = {ACT_IDLE}
									end
									self.ToTU_CanStumble = true
									self.MovementType = VJ_MOVETYPE_GROUND
									self.CanFlinch = true
									self.HasDeathAnimation = true
									self.HasMeleeAttack = true
									if GetConVar("vj_npc_nowandering"):GetInt() == 0 then
										self.DisableWandering = false -- Disables wandering when the SNPC is idle
									end
									self.CanTurnWhileStationary = true
								
									self.ToTU_Weapnoized_Revenant_AtCorpse = false
									timer.Simple(0.5,function() if IsValid(self) then

										if IsValid(v) then
										
											local anim = {"vjseq_ShoveReact"}
											self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)

											local AnimTime = VJ_GetSequenceDuration(self,"vjseq_infectionrise2")
											local AnimTime2 = VJ_GetSequenceDuration(self,"vjseq_Lying_to_Standing_Alert03d")
											local RevSqSpawnH = self.StartHealth * 0.5

											local RandRevive = math.random(1,10)

											if RandRevive == 1 then
												local RevivedSquall = ents.Create("npc_vj_totu_deimos_carcass")
												RevivedSquall.CanFlinch = 0
												RevivedSquall.CanInvestigate = false
												RevivedSquall.HasDeathAnimation = false
												RevivedSquall.CanTurnWhileStationary = false
												RevivedSquall.ToTU_Weaponized_Redead_CannotDigout = true
												
												RevivedSquall:SetPos(v:GetPos())
												RevivedSquall:SetAngles(v:GetAngles())
												RevivedSquall:Spawn()
												RevivedSquall:Activate()

												timer.Simple(0.01,function() if IsValid(RevivedSquall) then
													if math.random(1,2) == 1 then
														if math.random(1,3) == 1 then
															RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_a",true,false,false)
														else
															RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_a2",true,false,false)
														end
													else
														RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_b",true,false,false)
													end

													RevivedSquall:SetPos(RevivedSquall:GetPos() + RevivedSquall:GetUp()*6)

													timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
														RevivedSquall.CanFlinch = 1
														RevivedSquall.HasDeathAnimation = true
														RevivedSquall.CanInvestigate = true
														RevivedSquall.CanTurnWhileStationary = true
													end end)

												end end)

											elseif RandRevive == 2 then

												local RevivedSquall = ents.Create("npc_vj_totu_deimos_cazador")
												RevivedSquall.CanFlinch = 0
												RevivedSquall.CanInvestigate = false
												RevivedSquall.HasDeathAnimation = false
												RevivedSquall.CanTurnWhileStationary = false
												RevivedSquall.ToTU_Weaponized_Redead_CannotDigout = true
												
												RevivedSquall:SetPos(v:GetPos())
												RevivedSquall:SetAngles(v:GetAngles())
												RevivedSquall:Spawn()
												RevivedSquall:Activate()

												timer.Simple(0.01,function() if IsValid(RevivedSquall) then
														
													local RandCazRevAnims = math.random(1,3)
													if RandCazRevAnims == 1 then
														RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_b",true,false,false)
													elseif RandCazRevAnims == 1 then
														RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_c",true,false,false)
													else
														RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_a",true,false,false)
													end

													RevivedSquall:SetPos(RevivedSquall:GetPos() + RevivedSquall:GetUp()*6)

													timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
														RevivedSquall.CanFlinch = 1
														RevivedSquall.HasDeathAnimation = true
														RevivedSquall.CanInvestigate = true
														RevivedSquall.CanTurnWhileStationary = true
														
													end end)

												end end)

											elseif RandRevive == 3 then

												local RevivedSquall = ents.Create("npc_vj_totu_deimos_cyst")
												RevivedSquall.CanFlinch = 0
												RevivedSquall.CanInvestigate = false
												RevivedSquall.HasDeathAnimation = false
												RevivedSquall.CanTurnWhileStationary = false
												RevivedSquall.ToTU_Weaponized_Redead_CannotDigout = true
												
												RevivedSquall:SetPos(v:GetPos())
												RevivedSquall:SetAngles(v:GetAngles())
												RevivedSquall:Spawn()
												RevivedSquall:Activate()

												timer.Simple(0.01,function() if IsValid(RevivedSquall) then

												RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_a",true,false,false)

													RevivedSquall:SetPos(RevivedSquall:GetPos() + RevivedSquall:GetUp()*6)

													timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
														RevivedSquall.CanFlinch = 1
														RevivedSquall.HasDeathAnimation = true
														RevivedSquall.CanInvestigate = true
														RevivedSquall.CanTurnWhileStationary = true
														
													end end)

												end end)
											
											else
												local RevivedSquall = ents.Create("npc_vj_totu_deimos_reborn")
												RevivedSquall.CanFlinch = 0
												RevivedSquall.CanInvestigate = false
												RevivedSquall.HasDeathAnimation = false
												RevivedSquall.CanTurnWhileStationary = false
												RevivedSquall.ToTU_Weaponized_Redead_CannotDigout = true
												
												RevivedSquall:SetPos(v:GetPos())
												RevivedSquall:SetAngles(v:GetAngles())
												RevivedSquall:Spawn()
												RevivedSquall:Activate()

												timer.Simple(0.01,function() if IsValid(RevivedSquall) then
														
												if math.random(1,2) == 1 then
													RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_infectionrise2",true,false,false)
												else
													RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_Lying_to_Standing_Alert03d",true,false,false)
												end

													RevivedSquall:SetPos(RevivedSquall:GetPos() + RevivedSquall:GetUp()*6)

													timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
														RevivedSquall.CanFlinch = 1
														RevivedSquall.HasDeathAnimation = true
														RevivedSquall.CanInvestigate = true
														RevivedSquall.CanTurnWhileStationary = true
														
													end end)

												end end)
											end

											if IsValid(v) then

												v:EmitSound(Sound("zombies/anywhere/ghoul/hit_"..math.random(1,3)..".mp3",80,math.random(100,90)))
												local bloodspray = EffectData()
												bloodspray:SetOrigin(v:GetPos())
												bloodspray:SetScale(10)
												bloodspray:SetFlags(3)
												bloodspray:SetColor(0)
												util.Effect("bloodspray",bloodspray)
												util.Effect("bloodspray",bloodspray)
												
												local bloodeffect = EffectData()
												bloodeffect:SetOrigin(v:GetPos())
												bloodeffect:SetColor(VJ_Color2Byte(Color(17,6,6,255)))
												bloodeffect:SetScale(125)
												util.Effect("VJ_Blood1",bloodeffect)

												v:Remove()
											end
						
										end

										end end)
									
								end
							end)
						end
					end
		end
		end
	end

	if self:GetClass() == "npc_vj_totu_deimos_revenant" && !self.Dead then
		for _,v in ipairs(ents.FindInSphere(self:GetPos(),150)) do

			if v:IsNPC() && !v.Dead && v.Alerted && !self.Dead && v:Disposition(self) == D_LI && CurTime() > self.ToTU_Weaponized_Revenant_NextBuffTime && v:GetClass() != "npc_vj_totu_deimos_cazador" && v:GetClass() != "npc_vj_totu_deimos_cazador_torso" then

				if v.ToTU_Deimos then

					effects.BeamRingPoint(self:GetPos(), 0.3, 2, 400, 16, 0, Color(255, 0, 0, 255), {material="sprites/orangelight1", framerate=20})
					effects.BeamRingPoint(self:GetPos(), 0.3, 2, 200, 16, 0, Color(255, 0, 0, 255), {material="sprites/orangelight1", framerate=20})
					-- VJ_EmitSound(self,{"ambient/machines/thumper_hit.wav"},100,math.random(100,95))
					-- VJ_EmitSound(self,{"ambient/machines/thumper_dust.wav"},100,math.random(100,95))
					VJ_EmitSound(self,{"items/battery_pickup.wav"},100,math.random(100,95))

					if v.ToTU_Weaponized_IsHL2Zomb then
						if v.ToTU_Weaponized_Carcass_ZombineRunning then
							v.ToTU_Weaponized_Carcass_ZombineRunT = CurTime() + math.random(5,10)
						else
							v.ToTU_Weaponized_Carcass_NextZombineRunT = 0
						end
					else
						if v.ToTU_Weaponized_Redead_Running then
							v.ToTU_Weaponized_Redead_RunT = CurTime() + math.random(5,10)
						else
							v.ToTU_Weaponized_Redead_NextRunT = 0
						end
					end

					self.ToTU_Weaponized_Revenant_NextBuffTime = CurTime() + math.random(3,5)

				end

			end

		end
	end

	if self:GetClass() == "npc_vj_totu_deimos_cancer" then
		if self.LNR_Crippled then
			local randuncriptime = math.random(5,10)
			timer.Simple(randuncriptime,function() if IsValid(self) && self.LNR_Crippled then
				self:VJ_ACT_PLAYACTIVITY("vjseq_infectionrise2",true,false,false)
				self.MovementType = VJ_MOVETYPE_STATIONARY
				self.ToTU_CanStumble = false
				timer.Simple(3.6,function() if IsValid(self) then
					self.LNR_Crippled = false
					self.MovementType = VJ_MOVETYPE_GROUND
					self.ToTU_CanStumble = true
				end end)
				self:UnCripple()
			end end)
		end
	end

	if self:GetClass() == "npc_vj_totu_deimos_revenant" or self.ToTU_Weaponized_Redead_Grunt_IsCaretaker then

		for _,v in ipairs(ents.FindInSphere(self:GetPos(),150)) do

			if v:IsNPC() && !v.Dead && !self.Dead && v:Disposition(self) == D_LI then

				if v:Health() < v:GetMaxHealth() && CurTime() > self.ToTU_Weaponized_NextHealTime then

					for i = 0,v:GetBoneCount() -1 do

						ParticleEffect("vortigaunt_glow_beam_cp0",v:GetBonePosition(i),Angle(0,0,0),nil)

					end

					for i = 0,self:GetBoneCount() -1 do

						ParticleEffect("vortigaunt_glow_beam_cp1",self:GetBonePosition(i),Angle(0,0,0),nil)

					end

					effects.BeamRingPoint(self:GetPos(), 0.3, 2, 400, 16, 0, Color(33, 255, 0, 255), {material="sprites/orangelight1", framerate=20})
					effects.BeamRingPoint(self:GetPos(), 0.3, 2, 200, 16, 0, Color(33, 255, 0, 255), {material="sprites/orangelight1", framerate=20})
					VJ_EmitSound(self,{"items/smallmedkit1.wav"},100,math.random(100,95))
					v:SetHealth(v:Health() +math.random(30,35))

					if v:Health() > v:GetMaxHealth() then

						v:SetHealth(v:GetMaxHealth())

					end

					self.ToTU_Weaponized_NextHealTime = CurTime() + (math.Rand(2,4))

				end

			end

		end

	end

	if self:GetClass() == "npc_vj_totu_fon_gail" then
		local TheHam = self:GetEnemy()
		if self.ToTU_Weaponized_Gail_DamageTillHeal <= 0 && !self.ToTU_Weaponized_Gail_CanHeal then
			self.ToTU_Weaponized_Gail_CanHeal = true
		end
		if self.ToTU_Weaponized_Gail_CanHeal then
			if self.Dead == false && self:GetEnemy() != nil && self.VJ_IsBeingControlled == false && !self.LNR_Crippled && !self.ToTU_Weaponized_Gail_GoHeal then
				local enemydist = self:GetPos():Distance(self:GetEnemy():GetPos())
				if enemydist >= 350 then
					VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",100,math.random(100,95))
					self.ToTU_Weaponized_Gail_GoHeal = true
					self.Behavior = VJ_BEHAVIOR_PASSIVE
				end
			end
			if self.Dead == false && self:GetEnemy() != nil && self.VJ_IsBeingControlled == false && !self.LNR_Crippled && self.ToTU_Weaponized_Gail_GoHeal && !self:Visible(TheHam) then
				if !self.ToTU_Weaponized_Gail_Healing then
					self.ToTU_Weaponized_Gail_Healing = true
				
					
								local anim = {"vjseq_Stand_to_crouch"}
								self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
					self.AnimTbl_IdleStand = {ACT_BUSY_SIT_GROUND}
					self.ToTU_CanStumble = false
					self.DisableWandering = true -- Disables wandering when the SNPC is idle
					self.CanTurnWhileStationary = false
					self.MovementType = VJ_MOVETYPE_STATIONARY
					self.CanFlinch = false
					self.HasDeathAnimation = false
					self.HasMeleeAttack = false
							
							-- local anim = {"vjseq_Crouch_to_stand"}				
									-- self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
							
									-- if self.LNR_UsingRelaxedIdle then
										-- self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
									-- else	
										-- self.AnimTbl_IdleStand = {ACT_IDLE}
									-- end
									-- self.ToTU_CanStumble = true
									-- self.MovementType = VJ_MOVETYPE_GROUND
									-- self.CanFlinch = true
									-- self.HasDeathAnimation = true
									-- self.HasMeleeAttack = true
									-- if GetConVar("vj_npc_nowandering"):GetInt() == 0 then
										-- self.DisableWandering = false -- Disables wandering when the SNPC is idle
									-- end
									-- self.CanTurnWhileStationary = true
				VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",100,math.random(100,95))
				end
			end
		end
	/*
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
	*/
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRangeAttack_BeforeStartTimer(seed)
	if self:GetClass() == "npc_vj_totu_deimos_redead" then
		if math.random(1,5) == 1 then
			self.RangeAttackEntityToSpawn = "obj_vj_totu_molotov"
		else
			self.RangeAttackEntityToSpawn = "obj_vj_totu_trash"
		end
	end
	if self:GetClass() == "npc_vj_totu_deimos_redead_grunt" then
		local randnade = math.random(1,4)
		if randnade == 1 then
			self.RangeAttackEntityToSpawn = "obj_vj_totu_flashbang"
		elseif randnade == 2 then
			self.RangeAttackEntityToSpawn = "obj_vj_totu_smokeg"
		elseif randnade == 3 then
			self.RangeAttackEntityToSpawn = "obj_vj_totu_thermite"
		else
			self.RangeAttackEntityToSpawn = "obj_vj_totu_milzgren"
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RangeAttackCode_GetShootPos(projectile)
	return (self:GetEnemy():GetPos() - self:LocalToWorld(Vector(0, 0, 0)))*2 + self:GetUp()*100
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/