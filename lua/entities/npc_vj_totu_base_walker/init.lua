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
ENT.VJC_Data = {
	CameraMode = 1,
	ThirdP_Offset = Vector(40, 20, -50),
	FirstP_Bone = "ValveBiped.Bip01_Head1",
	FirstP_Offset = Vector(0, 0, 5),
}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"}
ENT.AnimTbl_Run = {ACT_WALK}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.CustomBlood_Particle = {"lnr_bullet_impact_01","lnr_bullet_impact_02","lnr_bullet_impact_03","lnr_bullet_impact_04"}
ENT.CustomBlood_Decal = {"VJ_LNR_Blood_Red"}
ENT.ImmuneDamagesTable = {DMG_RADIATION}
ENT.CanFlinch = 1
-- ENT.FlinchChance = 10
ENT.FlinchChance = 5
-- ENT.FlinchChance = 1
ENT.NextFlinchTime = 3
ENT.HasHitGroupFlinching = true
ENT.HitGroupFlinching_DefaultWhenNotHit = true
ENT.HitGroupFlinching_Values = {
{HitGroup = {HITGROUP_HEAD}, Animation = {"vjges_flinch_head_1","vjges_flinch_head_2","vjges_flinch_head_3"}}, 
{HitGroup = {HITGROUP_STOMACH}, Animation = {"vjges_flinch_stomach_01","vjges_flinch_stomach_02","vjges_ep_flinch_chest"}}, 
{HitGroup = {HITGROUP_CHEST}, Animation = {"vjges_flinch_chest_1","vjges_flinch_chest_2","vjges_flinch_chest_3"}}, 
{HitGroup = {HITGROUP_LEFTARM}, Animation = {"vjges_flinch_leftarm_1","vjges_flinch_leftarm_2","vjges_flinch_leftarm_3"}}, 
{HitGroup = {HITGROUP_RIGHTARM}, Animation = {"vjges_flinch_rightarm_1","vjges_flinch_rightarm_2","vjges_flinch_rightarm_3"}}
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
ENT.HasExtraMeleeAttackSounds = true
ENT.SlowPlayerOnMeleeAttack_WalkSpeed = 0.01
ENT.SlowPlayerOnMeleeAttack_RunSpeed = 0.01
ENT.SlowPlayerOnMeleeAttackTime = 1.6
ENT.MeleeAttackKnockBack_Forward1 = -150
ENT.MeleeAttackKnockBack_Forward2 = -150
ENT.HasMeleeAttackSlowPlayerSound = false
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
ENT.LNR_CanBeHeadshot = true 
ENT.LNR_DoorToBreak = NULL
ENT.ZappyDeath = false
ENT.CanDoTheFunny = true
ENT.CanDoBigFlinchy = true
ENT.NextSplodeStumbleT = 0
ENT.CanSwapBetweenFloorAndFeet = true
ENT.ToTU_Crawling = false
ENT.CanMutate = false
ENT.Mutated = false
ENT.CanBurntate = false
ENT.Burntated = false
ENT.LNR_CanUseWeapon = false
ENT.WeHaveAWeapon = false
ENT.MilZ_IsMilZ = false
ENT.LNR_SuperSprinter = false
ENT.MilZ_Jugg_NextRunT = 0
ENT.MilZ_Bulldozer_NextSprintT = 0
ENT.MilZ_Jugg_RunTime = 0
ENT.MilZ_Bulldozer_RunTime = 0
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

ENT.SoundTbl_MeleeAttack = {
	"vj_lnrhl2/shared/melee/hit_punch_01.wav",
	"vj_lnrhl2/shared/melee/hit_punch_02.wav",
	"vj_lnrhl2/shared/melee/hit_punch_03.wav",
	"vj_lnrhl2/shared/melee/hit_punch_04.wav",
	"vj_lnrhl2/shared/melee/hit_punch_05.wav",
	"vj_lnrhl2/shared/melee/hit_punch_06.wav",
	"vj_lnrhl2/shared/melee/hit_punch_07.wav",
	"vj_lnrhl2/shared/melee/hit_punch_08.wav"}
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
function ENT:CustomOnPreInitialize()
	if GetConVar("VJ_LNR_DeathAnimations"):GetInt() == 0 then
		self.HasDeathAnimation = false
	end
	if GetConVar("vj_LNR_Alert"):GetInt() == 0 then
		self.CallForHelp = false
	end
	if GetConVar("VJ_LNR_BreakDoors"):GetInt() == 1 then
        self.LNR_CanBreakDoors = true
		self.CanOpenDoors = false
	end
	self:Zombie_CustomOnPreInitialize()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize() end -- Mainly used for setting up models etc
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	if math.random(1,3) == 1 && !self.LNR_Crawler then
		self.LNR_UsingRelaxedIdle = true
		self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
	end
	if GetConVar("VJ_LNR_Runner"):GetInt() == 1 then
		if math.random(1,3) == 1 && !self.LNR_Crawler && !self.LNR_Infected then 
			self.LNR_Runner = true
			self.AnimTbl_Run = {ACT_RUN}
		end
	end
	
  if GetConVar("VJ_LNR_SuperSprinter"):GetInt() == 1 then 
     if math.random(1,3) == 1 && !self.LNR_Crawler && !self.LNR_Walker then 
        self.LNR_SuperSprinter = true
		self.AnimTbl_Walk = {ACT_RUN_AIM}
		self.AnimTbl_Run = {ACT_RUN_AIM}
	end
end
	if GetConVar("VJ_LNR_Biter"):GetInt() == 1  && !self.LNR_Crawler then
		if self:GetClass() == "npc_vj_totu_milzomb_walker" && !self.MilZ_HasGasmask == true then
			if math.random(1,3) == 1 && !self.LNR_Infected && self:GetClass() != "npc_vj_totu_milzomb_juggernaut" then 
			self.LNR_Biter = true
			end
		end
	end
	if GetConVar("VJ_LNR_Crawl"):GetInt() == 1 then
		if math.random(1,5) == 1 then 
			self.LNR_Crawler = true
			self:Cripple()	
		end
	end
	if GetConVar("VJ_LNR_GroundRise"):GetInt() == 1 && self:IsDirtGround(self:GetPos()) then
		if math.random(1,GetConVar("VJ_ToTU_Spawn_DigChance"):GetInt()) == 1 && !self.LNR_Crawler then
			self:RiseFromGround()
		end
	end
	self:Zombie_Difficulty()
	self:Zombie_CustomOnInitialize()
    self:ZombieSounds()	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize() end -- For additional initialize options
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds()
	if self:GetClass() == "npc_vj_totu_base_walker" then
		self.SoundTbl_Idle = {"vo/ravenholm/firetrap_vigil.wav",
			"vo/ravenholm/monk_rant01.wav",
			"vo/ravenholm/monk_rant02.wav",
			"vo/ravenholm/monk_rant03.wav",
			"vo/ravenholm/monk_rant04.wav",
			"vo/ravenholm/monk_rant05.wav",
			"vo/ravenholm/monk_rant06.wav",
			"vo/ravenholm/monk_rant07.wav",
			"vo/ravenholm/monk_rant08.wav",
			"vo/ravenholm/monk_rant09.wav",
			"vo/ravenholm/monk_rant10.wav",
			"vo/ravenholm/monk_rant11.wav",
			"vo/ravenholm/monk_rant12.wav",
			"vo/ravenholm/monk_rant13.wav",
			"vo/ravenholm/monk_rant14.wav",
			"vo/ravenholm/monk_rant15.wav",
			"vo/ravenholm/monk_rant16.wav",
			"vo/ravenholm/monk_rant17.wav",
			"vo/ravenholm/monk_rant18.wav",
			"vo/ravenholm/monk_rant19.wav",
			"vo/ravenholm/monk_rant20.wav",
			"vo/ravenholm/monk_rant21.wav",
			"vo/ravenholm/monk_rant22.wav"}
		self.SoundTbl_Alert = {"vo/ravenholm/bucket_thereyouare.wav",
			"vo/ravenholm/cartrap_iamgrig.wav",
			"vo/ravenholm/engage01.wav",
			"vo/ravenholm/engage02.wav",
			"vo/ravenholm/engage03.wav",
			"vo/ravenholm/engage04.wav",
			"vo/ravenholm/engage05.wav",
			"vo/ravenholm/engage06.wav",
			"vo/ravenholm/engage07.wav",
			"vo/ravenholm/engage08.wav",
			"vo/ravenholm/engage09.wav",
			"vo/ravenholm/grave_stayclose.wav",
			"vo/ravenholm/monk_coverme04.wav",
			"vo/ravenholm/monk_kill01.wav",
			"vo/ravenholm/monk_kill02.wav",
			"vo/ravenholm/monk_kill03.wav",
			"vo/ravenholm/monk_kill04.wav",
			"vo/ravenholm/monk_kill05.wav",
			"vo/ravenholm/monk_kill06.wav",
			"vo/ravenholm/monk_kill07.wav",
			"vo/ravenholm/monk_kill08.wav",
			"vo/ravenholm/monk_kill09.wav",
			"vo/ravenholm/monk_kill10.wav",
			"vo/ravenholm/monk_kill11.wav",
			"vo/ravenholm/pyre_anotherlife.wav",
			"vo/ravenholm/shotgun_closer.wav",
			"vo/ravenholm/shotgun_overhere.wav",
			"vo/ravenholm/shotgun_theycome.wav",
			"vo/ravenholm/yard_greetings.wav"}
		self.SoundTbl_CombatIdle = {"vo/ravenholm/engage01.wav",
			"vo/ravenholm/grave_stayclose.wav",
			"vo/ravenholm/madlaugh01.wav",
			"vo/ravenholm/madlaugh02.wav",
			"vo/ravenholm/madlaugh03.wav",
			"vo/ravenholm/madlaugh04.wav",
			"vo/ravenholm/monk_rant01.wav",
			"vo/ravenholm/monk_rant02.wav",
			"vo/ravenholm/monk_rant03.wav",
			"vo/ravenholm/monk_rant04.wav",
			"vo/ravenholm/monk_rant05.wav",
			"vo/ravenholm/monk_rant06.wav",
			"vo/ravenholm/monk_rant07.wav",
			"vo/ravenholm/monk_rant08.wav",
			"vo/ravenholm/monk_rant09.wav",
			"vo/ravenholm/monk_rant10.wav",
			"vo/ravenholm/monk_rant11.wav",
			"vo/ravenholm/monk_rant12.wav",
			"vo/ravenholm/monk_rant13.wav",
			"vo/ravenholm/monk_rant14.wav",
			"vo/ravenholm/monk_rant15.wav",
			"vo/ravenholm/monk_rant16.wav",
			"vo/ravenholm/monk_rant17.wav",
			"vo/ravenholm/monk_rant18.wav",
			"vo/ravenholm/monk_rant19.wav",
			"vo/ravenholm/monk_rant20.wav",
			"vo/ravenholm/monk_rant21.wav",
			"vo/ravenholm/monk_rant22.wav"}
		self.SoundTbl_Pain = {"vo/ravenholm/monk_pain01.wav",
			"vo/ravenholm/monk_pain02.wav",
			"vo/ravenholm/monk_pain03.wav",
			"vo/ravenholm/monk_pain04.wav",
			"vo/ravenholm/monk_pain05.wav",
			"vo/ravenholm/monk_pain06.wav",
			"vo/ravenholm/monk_pain07.wav",
			"vo/ravenholm/monk_pain08.wav",
			"vo/ravenholm/monk_pain09.wav",
			"vo/ravenholm/monk_pain10.wav",
			"vo/ravenholm/monk_pain12.wav"}
		self.SoundTbl_Death = {"test/MR_WHITR_NOOOO.mp3",
			"test/anime_walt_1.mp3",
			"test/anime_walt_2.mp3",
			"test/anime_walt_3.mp3",
			"vo/ravenholm/exit_darkroad.wav",
			"vo/ravenholm/exit_salvation.wav",
			"vo/ravenholm/firetrap_welldone.wav",
			"vo/ravenholm/monk_death07.wav",
			"vo/ravenholm/monk_helpme03.wav",
			"test/JESSE.mp3",
			"test/JESSE2.mp3"}
		self.SoundTbl_MeleeAttack = {
			"vj_lnrhl2/shared/melee/hit_punch_01.wav",
			"vj_lnrhl2/shared/melee/hit_punch_02.wav",
			"vj_lnrhl2/shared/melee/hit_punch_03.wav",
			"vj_lnrhl2/shared/melee/hit_punch_04.wav",
			"vj_lnrhl2/shared/melee/hit_punch_05.wav",
			"vj_lnrhl2/shared/melee/hit_punch_06.wav",
			"vj_lnrhl2/shared/melee/hit_punch_07.wav",
			"vj_lnrhl2/shared/melee/hit_punch_08.wav"}
		self.SoundTbl_BeforeMeleeAttack = {"vo/ravenholm/engage02.wav",
			"vo/ravenholm/engage03.wav",
			"vo/ravenholm/monk_givehealth01.wav",
			"vo/ravenholm/monk_stayclosebro.wav",
			"vo/ravenholm/shotgun_closer.wav",
			"vo/ravenholm/shotgun_hush.wav"}
		self.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss2.wav","npc/zombie/claw_miss1.wav"}

	elseif self:GetClass() == "npc_vj_totu_base_infected" then
	
		self.SoundTbl_Idle = {""}
		self.SoundTbl_Alert = {"test/flower_1.mp3"}
		self.SoundTbl_CombatIdle = {""}
		self.SoundTbl_Pain = {"test/flower_2.mp3",
			"test/flower_4.mp3"}
		self.SoundTbl_Death = {"test/flower_3.mp3",
			"test/flower_5.mp3"}
		self.SoundTbl_BeforeMeleeAttack = {""}
	
	elseif self:GetClass() == "npc_vj_totu_milzomb_walker" then
	
		self.SoundTbl_Idle = {
			"vj_lnrhl2/walker_male/idle1.wav",
			"vj_lnrhl2/walker_male/idle2.wav",
			"vj_lnrhl2/walker_male/idle3.wav",
			"vj_lnrhl2/walker_male/idle4.wav",
			"vj_lnrhl2/walker_male/idle5.wav",
			"vj_lnrhl2/walker_male/idle6.wav",
			"vj_lnrhl2/walker_male/idle7.wav",
			"vj_lnrhl2/walker_male/idle8.wav",
			"vj_lnrhl2/walker_male/idle9.wav",
			"vj_lnrhl2/walker_male/idle10.wav",
			"vj_lnrhl2/walker_male/idle11.wav",
			"vj_lnrhl2/walker_male/idle12.wav",
			"vj_lnrhl2/walker_male/idle13.wav",
			"vj_lnrhl2/walker_male/idle14.wav",
			"vj_lnrhl2/walker_male/idle15.wav",	
			"vj_lnrhl2/walker_male/idle16.wav",
			"vj_lnrhl2/walker_male/idle17.wav",
			"vj_lnrhl2/walker_male/idle18.wav",
			"vj_lnrhl2/walker_male/idle19.wav",
			"vj_lnrhl2/walker_male/idle20.wav"
			}
   		 self.SoundTbl_Alert = {
			"vj_lnrhl2/walker_male/alert_sham_m_01.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_02.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_03.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_04.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_05.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_06.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_07.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_08.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_09.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_10.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_11.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_12.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_13.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_14.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_15.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_16.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_17.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_18.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_19.wav",
			"vj_lnrhl2/walker_male/alert_sham_m_20.wav",	
			"vj_lnrhl2/walker_male/alert_sham_m_21.wav",
			"vj_lnrhl2/walker_male/alert1.wav",
			"vj_lnrhl2/walker_male/alert2.wav",
			"vj_lnrhl2/walker_male/alert3.wav",
			"vj_lnrhl2/walker_male/alert4.wav",	
			"vj_lnrhl2/walker_male/alert5.wav",
			"vj_lnrhl2/walker_male/alert6.wav",
			"vj_lnrhl2/walker_male/alert7.wav",
			"vj_lnrhl2/walker_male/alert8.wav",
			"vj_lnrhl2/walker_male/alert9.wav",	
			"vj_lnrhl2/walker_male/alert10.wav"		
			}
 		   self.SoundTbl_CombatIdle = {
			"vj_lnrhl2/walker_male/pursuit_sham_m_01.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_02.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_03.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_04.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_05.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_06.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_07.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_08.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_09.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_10.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_11.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_12.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_13.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_14.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_15.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_16.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_17.wav",
			"vj_lnrhl2/walker_male/pursuit_sham_m_18.wav"
			}
   		 self.SoundTbl_BeforeMeleeAttack = {
			"vj_lnrhl2/walker_male/attack_sham_m_01.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_02.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_03.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_04.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_05.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_06.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_07.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_08.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_09.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_10.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_11.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_12.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_13.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_14.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_15.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_16.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_17.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_18.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_19.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_20.wav",	
			"vj_lnrhl2/walker_male/attack_sham_m_21.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_22.wav"	
			}
  		  self.SoundTbl_LeapAttackJump = {
			"vj_lnrhl2/walker_male/attack_sham_m_01.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_02.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_03.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_04.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_05.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_06.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_07.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_08.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_09.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_10.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_11.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_12.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_13.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_14.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_15.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_16.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_17.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_18.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_19.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_20.wav",	
			"vj_lnrhl2/walker_male/attack_sham_m_21.wav",
			"vj_lnrhl2/walker_male/attack_sham_m_22.wav"
			}
  		  self.SoundTbl_Pain = {
			"vj_lnrhl2/walker_male/pain01.wav",
			"vj_lnrhl2/walker_male/pain02.wav",
			"vj_lnrhl2/walker_male/pain03.wav",
			"vj_lnrhl2/walker_male/pain04.wav",
			"vj_lnrhl2/walker_male/pain05.wav"
			}
  		  self.SoundTbl_Death = {
			"vj_lnrhl2/walker_male/die01.wav",
			"vj_lnrhl2/walker_male/die02.wav",
			"vj_lnrhl2/walker_male/die03.wav",
			"vj_lnrhl2/walker_male/die04.wav",
			"vj_lnrhl2/walker_male/die05.wav"
			}
	elseif self:GetClass() == "npc_vj_totu_milzomb_infected" then
	
		self.SoundTbl_Idle = {
			"vj_lnrhl2/infected/zomb_runner_male1-idle-01.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-idle-02.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-idle-03.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-idle-04.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-idle-05.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-idle-06.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-idle-07.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-idle-08.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-idle-09.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-idle-10.wav"
		}
    self.SoundTbl_Alert = {
			"vj_lnrhl2/infected/zomb_runner_male1-alert-01.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-02.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-03.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-04.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-05.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-06.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-07.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-08.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-09.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-10.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-11.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-12.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-13.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-14.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-alert-15.wav"
		}
    self.SoundTbl_CombatIdle = {
			"vj_lnrhl2/infected/zomb_runner_male1-pursuit-01.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pursuit-02.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pursuit-03.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pursuit-04.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pursuit-05.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pursuit-06.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pursuit-07.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pursuit-08.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pursuit-09.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pursuit-10.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pursuit-11.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pursuit-12.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pursuit-13.wav"	
		}
    self.SoundTbl_BeforeMeleeAttack = {
			"vj_lnrhl2/infected/zomb_runner_male1-attack01.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack02.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack03.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack04.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack05.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack06.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack07.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack08.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack09.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack10.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack11.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack12.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack13.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack14.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack15.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack16.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack17.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack18.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack19.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-attack20.wav"	
		}
    self.SoundTbl_Pain = {
			"vj_lnrhl2/infected/zomb_runner_male1-pain01.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain02.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain03.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain04.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain05.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain06.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain07.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain08.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain09.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain10.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain11.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain12.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain13.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain14.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain15.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain16.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain17.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-pain18.wav"
		}
    self.SoundTbl_Death = {
			"vj_lnrhl2/infected/zomb_runner_male1-death-01.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-02.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-03.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-04.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-05.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-06.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-07.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-08.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-09.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-10.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-11.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-12.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-13.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-14.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-15.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-16.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-17.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-18.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-19.wav",
			"vj_lnrhl2/infected/zomb_runner_male1-death-20.wav"
		}
	elseif self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
	
		self.SoundTbl_Idle = {
			"voices/mil_jugg/idle_1.mp3",
			"voices/mil_jugg/idle_2.mp3",
			"voices/mil_jugg/idle_3.mp3",
			"voices/mil_jugg/idle_4.mp3",
			"voices/mil_jugg/idle_5.mp3",
			"voices/mil_jugg/idle_6.mp3",
			"voices/mil_jugg/idle_7.mp3",
			"voices/mil_jugg/idle_8.mp3"
		}
		self.SoundTbl_Alert = {
			"voices/mil_jugg/alert_1.mp3",
			"voices/mil_jugg/alert_2.mp3"
		}
   		-- self.SoundTbl_CombatIdle = {
			-- "voices/mil_jugg/cidle_1.mp3",
			-- "voices/mil_jugg/cidle_2.mp3"
		-- }
		self.SoundTbl_CombatIdle = {
			"voices/mil_jugg/idle_1.mp3",
			"voices/mil_jugg/idle_2.mp3",
			"voices/mil_jugg/idle_3.mp3",
			"voices/mil_jugg/idle_4.mp3",
			"voices/mil_jugg/idle_5.mp3",
			"voices/mil_jugg/idle_6.mp3",
			"voices/mil_jugg/idle_7.mp3",
			"voices/mil_jugg/idle_8.mp3"
		}
		self.SoundTbl_BeforeMeleeAttack = {
			"voices/mil_jugg/attack_1.mp3",
			"voices/mil_jugg/attack_2.mp3",
			"voices/mil_jugg/attack_3.mp3",
			"voices/mil_jugg/attack_4.mp3",
			"voices/mil_jugg/attack_5.mp3",
			"voices/mil_jugg/attack_6.mp3",
			"voices/mil_jugg/attack_7.mp3"
		}
		self.SoundTbl_Pain = {
			"voices/mil_jugg/pain_1.mp3",
			"voices/mil_jugg/pain_2.mp3",
			"voices/mil_jugg/pain_3.mp3",
			"voices/mil_jugg/pain_4.mp3",
			"voices/mil_jugg/pain_5.mp3"
		}
    	self.SoundTbl_Death = {
			"voices/mil_jugg/death_cutoff.mp3"
		}
		
		self.MeleeAttackSoundPitch = VJ_Set(80, 75)
		self.DeathSoundPitch = VJ_Set(100, 90)
	elseif self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
	
		self.SoundTbl_Idle = {
			"player/tank/voice/idle/tank_breathe_01.wav",
			"player/tank/voice/idle/tank_breathe_02.wav",
			"player/tank/voice/idle/tank_breathe_03.wav",
			"player/tank/voice/idle/tank_breathe_04.wav",
			"player/tank/voice/idle/tank_breathe_05.wav",
			"player/tank/voice/idle/tank_breathe_06.wav",
			"player/tank/voice/idle/tank_breathe_07.wav",
			"player/tank/voice/idle/tank_breathe_08.wav",
			
			"player/tank/voice/idle/tank_growl_01.wav",
			"player/tank/voice/idle/tank_growl_02.wav",
			"player/tank/voice/idle/tank_growl_03.wav",
			"player/tank/voice/idle/tank_growl_09.wav",
			"player/tank/voice/idle/tank_growl_10.wav",
			"player/tank/voice/idle/tank_growl_11.wav",
			"player/tank/voice/idle/tank_growl_12.wav",
			
			"player/tank/voice/idle/tank_voice_01.wav",
			"player/tank/voice/idle/tank_voice_02.wav",
			"player/tank/voice/idle/tank_voice_03.wav",
			"player/tank/voice/idle/tank_voice_04.wav",
			"player/tank/voice/idle/tank_voice_05.wav",
			"player/tank/voice/idle/tank_voice_06.wav",
			"player/tank/voice/idle/tank_voice_07.wav",
			"player/tank/voice/idle/tank_voice_08.wav",
			"player/tank/voice/idle/tank_voice_09.wav"
			}
		self.SoundTbl_Alert = {
			"player/tank/voice/yell/tank_yell_01.wav",
			"player/tank/voice/yell/tank_yell_02.wav",
			"player/tank/voice/yell/tank_yell_03.wav",
			"player/tank/voice/yell/tank_yell_04.wav",
			"player/tank/voice/yell/tank_yell_05.wav",
			"player/tank/voice/yell/tank_yell_06.wav",
			"player/tank/voice/yell/tank_yell_07.wav",
			"player/tank/voice/yell/tank_yell_08.wav",
			"player/tank/voice/yell/tank_yell_09.wav",
			"player/tank/voice/yell/tank_yell_10.wav",
			"player/tank/voice/yell/tank_yell_12.wav",
			"player/tank/voice/yell/tank_yell_16.wav"
		}
		self.SoundTbl_CombatIdle = {
			"player/tank/voice/yell/tank_yell_01.wav",
			"player/tank/voice/yell/tank_yell_02.wav",
			"player/tank/voice/yell/tank_yell_03.wav",
			"player/tank/voice/yell/tank_yell_04.wav",
			"player/tank/voice/yell/tank_yell_05.wav",
			"player/tank/voice/yell/tank_yell_06.wav",
			"player/tank/voice/yell/tank_yell_07.wav",
			"player/tank/voice/yell/tank_yell_08.wav",
			"player/tank/voice/yell/tank_yell_09.wav",
			"player/tank/voice/yell/tank_yell_10.wav",
			"player/tank/voice/yell/tank_yell_12.wav",
			"player/tank/voice/yell/tank_yell_16.wav"
		}
		self.SoundTbl_BeforeMeleeAttack = {
			"player/tank/voice/attack/tank_attack_01.wav",
			"player/tank/voice/attack/tank_attack_02.wav",
			"player/tank/voice/attack/tank_attack_03.wav",
			"player/tank/voice/attack/tank_attack_04.wav",
			"player/tank/voice/attack/tank_attack_05.wav",
			"player/tank/voice/attack/tank_attack_06.wav",
			"player/tank/voice/attack/tank_attack_07.wav",
			"player/tank/voice/attack/tank_attack_08.wav",
			"player/tank/voice/attack/tank_attack_09.wav",
			"player/tank/voice/attack/tank_attack_10.wav"
		}
		self.SoundTbl_Pain = {
			"player/tank/voice/pain/tank_pain_01.wav",
			"player/tank/voice/pain/tank_pain_02.wav",
			"player/tank/voice/pain/tank_pain_03.wav",
			"player/tank/voice/pain/tank_pain_04.wav",
			"player/tank/voice/pain/tank_pain_05.wav",
			"player/tank/voice/pain/tank_pain_06.wav",
			"player/tank/voice/pain/tank_pain_07.wav",
			"player/tank/voice/pain/tank_pain_08.wav",
			"player/tank/voice/pain/tank_pain_09.wav",
			"player/tank/voice/pain/tank_pain_10.wav"
		}
    	self.SoundTbl_Death = {
			"player/tank/voice/die/tank_death_01.wav",
			"player/tank/voice/die/tank_death_02.wav",
			"player/tank/voice/die/tank_death_03.wav",
			"player/tank/voice/die/tank_death_04.wav",
			"player/tank/voice/die/tank_death_05.wav",
			"player/tank/voice/die/tank_death_06.wav",
			"player/tank/voice/die/tank_death_07.wav"
		}
	
			self.IdleSoundPitch = VJ_Set(80, 70)
			self.AlertSoundPitch = VJ_Set(75, 65)
			self.CombatIdleSoundPitch = VJ_Set(75, 65)
			self.BeforeMeleeAttackSoundPitch = VJ_Set(80, 70)
			self.PainSoundPitch = VJ_Set(75, 65)
			self.DeathSoundPitch = VJ_Set(75, 65)	
	
	end
	
	if self.MilZ_HasGasmask then
	
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
			self.LeapAttackJumpSoundPitch = VJ_Set(80, 70)
			self.PainSoundPitch = VJ_Set(80, 70)
			self.DeathSoundPitch = VJ_Set(80, 70)	
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------

function ENT:ZombieWeapons()
	self.WeHaveAWeapon = true
	if self:GetClass() == "npc_vj_totu_milzomb_walker" or self:GetClass() == "npc_vj_totu_milzomb_infected" then
	local milzwep = math.random(1,2)
	if milzwep == 1 then
		self.MeleeAttackBleedEnemy = true -- Should the enemy bleed when attacked by melee?
		self.MeleeAttackBleedEnemyChance = 3 -- Chance that the enemy bleeds | 1 = always
		self.MeleeAttackBleedEnemyDamage = 1 -- How much damage per repetition
		self.MeleeAttackBleedEnemyTime = 1 -- How much time until the next repetition?
		self.MeleeAttackBleedEnemyReps = 4 -- How many repetitions?
		self.MilZ_HasKnife = true
self.MeleeAttackDamageType = DMG_SLASH
self.SoundTbl_MeleeAttack = {
	""}

			self.WeaponModel = ents.Create("prop_physics")	
			self.WeaponModel:SetModel("models/vj_lnrhl2/weapons/w_knife_ct.mdl")
			self.WeaponModel:SetLocalPos(self:GetPos())
			self.WeaponModel:SetLocalAngles(self:GetAngles())			
			self.WeaponModel:SetOwner(self)
			self.WeaponModel:SetParent(self)
			self.WeaponModel:Fire("SetParentAttachmentMaintainOffset","anim_attachment_LH")
			self.WeaponModel:Fire("SetParentAttachment","anim_attachment_RH")
			self.WeaponModel:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
			self.WeaponModel:Spawn()
			self.WeaponModel:Activate()
			self.WeaponModel:SetSolid(SOLID_NONE)
			self.WeaponModel:AddEffects(EF_BONEMERGE)	


			
	elseif milzwep == 2 then
self.MilZ_HasGun = true
			self.WeaponModel = ents.Create("prop_physics")	
			self.WeaponModel:SetModel("models/vj_weapons/w_glock.mdl")
			self.WeaponModel:SetLocalPos(self:GetPos())
			self.WeaponModel:SetLocalAngles(self:GetAngles())			
			self.WeaponModel:SetOwner(self)
			self.WeaponModel:SetParent(self)
			self.WeaponModel:Fire("SetParentAttachmentMaintainOffset","anim_attachment_LH")
			self.WeaponModel:Fire("SetParentAttachment","anim_attachment_RH")
			self.WeaponModel:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
			self.WeaponModel:Spawn()
			self.WeaponModel:Activate()
			self.WeaponModel:SetSolid(SOLID_NONE)
			self.WeaponModel:AddEffects(EF_BONEMERGE)	
			if math.random(1,3) == 1 then
			self.MilZ_CanShuutDeGun = true
			self.MilZ_GunAmmo = self.MilZ_GunAmmo + math.random(1,17)
			
			
self.HasRangeAttack = true 
self.DisableDefaultRangeAttackCode = true 
self.DisableRangeAttackAnimation = true 
self.RangeAttackAnimationStopMovement = false 
self.RangeDistance = 2000 
self.RangeToMeleeDistance = 1 
self.TimeUntilRangeAttackProjectileRelease = 0.1
self.NextRangeAttackTime = 1
self.NextRangeAttackTime_DoRand = 0.1

	if self.LNR_Walker and !self.LNR_Infected then
		self.AnimTbl_Walk = {ACT_WALK_PISTOL}
		self.AnimTbl_Run = {ACT_WALK_PISTOL}
		if self.LNR_Runner then
			self.AnimTbl_Run = {ACT_RUN_PISTOL}
		end
	elseif !self.LNR_Walker and self.LNR_Infected then
		if !self.LNR_SuperSprinter then
			self.AnimTbl_Run = {ACT_RUN_AIM_PISTOL}
		end
	end
			
			end
    end	
    end	
	
	if        self.DisableFindEnemy == true then		
	
	 if IsValid(self.WeaponModel) then self.WeaponModel:SetMaterial("lnr/bonemerge") self.WeaponModel:DrawShadow(false) end
	 
		timer.Simple(1.3,function()
	 if IsValid(self) then
	 if IsValid(self.WeaponModel) then self.WeaponModel:SetMaterial() self.WeaponModel:DrawShadow(true) end
	end end)
    end	
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
	
	if key == "step" then
		if self.MilZ_IsMilZ then
			if self:GetActivity() == ACT_RUN or self:GetActivity() == ACT_RUN_AIM or self:GetActivity() == ACT_SPRINT then
				VJ_EmitSound(self,"npc/combine_soldier/gear"..math.random(1,6)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			else
				VJ_EmitSound(self,"vj_lnrhl2/zombine/gear"..math.random(1,3)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end
		end
	end
	
	if key == "step" then
		if self.MilZ_IsMilZ then
			if self.MilZ_HasFlakSuit == true then
				VJ_EmitSound(self,"fx/footsteps/mil_flak/step_"..math.random(1,4)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end
		end
	end
	
	if key == "step" then
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
			VJ_EmitSound(self,"fx/footsteps/mil_big/step_"..math.random(1,4)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end
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
	
	if key == "attack_range" then
		self:RangeAttackCode() 
end				
	if key == "death" then
		VJ_EmitSound(self,"physics/body/body_medium_impact_soft"..math.random(1,7)..".wav",75,100)
		self:DropTheFuckignWeaponGoddamn()
	end
	
	if key == "death" && self.MilZ_IsMilZ then
		VJ_EmitSound(self,"vj_lnrhl2/zombine/gear"..math.random(1,3)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
	end
	
	if key == "death" && self.MilZ_IsMilZ then
		if self.MilZ_HasFlakSuit == true then
			VJ_EmitSound(self,"zombies/military/suicider/step_"..math.random(1,4)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end
	end
	
	if key == "death" then 
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
		VJ_EmitSound(self,"fx/footsteps/mil_big/step_"..math.random(1,4)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		util.ScreenShake(self:GetPos(), self.WorldShakeOnMoveAmplitude, self.WorldShakeOnMoveFrequency, self.WorldShakeOnMoveDuration, self.WorldShakeOnMoveRadius)
		end
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
				-- self:SetState(VJ_STATE_ONLY_ANIMATION)
		end
	end
end
		if !IsValid(self.LNR_DoorToBreak) then
			-- self:SetState()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink_AIEnabled()
	if self.LNR_Crawler or self.LNR_Crippled then return end
	if self.VJ_IsBeingControlled == false && self.CanSwapBetweenFloorAndFeet == true && self.ToTU_Crawling == true then
			local anim = {"vjseq_Crouch_to_stand"}				
			self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
            self:GetTheFuckUp()
			self.ToTU_Crawling = false
		end
	-- if self.VJ_IsBeingControlled == false && self.CanSwapBetweenFloorAndFeet == true && self.ToTU_Crawling == false then
			-- local anim = {"vjseq_Stand_to_crouch"}				
			-- self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
            -- self:StartCrawling()
			-- self.ToTU_Crawling = true
		-- end
	
	if self.VJ_IsBeingControlled == true && self.VJ_TheController:KeyDown(IN_WALK) && self.CanSwapBetweenFloorAndFeet == true then
		if self.ToTU_Crawling == false then
			-- local anim = {"vjseq_nz_death_1","vjseq_nz_death_f_7","vjseq_nz_death_f_8"}				
			local anim = {"vjseq_Stand_to_crouch"}				
			self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
            self:StartCrawling()
			self.ToTU_Crawling = true
		elseif self.ToTU_Crawling == true then
			local anim = {"vjseq_Crouch_to_stand"}				
			self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
            self:GetTheFuckUp()
			self.ToTU_Crawling = false
        end			
		self.CanSwapBetweenFloorAndFeet = false
		timer.Simple(1,function() if IsValid(self) then
			self.CanSwapBetweenFloorAndFeet = true
		end end)
	end
	
	-- if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
		-- if self.MilZ_Jugg_NextRunT < CurTime() && self.MilZ_Jugg_RunTime !< 0 self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_STEP_BACK) && self:GetSequence() != self:LookupSequence(ACT_STEP_FORE) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_FLINCH_STOMACH) && self:GetSequence() != self:LookupSequence(ACT_GMOD_TAUNT_PERSISTENCE) then
			-- self.AnimTbl_Run = {ACT_RUN}
			-- self.MilZ_Jugg_RunTime = CurTime() + math.random(30,50)
			
	
					-- self.LNR_NextStumbleT = CurTime() + 7
					
-- ENT.MilZ_Jugg_NextRunT = 0
-- ENT.MilZ_Bulldozer_NextSprintT = 0
-- ENT.MilZ_Jugg_RunTime = 0
-- ENT.MilZ_Bulldozer_RunTime = 0
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
	 VJ_CreateSound(self,self.SoundTbl_Alert,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.AlertSoundPitch.a, self.AlertSoundPitch.b))
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
	-- ply:ChatPrint("WALK: Break Door (If Valid & Option Is Enabled)")
	ply:ChatPrint("WALK: Swap between Crawling and Standing (does not work if crippled)")
	-- ply:ChatPrint("DUCK: Swap between Crawling and Standing (does not work if crippled)")
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAlert(ent)
     if self.VJ_IsBeingControlled or self.LNR_Crawler or self.LNR_Crippled then return end
	    -- elseif self.LNR_UsingRelaxedIdle then
	if self.LNR_Infected then
		self.AnimTbl_IdleStand = {ACT_IDLE_ANGRY}
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnResetEnemy()
	if self.VJ_IsBeingControlled or self.LNR_Crawler or self.LNR_Crippled then return end
	if self.LNR_Infected then
		if self.LNR_UsingRelaxedIdle then
			self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
		else
			self.AnimTbl_IdleStand = {ACT_IDLE}
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
-- function ENT:CustomOnChangeMovementType(movType)	
	-- if VJ_AnimationExists(self,ACT_CLIMB_UP) == true then self:CapabilitiesRemove(bit.bor(CAP_MOVE_CLIMB)) end
-- end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMeleeAttack_AfterChecks(hitEnt, isProp)
	if self:IsOnFire() then hitEnt:Ignite(4) end
	
    if self.LNR_Biter && !isProp then	
		if hitEnt.IsVJBaseSNPC && VJ_PICK(hitEnt.CustomBlood_Particle) 
			then ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth")) 
		elseif (hitEnt:IsPlayer() or hitEnt:IsNPC() or hitEnt:IsNextBot()) 
			then ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth")) 
		end 
	end	
	
    if IsValid(self.WeaponModel) && self.WeaponModel:GetModel() == "models/vj_lnrhl2/weapons/w_knife_ct.mdl" then	
		if hitEnt.IsVJBaseSNPC && VJ_PICK(hitEnt.CustomBlood_Particle) 
			then ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH")) 
		elseif (hitEnt:IsPlayer() or hitEnt:IsNPC() or hitEnt:IsNextBot()) 
			then ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH")) 
		end 
	end	
	
    if hitEnt:IsPlayer() && hitEnt:Health() < self.MeleeAttackDamage + 1 then
       VJ_LNR_SetPlayerZombie(hitEnt,self,self)	
	end
	
	if math.random(1,GetConVar("VJ_LNR_InfectionChance"):GetInt()) == 1 && (hitEnt:LookupBone("ValveBiped.Bip01_Pelvis") != nil) && !hitEnt.LNR_InfectedVictim then
		if (hitEnt:IsPlayer() && hitEnt:Armor() < 25 && GetConVar("sbox_godmode"):GetInt() == 0) or hitEnt:IsNPC() then 
			if hitEnt.LNR_InfectedVictim then return end
			hitEnt.LNR_InfectedVictim = true
			VJ_LNR_InfectionApply(hitEnt,self)
		end
	end		
	
	return false
end	
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMeleeAttack_Miss()
  if self.LNR_Crawler or self.LNR_Crippled or !self.LNR_Biter then return end
    if self.MeleeAttacking && !self:IsMoving() && self:GetSequence() != self:LookupSequence("choke_eat") then
      if self.LNR_Biter then	
	       self.PlayingAttackAnimation = false
	       self:StopAttacks(false)
	       self.vACT_StopAttacks = false	
           self:VJ_ACT_PLAYACTIVITY("vjseq_choke_miss",true,false,true)
	    end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
-- Melee Sounds	--
	if self.LNR_Biter then
        self.SoundTbl_MeleeAttackExtra = {
        "vj_lnrhl2/shared/melee/zombie_bite1.wav",
        "vj_lnrhl2/shared/melee/zombie_bite2.wav",
        "vj_lnrhl2/shared/melee/zombie_bite3.wav"
}
    elseif IsValid(self.WeaponModel) && self.WeaponModel:GetModel() == "models/vj_lnrhl2/weapons/w_knife_ct.mdl" then 
        self.SoundTbl_MeleeAttackExtra = {
        "weapons/knife/knife_hit1.wav",
        "weapons/knife/knife_hit2.wav",
        "weapons/knife/knife_hit3.wav",
        "weapons/knife/knife_hit4.wav",
        "weapons/knife/knife_stab.wav"
}
    elseif IsValid(self.WeaponModel) && self.WeaponModel:GetModel() == "models/vj_weapons/w_glock.mdl" then 
        self.SoundTbl_MeleeAttackExtra = {
        "player/survivor/hit/rifle_swing_hit_infected10.wav",
        "player/survivor/hit/rifle_swing_hit_infected11.wav",
        "player/survivor/hit/rifle_swing_hit_infected12.wav",
        "player/survivor/hit/rifle_swing_hit_infected7.wav",
        "player/survivor/hit/rifle_swing_hit_infected8.wav",
        "player/survivor/hit/rifle_swing_hit_infected9.wav"
}
        self.SoundTbl_MeleeAttackMiss = {
		"player/survivor/swing/swish_weaponswing_swipe5.wav",
		"player/survivor/swing/swish_weaponswing_swipe6.wav"
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
-- When Crawling or Crippled --
    if !self.LNR_Biter && (self.LNR_Crawler or self.LNR_Crippled) then
	if self.LNR_Walker then
	    self.AnimTbl_MeleeAttack = {"vjseq_crawl_attack"}	
	elseif self.LNR_Infected then
	    self.AnimTbl_MeleeAttack = {"vjseq_crawl_attack2"}
end
		self.MeleeAttackAnimationAllowOtherTasks = false	
        self.MeleeAttackDistance = 15
        self.MeleeAttackDamageDistance = 45			
end	
    if !self.LNR_Biter && self.ToTU_Crawling == true then
		if self.WeHaveAWeapon == true then
			if self.LNR_Walker then
				self.AnimTbl_MeleeAttack = {"vjges_nz_attack_walk_ad_right_only_1",
				"vjgesnz_attack_walk_au_right_only_1"}
			elseif self.LNR_Infected then
				self.AnimTbl_MeleeAttack = {"vjges_nz_attack_run_ad_right_only_1",
				"vjges_nz_attack_run_ad_right_only_2",
				"vjges_nz_attack_run_ad_right_only_4",
				"vjges_nz_attack_run_au_right_only_1",
				"vjges_nz_attack_run_au_right_only_2",
				"vjges_nz_attack_run_au_right_only_4"}
			end
		else
			if self.LNR_Walker then
				self.AnimTbl_MeleeAttack = {
		"vjges_nz_attack_walk_ad_1",
		"vjges_nz_attack_walk_ad_2",
		"vjges_nz_attack_walk_ad_3",
		"vjges_nz_attack_walk_ad_4",
		"vjges_nz_attack_walk_au_1",
		"vjges_nz_attack_walk_au_2",
		"vjges_nz_attack_walk_au_3",
		"vjges_nz_attack_walk_au_4"}	
			elseif self.LNR_Infected then
				self.AnimTbl_MeleeAttack = {
		"vjges_nz_attack_run_ad_1",
		"vjges_nz_attack_run_ad_2",
		"vjges_nz_attack_run_ad_3",
		"vjges_nz_attack_run_ad_4",
		"vjges_nz_attack_run_au_1",
		"vjges_nz_attack_run_au_2",
		"vjges_nz_attack_run_au_3",
		"vjges_nz_attack_run_au_4"}
			end
		end
		self.MeleeAttackAnimationAllowOtherTasks = false	
        self.MeleeAttackDistance = 30
        self.MeleeAttackDamageDistance = 50			
	end	
-- When Dismembered or for Biters --
    if self.LNR_Biter then
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
    if self.LNR_Crawler or self.LNR_Crippled or self.LNR_Biter or self.ToTU_Crawling then return end
    if !self:IsMoving() then
	    self.MeleeAttackAnimationAllowOtherTasks = false
		-- local theenemya = self:GetEnemy()
		
		if self.WeHaveAWeapon == true then
		self.AnimTbl_MeleeAttack = {
		"vjseq_nz_attack_stand_ad_2-2",
		"vjseq_nz_attack_stand_au_2-2",	
		}
		else
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
		-- if self:GetEnemy() == "npc_vj_hlr1_houndeye" then
		
		-- self.AnimTbl_MeleeAttack = {
		-- "vjseq_AttackIncap_01",
		-- "vjseq_AttackIncap_03"
		-- }
		-- end
end	
-- When Walking --
	if self:IsMoving() then
    if self:GetActivity() == ACT_WALK or self:GetActivity() == ACT_WALK_AIM	then
		if self.WeHaveAWeapon == true then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_walk_ad_right_only_1",
				"vjgesnz_attack_walk_au_right_only_1"
		}
		elseif self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
		self.AnimTbl_MeleeAttack = {
		"vjges_CI_Melee_Moving01",
		"vjges_CI_Melee_Moving02",
		"vjges_CI_Melee_Moving03",
		"vjges_CI_Melee_Moving04",
		"vjges_CI_Melee_Moving05",
		"vjges_CI_Melee_Moving06"
		}
	else
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
end		
-- When Running/Sprinting --		
    if self:GetActivity() == ACT_RUN or self:GetActivity() == ACT_RUN_AIM or self:GetActivity() == ACT_SPRINT then
		if self.WeHaveAWeapon == true then
		self.AnimTbl_MeleeAttack = {"vjges_nz_attack_run_ad_right_only_1",
				"vjges_nz_attack_run_ad_right_only_2",
				"vjges_nz_attack_run_ad_right_only_4",
				"vjges_nz_attack_run_au_right_only_1",
				"vjges_nz_attack_run_au_right_only_2",
				"vjges_nz_attack_run_au_right_only_4"}
		elseif self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
		self.AnimTbl_MeleeAttack = {
		"vjges_CI_Melee_Moving01",
		"vjges_CI_Melee_Moving02",
		"vjges_CI_Melee_Moving03",
		"vjges_CI_Melee_Moving04",
		"vjges_CI_Melee_Moving05",
		"vjges_CI_Melee_Moving06"
		}
	else
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
end
		self.MeleeAttackAnimationAllowOtherTasks = true
    end		
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnFlinch_BeforeFlinch(dmginfo,hitgroup)
   if self.LNR_Crawler or self.LNR_Crippled or self.ToTU_Crawling then return end	
	-- if dmginfo:GetDamage() > 24 or dmginfo:GetDamageForce():Length() > 5000 then
	if dmginfo:GetDamage() > 19 or dmginfo:GetDamageForce():Length() > 5000 then
	-- if dmginfo:GetDamage() > 1 or dmginfo:GetDamageForce():Length() > 1 then
		if hitgroup == HITGROUP_HEAD then
			self:VJ_ACT_PLAYACTIVITY("vjges_ep_flinch_head",true,false)
		elseif hitgroup == HITGROUP_CHEST then
			self:VJ_ACT_PLAYACTIVITY("vjges_ep_flinch_chest",true,false)
		elseif hitgroup == HITGROUP_LEFTARM then
			self:VJ_ACT_PLAYACTIVITY("vjges_ep_flinch_leftArm",true,false)
		elseif hitgroup == HITGROUP_RIGHTARM then
			self:VJ_ACT_PLAYACTIVITY("vjges_ep_flinch_rightArm",true,false)
			
			self:DropTheFuckignWeaponGoddamn()
			
		elseif hitgroup == HITGROUP_LEFTLEG then
			self:VJ_ACT_PLAYACTIVITY("vjseq_flinch_leftleg",true,false)
		elseif hitgroup == HITGROUP_RIGHTLEG then
			self:VJ_ACT_PLAYACTIVITY("vjseq_flinch_rightleg",true,false)
	end

    return !self.LNR_Crawler && !self.LNR_Crippled && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) -- If we are stumbling or rising out of the ground or other specific activities then DO NOT flinch!	
end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_BeforeDamage(dmginfo,hitgroup)
	if GetConVar("VJ_LNR_Headshot"):GetInt() == 1 && self.LNR_CanBeHeadshot && hitgroup == HITGROUP_HEAD then
		dmginfo:SetDamage(self:Health())
end
	    self:ArmorDamage(dmginfo,hitgroup)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup) end -- For SNPCs that have armor
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DropTheFuckignWeaponGoddamn()
	if IsValid(self.WeaponModel) && self.WeHaveAWeapon then
	
self.MeleeAttackDamageType = DMG_CLUB
		-- self:CreateGibEntity("prop_physics",self.WeaponModel:GetModel(),{Pos=self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos,Ang=self:GetAngles(),Vel="UseDamageForce"}) self.WeaponModel:SetMaterial("lnr/bonemerge") self.WeaponModel:DrawShadow(false) self.WeHaveAWeapon = false
		self:CreateGibEntity("prop_physics",self.WeaponModel:GetModel(),{Pos=self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos,Ang=self:GetAngles()}) self.WeaponModel:SetMaterial("lnr/bonemerge") self.WeaponModel:DrawShadow(false) self.WeHaveAWeapon = false
		self.WeaponModel:Remove()	
		self.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss2.wav","npc/zombie/claw_miss1.wav"}
		if self.MilZ_HasKnife == true then
		
self.SoundTbl_MeleeAttack = {
	"vj_lnrhl2/shared/melee/hit_punch_01.wav",
	"vj_lnrhl2/shared/melee/hit_punch_02.wav",
	"vj_lnrhl2/shared/melee/hit_punch_03.wav",
	"vj_lnrhl2/shared/melee/hit_punch_04.wav",
	"vj_lnrhl2/shared/melee/hit_punch_05.wav",
	"vj_lnrhl2/shared/melee/hit_punch_06.wav",
	"vj_lnrhl2/shared/melee/hit_punch_07.wav",
	"vj_lnrhl2/shared/melee/hit_punch_08.wav"}
			self.MeleeAttackBleedEnemy = false -- Should the enemy bleed when attacked by melee?
		end
		if self.MilZ_HasGun == true then	
			self.MilZ_HasGun = false
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
				if self.LNR_NextStumbleT < CurTime() && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) then
					-- if dmginfo:GetDamage() > 49 or dmginfo:GetDamageForce():Length() > 10000 then
					-- if dmginfo:GetDamage() > 74 or dmginfo:GetDamageForce():Length() > 14999 then
					if dmginfo:GetDamage() > 84 or dmginfo:GetDamageForce():Length() > 12499 then
					-- if math.random (1,2) == 1 then
					if math.random (1,1) == 1 then
					self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
				-- self:SetState(VJ_STATE_ONLY_ANIMATION)
					self.LNR_NextStumbleT = CurTime() + 7
					end
					-- elseif dmginfo:GetDamage() > 24 or dmginfo:GetDamageForce():Length() > 5000 then
					elseif dmginfo:GetDamage() > 39 or dmginfo:GetDamageForce():Length() > 7499 then
					if math.random (1,3) == 1 then
					self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
				-- self:SetState(VJ_STATE_ONLY_ANIMATION)
					self.LNR_NextStumbleT = CurTime() + 7
					end
					else
					if math.random (1,5) == 1 then
					self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
					-- self.LNR_NextStumbleT = CurTime() + 3
					self.LNR_NextStumbleT = CurTime() + 6
					end
					end
				end
				-- self.LNR_NextStumbleT = CurTime() + 10
				-- self.LNR_NextStumbleT = CurTime() + 1
			elseif hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then		 
				if self.LNR_NextStumbleT < CurTime() && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) then
					if self:GetActivity() == ACT_SPRINT or self:GetActivity() == ACT_RUN_AIM then
						if dmginfo:GetDamage() > 19 or dmginfo:GetDamageForce():Length() > 2499 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_Run_Stumble_01",true,false,false)
				-- self:SetState(VJ_STATE_ONLY_ANIMATION)
							self.LNR_NextStumbleT = CurTime() + 7
					elseif dmginfo:GetDamage() < 19 or dmginfo:GetDamageForce():Length() < 2499 then
						if math.random (1,2) == 1 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,false,false)
				-- self:SetState(VJ_STATE_ONLY_ANIMATION)
							self.LNR_NextStumbleT = CurTime() + 7
						end
					end
			else
					if math.random (1,5) == 1 then
					self:VJ_ACT_PLAYACTIVITY(ACT_STEP_FORE,true,1.6)
					-- self.LNR_NextStumbleT = CurTime() + 10
					self.LNR_NextStumbleT = CurTime() + 3
					-- self.LNR_NextStumbleT = CurTime() + 1
				end
				end
				end
			end
		end
	if dmginfo:IsDamageType(DMG_CLUB) or dmginfo:IsDamageType(DMG_SLASH) or dmginfo:IsDamageType(DMG_GENERIC) or dmginfo:IsDamageType(DMG_SONIC) or dmginfo:IsDamageType(DMG_CRUSH) then
		if self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) then
		if dmginfo:GetDamage() > 49 or dmginfo:GetDamageForce():Length() > 10000 then
			if self.LNR_NextShoveT < CurTime() then
				self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
				-- self:SetState(VJ_STATE_ONLY_ANIMATION)
				self.LNR_NextShoveT = CurTime() + math.random(5,8)
				-- self.LNR_NextShoveT = CurTime() + 1
			end
		elseif dmginfo:GetDamage() > 24 or dmginfo:GetDamageForce():Length() > 5000 then
			if self.LNR_NextShoveT < CurTime() then
				self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
				-- self:SetState(VJ_STATE_ONLY_ANIMATION)
				self.LNR_NextShoveT = CurTime() + math.random(5,8)
				-- self.LNR_NextShoveT = CurTime() + 1
			end
		elseif dmginfo:GetDamage() < 24 or dmginfo:GetDamageForce():Length() < 5000 then
			if self.LNR_NextShoveT < CurTime() then
			self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
			self.LNR_NextShoveT = CurTime() + math.random(5,8)
			end
		end
		end
    return !self.LNR_Crawler && !self.LNR_Crippled && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH)
	end
-- end
	if dmginfo:IsExplosionDamage() then
		if self.NextSplodeStumbleT < CurTime() then
		if math.random(1,2) == 1 then
			if math.random(1,2) == 1 then
				self:VJ_ACT_PLAYACTIVITY("vjseq_Run_Stumble_01",true,false,false)
				-- self:SetState(VJ_STATE_ONLY_ANIMATION)
			else
				self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,false,false)
				-- self:SetState(VJ_STATE_ONLY_ANIMATION)
			end
		else
		self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
				-- self:SetState(VJ_STATE_ONLY_ANIMATION)
		end
		self.NextSplodeStumbleT = CurTime() + 5
		end
		    return !self.LNR_Crawler && !self.LNR_Crippled && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH)
	end
			if GetConVar("VJ_LNR_Cripple"):GetInt() == 1 then 
				if hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then
					self.LNR_LegHP = self.LNR_LegHP -dmginfo:GetDamage()
				end
			end
			if self.LNR_LegHP <= 0 then
				self.LNR_Crippled = true
                self:Cripple()
				if self.ToTU_Crawling then return end
				local anim = {"vjseq_nz_death_1","vjseq_nz_death_f_7","vjseq_nz_death_f_8"}
				self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
            end				
end
-- end
---------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Cripple()
	self.CanTurnWhileStationary = false
	self:DropTheFuckignWeaponGoddamn()
	self.HasRangeAttack = false
	
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
function ENT:StartCrawling()
	self.CanTurnWhileStationary = false
	
 if self.LNR_Walker then	 
	self.AnimTbl_IdleStand = {ACT_CROUCHIDLE}
	self.AnimTbl_Walk = {ACT_WALK_CROUCH_AIM}
	self.AnimTbl_Run = {ACT_WALK_CROUCH_AIM}
 elseif self.LNR_Infected then
	self.AnimTbl_IdleStand = {ACT_CROUCHIDLE}
	self.AnimTbl_Walk = {ACT_WALK_CROUCH_AIM}
	self.AnimTbl_Run = {ACT_RUN_STEALTH}
end
    self:SetCollisionBounds(Vector(13,13,26),Vector(-13,-11,0))
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
function ENT:GetTheFuckUp()
	self.CanTurnWhileStationary = true
 if self.LNR_Walker then	 
	self.AnimTbl_IdleStand = {ACT_IDLE}
	if self.LNR_UsingRelaxedIdle == true then
		self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
	end
	self.AnimTbl_Walk = {ACT_WALK}
	self.AnimTbl_Run = {ACT_WALK}
	if self.LNR_Runner == true then
		self.AnimTbl_Run = {ACT_RUN}
	end
 elseif self.LNR_Infected then
	self.AnimTbl_IdleStand = {ACT_IDLE}
	self.AnimTbl_Walk = {ACT_RUN}
	self.AnimTbl_Run = {ACT_SPRINT}
end

	self:SetCollisionBounds(Vector(13, 13, 70), Vector(-13, -13, 0))
	self.VJC_Data = {
	CameraMode = 1,
	ThirdP_Offset = Vector(40, 20, -50),
	FirstP_Bone = "ValveBiped.Bip01_Head1",
	FirstP_Offset = Vector(0, 0, 5),
}
	
	self.HasDeathAnimation = true
	if GetConVar("VJ_LNR_JumpClimb"):GetInt() == 0 or self.LNR_Crawler or self.LNR_Crippled then return end
    self:CapabilitiesAdd(bit.bor(CAP_MOVE_JUMP))
	self:CapabilitiesAdd(bit.bor(CAP_MOVE_CLIMB))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPriorToKilled(dmginfo, hitgroup)
	if dmginfo:IsDamageType(DMG_BURN) or dmginfo:IsDamageType(DMG_SLOWBURN) or dmginfo:IsDamageType(DMG_ENERGYBEAM) or dmginfo:IsDamageType(DMG_DISSOLVE) or dmginfo:IsDamageType (DMG_PLASMA) or dmginfo:IsDamageType(DMG_SHOCK) then
		self.DeathAnimationChance = 1
	end
	self.CanDoTheFunny = false
	self.CanFlinch = 0
	self:DropTheFuckignWeaponGoddamn()
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
		-- if self:IsMoving() then
			-- self.AnimTbl_Death = {"vjges_nz_death_fire_3",
			-- "vjges_nz_death_fire_4",
			-- "vjges_nz_death_fire_5"}
		-- self.DeathAnimationTime = 1.6
		-- else
			self.AnimTbl_Death = {"vjseq_nz_death_fire_1",
			"vjseq_nz_death_fire_2"}
		-- end
		-- self.DeathAnimationTime = 1.6
		if GetConVar("vj_npc_noidleparticle"):GetInt() == 0 then
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
		if GetConVar("vj_npc_noidleparticle"):GetInt() == 0 then
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
    -- VJ_LNR_ApplyCorpseEffects(self,corpseEnt)
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