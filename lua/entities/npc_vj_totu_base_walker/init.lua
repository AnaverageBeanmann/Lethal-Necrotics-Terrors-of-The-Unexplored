AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/totu/testmonk.mdl"}
ENT.TurningSpeed = 15
ENT.VJC_Data = {
	CameraMode = 1,
	ThirdP_Offset = Vector(40, 20, -50),
	FirstP_Bone = "ValveBiped.Bip01_Head1",
	FirstP_Offset = Vector(0, 0, 5),
}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"}
ENT.AnimTbl_Walk = {ACT_WALK_RELAXED}
ENT.AnimTbl_Run = {ACT_WALK}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.CustomBlood_Particle = {"lnr_bullet_impact_01","lnr_bullet_impact_02","lnr_bullet_impact_03","lnr_bullet_impact_04"}
ENT.CustomBlood_Decal = {"VJ_LNR_Blood_Red"}
ENT.ImmuneDamagesTable = {DMG_RADIATION,DMG_NERVEGAS}
ENT.CanFlinch = 1
-- ENT.FlinchChance = 5
ENT.FlinchChance = 1
-- ENT.NextFlinchTime = 3
ENT.NextFlinchTime = 1
ENT.HasHitGroupFlinching = true
ENT.HitGroupFlinching_DefaultWhenNotHit = true
/*
ENT.HitGroupFlinching_Values = {
{HitGroup = {HITGROUP_HEAD}, Animation = {"vjges_flinch_head_1","vjges_flinch_head_2","vjges_flinch_head_3"}}, 
{HitGroup = {HITGROUP_STOMACH}, Animation = {"vjges_flinch_stomach_01","vjges_flinch_stomach_02","vjges_ep_flinch_chest"}}, 
{HitGroup = {HITGROUP_CHEST}, Animation = {"vjges_flinch_chest_1","vjges_flinch_chest_2","vjges_flinch_chest_3"}}, 
{HitGroup = {HITGROUP_LEFTARM}, Animation = {"vjges_flinch_leftarm_1","vjges_flinch_leftarm_2","vjges_flinch_leftarm_3"}}, 
{HitGroup = {HITGROUP_RIGHTARM}, Animation = {"vjges_flinch_rightarm_1","vjges_flinch_rightarm_2","vjges_flinch_rightarm_3"}}
}
*/
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
ENT.LNR_SuperSprinter = false

ENT.ToTU_IsToTUZombie = true
ENT.ToTU_Rusher = false
ENT.ToTU_WeHaveAWeapon = false
ENT.ToTU_BigZombie = false
ENT.ToTU_GiantZombie = false
ENT.ToTU_UseCIAttacks = false
ENT.ToTU_CanDoTheFunny = true
ENT.ToTU_NextSplodeStumbleT = 0
ENT.ToTU_CanDoBigFlinchy = true
ENT.ToTU_ZappyDeath = false
ENT.ToTU_CanCrawl = false
ENT.ToTU_CanSwapBetweenFloorAndFeet = true
ENT.ToTU_Crawling = false
ENT.ToTU_CanUseMovingAttacks = true
ENT.ToTU_Mutated = false
ENT.ToTU_CanJump = true
ENT.ToTU_CanJumpT = 0
ENT.ToTU_IsFreakOfNature = false

ENT.ToTU_NextDodgeT = 0
ENT.ToTU_CanDodge = false
ENT.ToTU_Dodge_CloseIn = false

ENT.MilZ_IsMilZ = false
ENT.MilZ_Jugg_NextRunT = 0
ENT.MilZ_Bulldozer_NextSprintT = 0
ENT.MilZ_Jugg_RunTime = 0
ENT.MilZ_Bulldozer_RunTime = 0

ENT.ToTU_Almanac_Name = "-= Base Walker =-"
ENT.ToTU_Almanac_Strain = "Strain: Walker"
ENT.ToTU_Almanac_Toughness = "Toughness: Average"

-- Less than 50 HP - Fragile
-- 50 - 99 HP - Weak
-- 100 HP - Average
-- 101 - 150 HP - Above-Average
-- 151 - 200 HP - Stronger-Than-Average
-- 201 - 350 HP - Beefy
-- 351 - 450 HP - Tough
-- 451 - 650 HP - Very Tough
-- 651 - 900 HP - Dense
-- 901 - 1250 HP - Stonewalled
-- 1251 - 1500 HP - Undying
-- 1500+ HP - Nigh-Invulnerable

ENT.ToTU_Almanac_Damage = "Damage: Average"

-- Less than 5 - Very Weak
-- 5-10 - Weak
-- 10-15 - Average
-- 15-25 - Strong
-- 25-35 - Dangerous
-- 35-45 - Devastating
-- 45-60 - Deadly
-- 100+ - Lethal

ENT.ToTU_Almanac_FlavorText = "ToTU's code backbone."
ENT.ToTU_Almanac_Notes = "Standard walker business."
ENT.ToTU_Almanac_Notes2 = ""
ENT.ToTU_Almanac_Notes3 = ""
ENT.ToTU_Almanac_Notes4 = ""
ENT.ToTU_Almanac_Notes5 = ""
ENT.ToTU_Almanac_Gimmicks = ""
-- leave blank if not applicable

-- scourge
-- self.ToTU_Almanac_FlavorText = "When asked about how she feels about being ToTUs' first female zombie, she responded with 'I didn't think it was that big a deal.'"

-- ENT.ToTU_Almanac_ = ""

ENT.ToTU_DoorBreakModels_Wood = {
	"models/props_c17/door02_double.mdl",
	"models/props_doors/doormain01.mdl",
	"models/props_doors/doormain01_airport_small.mdl",
	"models/props_doors/doormain01_airport.mdl",
	"models/props_doors/doormain01_small.mdl",
	"models/props_doors/doormain_rural01.mdl",
	"models/props_doors/doormain_rural01_small.mdl",
	"models/props_downtown/door_interior_128_01.mdl",
	"models/props_downtown/door_interior_112_01.mdl"
	}
ENT.ToTU_DoorBreakModels_Metal = {
	"models/combine_gate_vehicle.mdl",
	"models/combine_gate_citizen.mdl",
	"models/props_combine/combine_door01.mdl",
	"models/props_c17/door03_left.mdl",
	"models/props_doors/checkpoint_door_-02.mdl",
	"models/props_doors/checkpoint_door_02.mdl",
	"models/props_doors/door03_slotted_left.mdl",
	"models/props_doors/doorfreezer01.mdl",
	"models/props_doors/doorklab01.mdl",
	"models/props_doors/doormainmetalsmall01.mdl",
	"models/props_doors/doormainmetal01.mdl",
	"models/props_doors/doormainmetalwindow01.mdl",
	"models/props_doors/doormainmetalwindowsmall01.mdl",
	"models/props_downtown/metal_door_112.mdl",
	}
ENT.ToTU_DoorBreakModels_Gate = {
	"models/props_lab/elevatordoor.mdl",
	"models/props_mining/elevator01_cagedoor.mdl"
	}
ENT.ToTU_DoorBreakModels_Glass = {
	"models/props_doors/door_rotate_112.mdl"
	}
ENT.ToTU_DoorBreakModels_GatedMetal = {
	"models/props_mining/techgate01.mdl",
	"models/props_doors/checkpoint_door_01.mdl",
	"models/props_doors/checkpoint_door_-01.mdl"
	}
ENT.ToTU_DoorBreakModels_Frame = {
	"models/props_doors/doorglassmain01.mdl",
	"models/props_doors/door_sliding_112.mdl",
	"models/props_doors/doorglassmain01_small.mdl"
	}

-- ENT.CanMutate = false
-- ENT.Mutated = false
-- ENT.CanBurntate = false
-- ENT.Burntated = false
-- ENT.ToTU_CanEat = true
-- ENT.ToTU_Hungry = true
-- ENT.ToTU_IsEating = false
-- ENT.ToTU_NextEatTime = 0

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
	
	if self:GetClass() == "npc_vj_totu_fon_juggernaut" then
		self.ToTU_IsFreakOfNature = true
		if self:GetClass() == "npc_vj_totu_fon_juggernaut" then
			self.HasSoundTrack = true
			self.SoundTrackVolume = 0.5
			self.SoundTbl_SoundTrack = {"fx/fonmusic/Gravity_Perforation_Detail.mp3"}
		end
	end
	
	if
		self:GetClass() == "npc_vj_totu_base_infected" or
		self:GetClass() == "npc_vj_totu_milzomb_infected" or
		self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or
		self:GetClass() == "npc_vj_totu_milzomb_detonator" or
		self:GetClass() == "npc_vj_totu_milzomb_ghost" or
		self:GetClass() == "npc_vj_totu_workers_infected" or
		self:GetClass() == "npc_vj_totu_weaponized_smog" or
		self:GetClass() == "npc_vj_totu_milzomb_ghillie" or
		self:GetClass() == "npc_vj_totu_milzomb_airman_infected" or
		self.ToTU_Nightkin_IsKin
	then
		self.AnimTbl_Walk = {ACT_RUN}
		self.AnimTbl_Run = {ACT_SPRINT}
		self.LNR_Walker = false
		self.LNR_Infected = true
	end
	
	if self:GetClass() == "npc_vj_totu_milzomb_detonator" then
	
		self.AnimTbl_MeleeAttack = {
		"vjseq_nz_sonic_attack_2",
		"vjseq_nz_death_microwave_2",
		"vjseq_nz_death_microwave_3",
		}
		
	end
	
	if
		self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk"
	then
		self.AnimTbl_MeleeAttack = {
		"vjseq_nz_napalm_explode_1",
		"vjseq_nz_taunt_2",
		"vjseq_nz_taunt_7",
		}
		if GetConVar("VJ_ToTU_MilZ_Det_Bulk_NMRIHWalks"):GetInt() == 1 then
		self.AnimTbl_Walk = {ACT_WALK_RELAXED}
		self.AnimTbl_Run = {ACT_WALK_RELAXED}
		end
		self.LNR_Walker = true
		self.LNR_Infected = false
	end
	
	if self:GetClass() == "npc_vj_totu_base_infected" then
	
		self.Model = {"models/totu/testmonkinf.mdl"}
		
		self.ToTU_Almanac_Name = "-= Base Infected =-"
		self.ToTU_Almanac_Strain = "Strain: Infected"
		self.ToTU_Almanac_Toughness = "Toughness: Average"
		self.ToTU_Almanac_Damage = "Damage: Average"
		self.ToTU_Almanac_FlavorText = "ToTU's other code backbone, atleast until the Walker had all the code merged."
		self.ToTU_Almanac_Notes = "Standard infected business."
		self.ToTU_Almanac_Gimmicks = ""
		
	end
	
	if
		self:GetClass() == "npc_vj_totu_milzomb_walker" or
		self:GetClass() == "npc_vj_totu_milzomb_infected" or
		self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or
		self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or
		self:GetClass() == "npc_vj_totu_nightkin_scragg" or
		self:GetClass() == "npc_vj_totu_weaponized_smog" or
		self:GetClass() == "npc_vj_totu_fon_juggernaut"
	then
		self.ToTU_CanDodge = true
	end
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize() end -- Mainly used for setting up models etc
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	
	-- timer.Simple(0.5,function() if IsValid(self) then
	-- local d = DamageInfo()
	-- d:SetDamage(self:GetMaxHealth())
	-- d:SetAttacker(self)
	-- d:SetDamageType(DMG_GENERIC) 
	-- self:TakeDamageInfo(d)
	-- end end)
	
	if self.ToTU_Weaponized_IsHL2Zomb then
		self:Zombie_CustomOnInitialize()
		self:ZombieSounds()
		self:Zombie_Difficulty()
	return end
	
	if GetConVar("VJ_LNR_Crawl"):GetInt() == 1 then
		if math.random(1,GetConVar("VJ_ToTU_General_Crawler_Chance"):GetInt()) == 1 then 
			self.LNR_Crawler = true
			self:Cripple()		
		end
	end
	
	if !self.LNR_Crawler then
	
		if 
			math.random(1,3) == 1 && 
			!self.ToTU_Nightkin_Squaller_UsingIronWill &&
			self:GetClass() != "npc_vj_totu_milzomb_detonator" &&
			self:GetClass() != "npc_vj_totu_milzomb_detonator_bulk" &&
			self:GetClass() != "npc_vj_totu_milzomb_tank"
		then
			self.LNR_UsingRelaxedIdle = true
			self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
		end
		
		if GetConVar("VJ_LNR_Runner"):GetInt() == 1 && !self.ToTU_IsFreakOfNature then
			if math.random(1,GetConVar("VJ_ToTU_General_Runners_Chance"):GetInt()) == 1 && !self.LNR_Infected then
				-- there's probably a better way to do this
				if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
					if GetConVar("VJ_ToTU_MilZ_Det_Bulk_SubtypeBlacklisted"):GetInt() == 0 then
						self.LNR_Runner = true
						self.AnimTbl_Run = {ACT_RUN}
					end
				end
				if self:GetClass() == "npc_vj_totu_milzomb_tank" then
					if GetConVar("VJ_ToTU_MilZ_Tank_SubtypeBlacklisted"):GetInt() == 0 then
						self.LNR_Runner = true
						self.AnimTbl_Run = {ACT_RUN}
					end
				end
				if self:GetClass() != "npc_vj_totu_milzomb_tank" && self:GetClass() != "npc_vj_totu_milzomb_detonator_bulk" then
					self.LNR_Runner = true
					self.AnimTbl_Run = {ACT_RUN}
				end
			end
		end
		
		if GetConVar("VJ_LNR_Biter"):GetInt() == 1 && !self.ToTU_IsFreakOfNature  then
			if math.random(1,3) == 1 && 
				!self.LNR_Infected && 
				self:GetClass() != "npc_vj_totu_milzomb_ghost_walker" && 
				self:GetClass() != "npc_vj_totu_milzomb_juggernaut" && 
				self:GetClass() != "npc_vj_totu_milzomb_tank" && 
				self:GetClass() != "npc_vj_totu_milzomb_ghillie_walker" && 
				self:GetClass() != "npc_vj_totu_fon_juggernaut" && 
				self:GetClass() != "npc_vj_totu_milzomb_airman" && 
				!self.MilZ_HasGasmask 
			then 
				self.LNR_Biter = true
			end
		end
		
		if GetConVar("VJ_LNR_GroundRise"):GetInt() == 1 && ( self:IsDirtGround(self:GetPos()) or GetConVar("VJ_ToTU_Spawn_UniversalDig"):GetInt() == 1 ) then
			if math.random(1,GetConVar("VJ_ToTU_Spawn_DigChance"):GetInt()) == 1 then
				self:RiseFromGround()
			end
		end
	
		if GetConVar("VJ_ToTU_General_Jump_DownOnly"):GetInt() == 1 then
			self.MaxJumpLegalDistance = VJ_Set(5, 550)
		end
		
		if self.LNR_Infected then
		
			if 
				GetConVar("VJ_LNR_SuperSprinter"):GetInt() == 1 &&
				self:GetClass() != "npc_vj_totu_nightkin_squaller" && 
				self:GetClass() != "npc_vj_totu_nightkin_scylla" && 
				!self.ToTU_IsFreakOfNature 
			then 
				if math.random(1,GetConVar("VJ_ToTU_General_SuperSprinters_Chance"):GetInt()) == 1 then
					if self:GetClass() == "npc_vj_totu_milzomb_detonator" then
						if GetConVar("VJ_ToTU_MilZ_Det_SubtypeBlacklisted"):GetInt() == 0 then
							self.LNR_SuperSprinter = true
							self.AnimTbl_Walk = {ACT_RUN_AIM}
							self.AnimTbl_Run = {ACT_RUN_AIM}
						end
					end
					if self:GetClass() != "npc_vj_totu_milzomb_detonator" then
						self.LNR_SuperSprinter = true
						self.AnimTbl_Walk = {ACT_RUN_AIM}
						self.AnimTbl_Run = {ACT_RUN_AIM}
					end
				end
			end
			
			if self:GetClass() == "npc_vj_totu_squaller" then
				util.AddNetworkString("VJ_ToTU_Squaller_Hud")
			else
				util.AddNetworkString("vj_lnr_infected_hud")
			end
			
		else
		
			util.AddNetworkString("vj_lnr_walker_hud")

		end
		
		if GetConVar("VJ_ToTU_General_Rushers_Allow"):GetInt() == 0 then
		elseif GetConVar("VJ_ToTU_General_Rushers_Allow"):GetInt() == 1 && !self.ToTU_IsFreakOfNature  then
			if self.LNR_Infected then
				if math.random(1,GetConVar("VJ_ToTU_General_Rushers_Chance"):GetInt()) == 1 && 
					self:GetClass() != "npc_vj_totu_nightkin_scylla" 
				then
					if self:GetClass() == "npc_vj_totu_milzomb_detonator" then
						if GetConVar("VJ_ToTU_MilZ_Det_SubtypeBlacklisted"):GetInt() == 0 then
					self.AnimTbl_Walk = {ACT_SPRINT}
					self.AnimTbl_Run = {ACT_RUN_RELAXED}
					self.ToTU_Rusher = true
						end
					end
					if self:GetClass() != "npc_vj_totu_milzomb_detonator" then
					self.AnimTbl_Walk = {ACT_SPRINT}
					self.AnimTbl_Run = {ACT_RUN_RELAXED}
					self.ToTU_Rusher = true
					end
				end
			end
		elseif GetConVar("VJ_ToTU_General_Rushers_Allow"):GetInt() == 2 && !self.ToTU_IsFreakOfNature then
			if self.LNR_Walker then
				if math.random(1,GetConVar("VJ_ToTU_General_Rushers_Chance"):GetInt()) == 1 then
					
				if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
					if GetConVar("VJ_ToTU_MilZ_Det_Bulk_SubtypeBlacklisted"):GetInt() == 0 then
					self.AnimTbl_Walk = {ACT_RUN}
					self.AnimTbl_Run = {ACT_SPRINT}
					self.ToTU_Rusher = true
					end
				end
				if self:GetClass() == "npc_vj_totu_milzomb_tank" then
					if GetConVar("VJ_ToTU_MilZ_Tank_SubtypeBlacklisted"):GetInt() == 0 then
					self.AnimTbl_Walk = {ACT_RUN}
					self.AnimTbl_Run = {ACT_SPRINT}
					self.ToTU_Rusher = true
					end
				end
				
				if self:GetClass() != "npc_vj_totu_milzomb_tank" && self:GetClass() != "npc_vj_totu_milzomb_detonator_bulk" then
					self.AnimTbl_Walk = {ACT_RUN}
					self.AnimTbl_Run = {ACT_SPRINT}
					self.ToTU_Rusher = true
				end
				end
			end
		elseif GetConVar("VJ_ToTU_General_Rushers_Allow"):GetInt() == 3 && !self.ToTU_IsFreakOfNature  then
			if math.random(1,GetConVar("VJ_ToTU_General_Rushers_Chance"):GetInt()) == 1 &&
				self:GetClass() != "npc_vj_totu_nightkin_scylla"
			then
				if self.LNR_Infected then
					if self:GetClass() == "npc_vj_totu_milzomb_detonator" then
						if GetConVar("VJ_ToTU_MilZ_Det_SubtypeBlacklisted"):GetInt() == 0 then
					self.AnimTbl_Walk = {ACT_SPRINT}
					self.AnimTbl_Run = {ACT_RUN_RELAXED}
					self.ToTU_Rusher = true
						end
					end
					if self:GetClass() != "npc_vj_totu_milzomb_detonator" then
					self.AnimTbl_Walk = {ACT_SPRINT}
					self.AnimTbl_Run = {ACT_RUN_RELAXED}
					self.ToTU_Rusher = true
					end
				end
				if self.LNR_Walker then
				if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
					if GetConVar("VJ_ToTU_MilZ_Det_Bulk_SubtypeBlacklisted"):GetInt() == 0 then
					self.AnimTbl_Walk = {ACT_RUN}
					self.AnimTbl_Run = {ACT_SPRINT}
					self.ToTU_Rusher = true
					end
				end
				if self:GetClass() == "npc_vj_totu_milzomb_tank" then
					if GetConVar("VJ_ToTU_MilZ_Tank_SubtypeBlacklisted"):GetInt() == 0 then
					self.AnimTbl_Walk = {ACT_RUN}
					self.AnimTbl_Run = {ACT_SPRINT}
					self.ToTU_Rusher = true
					end
				end
				
				if self:GetClass() != "npc_vj_totu_milzomb_tank" && self:GetClass() != "npc_vj_totu_milzomb_detonator_bulk" then
					self.AnimTbl_Walk = {ACT_RUN}
					self.AnimTbl_Run = {ACT_SPRINT}
					self.ToTU_Rusher = true
				end
				end
			end
		end
		
	end
	
	if
		self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or
		self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or
		self:GetClass() == "npc_vj_totu_weaponized_smog" or
		self:GetClass() == "npc_vj_totu_nightkin_squaller"
		
	then
	
		self.ToTU_BigZombie = true
		
		if self:GetClass() != "npc_vj_totu_nightkin_squaller" then
		
			self.ToTU_UseCIAttacks = true
			
		end
		
	end
	
	
	if
		self:GetClass() == "npc_vj_totu_nightkin_scylla" or
		self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" or
		self:GetClass() == "npc_vj_totu_milzomb_tank" or
		self:GetClass() == "npc_vj_totu_fon_juggernaut"
	then
	
		self.ToTU_GiantZombie = true
		
		if self:GetClass() != "npc_vj_totu_milzomb_detonator_bulk" && self:GetClass() != "npc_vj_totu_milzomb_tank" then
		self.ToTU_UseCIAttacks = true
		end
	end
	
	if self:GetClass() == "npc_vj_totu_milzomb_ghost" or self:GetClass() == "npc_vj_totu_nightkin_skitter" then
	
		self.SoundTbl_LeapAttackJump = {self.SoundTbl_BeforeMeleeAttack}
		self.SoundTbl_LeapAttackDamage = {
			"vj_lnrhl2/shared/melee/hit_punch_01.wav",
			"vj_lnrhl2/shared/melee/hit_punch_02.wav",
			"vj_lnrhl2/shared/melee/hit_punch_03.wav",
			"vj_lnrhl2/shared/melee/hit_punch_04.wav",
			"vj_lnrhl2/shared/melee/hit_punch_05.wav",
			"vj_lnrhl2/shared/melee/hit_punch_06.wav",
			"vj_lnrhl2/shared/melee/hit_punch_07.wav",
			"vj_lnrhl2/shared/melee/hit_punch_08.wav"
		}
		self.SoundTbl_LeapAttackDamageMiss = {"npc/zombie/claw_miss2.wav","npc/zombie/claw_miss1.wav"}
		
	self.HasLeapAttack = true 
self.LeapAttackDamage = self.MeleeAttackDamage
self.LeapAttackDamageType = DMG_CLUB
self.LeapAttackAnimationFaceEnemy = false
self.AnimTbl_LeapAttack = {"vjseq_jump_attack"} 
self.LeapDistance = 350 
self.LeapToMeleeDistance = 250
self.LeapAttackDamageDistance = 50 
self.LeapAttackExtraTimers = {0.6, 0.8, 1, 1.2, 1.4} 
self.StopLeapAttackAfterFirstHit = true
self.TimeUntilLeapAttackVelocity = 0.1 
self.NextLeapAttackTime = 8
self.NextAnyAttackTime_Leap = 2
self.LeapAttackVelocityForward = 100
self.LeapAttackVelocityUp = 250
	
	end
	
	if self.ToTU_IsFreakOfNature then
		local pissing = CreateSound(game.GetWorld(), "ui/beep22.wav")
		pissing:SetSoundLevel(0)
		pissing:Play()
		PrintMessage(HUD_PRINTCENTER, "A Freak of Nature has spawned!")
	end


	self:Zombie_CustomOnInitialize()
	self:ZombieSounds()
	self:Zombie_Difficulty()
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize() end -- For additional initialize options
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds()

	if self:GetClass() == "npc_vj_totu_base_walker" then

		self.SoundTbl_Idle = {
			"vo/ravenholm/firetrap_vigil.wav",
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
			"vo/ravenholm/monk_rant22.wav"
		}

		self.SoundTbl_Alert = {
			"vo/ravenholm/bucket_thereyouare.wav",
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
			"vo/ravenholm/yard_greetings.wav"
		}
			
		self.SoundTbl_CombatIdle = {
			"vo/ravenholm/engage01.wav",
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
			"vo/ravenholm/monk_rant22.wav"
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"vo/ravenholm/engage02.wav",
			"vo/ravenholm/engage03.wav",
			"vo/ravenholm/monk_givehealth01.wav",
			"vo/ravenholm/monk_stayclosebro.wav",
			"vo/ravenholm/shotgun_closer.wav",
			"vo/ravenholm/shotgun_hush.wav",
			"test/come_1.mp3",
			"test/come_2.mp3",
			"test/come_3.mp3",
			"test/come_4.mp3",
			"test/come_5.mp3",
			"test/come_6.mp3",
			"test/come_7.mp3",
			"test/come_8.mp3",
			"test/come_9.mp3",
			"test/come_10.mp3",
		}

		self.SoundTbl_Pain = {
			"vo/ravenholm/monk_pain01.wav",
			"vo/ravenholm/monk_pain02.wav",
			"vo/ravenholm/monk_pain03.wav",
			"vo/ravenholm/monk_pain04.wav",
			"vo/ravenholm/monk_pain05.wav",
			"vo/ravenholm/monk_pain06.wav",
			"vo/ravenholm/monk_pain07.wav",
			"vo/ravenholm/monk_pain08.wav",
			"vo/ravenholm/monk_pain09.wav",
			"vo/ravenholm/monk_pain10.wav",
			"vo/ravenholm/monk_pain12.wav"
		}

		self.SoundTbl_Death = {
			"test/MR_WHITR_NOOOO.mp3",
			"test/anime_walt_1.mp3",
			"test/anime_walt_2.mp3",
			"test/anime_walt_3.mp3",
			"vo/ravenholm/exit_darkroad.wav",
			"vo/ravenholm/exit_salvation.wav",
			"vo/ravenholm/firetrap_welldone.wav",
			"vo/ravenholm/monk_death07.wav",
			"vo/ravenholm/monk_helpme03.wav",
			"test/JESSE.mp3",
			"test/JESSE2.mp3",
			"test/monk_death07_glitch.mp3",
			"test/megatron_takes_a_shit.mp3",
			"test/laughnow.mp3",
		}

	elseif self:GetClass() == "npc_vj_totu_base_infected" then

		self.SoundTbl_Alert = {"test/flower_1.mp3"}

		self.SoundTbl_Pain = {
			"test/flower_2.mp3",
			"test/flower_4.mp3"
		}

		self.SoundTbl_Death = {
			"test/flower_3.mp3",
			"test/flower_5.mp3"
		}
	-- resume cleanup here after nightkin are polished
		
	elseif self:GetClass() == "npc_vj_totu_nightkin_scragg" then
	/*
		self.SoundTbl_Idle = {
			"vj_lnrspecials/butcher/groan1.mp3",
			"vj_lnrspecials/butcher/groan2.mp3",
			"vj_lnrspecials/butcher/groan3.mp3",
			"vj_lnrspecials/butcher/groan4.mp3",
			"vj_lnrspecials/butcher/groan5.mp3",
			"vj_lnrspecials/butcher/groan6.mp3",
			"vj_lnrspecials/butcher/groan7.mp3"
		}
			
		self.SoundTbl_Alert = {
			"vj_lnrspecials/butcher/snarl1.mp3",
			"vj_lnrspecials/butcher/snarl2.mp3",
			"vj_lnrspecials/butcher/getup1.mp3",
			"vj_lnrspecials/butcher/getup2.mp3",
			"vj_lnrspecials/butcher/getup3.mp3"
		}
		
		self.SoundTbl_CombatIdle = {
			"vj_lnrspecials/butcher/groan1.mp3",
			"vj_lnrspecials/butcher/groan2.mp3",
			"vj_lnrspecials/butcher/groan3.mp3",
			"vj_lnrspecials/butcher/groan4.mp3",
			"vj_lnrspecials/butcher/groan5.mp3",
			"vj_lnrspecials/butcher/groan6.mp3",
			"vj_lnrspecials/butcher/groan7.mp3"
		}
		
		self.SoundTbl_BeforeMeleeAttack = {
			"vj_lnrspecials/butcher/vo_att_180.mp3",
			"vj_lnrspecials/butcher/vo_att1.mp3",
			"vj_lnrspecials/butcher/vo_att2.mp3",
			"vj_lnrspecials/butcher/vo_att3.mp3",
			"vj_lnrspecials/butcher/vo_att4.mp3",
			"vj_lnrspecials/butcher/vo_att5.mp3",
			"vj_lnrspecials/butcher/vo_att6.mp3",
			"vj_lnrspecials/butcher/vo_att7.mp3"
		}
		
		self.SoundTbl_Pain = {
			"vj_lnrspecials/butcher/hurt1.mp3",
			"vj_lnrspecials/butcher/hurt2.mp3",
			"vj_lnrspecials/butcher/hurt3.mp3",
			"vj_lnrspecials/butcher/hurt4.mp3",
			"vj_lnrspecials/butcher/hurt5.mp3",
			"vj_lnrspecials/butcher/hurt6.mp3"
		}
		
    	self.SoundTbl_Death = {
			"vj_lnrspecials/butcher/death1.mp3",
			"vj_lnrspecials/butcher/death2.mp3",
			"vj_lnrspecials/butcher/death3.mp3",
			"vj_lnrspecials/butcher/death4.mp3"
		}
	*/
		self.SoundTbl_Idle = {
			"monsters/grunt/amb_idle01.wav",
			"monsters/grunt/amb_idle02.wav",
			"monsters/grunt/amb_idle03.wav",
			"monsters/grunt/amb_idle04.wav",
			"monsters/grunt/amb_idle05.wav",
			"monsters/grunt/amb_alert01.wav",
			"monsters/grunt/amb_alert02.wav",
			"monsters/grunt/amb_alert03.wav",
		}
			
		self.SoundTbl_Alert = {
			"monsters/grunt/enabled01.wav",
			"monsters/grunt/enabled02.wav",
			"monsters/grunt/enabled03.wav",
			"monsters/grunt/notice01.wav",
			"monsters/grunt/notice02.wav",
			"monsters/grunt/notice03.wav",
			"monsters/grunt/notice04.wav",
			"monsters/grunt/notice_long01.wav",
			"monsters/grunt/notice_long02.wav",
			"monsters/grunt/notice_long03.wav",
		}
		
		self.SoundTbl_CombatIdle = {
			"monsters/grunt/amb_hunt01.wav",
			"monsters/grunt/amb_hunt02.wav",
			"monsters/grunt/amb_hunt03.wav",
			"monsters/grunt/amb_hunt04.wav",
			"monsters/grunt/amb_idle_scratch01.wav",
			"monsters/grunt/amb_idle_scratch02.wav",
			"monsters/grunt/amb_idle_scratch03.wav",
		}
		
		self.SoundTbl_BeforeMeleeAttack = {
			"monsters/grunt/attack_claw01.wav",
			"monsters/grunt/attack_claw02.wav",
			"monsters/grunt/attack_claw03.wav",
		}
		
		self.SoundTbl_Pain = {
			"monsters/grunt/attack_launch01.wav",
			"monsters/grunt/attack_launch02.wav",
			"monsters/grunt/attack_launch03.wav",
		}
		
    	self.SoundTbl_Death = {
			"monsters/grunt/amb_idle_whimp01.wav",
			"monsters/grunt/amb_idle_whimp02.wav",
		}
		
	elseif self:GetClass() == "npc_vj_totu_nightkin_skitter" then

		self.SoundTbl_Idle = {
			"zombies/countryside/onlookers/stalker/idle_1.mp3",
			"zombies/countryside/onlookers/stalker/idle_2.mp3",
			"zombies/countryside/onlookers/stalker/idle_3.mp3",
			"zombies/countryside/onlookers/stalker/idle_4.mp3",
			"zombies/countryside/onlookers/stalker/idle_5.mp3",
			"zombies/countryside/onlookers/stalker/idle_6.mp3",
			"zombies/countryside/onlookers/stalker/idle_7.mp3",
			"zombies/countryside/onlookers/stalker/idle_8.mp3",
			"zombies/countryside/onlookers/stalker/idle_9.mp3",
			"zombies/countryside/onlookers/stalker/idle_10.mp3"
		}

		self.SoundTbl_Alert = {
			"zombies/countryside/onlookers/stalker/attack_1.mp3",
			"zombies/countryside/onlookers/stalker/attack_2.mp3",
			"zombies/countryside/onlookers/stalker/attack_3.mp3",
			"zombies/countryside/onlookers/stalker/attack_4.mp3",
			"zombies/countryside/onlookers/stalker/attack_5.mp3",
			"zombies/countryside/onlookers/stalker/attack_6.mp3",
			"zombies/countryside/onlookers/stalker/attack_7.mp3"
		}

		self.SoundTbl_CombatIdle = {
			"zombies/countryside/onlookers/stalker/cidle_1.mp3",
			"zombies/countryside/onlookers/stalker/cidle_2.mp3",
			"zombies/countryside/onlookers/stalker/cidle_3.mp3",
			"zombies/countryside/onlookers/stalker/cidle_4.mp3"
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"zombies/countryside/onlookers/stalker/attack_1.mp3",
			"zombies/countryside/onlookers/stalker/attack_2.mp3",
			"zombies/countryside/onlookers/stalker/attack_3.mp3",
			"zombies/countryside/onlookers/stalker/attack_4.mp3",
			"zombies/countryside/onlookers/stalker/attack_5.mp3",
			"zombies/countryside/onlookers/stalker/attack_6.mp3",
			"zombies/countryside/onlookers/stalker/attack_7.mp3"
		}

		self.SoundTbl_Pain = {
			"zombies/countryside/onlookers/stalker/pain_1.mp3",
			"zombies/countryside/onlookers/stalker/pain_2.mp3",
			"zombies/countryside/onlookers/stalker/pain_3.mp3",
			"zombies/countryside/onlookers/stalker/pain_4.mp3",
			"zombies/countryside/onlookers/stalker/pain_5.mp3",
			"zombies/countryside/onlookers/stalker/pain_6.mp3",
			"zombies/countryside/onlookers/stalker/pain_7.mp3",
			"zombies/countryside/onlookers/stalker/pain_8.mp3",
			"zombies/countryside/onlookers/stalker/pain_9.mp3",
			"zombies/countryside/onlookers/stalker/pain_10.mp3",
			"zombies/countryside/onlookers/stalker/pain_12.mp3",
			"zombies/countryside/onlookers/stalker/pain_13.mp3",
			"zombies/countryside/onlookers/stalker/pain_14.mp3"
		}

		self.SoundTbl_Death = {
			"zombies/countryside/onlookers/stalker/death_1.mp3",
			"zombies/countryside/onlookers/stalker/death_2.mp3",
			"zombies/countryside/onlookers/stalker/death_3.mp3",
			"zombies/countryside/onlookers/stalker/death_4.mp3"
		}

	elseif self:GetClass() == "npc_vj_totu_nightkin_shrieker" then

		self.SoundTbl_Idle = {
			"voices/nightkin/shrieker/idle_1.mp3",
			"voices/nightkin/shrieker/idle_2.mp3",
			"voices/nightkin/shrieker/idle_3.mp3",
			"voices/nightkin/shrieker/idle_4.mp3",
			"voices/nightkin/shrieker/idle_5.mp3",
			"voices/nightkin/shrieker/idle_6.mp3",
			"voices/nightkin/shrieker/idle_7.mp3",
			"voices/nightkin/shrieker/idle_8.mp3",
			"voices/nightkin/shrieker/idle_9.mp3",
			"voices/nightkin/shrieker/idle_10.mp3",
			"voices/nightkin/shrieker/idle_11.mp3",
			"voices/nightkin/shrieker/idle_12.mp3",
			"voices/nightkin/shrieker/idle_13.mp3",
			"voices/nightkin/shrieker/idle_14.mp3",
		}

		self.SoundTbl_Alert = {
			"voices/nightkin/shrieker/alert_1.mp3",
			"voices/nightkin/shrieker/alert_2.mp3",
			"voices/nightkin/shrieker/alert_3.mp3",
			"voices/nightkin/shrieker/alert_4.mp3",
			"voices/nightkin/shrieker/alert_5.mp3",
			"voices/nightkin/shrieker/alert_6.mp3",
			"voices/nightkin/shrieker/alert_7.mp3",
			"voices/nightkin/shrieker/alert_8.mp3",
			"voices/nightkin/shrieker/alert_9.mp3",
			"voices/nightkin/shrieker/alert_10.mp3",
		}

		self.SoundTbl_CombatIdle = {
			"voices/nightkin/shrieker/cidle_1.mp3",
			"voices/nightkin/shrieker/cidle_2.mp3",
			"voices/nightkin/shrieker/cidle_3.mp3",
			"voices/nightkin/shrieker/cidle_4.mp3",
			"voices/nightkin/shrieker/cidle_5.mp3",
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"voices/nightkin/shrieker/melee_1.mp3",
			"voices/nightkin/shrieker/melee_2.mp3",
			"voices/nightkin/shrieker/melee_3.mp3",
			"voices/nightkin/shrieker/melee_4.mp3",
			"voices/nightkin/shrieker/melee_5.mp3",
		}

		self.SoundTbl_Pain = {
			"voices/nightkin/shrieker/pain_1.mp3",
			"voices/nightkin/shrieker/pain_2.mp3",
			"voices/nightkin/shrieker/pain_3.mp3",
			"voices/nightkin/shrieker/pain_4.mp3",
			"voices/nightkin/shrieker/pain_5.mp3",
			"voices/nightkin/shrieker/pain_6.mp3",
			"voices/nightkin/shrieker/pain_7.mp3",
			"voices/nightkin/shrieker/pain_8.mp3",
			"voices/nightkin/shrieker/pain_9.mp3",
			"voices/nightkin/shrieker/pain_10.mp3",
			"voices/nightkin/shrieker/pain_11.mp3",
			"voices/nightkin/shrieker/pain_12.mp3",
			"voices/nightkin/shrieker/pain_13.mp3",
			"voices/nightkin/shrieker/pain_14.mp3",
			"voices/nightkin/shrieker/pain_15.mp3",
			"voices/nightkin/shrieker/pain_16.mp3",
			"voices/nightkin/shrieker/pain_16.mp3",
			"voices/nightkin/shrieker/pain_17.mp3",
			"voices/nightkin/shrieker/pain_18.mp3",
			"voices/nightkin/shrieker/pain_19.mp3",
			"voices/nightkin/shrieker/pain_20.mp3",
			"voices/nightkin/shrieker/pain_21.mp3",
		}

    	self.SoundTbl_Death = {
			"voices/nightkin/shrieker/death_1.mp3",
			"voices/nightkin/shrieker/death_2.mp3",
			"voices/nightkin/shrieker/death_3.mp3",
		}

	elseif self:GetClass() == "npc_vj_totu_nightkin_squaller" then
		self.SoundTbl_Idle = {
		"zombies/countryside/onlookers/squaller/idle_1.wav",
	"zombies/countryside/onlookers/squaller/idle_2.wav",
	"zombies/countryside/onlookers/squaller/idle_3.wav",
	"zombies/countryside/onlookers/squaller/idle_4.wav",
	"zombies/countryside/onlookers/squaller/idle_5.wav",
	"zombies/countryside/onlookers/squaller/idle_6.wav",
	"zombies/countryside/onlookers/squaller/idle_7.wav",
	"zombies/countryside/onlookers/squaller/idle_8.wav",
	"zombies/countryside/onlookers/squaller/idle_9.wav",
	"zombies/countryside/onlookers/squaller/idle_10.wav"
		}
			
		self.SoundTbl_Alert = {
		"zombies/countryside/onlookers/squaller/alert_1.wav",
	"zombies/countryside/onlookers/squaller/alert_2.wav",
	"zombies/countryside/onlookers/squaller/alert_3.wav",
	"zombies/countryside/onlookers/squaller/alert_4.wav",
	"zombies/countryside/onlookers/squaller/alert_5.wav",
	"zombies/countryside/onlookers/squaller/alert_6.wav"
		}
		
		self.SoundTbl_CombatIdle = {
		"zombies/countryside/onlookers/squaller/combatidle_1.wav",
	"zombies/countryside/onlookers/squaller/combatidle_2.wav",
	"zombies/countryside/onlookers/squaller/combatidle_3.wav",
	"zombies/countryside/onlookers/squaller/combatidle_4.wav",
	"zombies/countryside/onlookers/squaller/combatidle_5.wav",
	"zombies/countryside/onlookers/squaller/combatidle_6.wav",
	"zombies/countryside/onlookers/squaller/alert_1.wav",
	"zombies/countryside/onlookers/squaller/alert_2.wav",
	"zombies/countryside/onlookers/squaller/alert_3.wav",
	"zombies/countryside/onlookers/squaller/alert_4.wav",
	"zombies/countryside/onlookers/squaller/alert_5.wav",
	"zombies/countryside/onlookers/squaller/alert_6.wav"
		}
		
		self.SoundTbl_BeforeMeleeAttack = {
		"zombies/countryside/onlookers/squaller/combatidle_1.wav",
	"zombies/countryside/onlookers/squaller/combatidle_2.wav",
	"zombies/countryside/onlookers/squaller/combatidle_3.wav",
	"zombies/countryside/onlookers/squaller/combatidle_4.wav",
	"zombies/countryside/onlookers/squaller/combatidle_5.wav",
	"zombies/countryside/onlookers/squaller/combatidle_6.wav",
	"zombies/countryside/onlookers/squaller/alert_1.wav",
	"zombies/countryside/onlookers/squaller/alert_2.wav",
	"zombies/countryside/onlookers/squaller/alert_3.wav",
	"zombies/countryside/onlookers/squaller/alert_4.wav",
	"zombies/countryside/onlookers/squaller/alert_5.wav",
	"zombies/countryside/onlookers/squaller/alert_6.wav"
		}
		
		self.SoundTbl_Pain = {
		"zombies/countryside/onlookers/squaller/pain_1.wav",
	"zombies/countryside/onlookers/squaller/pain_2.wav",
	"zombies/countryside/onlookers/squaller/pain_3.wav",
	"zombies/countryside/onlookers/squaller/pain_4.wav",
	"zombies/countryside/onlookers/squaller/pain_5.wav",
	"zombies/countryside/onlookers/squaller/pain_6.wav",
	"zombies/countryside/onlookers/squaller/pain_7.wav",
	"zombies/countryside/onlookers/squaller/pain_8.wav",
	"zombies/countryside/onlookers/squaller/pain_9.wav",
	"zombies/countryside/onlookers/squaller/pain_10.wav",
	"zombies/countryside/onlookers/squaller/pain_11.wav",
	"zombies/countryside/onlookers/squaller/pain_12.wav",
	"zombies/countryside/onlookers/squaller/pain_13.wav",
	"zombies/countryside/onlookers/squaller/pain_14.wav"
		}
		
    	self.SoundTbl_Death = {
		"zombies/countryside/onlookers/squaller/death_1.wav",
	"zombies/countryside/onlookers/squaller/death_2.wav",
	"zombies/countryside/onlookers/squaller/death_3.wav",
	"zombies/countryside/onlookers/squaller/death_4.wav",
	"zombies/countryside/onlookers/squaller/death_5.wav",
	"zombies/countryside/onlookers/squaller/death_6.wav"
		}
		
	elseif self:GetClass() == "npc_vj_totu_nightkin_spitballer" then
		self.SoundTbl_Idle = {
		"player/spitter/voice/idle/spitter_lurk_01.wav",
		"player/spitter/voice/idle/spitter_lurk_02.wav",
		"player/spitter/voice/idle/spitter_lurk_03.wav",
		"player/spitter/voice/idle/spitter_lurk_04.wav",
		"player/spitter/voice/idle/spitter_lurk_05.wav",
		"player/spitter/voice/idle/spitter_lurk_06.wav",
		"player/spitter/voice/idle/spitter_lurk_07.wav",
		"player/spitter/voice/idle/spitter_lurk_08.wav",
		"player/spitter/voice/idle/spitter_lurk_09.wav",
		"player/spitter/voice/idle/spitter_lurk_10.wav",
		"player/spitter/voice/idle/spitter_lurk_11.wav",
		"player/spitter/voice/idle/spitter_lurk_12.wav",
		"player/spitter/voice/idle/spitter_lurk_14.wav",
		"player/spitter/voice/idle/spitter_lurk_15.wav",
		"player/spitter/voice/idle/spitter_lurk_16.wav",
		"player/spitter/voice/idle/spitter_lurk_17.wav",
		"player/spitter/voice/idle/spitter_lurk_18.wav",
		"player/spitter/voice/idle/spitter_lurk_19.wav",
		"player/spitter/voice/idle/spitter_lurk_20.wav",
		}
			
		self.SoundTbl_Alert = {
		"player/spitter/voice/idle/spitter_spotprey_01.wav",
		"player/spitter/voice/idle/spitter_spotprey_02.wav",
		"player/spitter/voice/idle/spitter_spotprey_03.wav",
		"player/spitter/voice/idle/spitter_spotprey_04.wav",
		"player/spitter/voice/idle/spitter_spotprey_05.wav",
		"player/spitter/voice/idle/spitter_spotprey_06.wav",
		"player/spitter/voice/alert/spitter_alert_01.wav",
		"player/spitter/voice/alert/spitter_alert_02.wav",
		}
		
		self.SoundTbl_CombatIdle = {
		"player/spitter/voice/idle/spitter_lurk_01.wav",
		"player/spitter/voice/idle/spitter_lurk_02.wav",
		"player/spitter/voice/idle/spitter_lurk_03.wav",
		"player/spitter/voice/idle/spitter_lurk_04.wav",
		"player/spitter/voice/idle/spitter_lurk_05.wav",
		"player/spitter/voice/idle/spitter_lurk_06.wav",
		"player/spitter/voice/idle/spitter_lurk_07.wav",
		"player/spitter/voice/idle/spitter_lurk_08.wav",
		"player/spitter/voice/idle/spitter_lurk_09.wav",
		"player/spitter/voice/idle/spitter_lurk_10.wav",
		"player/spitter/voice/idle/spitter_lurk_11.wav",
		"player/spitter/voice/idle/spitter_lurk_12.wav",
		"player/spitter/voice/idle/spitter_lurk_14.wav",
		"player/spitter/voice/idle/spitter_lurk_15.wav",
		"player/spitter/voice/idle/spitter_lurk_16.wav",
		"player/spitter/voice/idle/spitter_lurk_17.wav",
		"player/spitter/voice/idle/spitter_lurk_18.wav",
		"player/spitter/voice/idle/spitter_lurk_19.wav",
		"player/spitter/voice/idle/spitter_lurk_20.wav",
		}
		
		self.SoundTbl_BeforeMeleeAttack = {
		}
		
		self.SoundTbl_BeforeRangeAttack = {
		"player/spitter/voice/warn/spitter_spit_01.wav",
		"player/spitter/voice/warn/spitter_spit_02.wav",
		}
		
		self.SoundTbl_Pain = {
		"player/spitter/voice/pain/spitter_pain_01.wav",
		"player/spitter/voice/pain/spitter_pain_02.wav",
		"player/spitter/voice/pain/spitter_pain_03.wav",
		"player/spitter/voice/pain/spitter_painshort_01.wav",
		"player/spitter/voice/pain/spitter_painshort_02.wav",
		"player/spitter/voice/pain/spitter_painshort_03.wav",
		}
		
    	self.SoundTbl_Death = {
		"player/spitter/voice/die/spitter_death_01.wav",
		"player/spitter/voice/die/spitter_death_02.wav",
		}
		
	elseif self:GetClass() == "npc_vj_totu_weaponized_carcass" or self:GetClass() == "npc_vj_totu_weaponized_carcass_torso" then
	
		self.SoundTbl_Idle = {
			"zombies/weaponized/carcass/idle_1.mp3",
			"zombies/weaponized/carcass/idle_2.mp3",
			"zombies/weaponized/carcass/idle_3.mp3",
			"zombies/weaponized/carcass/idle_4.mp3"
		}
			
		self.SoundTbl_Alert = {
			"zombies/weaponized/carcass/alert_1.mp3",
			"zombies/weaponized/carcass/alert_2.mp3",
			"zombies/weaponized/carcass/alert_3.mp3",
			"zombies/weaponized/carcass/alert_4.mp3"
		}
		
		self.SoundTbl_CombatIdle = {
			"zombies/weaponized/carcass/idle_1.mp3",
			"zombies/weaponized/carcass/idle_2.mp3",
			"zombies/weaponized/carcass/idle_3.mp3",
			"zombies/weaponized/carcass/idle_4.mp3"
		}
		
		self.SoundTbl_BeforeMeleeAttack = {
			"zombies/weaponized/carcass/attack_1.mp3",
			"zombies/weaponized/carcass/attack_2.mp3",
			"zombies/weaponized/carcass/attack_3.mp3",
			"zombies/weaponized/carcass/attack_4.mp3",
			"zombies/weaponized/carcass/attack_5.mp3",
			"zombies/weaponized/carcass/attack_6.mp3"
		}
		
    	self.SoundTbl_Death = {
			"zombies/weaponized/carcass/death_1.mp3",
			"zombies/weaponized/carcass/death_2.mp3",
			"zombies/weaponized/carcass/death_3.mp3",
			"zombies/weaponized/carcass/death_4.mp3",
			"zombies/weaponized/carcass/death_5.mp3"
		}
		
		self.IdleSoundChance = 5
		self.CombatIdleSoundChance = 4
		self.IdleSoundLevel = 45
		self.CombatIdleSoundLevel = 60
		
	elseif self:GetClass() == "npc_vj_totu_nightkin_scylla" then
		self.SoundTbl_Idle = {
		"voices/nightkin/scylla/idle_1.mp3",
		"voices/nightkin/scylla/idle_2.mp3",
		"voices/nightkin/scylla/idle_3.mp3",
		"voices/nightkin/scylla/idle_4.mp3",
		}
			
		self.SoundTbl_Alert = {
		"voices/nightkin/scylla/long_scream_1.mp3",
		"voices/nightkin/scylla/long_scream_2.mp3",
		"voices/nightkin/scylla/long_scream_3.mp3",
		"voices/nightkin/scylla/long_scream_4.mp3",
		}
		
		self.SoundTbl_CombatIdle = {
		"voices/nightkin/scylla/howl_1.mp3",
		"voices/nightkin/scylla/howl_2.mp3",
		"voices/nightkin/scylla/howl_3.mp3",
		"voices/nightkin/scylla/howl_4.mp3",
		}
		
		self.SoundTbl_BeforeMeleeAttack = {
		"voices/nightkin/scylla/long_scream_1.mp3",
		"voices/nightkin/scylla/long_scream_2.mp3",
		"voices/nightkin/scylla/long_scream_3.mp3",
		"voices/nightkin/scylla/long_scream_4.mp3",
		}
		
		self.SoundTbl_Pain = {
		"voices/nightkin/scylla/pain_1.mp3",
		"voices/nightkin/scylla/pain_2.mp3",
		"voices/nightkin/scylla/pain_3.mp3",
		"voices/nightkin/scylla/pain_4.mp3",
		"voices/nightkin/scylla/pain_5.mp3",
		}
		
    	self.SoundTbl_Death = {
		"voices/nightkin/scylla/death.mp3"
		}
		
	elseif self:GetClass() == "npc_vj_totu_weaponized_cyst" then
		self.SoundTbl_Idle = {
		"zombies/coastline/whale/idle_1.mp3",
		"zombies/coastline/whale/idle_2.mp3",
		"zombies/coastline/whale/idle_3.mp3",
		"zombies/coastline/whale/idle_4.mp3",
		"zombies/coastline/whale/idle_5.mp3",
		"zombies/coastline/whale/idle_6.mp3",
		"zombies/coastline/whale/idle_7.mp3",
		}
			
		self.SoundTbl_Alert = {
		"zombies/coastline/whale/alert_1.mp3",
		"zombies/coastline/whale/alert_2.mp3",
		"zombies/coastline/whale/alert_3.mp3",
		"zombies/coastline/whale/alert_4.mp3",
		"zombies/coastline/whale/alert_5.mp3",
		"zombies/coastline/whale/alert_6.mp3",
		"zombies/coastline/whale/alert_7.mp3",
		"zombies/coastline/whale/alert_8.mp3",
		"zombies/coastline/whale/alert_9.mp3",
		"zombies/coastline/whale/alert_10.mp3",
		}
		
		self.SoundTbl_CombatIdle = {
		self.SoundTbl_Idle
		}
		
		self.SoundTbl_BeforeMeleeAttack = {
		"zombies/coastline/whale/alert_1.mp3",
		"zombies/coastline/whale/alert_2.mp3",
		"zombies/coastline/whale/alert_3.mp3",
		"zombies/coastline/whale/alert_4.mp3",
		"zombies/coastline/whale/alert_5.mp3",
		"zombies/coastline/whale/alert_6.mp3",
		"zombies/coastline/whale/alert_7.mp3",
		"zombies/coastline/whale/alert_8.mp3",
		"zombies/coastline/whale/alert_9.mp3",
		"zombies/coastline/whale/alert_10.mp3",
		}
		
		self.SoundTbl_BeforeRangeAttack = {
		"npc/barnacle/barnacle_tongue_pull1.wav",
		"npc/barnacle/barnacle_tongue_pull2.wav",
		"npc/barnacle/barnacle_tongue_pull3.wav",
		}
		
		self.SoundTbl_Pain = {
		"zombies/coastline/whale/pain_1.mp3",
		"zombies/coastline/whale/pain_2.mp3",
		"zombies/coastline/whale/pain_3.mp3",
		"zombies/coastline/whale/pain_4.mp3",
		"zombies/coastline/whale/pain_5.mp3",
		"zombies/coastline/whale/pain_6.mp3",
		"zombies/coastline/whale/pain_7.mp3",
		"zombies/coastline/whale/pain_8.mp3",
		}
		
    	self.SoundTbl_Death = {
		"zombies/coastline/whale/death_1.mp3",
		"zombies/coastline/whale/death_2.mp3",
		"zombies/coastline/whale/death_3.mp3",
		"zombies/coastline/whale/death_4.mp3",
		}
	elseif self:GetClass() == "npc_vj_totu_weaponized_cazador" or self:GetClass() == "npc_vj_totu_weaponized_cazador_torso" then
		self.SoundTbl_Idle = {
		}
			
		self.SoundTbl_Alert = {
		"npc/barnacle/barnacle_bark1.wav",
		"npc/barnacle/barnacle_bark2.wav",
		}
		
		self.SoundTbl_CombatIdle = {
		"npc/barnacle/barnacle_tongue_pull1.wav",
		"npc/barnacle/barnacle_tongue_pull2.wav",
		"npc/barnacle/barnacle_tongue_pull3.wav",
		}
		
		self.SoundTbl_BeforeMeleeAttack = {
		"npc/barnacle/barnacle_tongue_pull1.wav",
		"npc/barnacle/barnacle_tongue_pull2.wav",
		"npc/barnacle/barnacle_tongue_pull3.wav",
		}
		
		self.SoundTbl_BeforeLeapAttack = {
		self.SoundTbl_BeforeMeleeAttack
		}
		
		self.SoundTbl_LeapAttackDamage = {
		self.SoundTbl_MeleeAttack
		}
		
		self.SoundTbl_Pain = {
		"npc/barnacle/barnacle_pull1.wav",
		"npc/barnacle/barnacle_pull2.wav",
		"npc/barnacle/barnacle_pull3.wav",
		"npc/barnacle/barnacle_pull4.wav",
		}
		
    	self.SoundTbl_Death = {
		"npc/barnacle/neck_snap1.wav",
		"npc/barnacle/neck_snap2.wav",
		}
		
	elseif self:GetClass() == "npc_vj_totu_weaponized_smog" then
	
		self.SoundTbl_Idle = {
		"monsters/tesla/tesla_amb_idle_01.wav",
		"monsters/tesla/tesla_amb_idle_02.wav",
		"monsters/tesla/tesla_amb_idle_03.wav",
		"monsters/tesla/tesla_amb_idle_04.wav",
		"monsters/tesla/tesla_amb_idle_05.wav",
		"monsters/tesla/tesla_amb_idle_06.wav",
		"monsters/tesla/tesla_idlebiped01_vo1.wav",
		"monsters/tesla/tesla_idlebiped01_vo2.wav",
		"monsters/tesla/tesla_idlebiped02_vo1.wav",
		"monsters/tesla/tesla_idlebiped02_vo2.wav",
		"monsters/tesla/tesla_idlebipedtoquadruped_vo.wav",
		"monsters/tesla/tesla_idlequadruped01_vo1.wav",
		"monsters/tesla/tesla_idlequadruped01_vo2.wav",
		"monsters/tesla/tesla_idlequadruped02_vo1.wav",
		"monsters/tesla/tesla_idlequadruped02_vo2.wav",
		"monsters/tesla/tesla_idlequadruped03_vo1.wav",
		"monsters/tesla/tesla_idlequadruped03_vo2.wav",
		
		}
			
		self.SoundTbl_Alert = {
		"monsters/tesla/tesla_amb_enable_01.wav",
		"monsters/tesla/tesla_amb_enable_02.wav",
		"monsters/tesla/tesla_enabled_01.wav",
		"monsters/tesla/tesla_enabled_02.wav",
		"monsters/tesla/tesla_enabled_03.wav",
		}
		
		self.SoundTbl_CombatIdle = {
		"monsters/tesla/tesla_amb_hunt_01.wav",
		"monsters/tesla/tesla_amb_hunt_02.wav",
		"monsters/tesla/tesla_amb_hunt_03.wav",
		"monsters/tesla/tesla_amb_notice_01.wav",
		"monsters/tesla/tesla_amb_notice_02.wav",
		"monsters/tesla/tesla_amb_notice_03.wav",
		}
		
		self.SoundTbl_BeforeMeleeAttack = {
		"monsters/tesla/tesla_amb_hunt_01.wav",
		"monsters/tesla/tesla_amb_hunt_02.wav",
		"monsters/tesla/tesla_amb_hunt_03.wav",
		"monsters/tesla/tesla_amb_notice_01.wav",
		"monsters/tesla/tesla_amb_notice_02.wav",
		"monsters/tesla/tesla_amb_notice_03.wav",
		}
		
		self.SoundTbl_BeforeRangeAttack = {
		"zombies/weaponized/smog/fume_spray_1.mp3",
		"zombies/weaponized/smog/fume_spray_2.mp3",
		}
		
		self.SoundTbl_Pain = {
		"monsters/tesla/tesla_amb_alert_01.wav",
		"monsters/tesla/tesla_amb_alert_02.wav",
		"monsters/tesla/tesla_amb_alert_03.wav",
		"monsters/tesla/tesla_amb_alert_04.wav",
		"monsters/tesla/tesla_amb_alert_05.wav",
		}
		
    	self.SoundTbl_Death = {
		"monsters/tesla/tesla_amb_enable_01.wav",
		"monsters/tesla/tesla_amb_enable_02.wav",
		"monsters/tesla/tesla_enabled_01.wav",
		"monsters/tesla/tesla_enabled_02.wav",
		"monsters/tesla/tesla_enabled_03.wav",
		}

		
	/*
	elseif self:GetClass() == "npc_vj_totu_" then
		self.SoundTbl_Idle = {
		""
		}

		self.SoundTbl_Alert = {
		""
		}

		self.SoundTbl_CombatIdle = {
		""
		}

		self.SoundTbl_BeforeMeleeAttack = {
		""
		}

		self.SoundTbl_Pain = {
		""
		}

    	self.SoundTbl_Death = {
		""
		}
	*/
	
	else
	
	self:ZombieSounds_GiveDefault()
	self:ZombieSounds_Custom()
	if self.MilZ_HasGasmask or self:GetClass() == "npc_vj_totu_milzomb_tank" or self.MilZ_Ghost_IsGhost then
		self:MilZ_GiveGasmaskSounds()
	end
		
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_GiveDefault()

	if self.LNR_Infected then

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

	else

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

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieWeapons()

	self.ToTU_WeHaveAWeapon = true
	
	if self:GetClass() == "npc_vj_totu_milzomb_walker" or self:GetClass() == "npc_vj_totu_milzomb_infected" then
	
		-- no weapons
		if GetConVar("VJ_ToTU_MilZ_Weapons"):GetInt() == 0 then

		-- knives and guns
		elseif GetConVar("VJ_ToTU_MilZ_Weapons"):GetInt() == 1 then
		
			local milzwep = math.random(1,2)
			if milzwep == 1 then
			
				self:MilZ_GiveKnife()

			elseif milzwep == 2 then
		
				self:MilZ_GiveGun()
			
			end	
	
		-- knives only
		elseif GetConVar("VJ_ToTU_MilZ_Weapons"):GetInt() == 2 then
	
				self:MilZ_GiveKnife()
	
		-- guns only
		elseif GetConVar("VJ_ToTU_MilZ_Weapons"):GetInt() == 3 then
	
				self:MilZ_GiveGun()

		end

	end	
	
	if self.DisableFindEnemy == true then

		if IsValid(self.WeaponModel) then 

			self.WeaponModel:SetMaterial("lnr/bonemerge") 
			self.WeaponModel:DrawShadow(false)

		end
		
		timer.Simple(1.3,function() if IsValid(self) then
		
			if IsValid(self.WeaponModel) then 

				self.WeaponModel:SetMaterial()
				self.WeaponModel:DrawShadow(true)

			end

		end end)

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MilZ_GiveKnife()

	self.MeleeAttackBleedEnemy = true -- Should the enemy bleed when attacked by melee?
	self.MeleeAttackBleedEnemyChance = 3 -- Chance that the enemy bleeds | 1 = always
	self.MeleeAttackBleedEnemyDamage = 1 -- How much damage per repetition
	self.MeleeAttackBleedEnemyTime = 1 -- How much time until the next repetition?
	self.MeleeAttackBleedEnemyReps = 4 -- How many repetitions?
	self.MilZ_HasKnife = true
	self.MeleeAttackDamageType = DMG_SLASH
	self.SoundTbl_MeleeAttack = {""}

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
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MilZ_GiveGun()

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
			
	if math.random(1,GetConVar("VJ_ToTU_MilZ_ShootableGun_Chance"):GetInt()) == 1 && GetConVar("VJ_ToTU_MilZ_ShootableGun"):GetInt() == 1 then
			
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

		if self.LNR_Walker then

			self.AnimTbl_Run = {ACT_WALK_PISTOL}
					
			if self.LNR_Runner then
					
				self.AnimTbl_Run = {ACT_RUN_PISTOL}
						
			end
			
			if self.ToTU_Rusher then
					
				self.AnimTbl_Run = {ACT_RUN_AIM_PISTOL}
						
			end
					
		elseif self.LNR_Infected then
				
			if !self.LNR_SuperSprinter && !self.ToTU_Rusher then
					
				self.AnimTbl_Run = {ACT_RUN_AIM_PISTOL}
						
			end

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
	
		self.StartHealth = 50
		self.MeleeAttackDamage = math.Rand(5,10)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
	
		self.StartHealth = 100
		self.MeleeAttackDamage = math.Rand(10,15)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
	
		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(15,20)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
	
		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(20,25)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
	
		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(25,30)
		
	end
			
        self:SetHealth(self.StartHealth)	
		
		if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then
		
			if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
			
				self.LNR_LegHP = 10
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
			
				self.LNR_LegHP = 20
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
			
				self.LNR_LegHP = 30
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
			
				self.LNR_LegHP = 40
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
			
				self.LNR_LegHP = 50
				
			end
			
		end
end 
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)

	if key == "step" then
		self:FootStepSoundCode()
	end
	
	if key == "step" then
		if self.MilZ_IsMilZ && !self.MilZ_Det_IsDetonator && self.MilZ_Ghille_PlayChangeStateAnim != 2 && !self.MilZ_Airman_IsAirman then
			if
				self:GetActivity() == ACT_RUN or
				self:GetActivity() == ACT_RUN_PISTOL or
				self:GetActivity() == ACT_SPRINT or
				self:GetActivity() == ACT_RUN_AIM_PISTOL or
				self:GetActivity() == ACT_RUN_AIM or
				self:GetActivity() == ACT_RUN_STEALTH or
				self:GetActivity() == ACT_SMALL_FLINCH or
				self:GetActivity() == ACT_BIG_FLINCH or
				self:GetActivity() == ACT_FLINCH_STOMACH or
				self:GetActivity() == ACT_GMOD_SHOWOFF_STAND_01 or
				self:GetActivity() == ACT_WALK_HURT or
				self:GetActivity() == ACT_RUN_RELAXED or
				self:GetActivity() == ACT_RUN_HURT
			then
				VJ_EmitSound(self,"npc/combine_soldier/gear"..math.random(1,6)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			else
				VJ_EmitSound(self,"vj_lnrhl2/zombine/gear"..math.random(1,3)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end
		
			if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or self:GetClass() == "npc_vj_totu_milzomb_tank" or self:GetClass() == "npc_vj_totu_fon_juggernaut" then
				VJ_EmitSound(self,"fx/footsteps/mil_big/step_"..math.random(1,4)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end
		end
			
			if self.MilZ_HasFlakSuit == true or self.MilZ_Det_IsDetonator then
				VJ_EmitSound(self,"fx/footsteps/mil_flak/step_"..math.random(1,4)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end
		if self:GetClass() == "npc_vj_totu_nightkin_squaller" && self.ToTU_Nightkin_Squaller_UsingIronWill then
			VJ_EmitSound(self,"zombies/countryside/onlookers/squaller/step_"..math.random(1,9)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end
		if self:GetClass() == "npc_vj_totu_nightkin_scylla" then
			VJ_EmitSound(self,"zombies/countryside/goliath/step_"..math.random(1,5)..".wav",75,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end
		if self:GetClass() == "npc_vj_totu_weaponized_smog" then
			VJ_EmitSound(self,"monsters/tesla/tesla_biped_walk_0"..math.random(1,5)..".wav",75,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
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
	
	if key == "split" then
		if self:GetClass() == "npc_vj_totu_weaponized_carcass" or self:GetClass() == "npc_vj_totu_weaponized_cazador" then
			self:ToTU_Carcass_Split()
		end
	end
	
	if key == "attack" then
		self:MeleeAttackCode()
	end
	
	if key == "attack_range" then
		self:RangeAttackCode() 
	end
	
	if key == "drop_weapon" then
		self:DropTheFuckignWeaponGoddamn()
	end
	
	if key == "death" then
	
		VJ_EmitSound(self,"physics/body/body_medium_impact_soft"..math.random(1,7)..".wav",75,100)
		
		self:DropTheFuckignWeaponGoddamn()
		
		if self.MilZ_IsMilZ then
		
			if !self.MilZ_Det_IsDetonator && !self.MilZ_Airman_IsAirman then
				VJ_EmitSound(self,"vj_lnrhl2/zombine/gear"..math.random(1,3)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end
			
			if 
				self.MilZ_HasFlakSuit == true or 
				self:GetClass() == "npc_vj_totu_milzomb_detonator" or 
				self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk"
			then
				VJ_EmitSound(self,"fx/footsteps/mil_flak/step_"..math.random(1,4)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end
			
		end
		
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or self:GetClass() == "npc_vj_totu_milzomb_tank" or self:GetClass() == "npc_vj_totu_fon_juggernaut" then
			VJ_EmitSound(self,"fx/footsteps/mil_big/step_"..math.random(1,4)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			util.ScreenShake(self:GetPos(), self.WorldShakeOnMoveAmplitude, self.WorldShakeOnMoveFrequency, self.WorldShakeOnMoveDuration, self.WorldShakeOnMoveRadius)
		end
		
		if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
			util.ScreenShake(self:GetPos(), self.WorldShakeOnMoveAmplitude, self.WorldShakeOnMoveFrequency, self.WorldShakeOnMoveDuration, self.WorldShakeOnMoveRadius)
		end
		
		if self:GetClass() == "npc_vj_totu_nightkin_squaller" then
			VJ_EmitSound(self,"zombies/countryside/onlookers/squaller/step_"..math.random(1,9)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end
		
		if self:GetClass() == "npc_vj_totu_nightkin_scylla" then
			VJ_EmitSound(self,"zombies/countryside/goliath/step_"..math.random(1,5)..".wav",75,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			VJ_EmitSound(self,"zombies/weaponized/smog/step_"..math.random(1,5)..".wav",75,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			util.ScreenShake(self:GetPos(), self.WorldShakeOnMoveAmplitude, self.WorldShakeOnMoveFrequency, self.WorldShakeOnMoveDuration, self.WorldShakeOnMoveRadius)
		end
		
		if self:GetClass() == "npc_vj_totu_weaponized_smog" then
			util.ScreenShake(self:GetPos(), self.WorldShakeOnMoveAmplitude, self.WorldShakeOnMoveFrequency, self.WorldShakeOnMoveDuration, self.WorldShakeOnMoveRadius)
		end
		
	end
	
	if key == "death" && self:WaterLevel() > 0 && self:WaterLevel() < 3 then
        VJ_EmitSound(self,"ambient/water/water_splash"..math.random(1,3)..".wav",75,100)
	end
	
	if key == "rip_flesh_LH" then
			ParticleEffectAttach("blood_impact_red_01_chunk",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
			ParticleEffectAttach("blood_impact_red_01_goop",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
			self:EmitSound(Sound("physics/flesh/flesh_squishy_impact_hard"..math.random(1,4)..".wav", 100, math.random(100,95)))
			self:EmitSound(Sound("physics/body/body_medium_break"..math.random(2,4)..".wav", 100, math.random(100,95)))
	end
	
	if key == "rip_flesh_RH" then
			ParticleEffectAttach("blood_impact_red_01_chunk",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
			ParticleEffectAttach("blood_impact_red_01_goop",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
			self:EmitSound(Sound("physics/flesh/flesh_squishy_impact_hard"..math.random(1,4)..".wav", 100, math.random(100,95)))
			self:EmitSound(Sound("physics/body/body_medium_break"..math.random(2,4)..".wav", 100, math.random(100,95)))
	end
	
	-- mispelled it oops
	if key == "eat_flesh_LR" then
			ParticleEffectAttach("blood_impact_red_01_chunk",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
			ParticleEffectAttach("blood_impact_red_01_mist",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
			ParticleEffectAttach("blood_impact_red_01_smalldroplets",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
			self:EmitSound(Sound("barnacle/bcl_chew"..math.random(1,3)..".wav", 100, math.random(100,95)))
	end
	
	if key == "eat_flesh_RH" then
			ParticleEffectAttach("blood_impact_red_01_chunk",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
			ParticleEffectAttach("blood_impact_red_01_mist",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
			ParticleEffectAttach("blood_impact_red_01_smalldroplets",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
			self:EmitSound(Sound("barnacle/bcl_chew"..math.random(1,3)..".wav", 100, math.random(100,95)))
	end
	
	if key == "break_door" then
	
		if IsValid(self.LNR_DoorToBreak) then
		
			local doorDmg = self.MeleeAttackDamage
			local door = self.LNR_DoorToBreak
		
			VJ_CreateSound(self,self.SoundTbl_BeforeMeleeAttack,self.BeforeMeleeAttackSoundLevel,self:VJ_DecideSoundPitch(self.BeforeMeleeAttackSoundPitch.a, self.BeforeMeleeAttackSoundPitch.b))

				if door:GetModel() == "models/props_c17/door01_left.mdl" then
					if 
						door:GetSkin() == 0 or
						door:GetSkin() == 1 or
						door:GetSkin() == 2 or
						door:GetSkin() == 3 or
						door:GetSkin() == 10 or
						door:GetSkin() == 11 or
						door:GetSkin() == 13
					then
						if self.ToTU_BigZombie or self.ToTU_GiantZombie then
							VJ_EmitSound(door,"fx/doorhit/wood_heavy_"..math.random(1,3)..".mp3",100,100)
						else
							VJ_EmitSound(door,"fx/doorhit/wood_weak_"..math.random(1,3)..".mp3",100,100)
						end
					
					elseif
						door:GetSkin() == 4 or
						door:GetSkin() == 5 or
						door:GetSkin() == 6 or
						door:GetSkin() == 7 or
						door:GetSkin() == 8 or
						door:GetSkin() == 9 or
						door:GetSkin() == 12
					then
						VJ_EmitSound(door,"fx/doorhit/metal_heavy_"..math.random(1,3)..".mp3",100,100)
						if self.ToTU_BigZombie or self.ToTU_GiantZombie then
							VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",100,100)
						else
							VJ_EmitSound(door,"fx/doorhit/train_wagon_weak_"..math.random(1,3)..".mp3",100,100)
						end
					end
					
				elseif
					door:GetModel() == "models/props_c17/door02_double.mdl" or
					door:GetModel() == "models/props_doors/doormain01.mdl" or
					door:GetModel() == "models/props_doors/doormain01_airport_small.mdl" or
					door:GetModel() == "models/props_doors/doormain01_airport.mdl" or
					door:GetModel() == "models/props_doors/doormain01_small.mdl" or
					door:GetModel() == "models/props_doors/doormain_rural01.mdl" or
					door:GetModel() == "models/props_doors/doormain_rural01_small.mdl" or
					door:GetModel() == "models/props_downtown/door_interior_128_01.mdl" or
					door:GetModel() == "models/props_downtown/door_interior_112_01.mdl"
				then
					if self.ToTU_BigZombie or self.ToTU_GiantZombie then
						VJ_EmitSound(door,"fx/doorhit/wood_heavy_"..math.random(1,3)..".mp3",100,100)
					else
						VJ_EmitSound(door,"fx/doorhit/wood_weak_"..math.random(1,3)..".mp3",100,100)
					end
			
			elseif 
				door:GetModel() == "models/props_c17/door01_left.mdl" or
				door:GetModel() == "models/combine_gate_vehicle.mdl" or
				door:GetModel() == "models/combine_gate_citizen.mdl" or
				door:GetModel() == "models/props_combine/combine_door01.mdl" or
				door:GetModel() == "models/props_c17/door03_left.mdl" or
				door:GetModel() == "models/props_doors/checkpoint_door_-02.mdl" or
				door:GetModel() == "models/props_doors/checkpoint_door_02.mdl" or
				door:GetModel() == "models/props_doors/door03_slotted_left.mdl" or
				door:GetModel() == "models/props_doors/doorfreezer01.mdl" or
				door:GetModel() == "models/props_doors/doorklab01.mdl" or
				door:GetModel() == "models/props_doors/doormainmetalsmall01.mdl" or
				door:GetModel() == "models/props_doors/doormainmetal01.mdl" or
				door:GetModel() == "models/props_doors/doormainmetalwindow01.mdl" or
				door:GetModel() == "models/props_doors/doormainmetalwindowsmall01.mdl" or
				door:GetModel() == "models/props_downtown/metal_door_112.mdl"
			then
				if 
					door:GetModel() == "models/combine_gate_vehicle.mdl" or
					door:GetModel() == "models/combine_gate_citizen.mdl" or
					door:GetModel() == "models/props_combine/combine_door01.mdl" or
					door:GetModel() == "models/props_c17/door03_left.mdl" or
					door:GetModel() == "models/props_doors/checkpoint_door_-02.mdl" or
					door:GetModel() == "models/props_doors/checkpoint_door_02.mdl" or
					door:GetModel() == "models/props_doors/door03_slotted_left.mdl" or
					door:GetModel() == "models/props_doors/doorfreezer01.mdl" or
					door:GetModel() == "models/props_doors/doorklab01.mdl" or
					door:GetModel() == "models/props_doors/doormainmetalsmall01.mdl" or
					door:GetModel() == "models/props_doors/doormainmetal01.mdl" or
					door:GetModel() == "models/props_doors/doormainmetalwindow01.mdl" or
					door:GetModel() == "models/props_doors/doormainmetalwindowsmall01.mdl" or
					door:GetModel() == "models/props_downtown/metal_door_112.mdl"
				then
					VJ_EmitSound(door,"fx/doorhit/metal_heavy_"..math.random(1,3)..".mp3",100,100)
					if self.ToTU_BigZombie or self.ToTU_GiantZombie then
						VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",100,100)
					else
						VJ_EmitSound(door,"fx/doorhit/train_wagon_weak_"..math.random(1,3)..".mp3",100,100)
					end
				end
			
			elseif 
				door:GetModel() == "models/props_lab/elevatordoor.mdl" or
				door:GetModel() == "models/props_mining/elevator01_cagedoor.mdl"
			then
				VJ_EmitSound(door,"fx/doorhit/wire_heavy_"..math.random(1,3)..".mp3",100,100)
				VJ_EmitSound(door,"fx/doorhit/grid_metal_heavy_"..math.random(1,4)..".mp3",100,100)
			elseif 
				door:GetModel() == "models/props_mining/techgate01.mdl" or
				door:GetModel() == "models/props_doors/checkpoint_door_01.mdl" or
				door:GetModel() == "models/props_doors/checkpoint_door_-01.mdl" 
			then
				VJ_EmitSound(door,"fx/doorhit/grid_metal_heavy_"..math.random(1,4)..".mp3",100,100)
				VJ_EmitSound(door,"fx/doorhit/metal_heavy_"..math.random(1,3)..".mp3",100,100)
				if self.ToTU_BigZombie or self.ToTU_GiantZombie then
					VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",100,100)
				else
					VJ_EmitSound(door,"fx/doorhit/train_wagon_weak_"..math.random(1,3)..".mp3",100,100)
				end
				
			elseif 
				door:GetModel() == "models/props_doors/door_rotate_112.mdl"
			then
				if self.ToTU_BigZombie or self.ToTU_GiantZombie then
					VJ_EmitSound(door,"physics/glass/glass_impact_hard"..math.random(1,3)..".wav",100,100)
					VJ_EmitSound(door,"physics/glass/glass_bottle_impact_hard"..math.random(1,3)..".wav",100,100)
					VJ_EmitSound(door,"physics/glass/glass_sheet_impact_hard"..math.random(1,3)..".wav",100,100)
				else
					VJ_EmitSound(door,"physics/glass/glass_sheet_impact_hard"..math.random(1,3)..".wav",100,100)
				end
				
			elseif door:GetModel() == "models/props_doors/doorglassmain01.mdl" or
				door:GetModel() == 	"models/props_doors/door_sliding_112.mdl" or
				door:GetModel() == 	"models/props_doors/doorglassmain01_small.mdl" 
			then
			
				VJ_EmitSound(door,"fx/doorhit/wire_heavy_"..math.random(1,3)..".mp3",100,100)
				if self.ToTU_BigZombie or self.ToTU_GiantZombie then
					VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",100,100)
				else
					VJ_EmitSound(door,"fx/doorhit/train_wagon_weak_"..math.random(1,3)..".mp3",100,100)
				end
			
			
			else
				VJ_EmitSound(door,"physics/wood/wood_panel_impact_hard1.wav",75,100)
			end
			
			if 
				self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or 
				self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or 
				self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" or 
				self:GetClass() == "npc_vj_totu_milzomb_tank" or 
				self:GetClass() == "npc_vj_totu_weaponized_smog" or 
				self:GetClass() == "npc_vj_totu_nightkin_scylla" or
				self:GetClass() == "npc_vj_totu_fon_juggernaut" 
			then
				util.ScreenShake(self:GetPos(), self.WorldShakeOnMoveAmplitude, self.WorldShakeOnMoveFrequency, self.WorldShakeOnMoveDuration, self.WorldShakeOnMoveRadius)
			end
			
			if door.DoorHealth == nil then
				door.DoorHealth = 200 - doorDmg
			elseif door.DoorHealth <= 0 then
				VJ_EmitSound(self,self.SoundTbl_MeleeAttackMiss,self.MeleeAttackMissSoundLevel,self:VJ_DecideSoundPitch(self.MeleeAttackMissSoundPitch.a,self.MeleeAttackMissSoundPitch.b))
			return -- To prevent door props making a duplication when it shouldn't
			else
				door.DoorHealth = door.DoorHealth - doorDmg
			end
			
		if (door:GetClass() == "prop_door_rotating" or 
			door:GetClass() == "func_door_rotating" or
			door:GetClass() == "prop_door_dynamic") &&
			door.DoorHealth <= 0 then
			
			if self.ToTU_BigZombie or self.ToTU_GiantZombie then
				if math.random(1,3) == 1 then
					self:VJ_ACT_PLAYACTIVITY("vjseq_Run_Stumble_01",true,false,false)
				else
					self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,false,false)
				end
			else
				self:VJ_ACT_PLAYACTIVITY(ACT_STEP_FORE,true,1.6)
			end
			
			if math.random(1,100) == 1 && GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
				VJ_EmitSound(self,"fx/egg/OHYEAH.mp3",100,100)
			end
			
			if 
				door:GetModel() == "models/props_c17/door01_left.mdl" or 
				door:GetModel() == "models/props_c17/door02_double.mdl" or
				door:GetModel() == "models/props_doors/doormain01.mdl" or
				door:GetModel() == "models/props_doors/doormain01_airport_small.mdl" or
				door:GetModel() == "models/props_doors/doormain01_airport.mdl" or
				door:GetModel() == "models/props_doors/doormain01_small.mdl" or
				door:GetModel() == "models/props_doors/doormain_rural01.mdl" or
				door:GetModel() == "models/props_doors/doormain_rural01_small.mdl" or
				door:GetModel() == "models/props_downtown/door_interior_128_01.mdl" or
				door:GetModel() == "models/props_downtown/door_interior_112_01.mdl"
			then
				if door:GetModel() == "models/props_c17/door01_left.mdl" then
					if 
						door:GetSkin() == 0 or
						door:GetSkin() == 1 or
						door:GetSkin() == 2 or
						door:GetSkin() == 3 or
						door:GetSkin() == 10 or
						door:GetSkin() == 11 or
						door:GetSkin() == 13
					then
						door:EmitSound("physics/wood/wood_furniture_break"..math.random(1,2)..".wav",75,100)
						ParticleEffect("door_explosion_chunks",door:GetPos(),door:GetAngles(),nil)
					end
				elseif
					door:GetModel() == "models/props_c17/door02_double.mdl" or
					door:GetModel() == "models/props_doors/doormain01.mdl" or
					door:GetModel() == "models/props_doors/doormain01_airport_small.mdl" or
					door:GetModel() == "models/props_doors/doormain01_airport.mdl" or
					door:GetModel() == "models/props_doors/doormain01_small.mdl" or
					door:GetModel() == "models/props_doors/doormain_rural01.mdl" or
					door:GetModel() == "models/props_doors/doormain_rural01_small.mdl" or
					door:GetModel() == "models/props_downtown/door_interior_128_01.mdl" or
					door:GetModel() == "models/props_downtown/door_interior_112_01.mdl"
				then
					door:EmitSound("physics/wood/wood_furniture_break"..math.random(1,2)..".wav",75,100)
					ParticleEffect("door_explosion_chunks",door:GetPos(),door:GetAngles(),nil)
				end
				
			elseif 
				door:GetModel() == "models/props_c17/door01_left.mdl" or 
				door:GetModel() == "models/combine_gate_vehicle.mdl" or
				door:GetModel() == "models/combine_gate_citizen.mdl" or
				door:GetModel() == "models/props_combine/combine_door01.mdl" or
				door:GetModel() == "models/props_c17/door03_left.mdl" or
				door:GetModel() == "models/props_doors/checkpoint_door_-02.mdl" or
				door:GetModel() == "models/props_doors/checkpoint_door_02.mdl" or
				door:GetModel() == "models/props_doors/door03_slotted_left.mdl" or
				door:GetModel() == "models/props_doors/doorfreezer01.mdl" or
				door:GetModel() == "models/props_doors/doorklab01.mdl" or
				door:GetModel() == "models/props_doors/doormainmetalsmall01.mdl" or
				door:GetModel() == "models/props_doors/doormainmetal01.mdl" or
				door:GetModel() == "models/props_doors/doormainmetalwindow01.mdl" or
				door:GetModel() == "models/props_doors/doormainmetalwindowsmall01.mdl" or
				door:GetModel() == "models/props_downtown/metal_door_112.mdl" or
				door:GetModel() == "models/props_lab/elevatordoor.mdl" or
				door:GetModel() == "models/props_mining/elevator01_cagedoor.mdl" or
				door:GetModel() == "models/props_mining/techgate01.mdl" or
				door:GetModel() == "models/props_doors/checkpoint_door_01.mdl" or
				door:GetModel() == "models/props_doors/checkpoint_door_-01.mdl" or
				door:GetModel() == "models/props_doors/doorglassmain01.mdl" or
				door:GetModel() == 	"models/props_doors/door_sliding_112.mdl" or
				door:GetModel() == 	"models/props_doors/doorglassmain01_small.mdl" 
			then
				if door:GetModel() == "models/props_c17/door01_left.mdl" then
					if
						door:GetSkin() == 4 or
						door:GetSkin() == 5 or
						door:GetSkin() == 6 or
						door:GetSkin() == 7 or
						door:GetSkin() == 8 or
						door:GetSkin() == 9 or
						door:GetSkin() == 12
					then
						door:EmitSound("physics/metal/metal_box_break"..math.random(1,2)..".wav",75,100)
					end
				elseif 
					door:GetModel() == "models/props_c17/door01_left.mdl" or 
					door:GetModel() == "models/combine_gate_vehicle.mdl" or
					door:GetModel() == "models/combine_gate_citizen.mdl" or
					door:GetModel() == "models/props_combine/combine_door01.mdl" or
					door:GetModel() == "models/props_c17/door03_left.mdl" or
					door:GetModel() == "models/props_doors/checkpoint_door_-02.mdl" or
					door:GetModel() == "models/props_doors/checkpoint_door_02.mdl" or
					door:GetModel() == "models/props_doors/door03_slotted_left.mdl" or
					door:GetModel() == "models/props_doors/doorfreezer01.mdl" or
					door:GetModel() == "models/props_doors/doorklab01.mdl" or
					door:GetModel() == "models/props_doors/doormainmetalsmall01.mdl" or
					door:GetModel() == "models/props_doors/doormainmetal01.mdl" or
					door:GetModel() == "models/props_doors/doormainmetalwindow01.mdl" or
					door:GetModel() == "models/props_doors/doormainmetalwindowsmall01.mdl" or
					door:GetModel() == "models/props_downtown/metal_door_112.mdl" or
					door:GetModel() == "models/props_lab/elevatordoor.mdl" or
					door:GetModel() == "models/props_mining/elevator01_cagedoor.mdl" or
					door:GetModel() == "models/props_mining/techgate01.mdl" or
					door:GetModel() == "models/props_doors/checkpoint_door_01.mdl" or
					door:GetModel() == "models/props_doors/checkpoint_door_-01.mdl" or
					door:GetModel() == "models/props_doors/doorglassmain01.mdl" or
					door:GetModel() == 	"models/props_doors/door_sliding_112.mdl" or
					door:GetModel() == 	"models/props_doors/doorglassmain01_small.mdl" 
				then
					door:EmitSound("physics/metal/metal_box_break"..math.random(1,2)..".wav",75,100)
				end
			end
			
			-- else
			
			-- end
			
			door:EmitSound("ambient/materials/door_hit1.wav",75,100)
			ParticleEffect("door_pound_core",door:GetPos(),door:GetAngles(),nil)
			
			if door:GetClass() == "prop_door_rotating" then
				local doorgib = ents.Create("prop_physics")
				doorgib:SetPos(door:GetPos())
				doorgib:SetAngles(door:GetAngles())
				doorgib:SetModel(door:GetModel())
				doorgib:SetSkin(door:GetSkin())
				doorgib:SetBodygroup(1,door:GetBodygroup(1))
				doorgib:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
				doorgib:SetSolid(SOLID_NONE)
				doorgib:Spawn()
				if self.ToTU_GiantZombie then
					doorgib:GetPhysicsObject():ApplyForceCenter(self:GetForward()*15000)
				elseif self.ToTU_BigZombie then
					doorgib:GetPhysicsObject():ApplyForceCenter(self:GetForward()*10000)
				else
					doorgib:GetPhysicsObject():ApplyForceCenter(self:GetForward()*5000)
				end
				SafeRemoveEntityDelayed(doorgib,30)
				door:Remove()
			end
			
			if door:GetClass() == "func_door_rotating" then
				local doorgibs = ents.Create("prop_dynamic")
				doorgibs:SetPos(door:GetPos())
				doorgibs:SetModel("models/props_c17/FurnitureDresser001a.mdl")
				doorgibs:Spawn()
				doorgibs:TakeDamage(9999)
				doorgibs:Fire("break")		
				door:Remove()
			end
			
			if door:GetClass() == "prop_door_dynamic" then
				door.ToTU_DynamDoor_Broken = true
				door:Open()
				
				
				local spark = ents.Create("env_spark")
				spark:SetKeyValue("Magnitude","8")
				spark:SetKeyValue("Spark Trail Length","3")
				spark:SetPos(door:GetPos())
				spark:SetAngles(door:GetAngles())
				spark:SetParent(door)
				spark:Spawn()
				spark:Activate()
				spark:Fire("StartSpark","",0)
				spark:Fire("StopSpark","",2)
				self:DeleteOnRemove(spark)
				
				door:SetRenderFX(5)
				
				timer.Simple(2,function() if IsValid(door) then
					door:Fire("Kill","",0.07)
				end end)
			end

	
	end
	end
end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	
	if (self:GetClass() == "npc_vj_totu_milzomb_ghost" or self:GetClass() == "npc_vj_totu_milzomb_ghost_walker") && !self.MilZ_Ghost_CloakBroke then
		if IsValid(self) then
			self:RemoveAllDecals()
		end
	end

	if
		GetConVar("VJ_LNR_BreakDoors"):GetInt() == 0 or
		self.LNR_Crawler or self.LNR_Crippled or
		self.Dead or
		self.DeathAnimationCodeRan or
		self.Flinching or
		self:GetSequence() == self:LookupSequence("nz_spawn_climbout_fast") or
		self:GetSequence() == self:LookupSequence("nz_spawn_jump") or
		self:GetSequence() == self:LookupSequence("shove_forward_01") or
		self:GetSequence() == self:LookupSequence("infectionrise") or
		self:GetSequence() == self:LookupSequence("infectionrise2") or
		self:GetSequence() == self:LookupSequence("slumprise_a") or
		self:GetSequence() == self:LookupSequence("slumprise_a2") or
		self.MeleeAttacking == true or
		self.RangeAttacking == true or
		self.LeapAttacking == true
	then 
		self.LNR_DoorToBreak = NULL return 
	end
	
	if VJ_AnimationExists(self,ACT_OPEN_DOOR) then
		if !IsValid(self.LNR_DoorToBreak) then
			if ((!self.VJ_IsBeingControlled) or (self.VJ_IsBeingControlled && self.VJ_TheController:KeyDown(IN_DUCK))) then
				for _,v in pairs(ents.FindInSphere(self:GetPos(),40)) do
					if v:GetClass() == "func_door_rotating" && v:Visible(self) then self.LNR_DoorToBreak = v end
					if v:GetClass() == "prop_door_dynamic" && !v.ToTU_DynamDoor_Broken && v:Visible(self) then self.LNR_DoorToBreak = v end
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
		    if self.PlayingAttackAnimation or !self.LNR_DoorToBreak:Visible(self) /*or (self:GetActivity() == ACT_OPEN_DOOR && dist <= 100)*/ then self.LNR_DoorToBreak = NULL return end
			if self:GetActivity() != ACT_OPEN_DOOR then
				local ang = self:GetAngles()
				self:SetAngles(Angle(ang.x,(self.LNR_DoorToBreak:GetPos() -self:GetPos()):Angle().y,ang.z))
				self:VJ_ACT_PLAYACTIVITY(ACT_OPEN_DOOR,true,false,false)
			end
		end
	end
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink_AIEnabled()
	
	/*
	if self:IsOnFire() then
		if self.LNR_Infected then
			self.AnimTbl_Walk = {ACT_RUN_ON_FIRE}
			self.AnimTbl_Run = {ACT_RUN_ON_FIRE}
		else
			self.AnimTbl_Walk = {ACT_WALK_ON_FIRE}
			self.AnimTbl_Run = {ACT_WALK_ON_FIRE}
		end
	else
		if self.LNR_Infected then
			if self.LNR_SuperSprinter then
				self.AnimTbl_Walk = {ACT_RUN_AIM}
				self.AnimTbl_Run = {ACT_RUN_AIM}
			elseif self.ToTU_Rusher then
				self.AnimTbl_Walk = {ACT_SPRINT}
				self.AnimTbl_Run = {ACT_RUN_RELAXED}
			else
				self.AnimTbl_Walk = {ACT_RUN}
				self.AnimTbl_Run = {ACT_SPRINT}
			end
		else
			if self.LNR_Runner then
				self.AnimTbl_Walk = {ACT_WALK}
				self.AnimTbl_Run = {ACT_RUN}
			else
				self.AnimTbl_Walk = {ACT_WALK}
				self.AnimTbl_Run = {ACT_WALK}
			end
		end
	end
	*/
	/*
	if self.VJ_IsBeingControlled == false && self.ToTU_CanSwapBetweenFloorAndFeet == true && self.ToTU_Crawling == true then
			local anim = {"vjseq_Crouch_to_stand"}				
			self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
            self:GetTheFuckUp()
			self.ToTU_Crawling = false
		end
	-- if self.VJ_IsBeingControlled == false && self.ToTU_CanSwapBetweenFloorAndFeet == true && self.ToTU_Crawling == false then
			-- local anim = {"vjseq_Stand_to_crouch"}				
			-- self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
            -- self:StartCrawling()
			-- self.ToTU_Crawling = true
		-- end
	
	if self.VJ_IsBeingControlled == true && self.ToTU_CanCrawl && self.VJ_TheController:KeyDown(IN_WALK) && self.ToTU_CanSwapBetweenFloorAndFeet == true then
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
		self.ToTU_CanSwapBetweenFloorAndFeet = false
		timer.Simple(1,function() if IsValid(self) then
			self.ToTU_CanSwapBetweenFloorAndFeet = true
		end end)
	end
	*/
	-- if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
		-- if self.MilZ_Jugg_NextRunT < CurTime() && self.MilZ_Jugg_RunTime !< 0 self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_STEP_BACK) && self:GetSequence() != self:LookupSequence(ACT_STEP_FORE) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_FLINCH_STOMACH) && self:GetSequence() != self:LookupSequence(ACT_GMOD_TAUNT_PERSISTENCE) then
			-- self.AnimTbl_Run = {ACT_RUN}
			-- self.MilZ_Jugg_RunTime = CurTime() + math.random(30,50)
			
	
					-- self.LNR_NextStumbleT = CurTime() + 7
					
-- ENT.MilZ_Jugg_NextRunT = 0
-- ENT.MilZ_Bulldozer_NextSprintT = 0
-- ENT.MilZ_Jugg_RunTime = 0
-- ENT.MilZ_Bulldozer_RunTime = 0


/*
if self.VJ_IsBeingControlled or GetConVar("VJ_ToTU_General_CanEat"):GetInt() == 0 then return end


		if !self.ToTU_IsEating && !self.Alerted && !self:IsBusy() && self.ToTU_Hungry then
			for _,v in ipairs(ents.FindInSphere(self:GetPos(),2600)) do
				if IsValid(v) && (v:GetClass() == "prop_ragdoll" or v:GetClass() == "obj_vj_gib") && v:GetClass() != "prop_physics" then
					self:SetTarget(v)
					self:VJ_TASK_GOTO_TARGET("TASK_WALK_PATH")
				end
			for _,v in ipairs(ents.FindInSphere(self:GetPos(),20)) do
			
				-- if self.ToTU_IsEating && !IsValid(v) then
					-- self.ToTU_IsEating = false
					-- local anim = {"vjseq_Crouch_to_stand"}				
					-- self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
						
					-- if self.LNR_UsingRelaxedIdle then
						-- self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
					-- else	
						-- self.AnimTbl_IdleStand = {ACT_IDLE}
					-- end
						
					-- if GetConVar("vj_npc_nowandering"):GetInt() == 0 then
						-- self.DisableWandering = true -- Disables wandering when the SNPC is idle
					-- end
					-- self.CanTurnWhileStationary = true
				-- end
	
				if IsValid(v) && (v:GetClass() == "prop_ragdoll" or v:GetClass() == "obj_vj_gib") && v:GetClass() != "prop_physics" then
			
					local eattime = math.Rand(15, 30) -- How long it should sleep
					self.ToTU_IsEating = true				
					local anim = {"vjseq_Stand_to_crouch"}				
					self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
					self.AnimTbl_IdleStand = {ACT_HL2MP_IDLE_CROUCH_ZOMBIE_01}
					self:FaceCertainEntity(v)
					-- self:SetState(VJ_STATE_ONLY_ANIMATION, eattime)
					self.DisableWandering = true -- Disables wandering when the SNPC is idle
					self.CanTurnWhileStationary = false
					self.BringFriendsOnDeath = false
					
					v:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
			
					timer.Simple(eattime, function() -- Reset after eattime seconds
					
					if IsValid(self) && self.ToTU_IsEating == true then
						self.ToTU_IsEating = false
						local anim = {"vjseq_Crouch_to_stand"}				
						self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
						
						if self.LNR_UsingRelaxedIdle then
							self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
						else	
							self.AnimTbl_IdleStand = {ACT_IDLE}
						end
						
						if GetConVar("vj_npc_nowandering"):GetInt() == 0 then
							self.DisableWandering = true -- Disables wandering when the SNPC is idle
						end
						self.BringFriendsOnDeath = false
						self.CanTurnWhileStationary = true
						self.ToTU_NextEatTime = CurTime() + math.Rand(15, 45)
						
						if IsValid(v) then
							self.ToTU_Hungry = false
							v:EmitSound(Sound("physics/flesh/flesh_bloody_break.wav", 100, math.random(100,95)))
							
							if v:GetClass() != "obj_vj_gib" then
							self:CreateGibEntity("obj_vj_gib","models/gibs/humans/sgib_01.mdl",{BloodDecal="VJ_Blood_Red",Pos=v:LocalToWorld(Vector(0,0,0))})
							self:CreateGibEntity("obj_vj_gib","models/gibs/humans/mgib_02.mdl",{BloodDecal="VJ_Blood_Red",Pos=v:LocalToWorld(Vector(0,0,0))})
							self:CreateGibEntity("obj_vj_gib","models/gibs/humans/mgib_04.mdl",{BloodDecal="VJ_Blood_Red",Pos=v:LocalToWorld(Vector(0,0,0))})
							self:CreateGibEntity("obj_vj_gib","models/gibs/humans/mgib_05.mdl",{BloodDecal="VJ_Blood_Red",Pos=v:LocalToWorld(Vector(0,0,0))})
							self:CreateGibEntity("obj_vj_gib","models/gibs/humans/mgib_07.mdl",{BloodDecal="VJ_Blood_Red",Pos=v:LocalToWorld(Vector(0,0,0))})
	
							local effectBlood = EffectData()
							effectBlood:SetOrigin(v:GetPos() + v:OBBCenter())
							effectBlood:SetColor(VJ_Color2Byte(Color(127,0,0)))
							effectBlood:SetScale(120)
							util.Effect("VJ_Blood1",effectBlood)
		
							local bloodspray = EffectData()
							bloodspray:SetOrigin(v:GetPos())
							bloodspray:SetScale(8)
							bloodspray:SetFlags(3)
							bloodspray:SetColor(0)
							util.Effect("bloodspray",bloodspray)
							util.Effect("bloodspray",bloodspray)
							
							end 
							
							v:Remove()
						end
					end
				
				end)
			end
		end
	end
end
*/

	self:Zombie_CustomOnThink_AIEnabled()
	
	if self.ToTU_CanDodge && !self.LNR_Crawler && !self.LNR_Crippled then

		if
			self.MeleeAttacking or
			self.RangeAttacking or
			self.LeapAttacking or
			self.Dead or
			self:GetEnemy() == nil or
			self.LNR_Crawler or
			self.LNR_Crippled or
			self.ToTU_Crawling or
			self:GetActivity() == ACT_STEP_BACK or
			self:GetActivity() == ACT_STEP_FORE or
			self:GetActivity() == ACT_SMALL_FLINCH or
			self:GetActivity() == ACT_BIG_FLINCH or
			self:GetActivity() == ACT_FLINCH_STOMACH or
			self:GetActivity() == ACT_GMOD_SHOWOFF_STAND_01 or
			self:GetSequence() == self:LookupSequence("shove_forward_01") or
			self:GetSequence() == self:LookupSequence("Run_Stumble_01") 
		then return end

		local WalkerDodgeAnims = {ACT_STEP_LEFT, ACT_STEP_RIGHT}
		local InfectedDodgeAnims = {ACT_STRAFE_LEFT, ACT_STRAFE_RIGHT}
		local TheHammerIsOperationalAgain = self:GetEnemy()

		if self.ToTU_NextDodgeT < CurTime() then

			if self:GetEnemy() != nil && self:Visible(TheHammerIsOperationalAgain) && !self.VJ_IsBeingControlled && !self.ToTU_Dodge_CloseIn then

				if self.LNR_Infected then

					self:VJ_ACT_PLAYACTIVITY(InfectedDodgeAnims,true,false,false)

				else

					self:VJ_ACT_PLAYACTIVITY(WalkerDodgeAnims,true,false,false)

				end

				self.ToTU_NextDodgeT = CurTime() + math.random(5,15)

			end
			
			if self.VJ_IsBeingControlled then

				if
					(self.VJ_TheController:KeyDown(IN_JUMP) &&
					(self.VJ_TheController:KeyDown(IN_MOVELEFT)))
				then
				
					if self.LNR_Infected or self.ToTU_Mutated then

						self:VJ_ACT_PLAYACTIVITY(ACT_STRAFE_LEFT,true,false,false)

					else

						self:VJ_ACT_PLAYACTIVITY(ACT_STEP_LEFT,true,false,false)

					end

					self.ToTU_NextDodgeT = CurTime() + math.random(2,3)

				end

				if
					(self.VJ_TheController:KeyDown(IN_JUMP) &&
					(self.VJ_TheController:KeyDown(IN_MOVERIGHT)))
				then
				
					if self.LNR_Infected or self.ToTU_Mutated then

						self:VJ_ACT_PLAYACTIVITY(ACT_STRAFE_RIGHT,true,false,false)

					else

						self:VJ_ACT_PLAYACTIVITY(ACT_STEP_RIGHT,true,false,false)

					end

					self.ToTU_NextDodgeT = CurTime() + math.random(2,3)

				end

			end

		end

	end

	if self.Dead == false && self:GetEnemy() != nil && self.VJ_IsBeingControlled == false then
		local enemydist = self:GetPos():Distance(self:GetEnemy():GetPos())
		if self.ToTU_CanDodge then
			if enemydist >= 300 then
				self.ToTU_Dodge_CloseIn = false
			else
				self.ToTU_Dodge_CloseIn = true
			end
		end
	end

	if self.VJ_IsBeingControlled && !self.ToTU_Mutated then
		if self.VJ_TheController:KeyDown(IN_USE) && self.VJ_TheController:KeyDown(IN_RELOAD) then
	self:ToTU_Mutate()
	end
	end
	
	if self.VJ_IsBeingControlled && self.VJ_TheController:KeyDown(IN_ZOOM) && self.ToTU_CanJumpT < CurTime() && !self.LNR_Crippled && !self.LNR_Crawler then
	
	local doot = CreateSound(self.VJ_TheController, "hl1/fvox/blip.wav")
	doot:SetSoundLevel(0)
	doot:Play()
	
	if self.ToTU_CanJump then
    self:CapabilitiesRemove(bit.bor(CAP_MOVE_JUMP))
	self.ToTU_CanJump = false
	self.VJ_TheController:ChatPrint("Jumping disabled.")
	
	else
	self:CapabilitiesAdd(bit.bor(CAP_MOVE_JUMP))
	self.ToTU_CanJump = true
	self.VJ_TheController:ChatPrint("Jumping enabled.")
	end
					self.ToTU_CanJumpT = CurTime() + 1
	end
	

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()
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

	if self.ToTU_Nightkin_Squaller_UsingIronWill or self:GetClass() == "npc_vj_totu_weaponized_cyst" then return end

	self:SetMaterial("lnr/bonemerge")
	
	if IsValid(self.WeaponModel) then
		self.WeaponModel:SetMaterial("lnr/bonemerge")
		self.WeaponModel:DrawShadow(false)
	end
	
	if IsValid(self.bobm) then
		self.bobm:SetMaterial("lnr/bonemerge")
		self.bobm:DrawShadow(false)
	end
	
	self:DrawShadow(false)
	self:AddFlags(FL_NOTARGET)
	self.GodMode = true
	self.MovementType = VJ_MOVETYPE_STATIONARY
	self.CanTurnWhileStationary = false
	self.HasSounds = false
	self.HasPoseParameterLooking = false
	self.DisableFindEnemy = true		
	self.CallForHelp = false
	
	if self:GetClass() == "npc_vj_totu_milzomb_detonator"  or self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
		self.MilZ_Det_Beep_CanBeep = false
	end
	
	if self:GetClass() == "npc_vj_totu_milzomb_ghost" or self:GetClass() == "npc_vj_totu_milzomb_ghost_walker" then
		self.MilZ_Ghost_CloakT = CurTime() + 1.3
	end
	
	timer.Simple(1.3,function() if IsValid(self) then
	
		if GetConVar("VJ_ToTU_Spawn_AlertSound"):GetInt() == 1 then
			VJ_CreateSound(self,self.SoundTbl_Alert,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.AlertSoundPitch.a, self.AlertSoundPitch.b))
		end
		
		self:SetMaterial()
		
		if IsValid(self.WeaponModel) then
			self.WeaponModel:SetMaterial()
			self.WeaponModel:DrawShadow(true)
		end
		
		if IsValid(self.bobm) then
			self.bobm:SetMaterial()
			self.bobm:DrawShadow(true)
		end
		
		self:DrawShadow(true)
		self:RemoveFlags(FL_NOTARGET)
		self.GodMode = false
		self:DoChangeMovementType(VJ_MOVETYPE_GROUND)
		self.HasSounds = true
		self.HasPoseParameterLooking = true
        self.DisableFindEnemy = false		
		self.CallForHelp = true
		
		
		if math.random(1,100) == 1 && GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
	    self:VJ_ACT_PLAYACTIVITY({"vjseq_reanimated"},true,false,false)
		else
	    self:VJ_ACT_PLAYACTIVITY({"vjseq_nz_spawn_climbout_fast","vjseq_nz_spawn_jump"},true,false,false)
		end
	    VJ_EmitSound(self,"vj_lnrhl2/shared/dirtintro"..math.random(1,2)..".wav",75,100)
		ParticleEffect("advisor_plat_break",self:GetPos(),self:GetAngles(),self)
		ParticleEffect("strider_impale_ground",self:GetPos(),self:GetAngles(),self)
		
	if self:GetClass() == "npc_vj_totu_milzomb_detonator" or self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
		self.MilZ_Det_Beep_CanBeep = true
	end
	
	end end)
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RiseFromGround_Instant()

	
		if GetConVar("VJ_ToTU_Spawn_AlertSound"):GetInt() == 1 then
			VJ_CreateSound(self,self.SoundTbl_Alert,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.AlertSoundPitch.a, self.AlertSoundPitch.b))
		end
		
	    self:VJ_ACT_PLAYACTIVITY({"vjseq_nz_spawn_climbout_fast","vjseq_nz_spawn_jump"},true,false,false)
	    VJ_EmitSound(self,"vj_lnrhl2/shared/dirtintro"..math.random(1,2)..".wav",75,100)
		ParticleEffect("advisor_plat_break",self:GetPos(),self:GetAngles(),self)
		ParticleEffect("advisor_plat_break",self:GetPos()+self:GetUp()*50,self:GetAngles(),self)
		ParticleEffect("advisor_plat_break",self:GetPos()+self:GetUp()*-50,self:GetAngles(),self)
		ParticleEffect("strider_impale_ground",self:GetPos(),self:GetAngles(),self)
		ParticleEffect("strider_impale_ground",self:GetPos()+self:GetUp()*50,self:GetAngles(),self)
		ParticleEffect("strider_impale_ground",self:GetPos()+self:GetUp()*-50,self:GetAngles(),self)
		
		-- effectData:SetOrigin(self:GetPos()+self:GetForward()*100)
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Mutate()

	self.ToTU_Mutated = true

	self:VJ_ACT_PLAYACTIVITY({"vjseq_Idle_Alert_Injured_Straight_02"},true,false,false)

	self.HasIdleSounds = false
	self.HasAlertSounds = false
	self.HasMeleeAttack = false

	local mutatesounds = {
		"test/mutate_1.wav",
		"test/mutate_2.wav",
		"test/mutate_3.wav",
		}

	VJ_EmitSound(self,mutatesounds,90,math.random(100,95))

	timer.Simple(1,function() if IsValid(self) then
		self:ToTU_Mutate_PainSound()
	end end)

	timer.Simple(2.5,function() if IsValid(self) then
		self:ToTU_Mutate_PainSound()
	end end)

	timer.Simple(4,function() if IsValid(self) then
		VJ_EmitSound(self,mutatesounds,90,math.random(100,95))
		self:ToTU_Mutate_PainSound()
	end end)

	timer.Simple(5.5,function() if IsValid(self) then
		self:ToTU_Mutate_PainSound()
	end end)

	timer.Simple(7,function() if IsValid(self) then
		self:ToTU_Mutate_PainSound()
	end end)

	timer.Simple(7.5,function() if IsValid(self) then
	if self:GetClass() == "npc_vj_totu_milzomb_tank" then
		VJ_EmitSound(self,self.SoundTbl_Death,70,math.random(50,60))
	elseif self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
		VJ_EmitSound(self,self.SoundTbl_Death,70,math.random(75,65))
	else
		VJ_EmitSound(self,self.SoundTbl_Death,70,math.random(100,95))
	end
	end end)

	timer.Simple(10,function() if IsValid(self) then
		self.HasMeleeAttack = true
	end end)

	timer.Simple(8,function() if IsValid(self) then

		VJ_EmitSound(self,"fx/ironwill_start.mp3",90,math.random(100,95))

        self.StartHealth = self.StartHealth *3
        self:SetHealth(self.StartHealth)

		local mymaxhealth = self:Health()
		self:SetMaxHealth(mymaxhealth)

		self.LNR_LegHP = self.LNR_LegHP *3

		self.Light1 = ents.Create("light_dynamic")
		self.Light1:SetKeyValue("brightness", "5")
		self.Light1:SetKeyValue("distance", "30")
		self.Light1:SetLocalPos(self:GetPos())
		self.Light1:SetLocalAngles(self:GetAngles())
		self.Light1:Fire("Color", "123 0 255 255")
		self.Light1:SetParent(self)
		self.Light1:Spawn()
		self.Light1:Activate()
		self.Light1:Fire("SetParentAttachment","chest")
		self.Light1:Fire("TurnOn", "", 0)
		self:DeleteOnRemove(self.Light1)

		self.Light2 = ents.Create("light_dynamic")
		self.Light2:SetKeyValue("brightness", "7")
		self.Light2:SetKeyValue("distance", "50")
		self.Light2:SetLocalPos(self:GetPos())
		self.Light2:SetLocalAngles(self:GetAngles())
		self.Light2:Fire("Color", "255 0 0 255")
		self.Light2:SetParent(self)
		self.Light2:Spawn()
		self.Light2:Activate()
		self.Light2:Fire("SetParentAttachment","eyes")
		self.Light2:Fire("TurnOn", "", 0)
		self:DeleteOnRemove(self.Light2)

		self.BeforeMeleeAttackSoundPitch = VJ_Set(65, 70)
		self.BeforeRangeAttackSoundPitch = VJ_Set(65, 70)
		self.BeforeLeapAttackSoundPitch = VJ_Set(65, 70)
		self.PainSoundPitch = VJ_Set(65, 70)
		self.DeathSoundPitch = VJ_Set(65, 70)

		if self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
			self.BeforeMeleeAttackSoundPitch = VJ_Set(45, 50)
			self.BeforeRangeAttackSoundPitch = VJ_Set(45, 50)
			self.BeforeLeapAttackSoundPitch = VJ_Set(45, 50)
			self.PainSoundPitch = VJ_Set(45, 50)
			self.DeathSoundPitch = VJ_Set(45, 50)
		end

		if self.LNR_Infected then

			self.AnimTbl_Walk = {ACT_SPRINT}
			self.AnimTbl_Run = {ACT_RUN_RELAXED}

		else

			self.AnimTbl_Walk = {ACT_RUN}
			self.AnimTbl_Run = {ACT_SPRINT}

		end

		self.ToTU_Rusher = true

	end end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Mutate_PainSound()
	if self:GetClass() == "npc_vj_totu_milzomb_tank" then
		VJ_EmitSound(self,self.SoundTbl_Pain,70,math.random(50,60))
	elseif self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
		VJ_EmitSound(self,self.SoundTbl_Pain,70,math.random(75,65))
	else
		VJ_EmitSound(self,self.SoundTbl_Pain,70,math.random(100,95))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnChangeActivity(newAct)
    if self.LNR_Crippled or self.LNR_Crawler or self.VJ_IsBeingControlled then self.NextIdleStandTime = 0 end 
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
	if self.ToTU_Weaponized_IsHL2Zomb then return end
    if self.LNR_Crawler or self.LNR_Crippled then
		self:SetPoseParameter("aim_pitch",0) 
		self:SetPoseParameter("spine_yaw",0)
		self.PoseParameterLooking_Names = {pitch={"head_pitch"}, yaw={"head_yaw"}, roll={}}
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_IntMsg(ply)

	ply:ChatPrint("INTERACT/USE + RELOAD: Mutate.")
	ply:ChatPrint("ZOOM: Toggle Jumping.")
		
	if GetConVar("VJ_LNR_BreakDoors"):GetInt() == 1 then

		ply:ChatPrint("DUCK/CROUCH Next to Door: Start breaking down door.")

	end
	
	if self.ToTU_CanDodge then

		ply:ChatPrint("LEFT/RIGHT + JUMP: Dodge")
		self.ToTU_NextDodgeT = 0
		-- self:ToTU_Mutate()

	end

	if self.MilZ_CanShuutDeGun == true && (!self.LNR_Infected or (self.LNR_Infected && !self.LNR_SuperSprinter && !self.ToTU_Rusher)) then
		ply:ChatPrint("RMB While Running: Shoot Gun")
	end
	
	if self.MilZ_HasGrenades == true then
		ply:ChatPrint("RMB: Throw Grenade")
	end

	-- ply:ChatPrint("LEFT/RIGHT + JUMP: Dodge")

	local badtotheboner = CreateSound(ply, "ui/pickup_guitarriff10.wav")
	badtotheboner:SetSoundLevel(40)
	badtotheboner:Play()

	-- self:Zombie_Controller_IntMsg(ply)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
	if self:GetClass() == "npc_vj_totu_nightkin_squaller" then
		net.Start("VJ_ToTU_Squaller_Hud")
		net.WriteBool(false)
		net.WriteEntity(self)
		net.Send(ply)

		function self.VJ_TheControllerEntity:CustomOnStopControlling()
			net.Start("VJ_ToTU_Squaller_Hud")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.Send(ply)
		end
	elseif self.LNR_Walker then
		net.Start("vj_lnr_walker_hud")
		net.WriteBool(false)
		net.WriteEntity(self)
		net.Send(ply)

		function self.VJ_TheControllerEntity:CustomOnStopControlling()
			net.Start("vj_lnr_walker_hud")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.Send(ply)
		end
	else
		net.Start("vj_lnr_infected_hud")
		net.WriteBool(false)
		net.WriteEntity(self)
		net.Send(ply)
		
		function self.VJ_TheControllerEntity:CustomOnStopControlling()
			net.Start("vj_lnr_infected_hud")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.Send(ply)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAlert(ent)

	if self:GetClass() == "npc_vj_totu_weaponized_carcass" or self:GetClass() == "npc_vj_totu_weaponized_carcass_torso" then
	
		self.ToTU_Weaponized_Carcass_NextZombineRunT = CurTime() + math.random(3,7)
		
	end
	if self:GetClass() == "npc_vj_totu_weaponized_cyst" then
		self.ToTU_Weaponized_Carcass_NextZombineRunT = CurTime() + math.random(7,15)
	end
	
	if self.VJ_IsBeingControlled or self.LNR_Crawler or self.LNR_Crippled or self.ToTU_Weaponized_IsHL2Zomb then return end
	
	self.ToTU_NextDodgeT = CurTime() + math.random(5,10)

	if self.LNR_Infected then
	
		if self:GetClass() == "npc_vj_totu_milzomb_ghost" then
		
			self.AnimTbl_IdleStand = {ACT_IDLE_AIM_STEALTH}
			
		else
		
			self.AnimTbl_IdleStand = {ACT_IDLE_ANGRY}
			
		end
		
	end
	
	/*
	if self.ToTU_IsEating == true then -- Wake up if sleeping and play a special alert animation
		if self:GetState() == VJ_STATE_ONLY_ANIMATION then self:SetState() end
		self.ToTU_IsEating = false
		local anim = {"vjseq_Crouch_to_stand"}				
		self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
		self.BringFriendsOnDeath = true
		self.ToTU_NextEatTime = CurTime() + 20
	end
	*/
	
	if self:GetClass() == "npc_vj_totu_milzomb_detonator" or self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
		self.MilZ_Det_Beep_BeepT = 0
	end
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnResetEnemy()
	if self.VJ_IsBeingControlled or self.LNR_Crawler or self.LNR_Crippled or self.ToTU_Weaponized_IsHL2Zomb then return end
	if self.LNR_Infected then
		if self.LNR_UsingRelaxedIdle then
			self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
		else
			self.AnimTbl_IdleStand = {ACT_IDLE}
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMeleeAttack_AfterChecks(hitEnt, isProp)

	if self:IsOnFire() then hitEnt:Ignite(4) end
	
    if self.LNR_Biter && !isProp && !self.LNR_Crippled then	
		if hitEnt.IsVJBaseSNPC && VJ_PICK(hitEnt.CustomBlood_Particle) then 
			ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth")) 
		elseif (hitEnt:IsPlayer() or hitEnt:IsNPC() or hitEnt:IsNextBot()) then
			ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth")) 
		end
		
		if (hitEnt.IsVJBaseSNPC && hitEnt.MovementType == VJ_MOVETYPE_GROUND && !hitEnt.VJ_IsHugeMonster && !hitEnt.IsVJBaseSNPC_Tank) then	
			hitEnt:StopMoving()
			hitEnt:SetState(VJ_STATE_ONLY_ANIMATION)
			hitEnt:VJ_DoSetEnemy(self,true,true)
			local ang = self:GetAngles()
			hitEnt:SetAngles(Angle(ang.x,(self:GetPos() -hitEnt:GetPos()):Angle().y,ang.z))
			timer.Simple(self.SlowPlayerOnMeleeAttackTime,function() 
				if IsValid(hitEnt) && !self.PlayingAttackAnimation then
					hitEnt:SetState()
				end
			end)
		end	
	end	
	
    if IsValid(self.WeaponModel) && self.WeaponModel:GetModel() == "models/vj_lnrhl2/weapons/w_knife_ct.mdl" then	
		if hitEnt.IsVJBaseSNPC && VJ_PICK(hitEnt.CustomBlood_Particle) then
			ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH")) 
		elseif (hitEnt:IsPlayer() or hitEnt:IsNPC() or hitEnt:IsNextBot()) then
			ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH")) 
		end 
	end	
	
	if self.ToTU_Nightkin_IsKin or self.ToTU_Weaponized_IsHL2Zomb then

		if hitEnt.IsVJBaseSNPC && VJ_PICK(hitEnt.CustomBlood_Particle) then

			-- ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,hitEnt,self:LookupAttachment(""))
			-- ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,hitEnt,self:LookupAttachment(""))
			
			ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
			ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))

		elseif (hitEnt:IsPlayer() or hitEnt:IsNPC() or hitEnt:IsNextBot()) then

			ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
			ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
			-- ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,hitEnt,self:LookupAttachment(""))

		end 

	end
	
    if hitEnt:IsPlayer() && hitEnt:Health() < self.MeleeAttackDamage + 1 then
       VJ_LNR_SetPlayerZombie(hitEnt,self,self)	
	end
	
	if GetConVar("VJ_LNR_InfectionHit"):GetInt() == 0 then return end
	
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
	if self.LNR_Biter then
		if self.MeleeAttacking && !self:IsMoving() && self:GetSequence() != self:LookupSequence("choke_eat") then
			self.PlayingAttackAnimation = false
			self:StopAttacks(false)
			self.vACT_StopAttacks = false	
			self:VJ_ACT_PLAYACTIVITY("vjseq_choke_miss",true,false,true)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMeleeAttack_BeforeStartTimer(seed)

	self:Zombie_CustomOnMeleeAttack_BeforeStartTimer(seed)

	if
		self:GetClass() == "npc_vj_totu_milzomb_detonator" or
		self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" or
		(self:GetClass() == "npc_vj_totu_nightkin_shrieker" && self.ToTU_Nightkin_Shrieker_CanShriek) or
		self.ToTU_Weaponized_IsHL2Zomb then
	return end

	-- Melee Sounds	--
	if self.LNR_Biter && !self.LNR_Crippled then
		
        self.SoundTbl_MeleeAttackExtra = {
        "vj_lnrhl2/shared/melee/zombie_bite1.wav",
        "vj_lnrhl2/shared/melee/zombie_bite2.wav",
        "vj_lnrhl2/shared/melee/zombie_bite3.wav"
		}
		
		self.SoundTbl_MeleeAttack = {
			""
		}
	elseif self.ToTU_Nightkin_IsKin then
        self.SoundTbl_MeleeAttackExtra = {
"vj_lnrhl2/shared/melee/zombie_slice_1.wav",
"vj_lnrhl2/shared/melee/zombie_slice_2.wav",
"vj_lnrhl2/shared/melee/zombie_slice_3.wav",
"vj_lnrhl2/shared/melee/zombie_slice_4.wav",
"vj_lnrhl2/shared/melee/zombie_slice_5.wav",
"vj_lnrhl2/shared/melee/zombie_slice_6.wav"
		}
		
		self.SoundTbl_MeleeAttack = {
			""
		}
	else
	        self.SoundTbl_MeleeAttackExtra = {
        ""
		}
		
		self.SoundTbl_MeleeAttack = {
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
	
    if IsValid(self.WeaponModel) then
	
		if self.WeaponModel:GetModel() == "models/vj_lnrhl2/weapons/w_knife_ct.mdl" then 
		
			self.SoundTbl_MeleeAttackExtra = {
				"weapons/knife/knife_hit1.wav",
				"weapons/knife/knife_hit2.wav",
				"weapons/knife/knife_hit3.wav",
				"weapons/knife/knife_hit4.wav",
				"weapons/knife/knife_stab.wav"
				}
	
			self.SoundTbl_MeleeAttack = {
				""
			}
		end
		
		if self.WeaponModel:GetModel() == "models/vj_weapons/w_glock.mdl" then
		
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
			
		end
	end

	-- When Crawling or Crippled --
    if (self.LNR_Crawler or self.LNR_Crippled) then
		if self.LNR_Walker then
			self.AnimTbl_MeleeAttack = {"vjseq_crawl_attack"}	
		elseif self.LNR_Infected then
			self.AnimTbl_MeleeAttack = {"vjseq_crawl_attack2"}
		end
	end
	
	if self.LNR_Crawler or self.LNR_Crippled then return end
	
	-- When Dismembered or for Biters --
	if self.LNR_Biter && !self.LNR_Crippled && !self.LNR_Crawler then
	
		if self:IsMoving() then
		
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
	
	
    if !self.LNR_Crawler or !self.LNR_Crippled or !self.LNR_Biter or !self.ToTU_Crawling then

		-- When Standing --
		if !self:IsMoving() && !self.LNR_Biter then

			self.MeleeAttackAnimationAllowOtherTasks = false

			if self.ToTU_WeHaveAWeapon == true then
		
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
			
			-- if self.ToTU_Mutated then
				-- self.AnimTbl_MeleeAttack = {
					-- "vjges_nz_attack_run_ad_1",
					-- "vjges_nz_attack_run_ad_2",
					-- "vjges_nz_attack_run_ad_3",
					-- "vjges_nz_attack_run_ad_4",
					-- "vjges_nz_attack_run_au_1",
					-- "vjges_nz_attack_run_au_2",
					-- "vjges_nz_attack_run_au_3",
						-- "vjges_nz_attack_run_au_4"
						-- }	
			-- end
		
		end

		-- When Walking --
		if self:IsMoving() && !self.LNR_Crawler && !self.LNR_Crippled && !self.LNR_Biter && self.ToTU_CanUseMovingAttacks then
		
		self.MeleeAttackAnimationAllowOtherTasks = true
			if self.ToTU_WeHaveAWeapon == true then
		
				if 
					self:GetActivity() == ACT_RUN or
					self:GetActivity() == ACT_SPRINT or
					self:GetActivity() == ACT_RUN_PISTOL or
					self:GetActivity() == ACT_RUN_AIM_PISTOL or
					self:GetActivity() == ACT_RUN_AIM or
					self:GetActivity() == ACT_RUN_RELAXED or
					self:GetActivity() == ACT_RUN_ON_FIRE
				then
			
					self.AnimTbl_MeleeAttack = {"vjges_nz_attack_run_ad_right_only_1",
						"vjges_nz_attack_run_ad_right_only_2",
						"vjges_nz_attack_run_ad_right_only_4",
						"vjges_nz_attack_run_au_right_only_1",
						"vjges_nz_attack_run_au_right_only_2",
						"vjges_nz_attack_run_au_right_only_4"}
					
				elseif
					self:GetActivity() == ACT_WALK or
					self:GetActivity() == ACT_WALK_AIM or
					self:GetActivity() == ACT_WALK_PISTOL 
				then
				
					self.AnimTbl_MeleeAttack = {"vjges_nz_attack_walk_ad_right_only_1",
					"vjgesnz_attack_walk_au_right_only_1"
					}
					
				end
				
			end
				
			if self.ToTU_UseCIAttacks && !self.ToTU_WeHaveAWeapon then
				self.AnimTbl_MeleeAttack = {
					"vjges_CI_Melee_Moving01",
					"vjges_CI_Melee_Moving02",
					"vjges_CI_Melee_Moving03",
					"vjges_CI_Melee_Moving04",
					"vjges_CI_Melee_Moving05",
					"vjges_CI_Melee_Moving06"
				}
			end
				
			if !self.ToTU_WeHaveAWeapon && !self.ToTU_UseCIAttacks then
			
				if self:GetActivity() == ACT_RUN or
					self:GetActivity() == ACT_RUN_AIM or
					self:GetActivity() == ACT_SPRINT or
					self:GetActivity() == ACT_RUN_RELAXED or
					self:GetActivity() == ACT_RUN_ON_FIRE
				then
				
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
	
		end
    end		
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnMeleeAttack_BeforeStartTimer(seed)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnFlinch_BeforeFlinch(dmginfo,hitgroup)

	if self:GetClass() == "npc_vj_totu_weaponized_cyst" then return end
	if GetConVar("VJ_ToTU_General_Stumbling_Disable"):GetInt() == 1 then return end
	if
		self.LNR_Crawler or
		self.LNR_Crippled or
		self.ToTU_Crawling or
		self:GetActivity() == ACT_STEP_BACK or
		self:GetActivity() == ACT_STEP_FORE or
		self:GetActivity() == ACT_SMALL_FLINCH or
		self:GetActivity() == ACT_BIG_FLINCH or
		self:GetActivity() == ACT_FLINCH_STOMACH or
		self:GetActivity() == ACT_GMOD_SHOWOFF_STAND_01 or
		self:GetActivity() == ACT_WALK_CROUCH_AIM or
		self:GetActivity() == ACT_RUN_STEALTH or
		self:GetSequence() == self:LookupSequence("Hunter_Crawl") or
		self:GetSequence() == self:LookupSequence("mudguy_run") or
		self:GetSequence() == self:LookupSequence("jump_attack") or
		self:GetSequence() == self:LookupSequence("nz_spawn_jump") or
		self:GetSequence() == self:LookupSequence("nz_spawn_climbout_fast") or
		self:GetSequence() == self:LookupSequence("Run_Stumble_01")
	then
		self:ToTU_ResetFlinchHitgroups()
	return end
	
	if (dmginfo:GetDamage() >= 20 or dmginfo:GetDamageForce():Length() >= 5000 or bit.band(dmginfo:GetDamageType(), DMG_BUCKSHOT) != 0) && self:GetClass() != "npc_vj_totu_weaponized_carcass" && !self.MeleeAttacking then
		-- carcass flinch anims are broken, so dont run this but if it's a carcass
		-- VJ_EmitSound(self,{"player/survivor/voice/gambler/reactionnegative31.wav"},90,math.random(100,95))
		self.HitGroupFlinching_Values = {
		{HitGroup = {HITGROUP_HEAD}, Animation = {"vjges_ep_flinch_head"}}, 
		{HitGroup = {HITGROUP_STOMACH}, Animation = {"vjges_ep_flinch_chest"}}, 
		{HitGroup = {HITGROUP_CHEST}, Animation = {"vjges_ep_flinch_chest"}}, 
		{HitGroup = {HITGROUP_LEFTARM}, Animation = {"vjges_ep_flinch_leftArm"}}, 
		{HitGroup = {HITGROUP_RIGHTARM}, Animation = {"vjges_ep_flinch_rightArm"}},
		{HitGroup = {HITGROUP_RIGHTLEG}, Animation = {"vjseq_flinch_rightleg"}},
		{HitGroup = {HITGROUP_LEFTLEG}, Animation = {"vjseq_flinch_leftleg"}}
		}
	else
		-- VJ_EmitSound(self,{"player/survivor/voice/mechanic/reactionnegative02.wav"},90,math.random(100,95))
		self.HitGroupFlinching_Values = {
		{HitGroup = {HITGROUP_HEAD}, Animation = {"vjges_flinch_head_1","vjges_flinch_head_2","vjges_flinch_head_3"}}, 
		{HitGroup = {HITGROUP_STOMACH}, Animation = {"vjges_flinch_chest_1","vjges_flinch_chest_2","vjges_flinch_chest_3"}}, 
		{HitGroup = {HITGROUP_CHEST}, Animation = {"vjges_flinch_chest_1","vjges_flinch_chest_2","vjges_flinch_chest_3"}}, 
		{HitGroup = {HITGROUP_LEFTARM}, Animation = {"vjges_flinch_leftarm_1","vjges_flinch_leftarm_2","vjges_flinch_leftarm_3"}}, 
		{HitGroup = {HITGROUP_RIGHTARM}, Animation = {"vjges_flinch_rightarm_1","vjges_flinch_rightarm_2","vjges_flinch_rightarm_3"}},
		{HitGroup = {HITGROUP_RIGHTLEG}, Animation = {""}},
		{HitGroup = {HITGROUP_LEFTLEG}, Animation = {""}}
		}
	end
	
	

	if self.ToTU_CanDoTheFunny == false or self.LNR_Crawler or self.LNR_Crippled then return end
	

	if dmginfo:IsDamageType(DMG_CLUB) or dmginfo:IsDamageType(DMG_SLASH) or dmginfo:IsDamageType(DMG_GENERIC) or dmginfo:IsDamageType(DMG_SONIC) or dmginfo:IsDamageType(DMG_CRUSH) then
		
		if self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_GMOD_SHOWOFF_STAND_01) then
			if self.ToTU_GiantZombie then
				if dmginfo:GetDamage() >= 150 or dmginfo:GetDamageForce():Length() >= 45000 then
					if self.LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
						self.LNR_NextShoveT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					end
				elseif dmginfo:GetDamage() >= 100 or dmginfo:GetDamageForce():Length() >= 30000 then
					if self.LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
						self.LNR_NextShoveT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					end
				elseif dmginfo:GetDamage() <= 100 or dmginfo:GetDamageForce():Length() <= 30000 then
					if self.LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
						self.LNR_NextShoveT = CurTime() + 3
					end
				end
			elseif self.ToTU_BigZombie then
			-- VJ_EmitSound(self,{"ambient/fire/gascan_ignite1.wav","ambient/fire/ignite.wav"},100,math.random(100,95))
				if dmginfo:GetDamage() >= 100 or dmginfo:GetDamageForce():Length() >= 30000 then
					if self.LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
						self.LNR_NextShoveT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					end
				elseif dmginfo:GetDamage() >= 50 or dmginfo:GetDamageForce():Length() >= 15000 then
					if self.LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
						self.LNR_NextShoveT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					end
				elseif dmginfo:GetDamage() <= 50 or dmginfo:GetDamageForce():Length() <= 15000 then
					if self.LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
						self.LNR_NextShoveT = CurTime() + 3
					end
				end
			else
				if dmginfo:GetDamage() >= 30 or dmginfo:GetDamageForce():Length() >= 10000 then
					if self.LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
						self.LNR_NextShoveT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					end
				elseif dmginfo:GetDamage() >= 15 or dmginfo:GetDamageForce():Length() >= 5000 then
					if self.LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
						self.LNR_NextShoveT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					end
			elseif dmginfo:GetDamage() <= 15 or dmginfo:GetDamageForce():Length() <= 5000 then
				if self.LNR_NextShoveT < CurTime() then
					self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
					self.LNR_NextShoveT = CurTime() + 3
				end
			end
		end
	end
    return !self.LNR_Crawler && !self.LNR_Crippled && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_GMOD_SHOWOFF_STAND_01)
	end
	
	
	-- if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) then
	
	-- self.HitGroupFlinching_Values = {
		-- {HitGroup = {HITGROUP_HEAD}, Animation = {""}}, 
		-- {HitGroup = {HITGROUP_STOMACH}, Animation = {""}}, 
		-- {HitGroup = {HITGROUP_CHEST}, Animation = {""}}, 
		-- {HitGroup = {HITGROUP_LEFTARM}, Animation = {""}}, 
		-- {HitGroup = {HITGROUP_RIGHTARM}, Animation = {""}},
		-- {HitGroup = {HITGROUP_RIGHTLEG}, Animation = {""}},
		-- {HitGroup = {HITGROUP_LEFTLEG}, Animation = {""}}
	-- }
	
	-- return end
	
	if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) then
		if hitgroup == HITGROUP_HEAD or hitgroup == HITGROUP_CHEST or hitgroup == HITGROUP_STOMACH then
			if self.LNR_NextStumbleT < CurTime() && self:GetSequence() != self:LookupSequence(ACT_GMOD_SHOWOFF_STAND_01) && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) then
				-- if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
				if self.ToTU_GiantZombie then
					if dmginfo:GetDamage() >= 210 or dmginfo:GetDamageForce():Length() >= 48000 then
						if math.random (1,1) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
							self.LNR_NextStumbleT = CurTime() + 7			
						self:ToTU_ResetFlinchHitgroups()
						end
					elseif dmginfo:GetDamage() >= 120 or dmginfo:GetDamageForce():Length() >= 33000 then
						if math.random (1,2) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
							self.LNR_NextStumbleT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
						end
					else
						if math.random (1,3) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
							self.LNR_NextStumbleT = CurTime() + 3
						self:ToTU_ResetFlinchHitgroups()
						end
					end
				elseif self.ToTU_BigZombie then
			-- VJ_EmitSound(self,{"ambient/fire/gascan_ignite1.wav","ambient/fire/ignite.wav"},100,math.random(100,95))
					if dmginfo:GetDamage() >= 70 or dmginfo:GetDamageForce():Length() >= 16000 then
						if math.random (1,1) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
							self.LNR_NextStumbleT = CurTime() + 7			
						self:ToTU_ResetFlinchHitgroups()
						end
					elseif dmginfo:GetDamage() >= 40 or dmginfo:GetDamageForce():Length() >= 11000 then
						if math.random (1,2) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
							self.LNR_NextStumbleT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
						end
					else
						if math.random (1,3) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
							self.LNR_NextStumbleT = CurTime() + 3
						self:ToTU_ResetFlinchHitgroups()
						end
					end
				else
					if dmginfo:GetDamage() >= 55 or dmginfo:GetDamageForce():Length() >= 8000 then
						if math.random (1,1) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
							self.LNR_NextStumbleT = CurTime() + 7			
						self:ToTU_ResetFlinchHitgroups()
						end
					elseif dmginfo:GetDamage() >= 25 or dmginfo:GetDamageForce():Length() >= 5500 then
						if math.random (1,2) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
							self.LNR_NextStumbleT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
						end
					else
						if math.random (1,3) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
							self.LNR_NextStumbleT = CurTime() + 3
						self:ToTU_ResetFlinchHitgroups()
						end
					end
				end
			end
		elseif hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then		 
			if self.LNR_NextStumbleT < CurTime() && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_GMOD_SHOWOFF_STAND_01) then
				if self:GetActivity() == ACT_SPRINT or self:GetActivity() == ACT_RUN_AIM or self:GetActivity() == ACT_RUN_RELAXED or self:GetActivity() == ACT_RUN_AIM_PISTOL then
					if self.ToTU_GiantZombie then
					if dmginfo:GetDamage() >= 75 or dmginfo:GetDamageForce():Length() >= 15000 then
						self:VJ_ACT_PLAYACTIVITY("vjseq_Run_Stumble_01",true,false,false)
						self.LNR_NextStumbleT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					elseif dmginfo:GetDamage() <= 75 or dmginfo:GetDamageForce():Length() <= 15000 then
						if math.random (1,2) == 1 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,false,false)
							self.LNR_NextStumbleT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
						end
					end
					else
					if dmginfo:GetDamage() >= 20 or dmginfo:GetDamageForce():Length() >= 2500 then
						self:VJ_ACT_PLAYACTIVITY("vjseq_Run_Stumble_01",true,false,false)
						self.LNR_NextStumbleT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					elseif dmginfo:GetDamage() <= 20 or dmginfo:GetDamageForce():Length() <= 2500 then
						if math.random (1,2) == 1 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,false,false)
							self.LNR_NextStumbleT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
						end
					end
					end
				else
					if math.random (1,3) == 1 then
						self:VJ_ACT_PLAYACTIVITY(ACT_STEP_FORE,true,1.6)
						self.LNR_NextStumbleT = CurTime() + 3
						self:ToTU_ResetFlinchHitgroups()
					end
				end
			end
		end
	end
		

	
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_ResetFlinchHitgroups()

		-- VJ_EmitSound(self,{"player/survivor/voice/coach/reactionnegative07.wav"},90,math.random(100,95))
	self.HitGroupFlinching_Values = {
		{HitGroup = {HITGROUP_HEAD}, Animation = {""}}, 
		{HitGroup = {HITGROUP_STOMACH}, Animation = {""}}, 
		{HitGroup = {HITGROUP_CHEST}, Animation = {""}}, 
		{HitGroup = {HITGROUP_LEFTARM}, Animation = {""}}, 
		{HitGroup = {HITGROUP_RIGHTARM}, Animation = {""}},
		{HitGroup = {HITGROUP_RIGHTLEG}, Animation = {""}},
		{HitGroup = {HITGROUP_LEFTLEG}, Animation = {""}}
	}
	
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

	if IsValid(self.WeaponModel) && self.ToTU_WeHaveAWeapon then
	
		self.SoundTbl_MeleeAttack = {
			"vj_lnrhl2/shared/melee/hit_punch_01.wav",
			"vj_lnrhl2/shared/melee/hit_punch_02.wav",
			"vj_lnrhl2/shared/melee/hit_punch_03.wav",
			"vj_lnrhl2/shared/melee/hit_punch_04.wav",
			"vj_lnrhl2/shared/melee/hit_punch_05.wav",
			"vj_lnrhl2/shared/melee/hit_punch_06.wav",
			"vj_lnrhl2/shared/melee/hit_punch_07.wav",
			"vj_lnrhl2/shared/melee/hit_punch_08.wav"
			}
		self.SoundTbl_MeleeAttackExtra = {""}
		self.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss2.wav","npc/zombie/claw_miss1.wav"}
		
		self.MeleeAttackDamageType = DMG_CLUB
		self:CreateGibEntity("prop_physics",self.WeaponModel:GetModel(),{Pos=self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos,Ang=self:GetAngles()}) self.WeaponModel:SetMaterial("lnr/bonemerge") self.WeaponModel:DrawShadow(false) self.ToTU_WeHaveAWeapon = false
		self.WeaponModel:Remove()


				if self.VJ_IsBeingControlled then
					self.VJ_TheController:ChatPrint("You lost your weapon!")
	local badtotheboner = CreateSound(self.VJ_TheController, "common/warning.wav")
	badtotheboner:SetSoundLevel(0)
	badtotheboner:Play()
				end
		
		if self.MilZ_HasKnife == true then
			self.MeleeAttackBleedEnemy = false -- Should the enemy bleed when attacked by melee?
		end
		
		if self.MilZ_HasGun == true then	
			self.MilZ_HasGun = false
			
			if self.LNR_Walker then
				self.AnimTbl_Run = {ACT_WALK}
				
				if self.LNR_Runner then
					self.AnimTbl_Run = {ACT_RUN}
				end
			elseif self.LNR_Infected then
				if !self.LNR_SuperSprinter && !self.ToTU_Rusher then
					self.AnimTbl_Run = {ACT_SPRINT}
				end
			end
		end
		
		
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	
	if dmginfo:IsExplosionDamage() && GetConVar("VJ_ToTU_General_Stumbling_Disable"):GetInt() != 1 then
	
		if
		self.LNR_Crawler or
		self.LNR_Crippled or
		self.ToTU_Crawling or
		-- self:GetActivity() == ACT_SMALL_FLINCH or
		self:GetActivity() == ACT_BIG_FLINCH or
		self:GetActivity() == ACT_FLINCH_STOMACH or
		self:GetActivity() == ACT_GMOD_SHOWOFF_STAND_01 or
		self:GetSequence() == self:LookupSequence("Run_Stumble_01") 
		then return end
		
		if self.ToTU_NextSplodeStumbleT < CurTime() then
			if math.random(1,2) == 1 then
				if math.random(1,2) == 1 then
					self:VJ_ACT_PLAYACTIVITY("vjseq_Run_Stumble_01",true,false,false)
				else
					self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,false,false)
				end
			else
				self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
			end
		self.ToTU_NextSplodeStumbleT = CurTime() + 5
	end
   return !self.LNR_Crawler && !self.LNR_Crippled && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH)
	end

	if GetConVar("VJ_LNR_Cripple"):GetInt() == 1 && self:GetClass() != "npc_vj_totu_weaponized_cyst" && !self.ToTU_IsFreakOfNature then 
		if hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then
			self.LNR_LegHP = self.LNR_LegHP -dmginfo:GetDamage()
		end
	end
	
	if self.LNR_LegHP <= 0 && !self.LNR_Crippled && !self.ToTU_Nightkin_Squaller_UsingIronWill then
		self.LNR_Crippled = true
		self:Cripple()
		
		if self.ToTU_Crawling then return end
		
		if
			self:GetActivity() == ACT_RUN or
			self:GetActivity() == ACT_RUN_STEALTH or
			self:GetActivity() == ACT_RUN_PISTOL or
			self:GetActivity() == ACT_WALK_HURT or
			self:GetActivity() == ACT_RUN_AIM or
			self:GetActivity() == ACT_SPRINT or
			self:GetActivity() == ACT_RUN_RELAXED or
			self:GetActivity() == ACT_RUN_HURT or
			self:GetActivity() == ACT_RUN_AIM_PISTOL
		then
		
			self:VJ_ACT_PLAYACTIVITY("vjseq_Run_Stumble_01_Short",true,1,false)
			
		else
		
			local anim = {
			"vjseq_nz_death_1",
			"vjseq_nz_death_f_7",
			"vjseq_nz_death_f_8",
			"vjseq_nz_death_f_9",
			"vjseq_nz_death_f_11",
			"vjseq_nz_death_f_12"
			}
			self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
			
		end
		
	end		
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Cripple()

				if self.VJ_IsBeingControlled then
					self.VJ_TheController:ChatPrint("Your legs have been crippled!")
	local badtotheboner = CreateSound(self.VJ_TheController, "common/warning.wav")
	badtotheboner:SetSoundLevel(0)
	badtotheboner:Play()
	local badtomyballs = CreateSound(self.VJ_TheController,"physics/body/body_medium_break"..math.random(2,4)..".wav")
	badtomyballs:SetSoundLevel(40)
	badtomyballs:Play()
				end
	if self:GetClass() == "npc_vj_totu_weaponized_carcass" or self:GetClass() == "npc_vj_totu_weaponized_cazador" then
		self.AnimTbl_IdleStand = {ACT_IDLE_STIMULATED}
		self.AnimTbl_Walk = {ACT_IDLE_STIMULATED}
		self.AnimTbl_Run = {ACT_IDLE_STIMULATED}
		self.MovementType = VJ_MOVETYPE_STATIONARY
		self.ToTU_Weaponized_Carcass_CanZombineRun = false
		self.HasMeleeAttack = false
		self.HasLeapAttack = false
		self:SetCollisionBounds(Vector(13,13,20),Vector(-13,-13,0))
	return end

		self.MeleeAttackAnimationAllowOtherTasks = false	
		self.MeleeAttackDistance = 15
		self.MeleeAttackDamageDistance = 45	
		
self.HasLeapAttack = false 

	self.CanTurnWhileStationary = false
	self:DropTheFuckignWeaponGoddamn()
	self.HasRangeAttack = false
	
	if self.LNR_Walker then	 
		self.AnimTbl_IdleStand = {ACT_IDLE_STIMULATED}
		self.AnimTbl_Walk = {ACT_WALK_STIMULATED}
		self.AnimTbl_Run = {ACT_WALK_STIMULATED}
	elseif self.LNR_Infected or self.ToTU_Mutated then
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
	
	if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or self:GetClass() == "npc_vj_totu_milzomb_tank" then
		if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
			self.MeleeAttackDamage = math.Rand(10,15)
		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
			self.MeleeAttackDamage = math.Rand(15,20)
		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
			self.MeleeAttackDamage = math.Rand(25,30)
		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
			self.MeleeAttackDamage = math.Rand(30,35)
		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
			self.MeleeAttackDamage = math.Rand(35,40)
		end
		self.MeleeAttackKnockBack_Forward1 = 75
		self.MeleeAttackKnockBack_Forward2 = 100
		self.MeleeAttackKnockBack_Up1 = 25
		self.MeleeAttackKnockBack_Up2 = 50
	end
	
	if self:GetClass() == "npc_vj_totu_nightkin_shrieker" then
		self.ToTU_Nightkin_Shrieker_CanSpawnHelp = false
		self.ToTU_Nightkin_Shrieker_CanShriek = false
	end
	
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

	if self.ToTU_Weaponized_Carcass_Exploder == true then
		VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",100,math.random(100,95))
		VJ_EmitSound(self,{"npc/barnacle/barnacle_tongue_pull2.wav"},100,math.random(100,95))
		-- self:StopAllCommonSpeechSounds()
	end
	
	
	if 
		(self:GetClass() == "npc_vj_totu_weaponized_carcass" or self:GetClass() == "npc_vj_totu_weaponized_cyst") && 
		self.ToTU_Weaponized_Carcass_Exploder &&
		GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1
	then
		if math.random(1,100) == 1 then
			self.SoundTbl_Death = {"fx/egg/eminemvsibs.mp3",
			"fx/egg/chowder/omgmiaof.mp3",
			"fx/egg/chowder/omgmiaofvo.mp3"}
			self.DeathSoundLevel = 90
		end
	end
	
	if self:GetClass() == "npc_vj_totu_weaponized_cyst" then return end

	if (dmginfo:IsDamageType(DMG_BURN) or dmginfo:IsDamageType(DMG_SLOWBURN) or dmginfo:IsDamageType(DMG_ENERGYBEAM) or dmginfo:IsDamageType(DMG_DISSOLVE) or dmginfo:IsDamageType (DMG_PLASMA) or dmginfo:IsDamageType(DMG_SHOCK)) && self:GetSequence() != self:LookupSequence("jump_attack") then
		self.DeathAnimationChance = 1
	end
	
	if self:GetSequence() == self:LookupSequence("jump_attack") then
		self.AnimTbl_Death = {"vjseq_nz_death_expl_b_1"}	
	end
	
	if
		self.LNR_Crawler or
		self.LNR_Crippled or
		self.ToTU_Crawling or
		self:GetActivity() == ACT_SMALL_FLINCH or
		self:GetActivity() == ACT_BIG_FLINCH or
		self:GetActivity() == ACT_FLINCH_STOMACH or
		self:GetActivity() == ACT_GMOD_SHOWOFF_STAND_01 or
		self:GetSequence() == self:LookupSequence("Run_Stumble_01") 
	then
		self.HasDeathAnimation = false
	end
	
	self.ToTU_CanDoTheFunny = false
	self.CanFlinch = 0
	self:DropTheFuckignWeaponGoddamn()
	
	if self:GetClass() == "npc_vj_totu_milzomb_detonator" or self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
		if !self.MilZ_Det_DeathExplosionAllowed then
			self:CreateGibEntity("prop_physics",self.bobm:GetModel(),{Pos=self:GetAttachment(self:LookupAttachment("bobomb")).Pos,Ang=self:GetAngles()}) self.bobm:SetMaterial("lnr/bonemerge") self.bobm:DrawShadow(false) self.ToTU_WeHaveAWeapon = false
			self.bobm:Remove()	
		end
	end
	
	-- if self:GetClass() == "npc_vj_totu_milzomb_ghost" then
		-- self.MilZ_Ghost_CloakBroke = false
	-- end
	
    self:SetSolid(SOLID_NONE)
    self:AddFlags(FL_NOTARGET) -- So normal NPCs can stop shooting at the corpse.
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo,hitgroup)
	if self.LNR_Crawler then return end
	if self:GetClass() == "npc_vj_totu_weaponized_cyst" then return end
	if self:IsMoving() and dmginfo:IsBulletDamage() && GetConVar("VJ_ToTU_General_MovingDeathAnimations"):GetInt() == 1 && !self.ToTU_GiantZombie && !self.ToTU_IsFreakOfNature then
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
			if math.random(1,4) == 1 then
			self.AnimTbl_Death = {"vjseq_Standing_OnFire"}
			self.DeathAnimationTime = math.random(1,9.4)
			else
			self.AnimTbl_Death = {"vjseq_nz_death_fire_1",
			"vjseq_nz_death_fire_2"}
			end
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

    if dmginfo:IsExplosionDamage() or dmginfo:IsDamageType(DMG_CRUSH) or dmginfo:IsDamageType(DMG_VEHICLE) or dmginfo:IsDamageType(DMG_SONIC) or dmginfo:IsDamageType(DMG_PHYSGUN) or self:GetActivity() == ACT_GLIDE then
		self.AnimTbl_Death = {"vjseq_nz_death_expl_f_1",
		"vjseq_nz_death_expl_f_2",
		"vjseq_nz_death_expl_f_3",
		"vjseq_nz_death_expl_b_1",
		"vjseq_nz_death_expl_l_1",
		"vjseq_nz_death_expl_r_1"}	
	   self.DeathAnimationTime = 1
	end
	
    if dmginfo:IsDamageType(DMG_SHOCK) or dmginfo:IsDamageType(DMG_ENERGYBEAM) or dmginfo:IsDamageType(DMG_DISSOLVE) or dmginfo:IsDamageType (DMG_PLASMA) then
		self.ToTU_ZappyDeath = true
		self.AnimTbl_Death = {"vjseq_nz_death_elec_1",
		"vjseq_nz_death_elec_2",
		"vjseq_nz_death_elec_3",
		"vjseq_nz_death_elec_4"}
		self.DeathAnimationTime = math.random(1, 4.25)
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
function ENT:CustomOnDeath_BeforeCorpseSpawned(dmginfo, hitgroup)
	if self.ToTU_Weaponized_Carcass_Exploder == true then
		VJ_STOPSOUND(self.CurrentDeathSound)
		
		if math.random(1,100) == 1 && GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
			VJ_EmitSound(self,"test/laughnow.mp3",70,70)
			VJ_EmitSound(self,"test/laughnow.mp3",70,70)
			VJ_EmitSound(self,"test/laughnow.mp3",70,70)
			VJ_EmitSound(self,"test/laughnow.mp3",70,70)
			VJ_EmitSound(self,"test/laughnow.mp3",70,70)
		end
		if self:GetClass() == "npc_vj_totu_weaponized_cyst" then
			self:SetKeyValue("rendercolor","255 255 255 255")
		end
		util.VJ_SphereDamage(self, self, self:GetPos(), 75, 35, DMG_BLAST, true, true, {Force=50})
		if GetConVar("vj_LNR_Gib"):GetInt() == 1 then
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Big")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Big")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Big")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Big")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Small")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Small")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Small")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Small")
			if self:GetClass() == "npc_vj_totu_weaponized_cyst" then
				self:CreateGibEntity("prop_ragdoll", "models/skeleton/skeleton_leg_l.mdl")
				self:CreateGibEntity("prop_ragdoll", "models/skeleton/skeleton_arm_l.mdl")
				self:CreateGibEntity("prop_ragdoll", "models/skeleton/skeleton_arm.mdl")
				self:CreateGibEntity("prop_physics", "models/Gibs/HGIBS.mdl")
				self:CreateGibEntity("prop_physics", "models/Gibs/HGIBS_rib.mdl")
				self:CreateGibEntity("prop_physics", "models/Gibs/HGIBS_rib.mdl")
				self:CreateGibEntity("prop_physics", "models/Gibs/HGIBS_rib.mdl")
				self:CreateGibEntity("prop_physics", "models/Gibs/HGIBS_rib.mdl")
				self:CreateGibEntity("prop_physics", "models/Gibs/HGIBS_rib.mdl")
				self:CreateGibEntity("prop_physics", "models/Gibs/HGIBS_spine.mdl")
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo,hitgroup,GetCorpse)

	if self.ToTU_ZappyDeath == true && IsValid(GetCorpse) then
	
		ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,GetCorpse,GetCorpse:LookupAttachment("anim_attachment_head"))
		ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,GetCorpse,GetCorpse:LookupAttachment("anim_attachment_LH"))
		ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,GetCorpse,GetCorpse:LookupAttachment("anim_attachment_RH"))
		ParticleEffectAttach("smoke_gib_01",PATTACH_POINT_FOLLOW,GetCorpse,GetCorpse:LookupAttachment("chest"))
		
		timer.Simple(10,function() if IsValid (GetCorpse) then
			GetCorpse:StopParticles()
		end end)
		
	end
	
	if self:GetClass() == "npc_vj_totu_nightkin_squaller" && IsValid(GetCorpse) then
	
		if !self.ToTU_Nightkin_Squaller_HasIronWill then return end
	
		local AnimTime = VJ_GetSequenceDuration(self,"vjseq_infectionrise2")
		local RevSqSpawnH = self.StartHealth * 0.5
	
		timer.Simple(math.random(5,10),function() if IsValid(GetCorpse) then
	
			VJ_EmitSound(GetCorpse,"fx/ironwill_start.mp3",75,100)
		
			local RevivedSquall = ents.Create("npc_vj_totu_nightkin_squaller")			
			RevivedSquall.CanFlinch = 0
			RevivedSquall.HasDeathAnimation = false
			RevivedSquall.HasPoseParameterLooking = false
			RevivedSquall.DisableFindEnemy = true		
			RevivedSquall.DisableMakingSelfEnemyToNPCs = true
			RevivedSquall.CallForHelp = false
			RevivedSquall.ToTU_Nightkin_Squaller_UsingIronWill = true
			RevivedSquall.MovementType = VJ_MOVETYPE_STATIONARY
			RevivedSquall.CanTurnWhileStationary = false								
			RevivedSquall:SetPos(GetCorpse:GetPos())
			RevivedSquall:SetAngles(GetCorpse:GetAngles())
			RevivedSquall:Spawn()
			RevivedSquall:Activate()
			undo.ReplaceEntity(self,RevivedSquall)
			RevivedSquall:SetHealth(RevSqSpawnH)
			RevivedSquall:SetMaterial("lnr/bonemerge")
			
			if math.random(1,100) == 1 && GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
			VJ_EmitSound(RevivedSquall,"player/survivor/voice/biker/gettingrevived14.wav",80,100)
			end
				
			timer.Simple(0.08,function() if IsValid(RevivedSquall) then
				RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_infectionrise2",true,false,false)
				VJ_CreateSound(RevivedSquall,RevivedSquall.SoundTbl_GetUp,75,100)					
				RevivedSquall:SetMaterial()
				RevivedSquall:SetSkin(GetCorpse:GetSkin())
				RevivedSquall:SetPos(RevivedSquall:GetPos() + RevivedSquall:GetUp()*-6)
					
				if IsValid(GetCorpse) then
					GetCorpse:Remove()
				end
				
				timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
					RevivedSquall:DoChangeMovementType(VJ_MOVETYPE_GROUND)
					RevivedSquall.CanFlinch = 1
					RevivedSquall.HasSounds = true	
					RevivedSquall.HasDeathAnimation = true
					RevivedSquall.HasPoseParameterLooking = true
					RevivedSquall.DisableFindEnemy = false		
					RevivedSquall.DisableMakingSelfEnemyToNPCs = false
					RevivedSquall.CallForHelp = true	
					RevivedSquall.ToTU_Nightkin_Squaller_HasIronWill = false
				end end)
				
			end end)
			
		end end)
		
    end
	
	if self.ToTU_Weaponized_Carcass_Exploder == true then
	
		GetCorpse:EmitSound(Sound("zombies/residential/exploder/explode_ ("..math.random(1,3)..").wav", 100, math.random(100,100)))
		GetCorpse:EmitSound(Sound("zombies/residential/exploder/explode_ ("..math.random(1,3)..").wav", 100, math.random(100,100)))
		GetCorpse:EmitSound(Sound("zombies/residential/exploder/explode_ ("..math.random(1,3)..").wav", 100, math.random(100,100)))
		
		local bloodspray = EffectData()
		bloodspray:SetOrigin(GetCorpse:GetPos())
		bloodspray:SetScale(10)
		bloodspray:SetFlags(3)
		bloodspray:SetColor(0)
		util.Effect("bloodspray",bloodspray)
		util.Effect("bloodspray",bloodspray)
		
		if self:GetClass() == "npc_vj_totu_weaponized_cyst" then
			local bloodeffect = EffectData()
			bloodeffect:SetOrigin(GetCorpse:GetPos() +self:GetUp(20))
			bloodeffect:SetColor(VJ_Color2Byte(Color(127,0,0,255)))
			bloodeffect:SetScale(250)
			util.Effect("VJ_Blood1",bloodeffect)
		else
			local bloodeffect = EffectData()
			bloodeffect:SetOrigin(GetCorpse:GetPos())
			bloodeffect:SetColor(VJ_Color2Byte(Color(127,0,0,255)))
			bloodeffect:SetScale(125)
			util.Effect("VJ_Blood1",bloodeffect)
		end
		
		
		if self:GetClass() == "npc_vj_totu_weaponized_cyst" then
			for i=1,math.random(3,10) do
				local carproj = ents.Create("obj_vj_totu_bloodcoagle")
				carproj:SetPos(GetCorpse:LocalToWorld(Vector(0,0,0)))
				carproj:SetAngles(Angle(math.random(0,360),math.random(0,360),math.random(0,360)))
				carproj:SetOwner(GetCorpse)
				carproj:Spawn()
				carproj:Activate()
				local phys = carproj:GetPhysicsObject()
				if IsValid(phys) then
					phys:SetVelocity(Vector(math.Rand(-100,100),math.Rand(-100,100),math.Rand(0,200)) *2 +self:GetUp()*math.Rand(25,50))
				end
			end
		else
			for i=1,math.random(1,5) do
				local carproj = ents.Create("obj_vj_totu_bloodcoagle")
				carproj:SetPos(GetCorpse:LocalToWorld(Vector(0,0,0)))
				carproj:SetAngles(Angle(math.random(0,360),math.random(0,360),math.random(0,360)))
				carproj:SetOwner(GetCorpse)
				carproj:Spawn()
				carproj:Activate()
				local phys = carproj:GetPhysicsObject()
				if IsValid(phys) then
					phys:SetVelocity(Vector(math.Rand(-100,100),math.Rand(-100,100),math.Rand(0,200)) *2 +self:GetUp()*math.Rand(25,50))
				end
			end
		end
		
		util.ScreenShake(GetCorpse:GetPos(), 5, 500, 1.6, 1200)

	end
	
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/