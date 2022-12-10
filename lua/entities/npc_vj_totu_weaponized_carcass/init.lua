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
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()

	-- if GetConVar("VJ_ToTU_Weaponized_Carcass_Bleed"):GetInt() == 1 then
	-- convar isn't in yet
		self.MeleeAttackBleedEnemy = true
		self.MeleeAttackBleedEnemyChance = 3
		self.MeleeAttackBleedEnemyDamage = math.random(3,4)
		self.MeleeAttackBleedEnemyTime = 1
		self.MeleeAttackBleedEnemyReps = 4
		self.MeleeAttackDamageType = DMG_SLASH
	-- end
	
	self.SoundTbl_MeleeAttackExtra = {
		"vj_lnrhl2/shared/melee/zombie_slice_1.wav",
		"vj_lnrhl2/shared/melee/zombie_slice_2.wav",
		"vj_lnrhl2/shared/melee/zombie_slice_3.wav",
		"vj_lnrhl2/shared/melee/zombie_slice_4.wav",
		"vj_lnrhl2/shared/melee/zombie_slice_5.wav",
		"vj_lnrhl2/shared/melee/zombie_slice_6.wav"
	}
		
	self.SoundTbl_MeleeAttack = {""}
	
	if self:GetClass() == "npc_vj_totu_weaponized_carcass" then
	
		self.Model = {"models/totu/carcass.mdl"}
		
		if GetConVar("VJ_ToTU_Weaponized_Carcass_ZombineRunning"):GetInt() == 1 then
			self.ToTU_Weaponized_Carcass_CanZombineRun = true
		end

		if 
			GetConVar("VJ_ToTU_Weaponized_Carcass_Exploders"):GetInt() == 1 && 
			math.random(1,GetConVar("VJ_ToTU_Weaponized_Carcass_Exploders_Chance"):GetInt()) == 1 
		then
			self.ToTU_Weaponized_Carcass_Exploder = true
			self.DeathAnimationTime = 1.0
			self.DeathAnimationChance = 1
			self.AnimTbl_Death = {"releasecrab"}
			self.HasDeathRagdoll = true
			self.DeathCorpseModel = {"models/Zombie/Classic_legs.mdl"}
		end
		
	elseif self:GetClass() == "npc_vj_totu_weaponized_carcass_torso" then
	
		self.Model = {"models/totu/carcass_torso.mdl"}
		
		if GetConVar("VJ_ToTU_Weaponized_Carcass_Torso_SuperCrawl"):GetInt() == 1 then
			self.ToTU_Weaponized_Carcass_CanZombineRun = true
		end
		
		if self.ToTU_Weaponized_Carcass_Thorax_SplitSpawned == true then
			self.HasAlertSounds = false
		end
		
	elseif self:GetClass() == "npc_vj_totu_weaponized_cyst" then
	
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
		
		if GetConVar("VJ_ToTU_Weaponized_Carcass_ZombineRunning"):GetInt() == 1 then
			self.ToTU_Weaponized_Carcass_CanZombineRun = true
		end
		
		if 
			GetConVar("VJ_ToTU_Weaponized_Carcass_Exploders"):GetInt() == 1 && 
			math.random(1,GetConVar("VJ_ToTU_Weaponized_Carcass_Exploders_Chance"):GetInt()) == 1 
		then
			self.ToTU_Weaponized_Carcass_Exploder = true
			self.DeathAnimationTime = 1.5
			self.DeathAnimationChance = 1
			self.AnimTbl_Death = {"releasecrab"}
			self.HasDeathRagdoll = true
			self.DeathCorpseModel = {"models/skeleton/skeleton_leg.mdl"}
			self.DeathCorpseSkin = 2
		end
	elseif self:GetClass() == "npc_vj_totu_weaponized_cazador" then
		self.Model = {"models/totu/cazador.mdl"}
		self.LNR_Walker = false
		self.LNR_Infected = true
		
		
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

	elseif self:GetClass() == "npc_vj_totu_weaponized_cazador_torso" then
		self.Model = {"models/totu/cazador_thorax.mdl"}
		self.LNR_Walker = false
		self.LNR_Infected = true
		if self.ToTU_Weaponized_Carcass_Thorax_SplitSpawned == true then
			self.HasAlertSounds = false
		end
		
	end
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()

	if GetConVar("VJ_LNR_GroundRise"):GetInt() == 1 && ( self:IsDirtGround(self:GetPos()) or GetConVar("VJ_ToTU_Spawn_UniversalDig"):GetInt() == 1 ) then
		if math.random(1,GetConVar("VJ_ToTU_Spawn_DigChance"):GetInt()) == 1 then
			self:RiseFromGround()
		end
	end
	
	-- timer.Simple(0.5,function() if IsValid(self) then
	-- local d = DamageInfo()
	-- d:SetDamage(self:GetMaxHealth())
	-- d:SetAttacker(self)
	-- d:SetDamageType(DMG_GENERIC) 
	-- self:TakeDamageInfo(d)
	-- end end)
	
	if self.DisableFindEnemy == true then
		timer.Simple(1.3,function() if IsValid(self) then
			self:Zombie_GlowEyes_Give()
		end end)
	else
		self:Zombie_GlowEyes_Give()
	end
	
	util.AddNetworkString("vj_lnr_walker_hud")
	
	if self:GetClass() == "npc_vj_totu_weaponized_carcass" then
	
		self:SetCollisionBounds(Vector(11, 15, 70), Vector(-13, -15, 0))
		self.ToTU_Weaponized_Carcass_NextZombineRunT = CurTime() + math.random(3,10)	
		self.AnimTbl_Flinch = {""}
		self:SetKeyValue("rendercolor","76 124 76 255")
		
	elseif self:GetClass() == "npc_vj_totu_weaponized_carcass_torso" then
	
		self:SetCollisionBounds(Vector(13, 15, 15), Vector(-13, -16, 0))
		self.ToTU_Weaponized_Carcass_NextZombineRunT = CurTime() + math.random(3,10)	
		self.AnimTbl_Run = {ACT_WALK}
		self.MeleeAttackDistance = 15
		self.MeleeAttackDamageDistance = 45	
		self.AnimTbl_MeleeAttack = {"vjseq_attack"}
		self.CanOpenDoors = false
		self:SetKeyValue("rendercolor","61 98 61 255")
		self.HasDeathAnimation = false
		self.CanFlinch = 0
		
		if self.ToTU_Weaponized_Carcass_Thorax_SplitSpawned == true then
			timer.Simple(0.5,function() if IsValid(self) then
				self.HasAlertSounds = true
				-- VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",100,math.random(100,100))
			end end)
		end
		
	elseif self:GetClass() == "npc_vj_totu_weaponized_cyst" then
	
		self:SetKeyValue("rendercolor","74 121 74 255")
		self:SetCollisionBounds(Vector(19, 11, 60), Vector(-11, -15, 0))
		self.AnimTbl_Flinch = {""}
		self.AnimTbl_Run = {ACT_WALK}
		self.ToTU_Weaponized_Carcass_NextZombineRunT = CurTime() + math.random(3,10)	
		
	elseif self:GetClass() == "npc_vj_totu_weaponized_cazador" then
		self:SetCollisionBounds(Vector(11, 15, 60), Vector(-13, -15, 0))
		self:SetKeyValue("rendercolor","76 124 76 255")
		self.AnimTbl_Run = {ACT_RUN}

	elseif self:GetClass() == "npc_vj_totu_weaponized_cazador_torso" then
		self:SetCollisionBounds(Vector(13, 15, 15), Vector(-13, -16, 0))
		self:SetKeyValue("rendercolor","76 124 76 255")
		self.AnimTbl_MeleeAttack = {"vjseq_attack01"}
		self.CanOpenDoors = false
		self.HasDeathAnimation = false
		self.CanFlinch = 0
	
	end
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_GlowEyes_Give()
	if GetConVar("vj_npc_noidleparticle"):GetInt() == 0 && GetConVar("VJ_LNR_SpecialEyes"):GetInt() == 1 then		
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
	end	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
	
		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(10,15)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
	
		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(15,20)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
	
		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(20,25)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
	
		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(25,30)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
	
		self.StartHealth = 350
		self.MeleeAttackDamage = math.Rand(35,40)
		
	end
			
        self:SetHealth(self.StartHealth)	
		
		if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then
		
			if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
			
				self.LNR_LegHP = 10
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
			
				self.LNR_LegHP = 25
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
			
				self.LNR_LegHP = 40
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
			
				self.LNR_LegHP = 55
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
			
				self.LNR_LegHP = 60
				
			end
			
		end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RiseFromGround()

	if 
		self:GetClass() == "npc_vj_totu_weaponized_carcass_torso" or 
		self:GetClass() == "npc_vj_totu_weaponized_cyst" or
		self:GetClass() == "npc_vj_totu_weaponized_cazador" or
		self:GetClass() == "npc_vj_totu_weaponized_cazador_torso"
	then return end

	self:SetMaterial("lnr/bonemerge")
	
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
		
	    self:VJ_ACT_PLAYACTIVITY({"vjseq_canal5aattack"},true,false,false)
		
	    VJ_EmitSound(self,"vj_lnrhl2/shared/dirtintro"..math.random(1,2)..".wav",75,100)
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

	if self:GetClass() == "npc_vj_totu_weaponized_carcass" or self:GetClass() == "npc_vj_totu_weaponized_carcass_torso" or self:GetClass() == "npc_vj_totu_weaponized_cyst" then

		if self.ToTU_Weaponized_Carcass_NextZombineRunT < CurTime() && !self.ToTU_Weaponized_Carcass_ZombineRunning && self:GetEnemy() != nil && !self:IsBusy() && self.ToTU_Weaponized_Carcass_CanZombineRun then
	
			if self:GetClass() == "npc_vj_totu_weaponized_cyst" then
			
		self.SoundTbl_CombatIdle = {
		"zombies/coastline/whale/cidle_1.mp3",
		"zombies/coastline/whale/cidle_2.mp3",
		"zombies/coastline/whale/cidle_3.mp3",
		"zombies/coastline/whale/cidle_4.mp3",
		"zombies/coastline/whale/cidle_5.mp3",
		"zombies/coastline/whale/cidle_6.mp3",
		"zombies/coastline/whale/cidle_7.mp3",
		}
			VJ_EmitSound(self,self.SoundTbl_Alert,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			else
			VJ_EmitSound(self,self.SoundTbl_BeforeMeleeAttack,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end
			self.ToTU_Weaponized_Carcass_ZombineRunning = true
			self.ToTU_Weaponized_Carcass_ZombineRunT = CurTime() + math.random(3,7)
			
			if self:GetClass() == "npc_vj_totu_weaponized_carcass_torso" or self:GetClass() == "npc_vj_totu_weaponized_cyst" then
				self.AnimTbl_Run = {ACT_RUN}
			else
				self.AnimTbl_IdleStand = {ACT_IDLE_ANGRY}
				self.AnimTbl_Walk = {ACT_WALK_AIM}
				self.AnimTbl_Run = {ACT_RUN}
			end
		
		end

		if self.ToTU_Weaponized_Carcass_ZombineRunning && self.ToTU_Weaponized_Carcass_ZombineRunT < CurTime() && !self.LNR_Crippled && self.ToTU_Weaponized_Carcass_CanZombineRun then
		
			self.ToTU_Weaponized_Carcass_ZombineRunning = false
			self.ToTU_Weaponized_Carcass_NextZombineRunT = CurTime() + math.random(6,12)
			
			if self:GetClass() == "npc_vj_totu_weaponized_cyst" then
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
				self.HasMeleeAttack = true
			return end
			
			if self:GetClass() == "npc_vj_totu_weaponized_carcass_torso" or self:GetClass() == "npc_vj_totu_weaponized_cyst" then
		
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
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnMeleeAttack_BeforeStartTimer(seed)

	if self:GetClass() == "npc_vj_totu_weaponized_carcass_torso" or self:GetClass() == "npc_vj_totu_weaponized_cazador_torso" then return end
	
	if self:GetClass() == "npc_vj_totu_weaponized_carcass" then
	
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
	
	if self:GetClass() == "npc_vj_totu_weaponized_cyst" then
			self.AnimTbl_MeleeAttack = {
				"vjseq_melee_01",
				"vjseq_melee_02",
				"vjseq_melee_03",
			}
	end
	
	if self:GetClass() == "npc_vj_totu_weaponized_cazador" then
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
function ENT:CustomOnLeapAttack_BeforeStartTimer(seed)

	if self:GetClass() != "npc_vj_totu_weaponized_cazador" then return end
					self:VJ_ACT_PLAYACTIVITY("vjseq_Leap",true,false,false)
					
		-- timer.Simple(0.3,function() if IsValid(self) then
					-- self:VJ_ACT_PLAYACTIVITY("vjseq_Leapstrike",true,false,false)
		-- end end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Carcass_Split()

	if self:GetClass() == "npc_vj_totu_weaponized_cazador" then
	
	
	
	self.HasDeathRagdoll = true
	self.DeathCorpseModel = {"models/Gibs/Fast_Zombie_Legs.mdl"}
	self.HasDeathSounds = false
	VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",100,math.random(100,95))
	-- VJ_EmitSound(self,self.SoundTbl_Death,self.DeathSoundLevel,self:VJ_DecideSoundPitch(self.GeneralSoundPitch1,self.GeneralSoundPitch2))
	
	local RevSqSpawnH = self.StartHealth * 0.45
	-- add blood effects

	local d = DamageInfo()
	d:SetDamage(self:GetMaxHealth())
	d:SetAttacker(self)
	d:SetDamageType(DMG_GENERIC) 
	self:TakeDamageInfo(d)
	
		self.Zombie1 = ents.Create("npc_vj_totu_weaponized_cazador_torso")
		self.Zombie1:SetPos(self:GetPos())
		self.Zombie1:SetAngles(self:GetAngles())
		self.Zombie1.ToTU_Weaponized_Carcass_Thorax_SplitSpawned = true
		self.Zombie1:Spawn()
		self.Zombie1:Activate()
		self.Zombie1:SetHealth(RevSqSpawnH)
		undo.ReplaceEntity(self,Zombie1)
	
		if IsValid(self:GetCreator()) then
			undo.Create(self:GetName().." Thorax")
			undo.AddEntity(self.Zombie1)
			undo.SetPlayer(self:GetCreator())
			undo.Finish()
		end
		
	
	else
	self.HasDeathRagdoll = true
	self.DeathCorpseModel = {"models/Zombie/Classic_legs.mdl"}
	self.HasDeathSounds = false
	VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",100,math.random(100,95))
	-- VJ_EmitSound(self,self.SoundTbl_Death,self.DeathSoundLevel,self:VJ_DecideSoundPitch(self.GeneralSoundPitch1,self.GeneralSoundPitch2))
	
	local RevSqSpawnH = self.StartHealth * 0.45
	-- add blood effects

	local d = DamageInfo()
	d:SetDamage(self:GetMaxHealth())
	d:SetAttacker(self)
	d:SetDamageType(DMG_GENERIC) 
	self:TakeDamageInfo(d)
	
	if !self.ToTU_Weaponized_Carcass_Exploder then
	
		self.Zombie1 = ents.Create("npc_vj_totu_weaponized_carcass_torso")
		self.Zombie1:SetPos(self:GetPos())
		self.Zombie1:SetAngles(self:GetAngles())
		self.Zombie1.ToTU_Weaponized_Carcass_Thorax_SplitSpawned = true
		self.Zombie1:Spawn()
		self.Zombie1:Activate()
		self.Zombie1:SetHealth(RevSqSpawnH)
		undo.ReplaceEntity(self,Zombie1)
	
		if IsValid(self:GetCreator()) then
			undo.Create(self:GetName().." Thorax")
			undo.AddEntity(self.Zombie1)
			undo.SetPlayer(self:GetCreator())
			undo.Finish()
		end
		
	end
	
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/