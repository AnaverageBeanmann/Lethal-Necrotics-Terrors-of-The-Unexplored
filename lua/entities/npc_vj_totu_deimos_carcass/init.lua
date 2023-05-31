AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.ToTU_Weaponized_IsHL2Zomb = true
ENT.ToTU_Weaponized_Carcass_CanZombineRun = false
ENT.ToTU_Weaponized_Carcass_ZombineRunning = false
ENT.ToTU_Weaponized_Carcass_NextZombineRunT = 0
ENT.ToTU_Weaponized_Carcass_ZombineRunT = 0
ENT.ToTU_Weaponized_Carcass_ZombineRunTargetCloseEnough = false
ENT.ToTU_Weaponized_Carcass_Thorax_SplitSpawned = false
ENT.ToTU_Weaponized_Carcass_Exploder = false
ENT.ToTU_Weaponized_Cyst_VomitAttack = false
ENT.ToTU_Weaponized_DudeToSpawn = 0
ENT.ToTU_Weaponized_ExploderParticleT = 0
ENT.ToTU_Weaponized_Carcass_Type = 0
-- 0 = Default
-- 1 = HLA
-- 2 = Guard
-- 3 = Scientist
ENT.ToTU_Weaponized_NextHealTime = 0
ENT.ToTU_Weaponized_CarcRevivee = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()

	self.CanEat = false
	self.LNR_Walker = false
	self.MeleeAttackDamageType = DMG_SLASH

	if GetConVar("VJ_ToTU_Weaponized_Carcass_Bleed"):GetInt() == 1 then
		self.MeleeAttackBleedEnemy = true
		self.MeleeAttackBleedEnemyChance = 3
		self.MeleeAttackBleedEnemyDamage = math.random(3,4)
		self.MeleeAttackBleedEnemyTime = 1
		self.MeleeAttackBleedEnemyReps = 4
	end
	
	self.SoundTbl_MeleeAttackExtra = {
		"fx/zombie_slice_1.wav",
		"fx/zombie_slice_2.wav",
		"fx/zombie_slice_3.wav",
		"fx/zombie_slice_4.wav",
		"fx/zombie_slice_5.wav",
		"fx/zombie_slice_6.wav"
	}


	self.SoundTbl_MeleeAttack = {""}

	if self:GetClass() == "npc_vj_totu_deimos_carcass" then

		self.Model = {"models/totu/carcass.mdl"}
		
		if math.random(1,3) == 1 or self.ToTU_Weaponized_CarcRevivee then
			self.ToTU_Weaponized_Carcass_Type = 1
			self.Model = {"models/totu/carcass2.mdl"}
			self.IdleSoundPitch = VJ_Set(90, 80)
			self.AlertSoundPitch = VJ_Set(90, 80)
			self.CombatIdleSoundPitch = VJ_Set(90, 80)
			self.BeforeMeleeAttackSoundPitch = VJ_Set(90, 80)
			self.PainSoundPitch = VJ_Set(90, 80)
			self.DeathSoundPitch = VJ_Set(90, 80)
		end

		self.ToTU_Weaponized_Carcass_CanZombineRun = true

		if 
			GetConVar("VJ_ToTU_Weaponized_Carcass_Exploders"):GetInt() == 1 && 
			math.random(1,GetConVar("VJ_ToTU_Weaponized_Carcass_Exploders_Chance"):GetInt()) == 1 &&
			!self.ToTU_Weaponized_CarcRevivee
		then
			self.ToTU_Weaponized_Carcass_Exploder = true
			self.Model = {"models/totu/carcass_fat.mdl"}
			self.DeathAnimationTime = 1.0
			self.DeathAnimationChance = 1
			self.AnimTbl_Death = {"releasecrab"}
			self.HasDeathRagdoll = true
			self.DeathCorpseModel = {"models/totu/carcass_fat_legs.mdl"}

			self.IdleSoundPitch = VJ_Set(85, 75)
			self.AlertSoundPitch = VJ_Set(85, 75)
			self.CombatIdleSoundPitch = VJ_Set(85, 75)
			self.BeforeMeleeAttackSoundPitch = VJ_Set(85, 75)
			self.PainSoundPitch = VJ_Set(85, 75)
			self.DeathSoundPitch = VJ_Set(85, 75)
		end

		if math.random(1,4) == 1 && !self.ToTU_Weaponized_Carcass_Exploder && !self.ToTU_Weaponized_CarcRevivee then
			if math.random(1,2) == 1 then
				self.ToTU_Weaponized_Carcass_Type = 3
				self.Model = {"models/totu/carcass_sci.mdl"}
			else
				self.ToTU_Weaponized_Carcass_Type = 2
				self.Model = {"models/totu/carcass_guard.mdl"}

				self.IdleSoundPitch = VJ_Set(85, 75)
				self.AlertSoundPitch = VJ_Set(85, 75)
				self.CombatIdleSoundPitch = VJ_Set(85, 75)
				self.BeforeMeleeAttackSoundPitch = VJ_Set(85, 75)
				self.PainSoundPitch = VJ_Set(85, 75)
				self.DeathSoundPitch = VJ_Set(85, 75)
			end
		end

	elseif self:GetClass() == "npc_vj_totu_deimos_carcass_torso" then

		if math.random(1,3) == 1 then
			self.Model = {"models/totu/carcass2_torso.mdl"}
		else
			self.Model = {"models/totu/carcass_torso.mdl"}
		end

		self.ToTU_Weaponized_Carcass_CanZombineRun = true

		if self.ToTU_Weaponized_Carcass_Thorax_SplitSpawned == true then
			self.HasAlertSounds = false
			if self.ToTU_Weaponized_Carcass_Type == 1 then
				self.Model = {"models/totu/carcass2_torso.mdl"}
			else
				self.Model = {"models/totu/carcass_torso.mdl"}
			end
		end

	elseif self:GetClass() == "npc_vj_totu_deimos_cyst" then

		self.Model = {"models/totu/cyst.mdl"}

		self.HasRangeAttack = true
		self.RangeAttackEntityToSpawn = "obj_vj_totu_bloodcoagle"
		self.AnimTbl_RangeAttack = {"vjseq_ThrowWarning"}
		self.RangeDistance = 1200 
		self.RangeToMeleeDistance = 0
		self.RangeAttackAngleRadius = 100
		self.TimeUntilRangeAttackProjectileRelease = 0.2
		self.NextRangeAttackTime = 6
		self.NextAnyAttackTime_Range = 2
		self.RangeUseAttachmentForPos = true 
		self.RangeUseAttachmentForPosID = "head"
		self.RangeAttackExtraTimers = nil
		self.RangeAttackPos_Forward = 20
		self.RangeAttackPos_Up = 20

		self.ToTU_Weaponized_Carcass_CanZombineRun = true
		self:SetSkin(math.random(0,3))

		if 
			GetConVar("VJ_ToTU_Weaponized_Cyst_Exploders"):GetInt() == 1 && 
			math.random(1,GetConVar("VJ_ToTU_Weaponized_Cyst_Exploders_Chance"):GetInt()) == 1 
		then
			self.ToTU_Weaponized_Carcass_Exploder = true
			self.DeathAnimationTime = 1.25
			self.DeathAnimationChance = 1
			self.AnimTbl_Death = {"releasecrab"}
			self.HasDeathRagdoll = true
			self.DeathCorpseModel = {"models/skeleton/skeleton_leg.mdl"}
			self.DeathCorpseSkin = 2
		end

	elseif self:GetClass() == "npc_vj_totu_deimos_cazador" then

		self.Model = {"models/totu/cazador.mdl"}
		self:SetSkin(math.random(0,2))

		self.HasLeapAttack = true 
		self.LeapAttackDamage = self.MeleeAttackDamage
		self.AnimTbl_LeapAttack = {"vjseq_LeapStrike"} 
		self.LeapAttackAnimationDelay = 0.2
		self.LeapAttackAnimationFaceEnemy = 2
		self.LeapDistance = 350 
		self.LeapToMeleeDistance = 10
		self.LeapAttackDamageDistance = 100

		self.TimeUntilLeapAttackDamage = 0.2
		self.TimeUntilLeapAttackVelocity = 0.2
		self.NextLeapAttackTime = 5
		self.LeapAttackExtraTimers = {0.2, 0.6}
		self.StopLeapAttackAfterFirstHit = false
		self.LeapAttackVelocityForward = 100
		self.LeapAttackVelocityUp = 200
		
		self.NextAnyAttackTime_Leap = 15

	elseif self:GetClass() == "npc_vj_totu_deimos_cazador_torso" then

		self.Model = {"models/totu/cazador_thorax.mdl"}
		self:SetSkin(math.random(0,2))

		if self.ToTU_Weaponized_Carcass_Thorax_SplitSpawned == true then
			self.HasAlertSounds = false
		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()

	if GetConVar("VJ_TOTU_LNR_GroundRise"):GetInt() == 1 && ( self:IsDirtGround(self:GetPos()) or GetConVar("VJ_ToTU_Spawn_UniversalDig"):GetInt() == 1 ) then
		if math.random(1,GetConVar("VJ_ToTU_Spawn_DigChance"):GetInt()) == 1 then
			self:RiseFromGround()
		end
	end

	if self.DisableFindEnemy == true then
		timer.Simple(1.3,function() if IsValid(self) then
			self:Zombie_GlowEyes_Give()
		end end)
	else
		self:Zombie_GlowEyes_Give()
	end

	-- add deimos hud, recolor other one to purple
	-- util.AddNetworkString("vj_lnr_walker_hud")

	if self:GetClass() == "npc_vj_totu_deimos_carcass" then

		self:SetCollisionBounds(Vector(11, 15, 70), Vector(-13, -15, 0))
		self.ToTU_Weaponized_Carcass_NextZombineRunT = CurTime() + math.random(3,10)	
		self.AnimTbl_Flinch = {""}

	elseif self:GetClass() == "npc_vj_totu_deimos_carcass_torso" then

		self:SetCollisionBounds(Vector(13, 15, 15), Vector(-13, -16, 0))
		self.ToTU_Weaponized_Carcass_NextZombineRunT = CurTime() + math.random(3,10)	
		self.AnimTbl_Run = {ACT_WALK}
		self.MeleeAttackDistance = 15
		self.MeleeAttackDamageDistance = 45	
		self.AnimTbl_MeleeAttack = {"vjseq_attack"}
		self.CanOpenDoors = false
		self.HasDeathAnimation = false
		self.CanFlinch = 0

		if self.ToTU_Weaponized_Carcass_Thorax_SplitSpawned == true then
			timer.Simple(0.5,function() if IsValid(self) then
				self.HasAlertSounds = true
			end end)
		end

	elseif self:GetClass() == "npc_vj_totu_deimos_cyst" then

		self:SetCollisionBounds(Vector(19, 11, 60), Vector(-11, -15, 0))
		self.AnimTbl_Flinch = {""}
		self.AnimTbl_Run = {ACT_WALK}
		self.ToTU_Weaponized_Carcass_NextZombineRunT = CurTime() + math.random(3,10)	

	elseif self:GetClass() == "npc_vj_totu_deimos_cazador" then

		self:SetCollisionBounds(Vector(11, 15, 60), Vector(-13, -15, 0))
		self.AnimTbl_Run = {ACT_RUN}

	elseif self:GetClass() == "npc_vj_totu_deimos_cazador_torso" then

		self:SetCollisionBounds(Vector(13, 15, 15), Vector(-13, -16, 0))
		self.AnimTbl_MeleeAttack = {"vjseq_attack01"}
		self.CanOpenDoors = false
		self.HasDeathAnimation = false
		self.CanFlinch = 0

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_GlowEyes_Give()

	if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 0 or GetConVar("vj_npc_noidleparticle"):GetInt() == 1 then return end

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

		if self:GetClass() == "npc_vj_totu_deimos_carcass" then
			local EyeTrail = util.SpriteTrail(self,5,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,6,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end

		if self:GetClass() == "npc_vj_totu_deimos_carcass_torso" then
			local EyeTrail = util.SpriteTrail(self,5,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,4,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end

		if self:GetClass() == "npc_vj_totu_deimos_cazador" then
			local EyeTrail = util.SpriteTrail(self,11,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,10,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end

		if self:GetClass() == "npc_vj_totu_deimos_cazador_torso" then
			local EyeTrail = util.SpriteTrail(self,7,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,8,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end

		if self:GetClass() == "npc_vj_totu_deimos_cyst" then
			local EyeTrail = util.SpriteTrail(self,2,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,3,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Pain = {
		""
	}

	self.SoundTbl_Idle = {
		"voices/deimos/carcass/idle_1.mp3",
		"voices/deimos/carcass/idle_2.mp3",
		"voices/deimos/carcass/idle_3.mp3",
		"voices/deimos/carcass/idle_4.mp3"
	}
		
	self.SoundTbl_Alert = {
		"voices/deimos/carcass/alert_1.mp3",
		"voices/deimos/carcass/alert_2.mp3",
		"voices/deimos/carcass/alert_3.mp3",
		"voices/deimos/carcass/alert_4.mp3"
	}
	
	self.SoundTbl_CombatIdle = {
		"voices/deimos/carcass/idle_1.mp3",
		"voices/deimos/carcass/idle_2.mp3",
		"voices/deimos/carcass/idle_3.mp3",
		"voices/deimos/carcass/idle_4.mp3"
	}
	
	self.SoundTbl_BeforeMeleeAttack = {
		"voices/deimos/carcass/attack_1.mp3",
		"voices/deimos/carcass/attack_2.mp3",
		"voices/deimos/carcass/attack_3.mp3",
		"voices/deimos/carcass/attack_4.mp3",
		"voices/deimos/carcass/attack_5.mp3",
		"voices/deimos/carcass/attack_6.mp3"
	}
	
	self.SoundTbl_Death = {
		"voices/deimos/carcass/death_1.mp3",
		"voices/deimos/carcass/death_2.mp3",
		"voices/deimos/carcass/death_3.mp3",
		"voices/deimos/carcass/death_4.mp3",
		"voices/deimos/carcass/death_5.mp3"
	}
	
	-- self.IdleSoundChance = 5
	-- self.CombatIdleSoundChance = 4
	self.IdleSoundLevel = 60
	self.CombatIdleSoundLevel = 60
	
	self.ToTU_Almanac_VoiceActor = "Molded (Resident Evil 7)"

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 175
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 400
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 500
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 350
		self.MeleeAttackDamage = math.Rand(35,40)

	else

		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(15,20)

	end

	self:SetHealth(self.StartHealth)

	if self.ToTU_Weaponized_Carcass_Type == 2 then
		self.StartHealth = self.StartHealth * 1.5
		self:SetHealth(self.StartHealth)
	end

	self.LNR_LegHP = self.StartHealth * 0.20

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RiseFromGround()

	if !self.ToTU_Weaponized_Redead_CanDigout then return end

	self:SetMaterial("models/totu/bonemerge")

	self:DrawShadow(false)
	self:AddFlags(FL_NOTARGET)
	self.GodMode = true
	self.MovementType = VJ_MOVETYPE_STATIONARY
	self.CanTurnWhileStationary = false
	self.HasSounds = false
	self.HasPoseParameterLooking = false
	self.DisableFindEnemy = true		
	self.CallForHelp = false

	timer.Simple(1.3,function() if IsValid(self) then
	
		if GetConVar("VJ_ToTU_Spawn_AlertSound"):GetInt() == 1 then
			VJ_CreateSound(self,self.SoundTbl_Alert,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.AlertSoundPitch.a, self.AlertSoundPitch.b))
		end

		self:SetMaterial()	
		self:DrawShadow(true)
		self:RemoveFlags(FL_NOTARGET)
		self.GodMode = false
		self:DoChangeMovementType(VJ_MOVETYPE_GROUND)
		self.HasSounds = true
		self.HasPoseParameterLooking = true
        self.DisableFindEnemy = false		
		self.CallForHelp = true

		if self:GetClass() == "npc_vj_totu_deimos_carcass" then
			self:VJ_ACT_PLAYACTIVITY({"vjseq_canal5aattack"},true,false,false)
		end
		if self:GetClass() == "npc_vj_totu_deimos_cazador" then
			local cazspawnanim = math.random(1,3)
			if cazspawnanim == 1 then
				self:VJ_ACT_PLAYACTIVITY({"vjseq_slumprise_a"},true,false,false)
			elseif cazspawnanim == 2 then
				self:VJ_ACT_PLAYACTIVITY({"vjseq_slumprise_b"},true,false,false)
			else
				self:VJ_ACT_PLAYACTIVITY({"vjseq_slumprise_c"},true,false,false)
			end
		end
		if self:GetClass() == "npc_vj_totu_deimos_cyst" then
			self:VJ_ACT_PLAYACTIVITY({"vjseq_slumprise_a"},true,false,false)
		end

	    VJ_EmitSound(self,"fx/dirtintro"..math.random(1,2)..".wav",75,100)
		ParticleEffect("advisor_plat_break",self:GetPos(),self:GetAngles(),self)
		ParticleEffect("strider_impale_ground",self:GetPos(),self:GetAngles(),self)

	end end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GetSightDirection()
	return self:GetForward()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()

	if
		self:GetClass() == "npc_vj_totu_deimos_carcass" or
		self:GetClass() == "npc_vj_totu_deimos_carcass_torso" or
		self:GetClass() == "npc_vj_totu_deimos_cyst"
	then

		if
			self.ToTU_Weaponized_Carcass_NextZombineRunT < CurTime() &&
			!self.ToTU_Weaponized_Carcass_ZombineRunning &&
			self:GetEnemy() != nil &&
			!self:IsBusy() &&
			self.ToTU_Weaponized_Carcass_CanZombineRun
		then
	
			if self:GetClass() == "npc_vj_totu_deimos_cyst" then

				self.SoundTbl_CombatIdle = {
					"zombies/coastline/whale/cidle_1.mp3",
					"zombies/coastline/whale/cidle_2.mp3",
					"zombies/coastline/whale/cidle_3.mp3",
					"zombies/coastline/whale/cidle_4.mp3",
					"zombies/coastline/whale/cidle_5.mp3",
					"zombies/coastline/whale/cidle_6.mp3",
					"zombies/coastline/whale/cidle_7.mp3",
				}

				VJ_EmitSound(self,self.SoundTbl_Alert,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.BeforeMeleeAttackSoundPitch.a,self.BeforeMeleeAttackSoundPitch.b))

			else

				VJ_EmitSound(self,self.SoundTbl_BeforeMeleeAttack,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.BeforeMeleeAttackSoundPitch.a,self.BeforeMeleeAttackSoundPitch.b))

			end

			self.ToTU_Weaponized_Carcass_ZombineRunning = true
			self.ToTU_Weaponized_Carcass_ZombineRunT = CurTime() + math.random(3,7)

			if self:GetClass() == "npc_vj_totu_deimos_carcass_torso" or self:GetClass() == "npc_vj_totu_deimos_cyst" then

				self.AnimTbl_Run = {ACT_RUN}

			else

				self.AnimTbl_IdleStand = {ACT_IDLE_ANGRY}
				self.AnimTbl_Walk = {ACT_WALK_AIM}
				self.AnimTbl_Run = {ACT_RUN}

			end
		
		end

		if
			self.ToTU_Weaponized_Carcass_ZombineRunning &&
			self.ToTU_Weaponized_Carcass_ZombineRunT < CurTime() &&
			!self.LNR_Crippled &&
			self.ToTU_Weaponized_Carcass_CanZombineRun
		then
		
			self.ToTU_Weaponized_Carcass_ZombineRunning = false
			self.ToTU_Weaponized_Carcass_NextZombineRunT = CurTime() + math.random(6,12)
			
			if self:GetClass() == "npc_vj_totu_deimos_cyst" then
				self.SoundTbl_CombatIdle = {
					self.SoundTbl_Idle
				}
			end

			if self.LNR_Crippled then
				self.AnimTbl_IdleStand = {ACT_IDLE_STIMULATED}
				self.AnimTbl_Walk = {ACT_IDLE_STIMULATED}
				self.AnimTbl_Run = {ACT_IDLE_STIMULATED}
				self.MovementType = VJ_MOVETYPE_STATIONARY
				self.ToTU_Weaponized_Carcass_CanZombineRun = false
				self.HasMeleeAttack = false
			return end

			if self:GetClass() == "npc_vj_totu_deimos_carcass_torso" or self:GetClass() == "npc_vj_totu_deimos_cyst" then

				self.AnimTbl_Run = {ACT_WALK}

			else

				self.AnimTbl_IdleStand = {ACT_IDLE}
				self.AnimTbl_Walk = {ACT_WALK}
				self.AnimTbl_Run = {ACT_WALK}

				if self:GetSequence() == self:LookupSequence("Run_All") then

					self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,false,false)

				end

			end

		end

		if !self.Dead && self:GetEnemy() != nil && !self.VJ_IsBeingControlled then

			local enemydist = self:GetPos():Distance(self:GetEnemy():GetPos())

			if !self.LNR_Crippled && !self.LNR_Crawler then

				if enemydist >= 450 then

					ToTU_Weaponized_Carcass_ZombineRunTargetCloseEnough = true

				else

					ToTU_Weaponized_Carcass_ZombineRunTargetCloseEnough = false

				end

			end

		end

	end

	if self.Dead == false && self:GetEnemy() != nil && self.VJ_IsBeingControlled == false then
		local enemydist = self:GetPos():Distance(self:GetEnemy():GetPos())
		if self:GetClass() == "npc_vj_totu_deimos_cyst" then
			if enemydist >= 150 then
				self.ToTU_Weaponized_Cyst_VomitAttack = false
			else
				self.ToTU_Weaponized_Cyst_VomitAttack = true
			end
		end
	end

	if self.ToTU_Weaponized_Carcass_Exploder then
		if self.ToTU_Weaponized_ExploderParticleT < CurTime() then
			self.ToTU_Weaponized_ExploderParticleT = CurTime() + 1
			-- ParticleEffectAttach("antlion_gib_02_gas",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("maw"))
			-- ParticleEffectAttach("antlion_spit_03",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("maw"))
			if self:GetClass() == "npc_vj_totu_deimos_cyst" then
				ParticleEffectAttach("antlion_spit_02",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))
			else
				ParticleEffectAttach("antlion_spit_02",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("maw"))
			end
		end
	end

	if self.ToTU_Weaponized_Carcass_Type == 3 then

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

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnMeleeAttack_BeforeStartTimer(seed)

	if self.LNR_Crippled then
		self.AnimTbl_MeleeAttack = {"vjseq_crawl_attack2"}
	return end

	if self:GetClass() == "npc_vj_totu_deimos_carcass_torso" or self:GetClass() == "npc_vj_totu_deimos_cazador_torso" then return end

	if self:GetClass() == "npc_vj_totu_deimos_carcass" then

		if self.ToTU_Weaponized_Carcass_ZombineRunning then

			self.AnimTbl_MeleeAttack = {"vjseq_FastAttack"}

		else

			self.AnimTbl_MeleeAttack = {
				"vjseq_attackA",
				"vjseq_attackB",
				"vjseq_attackC",
				"vjseq_attackD",
				"vjseq_attackE",
				"vjseq_attackF",
				"vjseq_attackA",
				"vjseq_Breakthrough",
				"vjseq_swatleftlow",
				"vjseq_swatleftmid",
				"vjseq_swatrightlow",
				"vjseq_swatrightmid",
			}

		end

	end

	if self:GetClass() == "npc_vj_totu_deimos_cyst" then
		self.AnimTbl_MeleeAttack = {
			"vjseq_melee_01",
			"vjseq_melee_02",
			"vjseq_melee_03",
		}
	end
	
	if self:GetClass() == "npc_vj_totu_deimos_cazador" then
		if math.random(1,5) == 1 then
			self.AnimTbl_MeleeAttack = {
				"vjseq_BR2_Attack",
			}
		else
			self.AnimTbl_MeleeAttack = {
				"vjseq_Melee",
			}
		end
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRangeAttack_BeforeStartTimer(seed)

	if self:GetClass() == "npc_vj_totu_deimos_cyst" then

		if self.ToTU_Weaponized_Cyst_VomitAttack then

			self.AnimTbl_RangeAttack = {"vjseq_releasecrab"}
			self.RangeAttackAngleRadius = 100
			self.TimeUntilRangeAttackProjectileRelease = 0.2

			self.RangeAttackReps = 4
			self.RangeAttackExtraTimers = {1, 1.4}
			self.RangeAttackPos_Forward = 20
			self.RangeAttackPos_Up = 20
			
			self.HasMeleeAttack = false
			timer.Simple(2,function() if IsValid(self) then
				self.HasMeleeAttack = true
			end end)

			timer.Simple(0.4,function() if IsValid(self) then
				self:RangeAttackCode()
			end end)

			timer.Simple(0.6,function() if IsValid(self) then
				self:RangeAttackCode()
			end end)

			timer.Simple(0.8,function() if IsValid(self) then
				self:RangeAttackCode()
			end end)

			timer.Simple(1,function() if IsValid(self) then
				self:RangeAttackCode()
			end end)
			
			if GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
				if math.random(1,100) == 1 then
					self.RangeAttackSoundLevel = 90
					self.SoundTbl_BeforeRangeAttack = {
						"fx/egg/chowder/vom1.mp3",
						"fx/egg/chowder/vom1vo.mp3",
						"fx/egg/chowder/vom2.mp3",
						"fx/egg/chowder/vom2vo.mp3",
					}
				else		
					self.RangeAttackSoundLevel = 75
					self.SoundTbl_BeforeRangeAttack = {
						"npc/barnacle/barnacle_tongue_pull1.wav",
						"npc/barnacle/barnacle_tongue_pull2.wav",
						"npc/barnacle/barnacle_tongue_pull3.wav",
					}
				end
			else
				self.RangeAttackSoundLevel = 75
				self.SoundTbl_BeforeRangeAttack = {
					"npc/barnacle/barnacle_tongue_pull1.wav",
					"npc/barnacle/barnacle_tongue_pull2.wav",
					"npc/barnacle/barnacle_tongue_pull3.wav",
				}
			end

		else
	
			self.AnimTbl_RangeAttack = {"vjseq_ThrowWarning"}
			self.RangeAttackAngleRadius = 100
			self.TimeUntilRangeAttackProjectileRelease = 0.35

			self.HasMeleeAttack = false
			timer.Simple(1.7,function() if IsValid(self) then
				self.HasMeleeAttack = true
			end end)

			self.RangeAttackReps = 1
			self.RangeAttackExtraTimers = nil
			self.RangeAttackPos_Forward = 20
			self.RangeAttackPos_Up = 20

		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnLeapAttack_BeforeStartTimer(seed)

	-- move this to the cazador init?
	if self:GetClass() != "npc_vj_totu_deimos_cazador" then return end
	
	self:VJ_ACT_PLAYACTIVITY("vjseq_Leap",true,false,false)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Carcass_Split()

	self.HasDeathRagdoll = true
	self.HasDeathSounds = false
	VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",100,math.random(100,95))

	if self.ToTU_Weaponized_Carcass_Exploder then
		local d = DamageInfo()
		d:SetDamage(self:GetMaxHealth())
		d:SetAttacker(self)
		d:SetDamageType(DMG_GENERIC) 
		self:TakeDamageInfo(d)
	return end

	local RevSqSpawnH = self:Health() * 0.5

	if self:GetClass() == "npc_vj_totu_deimos_cazador" then
		self.DeathCorpseModel = {"models/totu/cazador_legs.mdl"}
		self.ToTU_Weaponized_DudeToSpawn = 1
	elseif self:GetClass() == "npc_vj_totu_deimos_carcass" && !self.ToTU_Weaponized_Carcass_Exploder then
		if self.ToTU_Weaponized_Carcass_Type == 1 then
			self.DeathCorpseModel = {"models/totu/carcass2_legs.mdl"}
		else
			self.DeathCorpseModel = {"models/totu/carcass_legs.mdl"}
		end
	end
	if self.ToTU_Weaponized_DudeToSpawn == 1 then
		self.Zombie1 = ents.Create("npc_vj_totu_deimos_cazador_torso")
	else
		self.Zombie1 = ents.Create("npc_vj_totu_deimos_carcass_torso")
	end
	self.Zombie1:SetPos(self:GetPos())
	self.Zombie1:SetAngles(self:GetAngles())
	self.Zombie1.ToTU_Weaponized_Carcass_Thorax_SplitSpawned = true
	if self.ToTU_Weaponized_Carcass_Type == 1 then
		self.Zombie1.ToTU_Weaponized_Carcass_Type = 1
	end
	self.Zombie1:Spawn()
	self.Zombie1:Activate()
	self.Zombie1:SetSkin(self:GetSkin())
	self.Zombie1:SetHealth(RevSqSpawnH)
	undo.ReplaceEntity(self,Zombie1)

	if IsValid(self) then
		local d = DamageInfo()
		d:SetDamage(self:GetMaxHealth())
		d:SetAttacker(self)
		d:SetDamageType(DMG_GENERIC) 
		self:TakeDamageInfo(d)
	end

	if IsValid(self:GetCreator()) then
		undo.Create(self:GetName().." Thorax")
		undo.AddEntity(self.Zombie1)
		undo.SetPlayer(self:GetCreator())
		undo.Finish()
	end

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/