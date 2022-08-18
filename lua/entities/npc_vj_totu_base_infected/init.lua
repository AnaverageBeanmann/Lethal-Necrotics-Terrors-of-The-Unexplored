AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_lnrspecials/infectedhazmat/hazmat_infected.mdl"}
ENT.StartHealth = 150
ENT.HullType = HULL_HUMAN
ENT.TurningSpeed = 15
ENT.MaxJumpLegalDistance = VJ_Set(50, 150)
ENT.CanFlinch = 1
ENT.FlinchChance = 10
ENT.NextFlinchTime = 3
ENT.AnimTbl_Flinch = {ACT_BIG_FLINCH} 
ENT.HasHitGroupFlinching = true 
ENT.HitGroupFlinching_DefaultWhenNotHit = true
ENT.HitGroupFlinching_Values = {
{HitGroup = {HITGROUP_HEAD}, Animation = {"vjges_flinch_head_01","vjges_flinch_head_02"}}, 
{HitGroup = {HITGROUP_STOMACH}, Animation = {"vjges_flinch_stomach_01","vjges_flinch_stomach_02"}}, 
{HitGroup = {HITGROUP_CHEST}, Animation = {"vjges_flinch_01","vjges_flinch_02"}}, 
{HitGroup = {HITGROUP_LEFTARM}, Animation = {"vjges_flinch_shoulder_l"}}, 
{HitGroup = {HITGROUP_RIGHTARM}, Animation = {"vjges_flinch_shoulder_r"}}, 
{HitGroup = {HITGROUP_LEFTLEG}, Animation = {"vjges_flinch_back_01"}}, 
{HitGroup = {HITGROUP_RIGHTLEG}, Animation = {"vjges_flinch_back_01"}}}
ENT.ImmuneDamagesTable = {DMG_RADIATION,DMG_DROWN}
ENT.VJC_Data = {
	CameraMode = 1,
	ThirdP_Offset = Vector(40, 20, -50),
	FirstP_Bone = "ValveBiped.Bip01_Head1",
	FirstP_Offset = Vector(0, 0, 5),
}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"} 
ENT.BloodColor = "Oil" 
ENT.CustomBlood_Particle = {"lnr_bullet_impact_01","lnr_bullet_impact_02","lnr_bullet_impact_03","lnr_bullet_impact_04"}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.HasMeleeAttack = true
ENT.MeleeAttackAnimationAllowOtherTasks = true
ENT.MeleeAttackDamage = math.Rand(10,15)
ENT.MeleeAttackDistance = 40
ENT.MeleeAttackDamageDistance = 60
ENT.TimeUntilMeleeAttackDamage = false
ENT.HasOnKilledEnemySound = false
ENT.MeleeAttackDamageType = DMG_CLUB
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.DisableFootStepSoundTimer = true
ENT.AnimTbl_Run = {ACT_WALK}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.HasDeathAnimation = true
ENT.DeathAnimationTime = 1.0
ENT.DeathAnimationChance = 2
ENT.AnimTbl_Death = {"vjseq_nz_death_1","vjseq_nz_death_2","vjseq_nz_death_3"}
ENT.GeneralSoundPitch1 = 100
ENT.GeneralSoundPitch2 = 85
ENT.FootStepPitch = VJ_Set(100, 100)
ENT.DeathSoundPitch = VJ_Set(80, 85)
ENT.MeleeAttackSoundPitch = VJ_Set(100,100)
---------------------------------------------------------------------------------------------------------------------------------------------
--custom
ENT.LNR_VirusInfection = true
ENT.LNR_IsWalker = true
ENT.LN_Run = false
ENT.LN_NextStumble = CurTime()
ENT.FacePlateBroken = false
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {"zombies/coastline/bubbler/walker_step_1.mp3",
	"zombies/coastline/bubbler/walker_step_2.mp3",
	"zombies/coastline/bubbler/walker_step_3.mp3",
	"zombies/coastline/bubbler/walker_step_4.mp3",
	"zombies/coastline/bubbler/walker_step_5.mp3",
	"zombies/coastline/bubbler/walker_step_6.mp3"}
ENT.SoundTbl_Idle = {"zombies/coastline/bubbler/idle_1.mp3",
	"zombies/coastline/bubbler/idle_2.mp3",
	"zombies/coastline/bubbler/idle_3.mp3",
	"zombies/coastline/bubbler/idle_4.mp3",
	"zombies/coastline/bubbler/idle_5.mp3",
	"zombies/coastline/bubbler/idle_6.mp3",
	"zombies/coastline/bubbler/idle_7.mp3",
	"zombies/coastline/bubbler/idle_8.mp3",
	"zombies/coastline/bubbler/idle_9.mp3",
	"zombies/coastline/bubbler/idle_10.mp3",
	"zombies/coastline/bubbler/idle_11.mp3",
	"zombies/coastline/bubbler/idle_12.mp3",
	"zombies/coastline/bubbler/idle_13.mp3"}
ENT.SoundTbl_Investigate = {"zombies/coastline/bubbler/alert_1.mp3",
	"zombies/coastline/bubbler/alert_2.mp3",
	"zombies/coastline/bubbler/alert_3.mp3",
	"zombies/coastline/bubbler/alert_4.mp3",
	"zombies/coastline/bubbler/alert_5.mp3",
	"zombies/coastline/bubbler/alert_6.mp3",
	"zombies/coastline/bubbler/alert_7.mp3",
	"zombies/coastline/bubbler/alert_8.mp3",
	"zombies/coastline/bubbler/alert_9.mp3"}
ENT.SoundTbl_Alert = {"zombies/coastline/bubbler/alert_1.mp3",
	"zombies/coastline/bubbler/alert_2.mp3",
	"zombies/coastline/bubbler/alert_3.mp3",
	"zombies/coastline/bubbler/alert_4.mp3",
	"zombies/coastline/bubbler/alert_5.mp3",
	"zombies/coastline/bubbler/alert_6.mp3",
	"zombies/coastline/bubbler/alert_7.mp3",
	"zombies/coastline/bubbler/alert_8.mp3",
	"zombies/coastline/bubbler/alert_9.mp3"}
ENT.SoundTbl_CallForHelp = {"zombies/coastline/bubbler/before_attack_1.mp3",
	"zombies/coastline/bubbler/before_attack_2.mp3",
	"zombies/coastline/bubbler/before_attack_3.mp3",
	"zombies/coastline/bubbler/before_attack_4.mp3",
	"zombies/coastline/bubbler/before_attack_5.mp3"}
ENT.SoundTbl_CombatIdle = {"zombies/coastline/bubbler/idle_1.mp3",
	"zombies/coastline/bubbler/idle_2.mp3",
	"zombies/coastline/bubbler/idle_3.mp3",
	"zombies/coastline/bubbler/idle_4.mp3",
	"zombies/coastline/bubbler/idle_5.mp3",
	"zombies/coastline/bubbler/idle_6.mp3",
	"zombies/coastline/bubbler/idle_7.mp3",
	"zombies/coastline/bubbler/idle_8.mp3",
	"zombies/coastline/bubbler/idle_9.mp3",
	"zombies/coastline/bubbler/idle_10.mp3",
	"zombies/coastline/bubbler/idle_11.mp3",
	"zombies/coastline/bubbler/idle_12.mp3",
	"zombies/coastline/bubbler/idle_13.mp3"}
ENT.SoundTbl_Pain = {"zombies/coastline/bubbler/pain_1.mp3",
	"zombies/coastline/bubbler/pain_2.mp3",
	"zombies/coastline/bubbler/pain_3.mp3",
	"zombies/coastline/bubbler/pain_4.mp3",
	"zombies/coastline/bubbler/pain_5.mp3",
	"zombies/coastline/bubbler/pain_6.mp3",
	"zombies/coastline/bubbler/pain_7.mp3",
	"zombies/coastline/bubbler/pain_8.mp3",
	"zombies/coastline/bubbler/pain_9.mp3",
	"zombies/coastline/bubbler/pain_10.mp3",
	"zombies/coastline/bubbler/pain_11.mp3"}
ENT.SoundTbl_Death = {"zombies/coastline/bubbler/pain_1.mp3",
	"zombies/coastline/bubbler/pain_2.mp3",
	"zombies/coastline/bubbler/pain_3.mp3",
	"zombies/coastline/bubbler/pain_4.mp3",
	"zombies/coastline/bubbler/pain_5.mp3",
	"zombies/coastline/bubbler/pain_6.mp3",
	"zombies/coastline/bubbler/pain_7.mp3",
	"zombies/coastline/bubbler/pain_8.mp3",
	"zombies/coastline/bubbler/pain_9.mp3",
	"zombies/coastline/bubbler/pain_10.mp3",
	"zombies/coastline/bubbler/pain_11.mp3"}
ENT.SoundTbl_MeleeAttack = {"vj_lnrhl2/claw_strike1.mp3","vj_lnrhl2/claw_strike2.mp3","vj_lnrhl2/claw_strike3.mp3"}
ENT.SoundTbl_BeforeMeleeAttack = {"zombies/coastline/bubbler/before_attack_1.mp3",
	"zombies/coastline/bubbler/before_attack_2.mp3",
	"zombies/coastline/bubbler/before_attack_3.mp3",
	"zombies/coastline/bubbler/before_attack_4.mp3",
	"zombies/coastline/bubbler/before_attack_5.mp3"}
ENT.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss2.wav","npc/zombie/claw_miss1.wav"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPreInitialize() 
	self.StartHealth = self.StartHealth * GetConVarNumber("VJ_LNR_Walker_HealthModifier")	
	self:SetHealth(self.StartHealth)
	self.MeleeAttackDamage = self.MeleeAttackDamage * GetConVarNumber("VJ_LNR_Walker_DamageModifier")
	if GetConVarNumber("vj_LNR_Infection") == 0 then 
		self.LNR_VirusInfection = false 
	end	
	if GetConVarNumber("vj_LNR_DeathAnimations") == 0 then 
		self.HasDeathAnimation = false	
	end
	if GetConVarNumber("vj_LNR_Alert") == 0 then 
		self.CallForHelp = false
	end
	
	if GetConVarNumber("vj_LN_TOTU_RealismMode") == 1 then 
		self.StartHealth = 100
		self.SightDistance = 200
		self.InvestigateSoundDistance = 2
		self.LastSeenEnemyTimeUntilReset = 10
		self.LNR_VirusInfection = false
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetCollisionBounds(Vector(13, 13, 70), Vector(-13, -13, 0))
	self:SetKeyValue("rendercolor","49 141 222")
	self:SetSkin(4)
	self:SetSubMaterial( 0, "models/lnr/butcher/drowner/dark_eyeball_l" )
	self:SetSubMaterial( 1, "models/lnr/butcher/drowner/dark_eyeball_l" )
	self:SetSubMaterial( 2, "models/gibs/meatchunk" )
	self:SetSubMaterial( 5, "models/props_canal/metalwall005b" )
	self:SetSubMaterial( 6, "models/props_canal/metalwall005b" )
	self:SetSubMaterial( 9, "models/barnacle/tongue" )
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GetSightDirection()
	return self:GetAttachment(self:LookupAttachment("eyes")).Ang:Forward() -- Attachment example
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnChangeMovementType(movType)	
	if VJ_AnimationExists(self,ACT_CLIMB_UP) == true then self:CapabilitiesRemove(bit.bor(CAP_MOVE_CLIMB)) end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	if key == "step" then
		self:FootStepSoundCode()
	end
	
	if key == "attack" then
		self:MeleeAttackCode() 
    end	
	
	if key == "attack_leap" then
		self:LeapDamageCode() 
    end	
	
	if key == "death" then
		VJ_EmitSound(self, "physics/flesh/flesh_impact_hard"..math.random(1,5)..".wav", 85, math.random(100,100))
	end		
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
	local randattack_stand = math.random(9,12)
	local randattack_moving = math.random(1,8)	
	if randattack_moving == 1 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_walk_ad_1"}
		self.NextAnyAttackTime_Melee = 1.0666666666667
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 2 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_walk_ad_2"}	
		self.NextAnyAttackTime_Melee = 1.5666667071316
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 3 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_walk_ad_3"}
		self.NextAnyAttackTime_Melee = 1.233333343135
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 4 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_walk_ad_4"}
		self.NextAnyAttackTime_Melee = 1.4666666550106
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 5 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_walk_au_1"}
		self.NextAnyAttackTime_Melee = 1.0666666666667		
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 6 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_walk_au_2"}
		self.NextAnyAttackTime_Melee = 1.5666667071316
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 7 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_walk_au_3"}
		self.NextAnyAttackTime_Melee = 1.233333343135
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 8 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_walk_au_4"}
		self.NextAnyAttackTime_Melee = 1.4666666550106	
		self.MeleeAttackAnimationFaceEnemy = false		

	elseif randattack_stand == 9 then
		self.AnimTbl_MeleeAttack = {"vjseq_nz_attack_stand_ad_1"}
		self.NextAnyAttackTime_Melee = 1.7999999141693
		self.MeleeAttackAnimationFaceEnemy = true

	elseif randattack_stand == 10 then
		self.AnimTbl_MeleeAttack = {"vjseq_nz_attack_stand_ad_2-2"}
		self.NextAnyAttackTime_Melee = 1.7999999141693
		self.MeleeAttackAnimationFaceEnemy = true

	elseif randattack_stand == 11 then
		self.AnimTbl_MeleeAttack = {"vjseq_nz_attack_stand_ad_2-3"}
		self.NextAnyAttackTime_Melee = 1.3666666340828
		self.MeleeAttackAnimationFaceEnemy = true

    elseif randattack_stand == 12 then
		self.AnimTbl_MeleeAttack = {"vjseq_nz_attack_stand_ad_2-4"}	
		self.NextAnyAttackTime_Melee = 4
		self.MeleeAttackAnimationFaceEnemy = true

end
    if self.LNR_Run == true then		
	    if randattack_moving == 1 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_run_ad_1"}	
		self.NextAnyAttackTime_Melee = 0.6999999833107
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 2 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_run_ad_2"}
		self.NextAnyAttackTime_Melee = 0.73333332750532
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 3 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_run_ad_3"}
		self.NextAnyAttackTime_Melee = 0.5666666621632
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 4 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_run_ad_4"}	
		self.NextAnyAttackTime_Melee = 0.73333332750532
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 5 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_run_au_1"}	
		self.NextAnyAttackTime_Melee = 0.6999999833107 
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 6 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_run_au_2"}	
		self.NextAnyAttackTime_Melee = 0.73333332750532
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 7 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_run_au_3"}
		self.NextAnyAttackTime_Melee = 0.5666666621632
		self.MeleeAttackAnimationFaceEnemy = false

	elseif randattack_moving == 8 && self:IsMoving() then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_run_au_4"}
		self.NextAnyAttackTime_Melee = 0.73333332750532	
		self.MeleeAttackAnimationFaceEnemy = false

		end
	end
end
-------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_BeforeDamage(dmginfo,hitgroup)
	if self.FacePlateBroken == true then return end
	if self.FacePlateBroken == false && dmginfo:IsExplosionDamage() or hitgroup == HITGROUP_HEAD && dmginfo:IsBulletDamage() || dmginfo:IsDamageType(DMG_BUCKSHOT) || dmginfo:IsDamageType(DMG_SNIPER) then
	self:EmitSound(Sound("physics/glass/glass_impact_bullet"..math.random(1,4)..".wav", 85, math.random(100,90)))
		if math.random(1,4) == 1 or dmginfo:IsExplosionDamage() && math.random(1,2) == 1 then
			self.FacePlateBroken = true
			self:SetSubMaterial( 9, "nodraw" )
			self:EmitSound(Sound("physics/glass/glass_largesheet_break"..math.random(1,3)..".wav", 85, math.random(100,90)))
		
			ParticleEffectAttach("slime_splash_01_reversed",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
			ParticleEffectAttach("vomit_barnacle",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("eyes"))
			
			local GlassBreakAnim = math.random(1,3)
			if GlassBreakAnim == 1 then
			self:VJ_ACT_PLAYACTIVITY("vjseq_nz_taunt_6",true,0.5,true)
			timer.Simple(1,function() if IsValid(self) then
				self:EmitSound(Sound("zombies/coastline/bubbler/pain_"..math.random(1,11)..".mp3", 85, math.random(100,90)))
				end end)
			elseif GlassBreakAnim == 2 then
			self:VJ_ACT_PLAYACTIVITY("vjseq_nz_taunt_3",true,0.5,true)
			timer.Simple(1,function() if IsValid(self) then
				self:EmitSound(Sound("zombies/coastline/bubbler/pain_"..math.random(1,11)..".mp3", 85, math.random(100,90)))
				end end)
			elseif GlassBreakAnim == 3 then
			self:VJ_ACT_PLAYACTIVITY("vjseq_nz_taunt_1",true,0.5,true)
			timer.Simple(1.75,function() if IsValid(self) then
				self:EmitSound(Sound("zombies/coastline/bubbler/alert_"..math.random(1,9)..".mp3", 85, math.random(100,90)))
				end end)
			end
				self.SoundTbl_FootStep = {"zombies/coastline/bubbler/infected_step_1.mp3",
				"zombies/coastline/bubbler/infected_step_2.mp3",
				"zombies/coastline/bubbler/infected_step_3.mp3",
				"zombies/coastline/bubbler/infected_step_4.mp3",
				"zombies/coastline/bubbler/infected_step_5.mp3",
				"zombies/coastline/bubbler/infected_step_6.mp3"}
				self.AnimTbl_Walk = {ACT_WALK_AIM}
				self.AnimTbl_Run = {ACT_RUN}
				self.LNR_Run = true
				if GetConVarNumber("vj_LN_TOTU_RealismMode") == 1 then 
					self.SightDistance = 10000
					self.InvestigateSoundDistance = 8
					self.LastSeenEnemyTimeUntilReset = 15
				end
			end
		end
	if dmginfo:IsDamageType(DMG_SHOCK) then
		dmginfo:ScaleDamage(0.80)
		local attacker = dmginfo:GetAttacker()
	end
	if dmginfo:IsDamageType(DMG_BURN) or dmginfo:IsDamageType(DMG_SLOWBURN) then
		dmginfo:ScaleDamage(0.50)
		local attacker = dmginfo:GetAttacker()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if math.random (1,16) == 1 then
		if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) then
			if hitgroup == HITGROUP_HEAD or hitgroup == HITGROUP_CHEST or hitgroup == HITGROUP_STOMACH then
				if self.LN_NextStumble < CurTime() then
					self:VJ_ACT_PLAYACTIVITY("ShoveReact",true,1.6)
				end
					self.LN_NextStumble = CurTime() + 10
			elseif hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then		 
				if self.LN_NextStumble < CurTime() then
					self:VJ_ACT_PLAYACTIVITY("ShoveReactBehind",true,1.6)
					self.LN_NextStumble = CurTime() + 10
				end
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPriorToKilled(dmginfo, hitgroup)
	if dmginfo:IsDamageType(DMG_BURN) or dmginfo:IsDamageType(DMG_SLOWBURN) or dmginfo:IsDamageType(DMG_ENERGYBEAM) or dmginfo:IsDamageType(DMG_DISSOLVE) or dmginfo:IsDamageType (DMG_PLASMA) or dmginfo:IsDamageType(DMG_SHOCK) then
		self.DeathAnimationChance = 1
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo,hitgroup)
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
		self.DeathAnimationTime = 1
	end

	if dmginfo:IsDamageType(DMG_BURN) or dmginfo:IsDamageType(DMG_SLOWBURN) then
		self:Ignite(60)
		if self:IsMoving() then
			self.AnimTbl_Death = {"vjges_nz_death_fire_3",
			"vjges_nz_death_fire_4",
			"vjges_nz_death_fire_5"}
		else
			self.AnimTbl_Death = {"vjseq_nz_death_fire_1",
			"vjseq_nz_death_fire_2"}
		end
		self.DeathAnimationTime = 1.6
		if GetConVarNumber("vj_npc_noidleparticle") == 0 then
			ParticleEffectAttach("fire_medium_03",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
			ParticleEffectAttach("fire_small_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))
			
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
		self.AnimTbl_Death = {"vjseq_nz_death_elec_1",
		"vjseq_nz_death_elec_2",
		"vjseq_nz_death_elec_3",
		"vjseq_nz_death_elec_4"}
		self.DeathAnimationTime = 3.4
		if GetConVarNumber("vj_npc_noidleparticle") == 0 then
			self:EmitSound(Sound("ambient/energy/zap"..math.random(1,9)..".wav", 100, math.random(100,95)))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("eyes"))
			timer.Simple(0.15,function() if IsValid(self) then
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("eyes"))
			self:EmitSound(Sound("ambient/energy/zap"..math.random(1,9)..".wav", 100, math.random(100,95)))
				self:SetKeyValue("rendercolor","40 112 175 255")
			timer.Simple(0.30,function() if IsValid(self) then
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("eyes"))
				ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))
				ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
				ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("eyes"))
			self:EmitSound(Sound("ambient/energy/zap"..math.random(1,9)..".wav", 100, math.random(100,95)))
				self:SetKeyValue("rendercolor","30 86 135 255")
			timer.Simple(0.45,function() if IsValid(self) then
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
				ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("eyes"))
			self:EmitSound(Sound("ambient/energy/zap"..math.random(1,9)..".wav", 100, math.random(100,95)))
			timer.Simple(0.55,function() if IsValid(self) then
			self:EmitSound(Sound("ambient/energy/weld"..math.random(1,2)..".wav", 100, math.random(100,95)))
				self:SetKeyValue("rendercolor","18 52 82 255") end end)
							end	end)
					end end)
			end end)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo,hitgroup,GetCorpse)
	if IsValid(GetCorpse) then
	GetCorpse:SetSubMaterial( 0, "models/lnr/butcher/drowner/dark_eyeball_l" )
	GetCorpse:SetSubMaterial( 1, "models/lnr/butcher/drowner/dark_eyeball_l" )
	GetCorpse:SetSubMaterial( 2, "models/gibs/meatchunk" )
	GetCorpse:SetSubMaterial( 5, "models/props_canal/metalwall005b" )
	GetCorpse:SetSubMaterial( 6, "models/props_canal/metalwall005b" )
	GetCorpse:SetSubMaterial( 9, "models/barnacle/tongue" )
	if self.FacePlateBroken == true then
			GetCorpse:SetSubMaterial( 9, "nodraw" )
		end
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/