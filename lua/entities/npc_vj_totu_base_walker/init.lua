AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/totu/testmonk.mdl"}
ENT.StartHealth = 150
ENT.TurningSpeed = 15
ENT.MaxJumpLegalDistance = VJ_Set(50, 150)
ENT.VJC_Data = {
	CameraMode = 1,
	ThirdP_Offset = Vector(40, 20, -50),
	FirstP_Bone = "ValveBiped.Bip01_Head1",
	FirstP_Offset = Vector(0, 0, 5),
}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"}
-- ENT.AnimTbl_IdleStand = {ACT_IDLE_HURT}
ENT.AnimTbl_Run = {ACT_WALK}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.CustomBlood_Particle = {"lnr_bullet_impact_01","lnr_bullet_impact_02","lnr_bullet_impact_03","lnr_bullet_impact_04"}
ENT.ImmuneDamagesTable = {DMG_RADIATION}
ENT.CanFlinch = 1
ENT.FlinchChance = 10
-- ENT.FlinchChance = 1
ENT.NextFlinchTime = 3
-- ENT.AnimTbl_Flinch = {ACT_BIG_FLINCH}
ENT.HasHitGroupFlinching = true 
ENT.HitGroupFlinching_DefaultWhenNotHit = true
ENT.HitGroupFlinching_Values = {
{HitGroup = {HITGROUP_HEAD}, Animation = {"vjges_flinch_head_1","vjges_flinch_head_2","vjges_flinch_head_3"}}, 
{HitGroup = {HITGROUP_STOMACH}, Animation = {"vjges_flinch_stomach_01","vjges_flinch_stomach_02","vjges_ep_flinch_chest"}}, 
{HitGroup = {HITGROUP_CHEST}, Animation = {"vjges_flinch_chest_1","vjges_flinch_chest_2","vjges_flinch_chest_3"}}, 
{HitGroup = {HITGROUP_LEFTARM}, Animation = {"vjges_flinch_leftarm_1","vjges_flinch_leftarm_2","vjges_flinch_leftarm_3"}}, 
{HitGroup = {HITGROUP_RIGHTARM}, Animation = {"vjges_flinch_rightarm_1","vjges_flinch_rightarm_2","vjges_flinch_rightarm_3"}}, 
-- {HitGroup = {HITGROUP_LEFTLEG}, Animation = {"vjseq_ep_flinch_leftLeg"}}, 
-- {HitGroup = {HITGROUP_RIGHTLEG}, Animation = {"vjseq_ep_flinch_rightLeg"}}
}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.HasDeathAnimation = true
ENT.DeathAnimationTime = false
ENT.DeathAnimationChance = 2
ENT.AnimTbl_Death = {"vjseq_nz_death_1","vjseq_nz_death_2","vjseq_nz_death_3"}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.MeleeAttackAnimationAllowOtherTasks = true
ENT.MeleeAttackDamage = math.Rand(10,15)
ENT.MeleeAttackDamageType = DMG_CLUB
ENT.MeleeAttackDistance = 40
ENT.MeleeAttackDamageDistance = 60
ENT.TimeUntilMeleeAttackDamage = false
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.DisableFootStepSoundTimer = true
ENT.GeneralSoundPitch1 = 100
ENT.GeneralSoundPitch2 = 95
ENT.FootStepPitch = VJ_Set(100, 95)
ENT.MeleeAttackSoundPitch = VJ_Set(100,95)
---------------------------------------------------------------------------------------------------------------------------------------------
--custom
ENT.LNR_VirusInfection = true
ENT.LNR_Walker = true
ENT.LNR_Biter = false
ENT.LNR_Runner = false
ENT.LNR_Infected = false
ENT.LNR_Crawler = false
ENT.LNR_AllowedToStumble = true
ENT.LNR_NextStumbleT = 0
ENT.LNR_NextShoveT = 0
ENT.LNR_UsingRelaxedIdle = false
ENT.LNR_Crippled = false
ENT.LNR_LegHP = 25
ENT.LNR_CanBreakDoors = false
ENT.LNR_DoorToBreak = NULL
ENT.ZappyDeath = false
ENT.CanDoTheFunny = true
ENT.CanDoBigFlinchy = true
ENT.NextSplodeStumbleT = 0
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.FootSteps = {
	[MAT_ANTLION] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_BLOODYFLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_CONCRETE] = {
		"vj_lnrhl2/shared/footstep/zombie_footstep_m_01.wav",
		"vj_lnrhl2/shared/footstep/zombie_footstep_m_02.wav",
		"vj_lnrhl2/shared/footstep/zombie_footstep_m_03.wav",
	},
	[MAT_DIRT] = {
		"player/footsteps/dirt1.wav",
		"player/footsteps/dirt2.wav",
		"player/footsteps/dirt3.wav",
		"player/footsteps/dirt4.wav",
	},
	[MAT_FLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_GRATE] = {
		"player/footsteps/metalgrate1.wav",
		"player/footsteps/metalgrate2.wav",
		"player/footsteps/metalgrate3.wav",
		"player/footsteps/metalgrate4.wav",
	},
	[MAT_ALIENFLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[74] = { -- Snow
		"player/footsteps/sand1.wav",
		"player/footsteps/sand2.wav",
		"player/footsteps/sand3.wav",
		"player/footsteps/sand4.wav",
	},
	[MAT_PLASTIC] = {
		"physics/plaster/drywall_footstep1.wav",
		"physics/plaster/drywall_footstep2.wav",
		"physics/plaster/drywall_footstep3.wav",
		"physics/plaster/drywall_footstep4.wav",
	},
	[MAT_METAL] = {
		"player/footsteps/metal1.wav",
		"player/footsteps/metal2.wav",
		"player/footsteps/metal3.wav",
		"player/footsteps/metal4.wav",
	},
	[MAT_SAND] = {
		"player/footsteps/sand1.wav",
		"player/footsteps/sand2.wav",
		"player/footsteps/sand3.wav",
		"player/footsteps/sand4.wav",
	},
	[MAT_FOLIAGE] = {
		"player/footsteps/grass1.wav",
		"player/footsteps/grass2.wav",
		"player/footsteps/grass3.wav",
		"player/footsteps/grass4.wav",
	},
	[MAT_COMPUTER] = {
		"physics/plaster/drywall_footstep1.wav",
		"physics/plaster/drywall_footstep2.wav",
		"physics/plaster/drywall_footstep3.wav",
		"physics/plaster/drywall_footstep4.wav",
	},
	[MAT_SLOSH] = {
		"player/footsteps/slosh1.wav",
		"player/footsteps/slosh2.wav",
		"player/footsteps/slosh3.wav",
		"player/footsteps/slosh4.wav",
	},
	[MAT_TILE] = {
		"player/footsteps/tile1.wav",
		"player/footsteps/tile2.wav",
		"player/footsteps/tile3.wav",
		"player/footsteps/tile4.wav",
	},
	[85] = { -- Grass
		"player/footsteps/grass1.wav",
		"player/footsteps/grass2.wav",
		"player/footsteps/grass3.wav",
		"player/footsteps/grass4.wav",
	},
	[MAT_VENT] = {
		"player/footsteps/duct1.wav",
		"player/footsteps/duct2.wav",
		"player/footsteps/duct3.wav",
		"player/footsteps/duct4.wav",
	},
	[MAT_WOOD] = {
		"player/footsteps/wood1.wav",
		"player/footsteps/wood2.wav",
		"player/footsteps/wood3.wav",
		"player/footsteps/wood4.wav",
		"player/footsteps/woodpanel1.wav",
		"player/footsteps/woodpanel2.wav",
		"player/footsteps/woodpanel3.wav",
		"player/footsteps/woodpanel4.wav",
	},
	[MAT_GLASS] = {
		"physics/glass/glass_sheet_step1.wav",
		"physics/glass/glass_sheet_step2.wav",
		"physics/glass/glass_sheet_step3.wav",
		"physics/glass/glass_sheet_step4.wav",
	}
}

ENT.SoundTbl_Idle = {"npc/zombie/zombie_voice_idle1.wav",
	"npc/zombie/zombie_voice_idle2.wav",
	"npc/zombie/zombie_voice_idle3.wav",
	"npc/zombie/zombie_voice_idle4.wav",
	"npc/zombie/zombie_voice_idle5.wav",
	"npc/zombie/zombie_voice_idle6.wav",
	"npc/zombie/zombie_voice_idle7.wav",
	"npc/zombie/zombie_voice_idle8.wav",
	"npc/zombie/zombie_voice_idle9.wav",
	"npc/zombie/zombie_voice_idle10.wav",
	"npc/zombie/zombie_voice_idle11.wav",
	"npc/zombie/zombie_voice_idle12.wav",
	"npc/zombie/zombie_voice_idle13.wav",
	"npc/zombie/zombie_voice_idle14.wav"}
ENT.SoundTbl_Alert = {"npc/zombie/zombie_alert1.wav",
	"npc/zombie/zombie_alert2.wav",
	"npc/zombie/zombie_alert3.wav"}
ENT.SoundTbl_CombatIdle = {"npc/zombie/zombie_voice_idle1.wav",
	"npc/zombie/zombie_voice_idle2.wav",
	"npc/zombie/zombie_voice_idle3.wav",
	"npc/zombie/zombie_voice_idle4.wav",
	"npc/zombie/zombie_voice_idle5.wav",
	"npc/zombie/zombie_voice_idle6.wav",
	"npc/zombie/zombie_voice_idle7.wav",
	"npc/zombie/zombie_voice_idle8.wav",
	"npc/zombie/zombie_voice_idle9.wav",
	"npc/zombie/zombie_voice_idle10.wav",
	"npc/zombie/zombie_voice_idle11.wav",
	"npc/zombie/zombie_voice_idle12.wav",
	"npc/zombie/zombie_voice_idle13.wav",
	"npc/zombie/zombie_voice_idle14.wav"}
ENT.SoundTbl_Pain = {"npc/zombie/zombie_pain1.wav",
	"npc/zombie/zombie_pain2.wav",
	"npc/zombie/zombie_pain3.wav",
	"npc/zombie/zombie_pain4.wav",
	"npc/zombie/zombie_pain5.wav",
	"npc/zombie/zombie_pain6.wav"}
ENT.SoundTbl_Death = {"npc/zombie/zombie_die1.wav",
	"npc/zombie/zombie_die2.wav",
	"npc/zombie/zombie_die3.wav"}
ENT.SoundTbl_MeleeAttack = {
        "vj_lnrhl2/shared/melee/hit_punch_01.wav",
        "vj_lnrhl2/shared/melee/hit_punch_02.wav",
        "vj_lnrhl2/shared/melee/hit_punch_03.wav",
        "vj_lnrhl2/shared/melee/hit_punch_04.wav",
        "vj_lnrhl2/shared/melee/hit_punch_05.wav",
        "vj_lnrhl2/shared/melee/hit_punch_06.wav",
        "vj_lnrhl2/shared/melee/hit_punch_07.wav",
        "vj_lnrhl2/shared/melee/hit_punch_08.wav"}
ENT.SoundTbl_BeforeMeleeAttack = {"npc/zombie/zo_attack1.wav",
	"npc/zombie/zo_attack2.wav"}
ENT.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss2.wav","npc/zombie/claw_miss1.wav"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnFootStepSound()
	if !self:IsOnGround() then return end
	local tr = util.TraceLine({
		start = self:GetPos(),
		endpos = self:GetPos() +Vector(0,0,-150),
		filter = {self}
	})
	if tr.Hit && self.FootSteps[tr.MatType] then
		VJ_EmitSound(self,VJ_PICK(self.FootSteps[tr.MatType]),self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
	end
	if self:WaterLevel() > 0 && self:WaterLevel() < 3 then
		VJ_EmitSound(self,"player/footsteps/wade" .. math.random(1,8) .. ".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
--[[
function ENT:FootStepSoundCode(CustomTbl)
	if self.HasSounds == false or self.HasFootStepSound == false or self.MovementType == VJ_MOVETYPE_STATIONARY then return end
	if self:IsOnGround() && self:GetGroundEntity() != NULL then
		if self.DisableFootStepSoundTimer == true then
			self:CustomOnFootStepSound()
			return
		elseif self:IsMoving() && CurTime() > self.FootStepT then
			self:CustomOnFootStepSound()
			local CurSched = self.CurrentSchedule
			if self.DisableFootStepOnRun == false && ((VJ_HasValue(self.AnimTbl_Run,self:GetMovementActivity())) or (CurSched != nil  && CurSched.IsMovingTask_Run == true)) /*(VJ_HasValue(VJ_RunActivites,self:GetMovementActivity()) or VJ_HasValue(self.CustomRunActivites,self:GetMovementActivity()))*/ then
				self:CustomOnFootStepSound_Run()
				self.FootStepT = CurTime() + self.FootStepTimeRun
				return
			elseif self.DisableFootStepOnWalk == false && (VJ_HasValue(self.AnimTbl_Walk,self:GetMovementActivity()) or (CurSched != nil  && CurSched.IsMovingTask_Walk == true)) /*(VJ_HasValue(VJ_WalkActivites,self:GetMovementActivity()) or VJ_HasValue(self.CustomWalkActivites,self:GetMovementActivity()))*/ then
				self:CustomOnFootStepSound_Walk()
				self.FootStepT = CurTime() + self.FootStepTimeWalk
				return
			end
		end
	end
end
--]]
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPreInitialize()	
	if GetConVarNumber("VJ_LNR_DeathAnimations") == 0 then 
		self.HasDeathAnimation = false	
	end
	if GetConVarNumber("vj_LNR_Alert") == 0 then 
		self.CallForHelp = false
	end
	
	if GetConVar("VJ_LNR_BreakDoors") == 1 then
        self.LNR_CanBreakDoors = true	 
		self.CanOpenDoors = false
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
     if math.random(1,3) == 1 && !self.LNR_Crawler then 
        self.LNR_UsingRelaxedIdle = true
		self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
end
  if GetConVar("VJ_LNR_Runner"):GetInt() == 1 then
     if math.random(1,3) == 1 && !self.LNR_Crawler && !self.LNR_Infected && self:GetClass() != "npc_vj_lnrhl2_charple" && self:GetClass() != "npc_vj_lnrhl2_corpse" && self:GetClass() != "npc_vj_lnrhl2_corpse_hev" && self:GetClass() != "npc_vj_lnr_corpse_zombie" && self:GetClass() != "npc_vj_lnr_cris" && self:GetClass() != "npc_vj_lnrhl2_combine_assn" then 
        self.LNR_Runner = true
		self.AnimTbl_Run = {ACT_RUN}
	end	
end	
  if GetConVar("VJ_LNR_Crawl"):GetInt() == 1 then
     if math.random(1,5) == 1 && self:GetClass() != "npc_vj_lnr_wal" && self:GetClass() != "npc_vj_lnr_wal_ply" && self:GetClass() != "npc_vj_lnr_corpse_zombie" && self:GetClass() != "npc_vj_lnr_cris" then 
		self.LNR_Crawler = true
		self:Cripple()	
    end	
end	
  if GetConVar("VJ_LNR_GroundRise"):GetInt() == 1 && self:IsDirtGround(self:GetPos()) then
     if math.random(1,5) == 1 && !self.LNR_Crawler && self:GetClass() != "npc_vj_lnr_wal_pm" && self:GetClass() != "npc_vj_lnr_wal" && self:GetClass() != "npc_vj_lnr_wal_ply" && self:GetClass() != "npc_vj_lnr_corpse_zombie" && self:GetClass() != "npc_vj_lnr_cris" then
        self:RiseFromGround()
    end		
end
	-- [[
    -- if self:IsDirt(self:GetPos()) then
        -- self:SetNoDraw(true)
		-- timer.Simple(0.1,function() if IsValid(self) then
			-- self:VJ_ACT_PLAYACTIVITY("nz_spawn_climbout_fast",true,4.35,false,0,{SequenceDuration=4.35})
			-- self:SetNoDraw(false)
			-- ParticleEffect("strider_impale_ground",self:GetPos(),self:GetAngles(),self)
			-- ParticleEffect("strider_cannon_impact",self:GetPos(),self:GetAngles(),self)
			-- local DiggyDiggyHole = math.random(1,2)
			-- if DiggyDiggyHole == 1 then
				-- self:EmitSound(Sound("vj_manhunt/vocals/zmb_vocals/spawn_dirt_00.wav", 100, math.random(100,95)))
			-- elseif DiggyDiggyHole == 2 then
				-- self:EmitSound(Sound("vj_manhunt/vocals/zmb_vocals/spawn_dirt_01.wav", 100, math.random(100,95)))
			-- end
		-- end end)
		-- timer.Simple(1.1,function() if IsValid(self) then
			-- ParticleEffect("strider_headbeating_01b",self:GetPos(),self:GetAngles(),self)
		-- end end)
		-- timer.Simple(2.1,function() if IsValid(self) then
			-- ParticleEffect("strider_headbeating_01b",self:GetPos(),self:GetAngles(),self)
		-- end end)
		-- timer.Simple(3.1,function() if IsValid(self) then
			-- ParticleEffect("strider_headbeating_01b",self:GetPos(),self:GetAngles(),self)
		-- end end)
	-- end
	-- ]]
	 self:Zombie_Difficulty()	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then // Easy
        self.StartHealth = 50
	    self.MeleeAttackDamage = math.Rand(5,10)	
		self.LNR_LegHP = 15	
     if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(10,15) end		
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then // Normal
        self.StartHealth = 100		
	    self.MeleeAttackDamage = math.Rand(10,15)
     if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(15,20) end
end		
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then // Hard
        self.StartHealth = 150	
	    self.MeleeAttackDamage = math.Rand(15,20)
		self.LNR_LegHP = 35
     if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(20,25) end
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then // Nightmare
        self.StartHealth = 200
	    self.MeleeAttackDamage = math.Rand(20,25)
		self.LNR_LegHP = 45
     if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(25,30) end
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then // Apocalypse
        self.StartHealth = 250
	    self.MeleeAttackDamage = math.Rand(25,30) 
		self.LNR_LegHP = 55
     if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(30,35) end		
end	
        self:SetHealth(self.StartHealth)	
end 
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	if key == "step" then
		self:FootStepSoundCode()
	end
	
	if key == "infection_step" && self:IsOnGround() then
		local tr = util.TraceLine({
			start = self:GetPos(),
			endpos = self:GetPos() +Vector(0,0,-150),
			filter = {self}
		})
			if tr.Hit && self.FootSteps[tr.MatType] then
				VJ_EmitSound(self,VJ_PICK(self.FootSteps[tr.MatType]),self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch1,self.FootStepPitch2))
			end
	end
	
	if key == "slide" then
		VJ_EmitSound(self,"npc/zombie/foot_slide"..math.random(1,3)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
	end
	
	if key == "crawl" then
		VJ_EmitSound(self,"vj_lnrhl2/shared/footstep/concrete"..math.random(1,4)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
	end
	if key == "crawl" && self:WaterLevel() > 0 && self:WaterLevel() < 3 then
		VJ_EmitSound(self,"player/footsteps/wade" .. math.random(1,8) .. ".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
	end
	if key == "climb" then
		VJ_EmitSound(self,"player/footsteps/ladder"..math.random(1,4)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
	end		
	if key == "attack" then
		self:MeleeAttackCode()
	end
	if key == "death" then
		VJ_EmitSound(self,"physics/body/body_medium_impact_soft"..math.random(1,7)..".wav",75,100)
	end
	if key == "death" && self:WaterLevel() > 0 && self:WaterLevel() < 3 then
        VJ_EmitSound(self,"ambient/water/water_splash"..math.random(1,3)..".wav",75,100)
	end
	if key == "break_door" then
		if IsValid(self.LNR_DoorToBreak) then
		VJ_CreateSound(self,self.SoundTbl_BeforeMeleeAttack,self.BeforeMeleeAttackSoundLevel,self:VJ_DecideSoundPitch(self.BeforeMeleeAttackSoundPitch.a, self.BeforeMeleeAttackSoundPitch.b))
		VJ_EmitSound(self,"physics/wood/wood_panel_impact_hard1.wav",75,100)
		local doorDmg = self.MeleeAttackDamage
		local door = self.LNR_DoorToBreak
		if door.DoorHealth == nil then
			door.DoorHealth = 200 - doorDmg
		else
			door.DoorHealth = door.DoorHealth - doorDmg
end
		if door.DoorHealth <= 0 then
			door:EmitSound("physics/wood/wood_furniture_break"..math.random(1,2)..".wav",75,100)
			ParticleEffect("door_pound_core",door:GetPos(),door:GetAngles(),nil)
			ParticleEffect("door_explosion_chunks",door:GetPos(),door:GetAngles(),nil)
			door:Remove()
            local doorgibs = ents.Create("prop_dynamic")
            doorgibs:SetPos(door:GetPos())
            doorgibs:SetModel("models/props_c17/FurnitureDresser001a.mdl")
            doorgibs:Spawn()
            doorgibs:TakeDamage(9999)
            doorgibs:Fire("break")
			end
		end
	end	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
 if GetConVar("VJ_LNR_BreakDoors"):GetInt() == 0 or self.LNR_Crawler or self.LNR_Crippled or self.Dead or self.DeathAnimationCodeRan or self.Flinching or self:GetSequence() == self:LookupSequence("nz_spawn_climbout_fast") or self:GetSequence() == self:LookupSequence("nz_spawn_jump") or self:GetSequence() == self:LookupSequence("shove_forward_01") or self:GetSequence() == self:LookupSequence("infectionrise") or self:GetSequence() == self:LookupSequence("infectionrise2") or self:GetSequence() == self:LookupSequence("slumprise_a") or self:GetSequence() == self:LookupSequence("slumprise_a2") then self.LNR_DoorToBreak = NULL return end
	if VJ_AnimationExists(self,ACT_OPEN_DOOR) then
		if !IsValid(self.LNR_DoorToBreak) then
		  if ((!self.VJ_IsBeingControlled) or (self.VJ_IsBeingControlled && self.VJ_TheController:KeyDown(IN_DUCK))) then
			for _,v in pairs(ents.FindInSphere(self:GetPos(),40)) do
			  if v:GetClass() == "func_door_rotating" && v:Visible(self) then self.LNR_DoorToBreak = v end
			 	if v:GetClass() == "prop_door_rotating" && v:Visible(self) then
					local anim = string.lower(v:GetSequenceName(v:GetSequence()))
					if string.find(anim,"idle") or string.find(anim,"open") /*or string.find(anim,"locked")*/ then
						self.LNR_DoorToBreak = v
		        break
			end
		end
	end
end
		else
		    //local dist = self:VJ_GetNearestPointToEntityDistance(self.LNR_DoorToBreak)
		    if self.PlayingAttackAnimation or !self.LNR_DoorToBreak:Visible(self) /*or (self:GetActivity() == ACT_OPEN_DOOR && dist <= 100)*/ then self.LNR_DoorToBreak = NULL return end
			if self:GetActivity() != ACT_OPEN_DOOR then
				local ang = self:GetAngles()
				self:SetAngles(Angle(ang.x,(self.LNR_DoorToBreak:GetPos() -self:GetPos()):Angle().y,ang.z))
				self:VJ_ACT_PLAYACTIVITY(ACT_OPEN_DOOR,true,false,false)
				self:SetState(VJ_STATE_ONLY_ANIMATION)
		end
	end
end
		if !IsValid(self.LNR_DoorToBreak) then
			self:SetState()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:IsDirtGround(pos)
	local tr = util.TraceLine({
		start = pos,
		endpos = pos -Vector(0,0,40),
		filter = self,
		mask = MASK_NPCWORLDSTATIC
	})
	local mat = tr.MatType
	return tr.HitWorld && (mat == MAT_SAND || mat == MAT_DIRT || mat == MAT_FOLIAGE || mat == MAT_SLOSH || mat == MAT_GRASS)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RiseFromGround() 
		self:SetMaterial("lnr/bonemerge")
	 if IsValid(self.WeaponModel) then self.WeaponModel:SetMaterial("lnr/bonemerge") self.WeaponModel:DrawShadow(false) end
		self:DrawShadow(false)
		self:AddFlags(FL_NOTARGET)
		self.GodMode = true
		self.MovementType = VJ_MOVETYPE_STATIONARY
		self.CanTurnWhileStationary = false
		self.HasSounds = false
		self.HasPoseParameterLooking = false
        self.DisableFindEnemy = true		
		self.CallForHelp = false
		timer.Simple(1.3,function()
	 if IsValid(self) then
		self:SetMaterial()
	 if IsValid(self.WeaponModel) then self.WeaponModel:SetMaterial() self.WeaponModel:DrawShadow(true) end
		self:DrawShadow(true)
		self:RemoveFlags(FL_NOTARGET)
		self.GodMode = false
		self:DoChangeMovementType(VJ_MOVETYPE_GROUND)
		self.HasSounds = true
		self.HasPoseParameterLooking = true
        self.DisableFindEnemy = false		
		self.CallForHelp = true
	    self:VJ_ACT_PLAYACTIVITY({"vjseq_nz_spawn_climbout_fast","vjseq_nz_spawn_jump"},true,false,false)
	    VJ_EmitSound(self,"vj_lnrhl2/shared/dirtintro"..math.random(1,2)..".wav",75,100)
		ParticleEffect("advisor_plat_break",self:GetPos(),self:GetAngles(),self)
		ParticleEffect("strider_impale_ground",self:GetPos(),self:GetAngles(),self)		
	    end
    end)
end  
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnChangeMovementType(movType)
	if GetConVar("VJ_LNR_JumpClimb"):GetInt() == 0 or self.LNR_Crawler or self.LNR_Crippled then
        self:CapabilitiesRemove(bit.bor(CAP_MOVE_JUMP))
	    self:CapabilitiesRemove(bit.bor(CAP_MOVE_CLIMB)) 
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GetSightDirection()
	return self:GetAttachment(self:LookupAttachment("eyes")).Ang:Forward() -- Attachment example
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOn_PoseParameterLookingCode(pitch,yaw,roll) 
    if self.LNR_Crawler or self.LNR_Crippled then self:SetPoseParameter("aim_pitch",0) self:SetPoseParameter("spine_yaw",0) self.PoseParameterLooking_Names = {pitch={"head_pitch"}, yaw={"head_yaw"}, roll={}} end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_IntMsg(ply)
	ply:ChatPrint("DUCK: Break Door (If Valid & Option Is Enabled)")
end
---------------------------------------------------------------------------------------------------------------------------------------------
-- function ENT:CustomOnChangeMovementType(movType)	
	-- if VJ_AnimationExists(self,ACT_CLIMB_UP) == true then self:CapabilitiesRemove(bit.bor(CAP_MOVE_CLIMB)) end
-- end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMeleeAttack_AfterChecks(hitEnt, isProp)
	if self:IsOnFire() then hitEnt:Ignite(4) end
	return false
end	
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
-- Melee Sounds	--
	if (self.LNR_LArmDamaged && self.LNR_RArmDamaged) or self.LNR_Biter then
        self.SoundTbl_MeleeAttackExtra = {
        "vj_lnrhl2/shared/melee/zombie_bite1.wav",
        "vj_lnrhl2/shared/melee/zombie_bite2.wav",
        "vj_lnrhl2/shared/melee/zombie_bite3.wav"
}
    elseif IsValid(self.WeaponModel) && self.LNR_CanUseWeapon then 
        self.SoundTbl_MeleeAttackExtra = {
        "vj_lnrhl2/shared/melee/claw_strike1.wav",
        "vj_lnrhl2/shared/melee/claw_strike2.wav",
        "vj_lnrhl2/shared/melee/claw_strike3.wav"
}
    else
        self.SoundTbl_MeleeAttackExtra = {
        "vj_lnrhl2/shared/melee/hit_punch_01.wav",
        "vj_lnrhl2/shared/melee/hit_punch_02.wav",
        "vj_lnrhl2/shared/melee/hit_punch_03.wav",
        "vj_lnrhl2/shared/melee/hit_punch_04.wav",
        "vj_lnrhl2/shared/melee/hit_punch_05.wav",
        "vj_lnrhl2/shared/melee/hit_punch_06.wav",
        "vj_lnrhl2/shared/melee/hit_punch_07.wav",
        "vj_lnrhl2/shared/melee/hit_punch_08.wav"
}
end
    if IsValid(self.WeaponModel) && self.LNR_CanUseWeapon && self.WeaponModel:GetModel() == "models/weapons/w_stunbaton.mdl" then
	    self.MeleeAttackDamageType = DMG_SHOCK	
        self.SoundTbl_MeleeAttackExtra = {
		"weapons/stunstick/stunstick_fleshhit1.wav",
		"weapons/stunstick/stunstick_fleshhit2.wav"
}
        self.SoundTbl_MeleeAttackMiss = {
		"weapons/stunstick/stunstick_swing1.wav",
		"weapons/stunstick/stunstick_swing2.wav"
}
end  
-- If the SNPC loses the weapon via arm dismembered then make sure it retains the original damage instead of the weapon damage --
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then // Easy	
     if IsValid(self.WeaponModel) && self.LNR_RArmDamaged && !self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(5,10) end		
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then // Normal		
     if IsValid(self.WeaponModel) && self.LNR_RArmDamaged && !self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(10,15) end
end		
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then // Hard
     if IsValid(self.WeaponModel) && self.LNR_RArmDamaged && !self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(15,20) end
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then // Nightmare
     if IsValid(self.WeaponModel) && self.LNR_RArmDamaged && !self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(20,25) end
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then // Apocalypse 
     if IsValid(self.WeaponModel) && self.LNR_RArmDamaged && !self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(25,30) end		
end	
-- When Crawling or Crippled --
    if !self.LNR_LArmDamaged && !self.LNR_RArmDamaged && !self.LNR_Biter && (self.LNR_Crawler or self.LNR_Crippled) then
	if self.LNR_Walker then
	    self.AnimTbl_MeleeAttack = {"vjseq_crawl_attack"}	
	elseif self.LNR_Infected then
	    self.AnimTbl_MeleeAttack = {"vjseq_crawl_attack2"}
end
		self.MeleeAttackAnimationAllowOtherTasks = false	
        self.MeleeAttackDistance = 15
        self.MeleeAttackDamageDistance = 45			
end	
-- When Dismembered or for Biters --
    if (self.LNR_LArmDamaged && self.LNR_RArmDamaged) or self.LNR_Biter then
	if self:IsMoving() or self.LNR_Crippled or self.LNR_Crawler then
	    self.MeleeAttackAnimationAllowOtherTasks = true
		self.AnimTbl_MeleeAttack = {"vjges_Choke_Eat"}		
		self.HasMeleeAttackMissSounds = true
        self.HasMeleeAttackKnockBack = false 	
	    self.SlowPlayerOnMeleeAttack = false		
		
	elseif !self:IsMoving() && !self.LNR_Crippled && !self.LNR_Crawler then
	    self.MeleeAttackAnimationAllowOtherTasks = false
        self.AnimTbl_MeleeAttack = {"vjseq_Choke_Eating"}	
	    self.MeleeAttackAnimationDecreaseLengthAmount = 1.45
	    self.NextAnyAttackTime_Melee = 1.5
        self.HasMeleeAttackMissSounds = false
        self.HasMeleeAttackKnockBack = true 	
	    self.SlowPlayerOnMeleeAttack = true	
end
        self.MeleeAttackDistance = 15
        self.MeleeAttackDamageDistance = 45	
        self.MeleeAttackDamageType = DMG_NERVEGAS	
end		
-- When Standing --
    if (self.LNR_LArmDamaged && self.LNR_RArmDamaged) or self.LNR_Crawler or self.LNR_Crippled or self.LNR_Biter then return end
    if !self:IsMoving() then
	    self.MeleeAttackAnimationAllowOtherTasks = false
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
-- When Walking --
	if self:IsMoving() then
    if self:GetActivity() == ACT_WALK or self:GetActivity() == ACT_WALK_AIM	then
		self.AnimTbl_MeleeAttack = {
		"vjges_nz_attack_walk_ad_1",
		"vjges_nz_attack_walk_ad_2",
		"vjges_nz_attack_walk_ad_3",
		"vjges_nz_attack_walk_ad_4",
		"vjges_nz_attack_walk_au_1",
		"vjges_nz_attack_walk_au_2",
		"vjges_nz_attack_walk_au_3",
		"vjges_nz_attack_walk_au_4"
}	
end		
-- When Running/Sprinting --		
    if self:GetActivity() == ACT_RUN or self:GetActivity() == ACT_RUN_AIM or self:GetActivity() == ACT_SPRINT then
		self.AnimTbl_MeleeAttack = {
		"vjges_nz_attack_run_ad_1",
		"vjges_nz_attack_run_ad_2",
		"vjges_nz_attack_run_ad_3",
		"vjges_nz_attack_run_ad_4",
		"vjges_nz_attack_run_au_1",
		"vjges_nz_attack_run_au_2",
		"vjges_nz_attack_run_au_3",
		"vjges_nz_attack_run_au_4"
}	
end
		self.MeleeAttackAnimationAllowOtherTasks = true
    end		
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnFlinch_BeforeFlinch(dmginfo,hitgroup)
   if self.LNR_Crawler or self.LNR_Crippled then return end	
	-- if dmginfo:GetDamage() > 24 or dmginfo:GetDamageForce():Length() > 5000 then
	if dmginfo:GetDamage() > 1 or dmginfo:GetDamageForce():Length() > 1 then
		if hitgroup == HITGROUP_HEAD then
			self:VJ_ACT_PLAYACTIVITY("vjges_ep_flinch_head",true,false)
		elseif hitgroup == HITGROUP_CHEST then
			self:VJ_ACT_PLAYACTIVITY("vjges_ep_flinch_chest",true,false)
		elseif hitgroup == HITGROUP_LEFTARM then
			self:VJ_ACT_PLAYACTIVITY("vjges_ep_flinch_leftArm",true,false)
		elseif hitgroup == HITGROUP_RIGHTARM then
			self:VJ_ACT_PLAYACTIVITY("vjges_ep_flinch_rightArm",true,false)
		elseif hitgroup == HITGROUP_LEFTLEG then
			self:VJ_ACT_PLAYACTIVITY("vjseq_flinch_leftleg",true,false)
		elseif hitgroup == HITGROUP_RIGHTLEG then
			self:VJ_ACT_PLAYACTIVITY("vjseq_flinch_rightleg",true,false)
	end

end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if self.CanDoTheFunny == false or self.LNR_Crawler or self.LNR_Crippled then return end
	-- if math.random (1,1) == 1 then
	-- if math.random (1,16) == 1 then
		if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) then
			if hitgroup == HITGROUP_HEAD or hitgroup == HITGROUP_CHEST or hitgroup == HITGROUP_STOMACH then
				if self.LNR_NextStumbleT < CurTime() then
					if dmginfo:GetDamage() > 49 or dmginfo:GetDamageForce():Length() > 10000 then
					if math.random (1,2) == 1 then
					self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
					self.LNR_NextStumbleT = CurTime() + 5
					end
					elseif dmginfo:GetDamage() > 24 or dmginfo:GetDamageForce():Length() > 5000 then
					if math.random (1,3) == 1 then
					self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
					self.LNR_NextStumbleT = CurTime() + 5
					end
					else
					if math.random (1,5) == 1 then
					self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
					self.LNR_NextStumbleT = CurTime() + 3
					end
					end
				end
				-- self.LNR_NextStumbleT = CurTime() + 10
				-- self.LNR_NextStumbleT = CurTime() + 1
			elseif hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then		 
				if self.LNR_NextStumbleT < CurTime() then
					self:VJ_ACT_PLAYACTIVITY(ACT_STEP_FORE,true,1.6)
					self.LNR_NextStumbleT = CurTime() + 10
					-- self.LNR_NextStumbleT = CurTime() + 1
				end
			end
		end
	if dmginfo:IsDamageType(DMG_CLUB) or dmginfo:IsDamageType(DMG_SLASH) or dmginfo:IsDamageType(DMG_GENERIC) then
		if dmginfo:GetDamage() > 49 or dmginfo:GetDamageForce():Length() > 10000 then
			if self.LNR_NextShoveT < CurTime() then
				self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
				self.LNR_NextShoveT = CurTime() + math.random(5,8)
				-- self.LNR_NextShoveT = CurTime() + 1
			end
		elseif dmginfo:GetDamage() > 24 or dmginfo:GetDamageForce():Length() > 5000 then
			if self.LNR_NextShoveT < CurTime() then
				self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
				self.LNR_NextShoveT = CurTime() + math.random(5,8)
				-- self.LNR_NextShoveT = CurTime() + 1
			end
		end
    return !self.LNR_Crawler && !self.LNR_Crippled && self:GetSequence() != self:LookupSequence("nz_spawn_climbout_fast") && self:GetSequence() != self:LookupSequence("nz_spawn_jump") && self:GetSequence() != self:LookupSequence("shove_forward_01") && self:GetSequence() != self:LookupSequence("infectionrise") && self:GetSequence() != self:LookupSequence("infectionrise2") && self:GetSequence() != self:LookupSequence("slumprise_a") && self:GetSequence() != self:LookupSequence("slumprise_a2") -- If we are stumbling or rising out of the ground or other specific activities then DO NOT flinch!	
	end
-- end
	if dmginfo:IsExplosionDamage() then
		if self.NextSplodeStumbleT < CurTime() then
		if math.random(1,2) == 1 then
		self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,false,false)
		else
		self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
		end
		self.NextSplodeStumbleT = CurTime() + 5
		end
	end
			if hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then
			self.LNR_LegHP = self.LNR_LegHP -dmginfo:GetDamage()
			end
			if self.LNR_LegHP <= 0 then
				self.LNR_Crippled = true
				local anim = {"vjseq_nz_death_1","vjseq_nz_death_f_7","vjseq_nz_death_f_8"}				
				//if math.random(1,4) == 1 then anim = {"vjseq_nz_death_1","vjseq_nz_death_f_7","vjseq_nz_death_f_8"} end
				self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
                self:Cripple()
            end				
end
-- end
---------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Cripple()
 if self.LNR_Walker then	 
	self.AnimTbl_IdleStand = {ACT_IDLE_STIMULATED}
	self.AnimTbl_Walk = {ACT_WALK_STIMULATED}
	self.AnimTbl_Run = {ACT_WALK_STIMULATED}
 elseif self.LNR_Infected then
	self.AnimTbl_IdleStand = {ACT_IDLE_AGITATED}
	self.AnimTbl_Walk = {ACT_WALK_AGITATED}
	self.AnimTbl_Run = {ACT_WALK_AGITATED}
end
    self:SetCollisionBounds(Vector(13,13,20),Vector(-13,-13,0))
	self.VJC_Data = {
	CameraMode = 1, 
	ThirdP_Offset = Vector(30, 25, -20), 
	FirstP_Bone = "ValveBiped.Bip01_Head1", 
	FirstP_Offset = Vector(5, 0, -1), 
}	
    self:CapabilitiesRemove(bit.bor(CAP_MOVE_JUMP))
	self:CapabilitiesRemove(bit.bor(CAP_MOVE_CLIMB))
	self.HasDeathAnimation = false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPriorToKilled(dmginfo, hitgroup)
	if dmginfo:IsDamageType(DMG_BURN) or dmginfo:IsDamageType(DMG_SLOWBURN) or dmginfo:IsDamageType(DMG_ENERGYBEAM) or dmginfo:IsDamageType(DMG_DISSOLVE) or dmginfo:IsDamageType (DMG_PLASMA) or dmginfo:IsDamageType(DMG_SHOCK) then
		self.DeathAnimationChance = 1
	end
	self.CanDoTheFunny = false
	self.CanFlinch = 0
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo,hitgroup)
	if self.LNR_Crawler then return end
	if self:IsMoving() and dmginfo:IsBulletDamage() then
		self.AnimTbl_Death = {"vjseq_nz_death_f_1",
		"vjseq_nz_death_f_2",
		"vjseq_nz_death_f_3",
		"vjseq_nz_death_f_4",
		"vjseq_nz_death_f_5",
		"vjseq_nz_death_f_6",
		"vjseq_nz_death_f_7",
		"vjseq_nz_death_f_8",
		"vjseq_nz_death_f_9",
		"vjseq_nz_death_f_10",
		"vjseq_nz_death_f_11",
		"vjseq_nz_death_f_12",
		"vjseq_nz_death_f_13"}	
		-- self.DeathAnimationTime = 1
	end

	if dmginfo:IsDamageType(DMG_BURN) or dmginfo:IsDamageType(DMG_SLOWBURN) then
		self:Ignite(60)
		if self:IsMoving() then
			self.AnimTbl_Death = {"vjges_nz_death_fire_3",
			"vjges_nz_death_fire_4",
			"vjges_nz_death_fire_5"}
		-- self.DeathAnimationTime = 1.6
		else
			self.AnimTbl_Death = {"vjseq_nz_death_fire_1",
			"vjseq_nz_death_fire_2"}
		end
		-- self.DeathAnimationTime = 1.6
		if GetConVarNumber("vj_npc_noidleparticle") == 0 then
			ParticleEffectAttach("embers_small_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
			ParticleEffectAttach("env_fire_small_base",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
			ParticleEffectAttach("fire_medium_heatwave",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
			ParticleEffectAttach("smoke_medium_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
			ParticleEffectAttach("smoke_medium_02",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
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

    if dmginfo:IsExplosionDamage() or dmginfo:IsDamageType(DMG_CRUSH) or dmginfo:IsDamageType(DMG_VEHICLE) or dmginfo:IsDamageType(DMG_SONIC) or dmginfo:IsDamageType(DMG_PHYSGUN) then
		self.AnimTbl_Death = {"vjseq_nz_death_expl_f_1",
		"vjseq_nz_death_expl_f_2",
		"vjseq_nz_death_expl_f_3",
		"vjseq_nz_death_expl_b_1",
		"vjseq_nz_death_expl_l_1",
		"vjseq_nz_death_expl_l_1"}	
	   self.DeathAnimationTime = 1
	end
	
    if dmginfo:IsDamageType(DMG_SHOCK) or dmginfo:IsDamageType(DMG_ENERGYBEAM) or dmginfo:IsDamageType(DMG_DISSOLVE) or dmginfo:IsDamageType (DMG_PLASMA) then
		self.ZappyDeath = true
		self.AnimTbl_Death = {"vjseq_nz_death_elec_1",
		"vjseq_nz_death_elec_2",
		"vjseq_nz_death_elec_3",
		"vjseq_nz_death_elec_4"}
		-- self.DeathAnimationTime = math.random(1, 4.25)
		if GetConVarNumber("vj_npc_noidleparticle") == 0 then
			local Zappy = math.random(1,2)
			if Zappy == 1 then
				self:EmitSound(Sound("ambient/energy/zap"..math.random(1,3)..".wav", 100, math.random(100,95)))
			elseif Zappy == 2 then
				self:EmitSound(Sound("ambient/energy/zap"..math.random(5,9)..".wav", 100, math.random(100,95)))
			end
			ParticleEffectAttach("electrical_arc_01_system",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))
			ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_head"))
			ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
			ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
			timer.Simple(0.15,function() if IsValid(self) then
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_head"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
				if Zappy == 1 then
					self:EmitSound(Sound("ambient/energy/zap"..math.random(1,3)..".wav", 100, math.random(100,95)))
				elseif Zappy == 2 then
					self:EmitSound(Sound("ambient/energy/zap"..math.random(5,9)..".wav", 100, math.random(100,95)))
				end
				self:SetKeyValue("rendercolor","180 180 180 255")
			end end)
			timer.Simple(0.30,function() if IsValid(self) then
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_head"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
				ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_head"))
				ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
				ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
				ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))
				if Zappy == 1 then
					self:EmitSound(Sound("ambient/energy/zap"..math.random(1,3)..".wav", 100, math.random(100,95)))
				elseif Zappy == 2 then
					self:EmitSound(Sound("ambient/energy/zap"..math.random(5,9)..".wav", 100, math.random(100,95)))
				end
				self:SetKeyValue("rendercolor","130 130 130 255")
			end end)
			timer.Simple(0.45,function() if IsValid(self) then
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_head"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
				if Zappy == 1 then
					self:EmitSound(Sound("ambient/energy/zap"..math.random(1,3)..".wav", 100, math.random(100,95)))
				elseif Zappy == 2 then
					self:EmitSound(Sound("ambient/energy/zap"..math.random(5,9)..".wav", 100, math.random(100,95)))
				end
				self:SetKeyValue("rendercolor","100 100 100 255")
			timer.Simple(0.55,function() if IsValid(self) then
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_head"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
			if Zappy == 1 then
			self:EmitSound(Sound("ambient/energy/zap"..math.random(1,3)..".wav", 100, math.random(100,95)))
			elseif Zappy == 2 then
			self:EmitSound(Sound("ambient/energy/zap"..math.random(5,9)..".wav", 100, math.random(100,95)))
			end
			self:EmitSound(Sound("ambient/energy/weld"..math.random(1,2)..".wav", 100, math.random(100,95)))
				self:SetKeyValue("rendercolor","82 82 82 255") end end)
							end	end)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo,hitgroup,GetCorpse)
	if self.ZappyDeath == true && IsValid(GetCorpse) then
			ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,GetCorpse,GetCorpse:LookupAttachment("anim_attachment_head"))
			ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,GetCorpse,GetCorpse:LookupAttachment("anim_attachment_LH"))
			ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,GetCorpse,GetCorpse:LookupAttachment("anim_attachment_RH"))
			ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,GetCorpse,GetCorpse:LookupAttachment("chest"))
			timer.Simple(10,function() if IsValid (GetCorpse) then
				GetCorpse:StopParticles()
		end end)
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/