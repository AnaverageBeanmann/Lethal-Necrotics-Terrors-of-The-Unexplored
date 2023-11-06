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
ENT.AnimTbl_Run = {ACT_WALK}
ENT.CanEat = true
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.CustomBlood_Particle = {"lnr_bullet_impact_01","lnr_bullet_impact_02","lnr_bullet_impact_03","lnr_bullet_impact_04"}
ENT.CustomBlood_Decal = {"VJ_TOTU_LNR_Blood_Red"}
ENT.CanFlinch = 1
ENT.FlinchChance = 1
ENT.NextFlinchTime = 1
ENT.HasHitGroupFlinching = true
ENT.HitGroupFlinching_DefaultWhenNotHit = true
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
ENT.TOTU_LNR_VirusInfection = true
ENT.TOTU_LNR_Walker = true
ENT.TOTU_LNR_Biter = false
ENT.TOTU_LNR_Runner = false
ENT.TOTU_LNR_Infected = false
ENT.TOTU_LNR_AllowedToStumble = true
ENT.TOTU_LNR_NextStumbleT = 0
ENT.TOTU_LNR_NextShoveT = 0
ENT.TOTU_LNR_UsingRelaxedIdle = false
ENT.TOTU_LNR_Crippled = false
ENT.TOTU_LNR_LegHP = 25
ENT.TOTU_LNR_CanBreakDoors = false
ENT.TOTU_LNR_CanBeHeadshot = true 
ENT.TOTU_LNR_DoorToBreak = NULL
ENT.TOTU_LNR_SuperSprinter = false

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
ENT.ToTU_Digout_DelayVis = false
ENT.ToTU_InstantDigout = false
ENT.ToTU_NextRestT = 0
ENT.ToTU_Resting = 0
	-- 0 = Not Resting
	-- 1 = Sitting
	-- 2 = Lying
ENT.ToTU_CanRest = false
ENT.ToTU_Deimos = false
ENT.ToTU_CanStumble = true
ENT.ToTU_IsStumbling = false

ENT.ToTU_NextDodgeT = 0
ENT.ToTU_CanDodge = false
ENT.ToTU_Dodge_CloseIn = false

ENT.ToTU_WorldShakeOnMoveAmplitude = 0

local TankProtectSounds = {
	"physics/metal/metal_sheet_impact_hard2.wav",
	"physics/metal/metal_sheet_impact_hard6.wav",
	"physics/metal/metal_sheet_impact_hard7.wav",
	"physics/metal/metal_sheet_impact_hard8.wav"
}

ENT.ToTU_TF2Mode = false
ENT.ToTU_FreakOfNature_Phase = 1

ENT.MiLZ_Tundra_IsTundraZomb = false

ENT.MilZ_IsMilZ = false
ENT.MilZ_Jugg_NextRunT = 0
ENT.MilZ_Bulldozer_NextSprintT = 0
ENT.MilZ_Jugg_RunTime = 0
ENT.MilZ_Bulldozer_RunTime = 0

ENT.ToTU_Almanac_Name = ""
ENT.ToTU_Almanac_Strain = ""
ENT.ToTU_Almanac_Toughness = ""

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
-- 1501 - 3000 HP - Uber-Undying
-- 3001 - 5000 HP - Overkill
-- 5001 - 9999 HP - Godlike
-- 9999+ HP - Invulnerable

ENT.ToTU_Almanac_Damage = ""

-- Less than 5 - Very Weak
-- 5-10 - Weak
-- 10-15 - Average
-- 15-25 - Strong
-- 25-35 - Dangerous
-- 35-45 - Devastating
-- 45-60 - Deadly
-- 100+ - Lethal

ENT.ToTU_Almanac_FlavorText = ""
ENT.ToTU_Almanac_Notes = ""
ENT.ToTU_Almanac_Notes2 = ""
ENT.ToTU_Almanac_Notes3 = ""
ENT.ToTU_Almanac_Notes4 = ""
ENT.ToTU_Almanac_Notes5 = ""
ENT.ToTU_Almanac_Gimmicks = ""
ENT.ToTU_Almanac_VoiceActor = ""
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
		"fx/footsteps/zombie_footstep_m_01.wav",
		"fx/footsteps/zombie_footstep_m_02.wav",
		"fx/footsteps/zombie_footstep_m_03.wav",
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
	"fx/hit_punch_01.wav",
	"fx/hit_punch_02.wav",
	"fx/hit_punch_03.wav",
	"fx/hit_punch_04.wav",
	"fx/hit_punch_05.wav",
	"fx/hit_punch_06.wav",
	"fx/hit_punch_07.wav",
	"fx/hit_punch_08.wav"}
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

	if GetConVar("VJ_TOTU_LNR_DeathAnimations"):GetInt() == 0 then

		self.HasDeathAnimation = false

	end

	if GetConVar("VJ_TOTU_LNR_Alert"):GetInt() == 0 then

		self.CallForHelp = false

	end

	if GetConVar("VJ_TOTU_LNR_BreakDoors"):GetInt() == 1 then

        self.TOTU_LNR_CanBreakDoors = true
		self.CanOpenDoors = false

	end

	if GetConVar("VJ_ToTU_General_RestingSystem"):GetInt() == 1 && !self.ToTU_Weaponized_IsHL2Zomb then

		self.ToTU_CanRest = true

	end

	if GetConVar("VJ_ToTU_General_DamageImmunity"):GetInt() == 1 then

		self.ImmuneDamagesTable = {DMG_RADIATION}

	elseif GetConVar("VJ_ToTU_General_DamageImmunity"):GetInt() == 2 then

		self.ImmuneDamagesTable = {DMG_NERVEGAS}

	elseif GetConVar("VJ_ToTU_General_DamageImmunity"):GetInt() == 3 then

		self.ImmuneDamagesTable = {DMG_RADIATION,DMG_NERVEGAS}

	end

	self:Zombie_CustomOnPreInitialize()
	self:Zombie_UpdateAlmanacStuff()

	if
		self:GetClass() == "npc_vj_totu_fon_juggernaut" or
		self:GetClass() == "npc_vj_totu_fon_gail" or
		self:GetClass() == "npc_vj_totu_fon_lament" or
		self:GetClass() == "npc_vj_totu_fon_bulldozer"
	then

		self.ToTU_IsFreakOfNature = true

		if self:GetClass() == "npc_vj_totu_fon_juggernaut" then

			self.HasSoundTrack = true
			self.SoundTrackVolume = 0.75
			self.SoundTbl_SoundTrack = {"fx/fonmusic/Gravity_Perforation_Detail.mp3"}

		end
		
		if self:GetClass() == "npc_vj_totu_fon_bulldozer" then

			self.HasSoundTrack = true
			self.SoundTrackVolume = 0.75
			self.SoundTbl_SoundTrack = {"fx/fonmusic/Cauterizer.mp3"}

		end

		if self:GetClass() == "npc_vj_totu_fon_gail" then

			self.HasSoundTrack = true
			self.SoundTrackVolume = 0.75
			self.SoundTbl_SoundTrack = {"fx/fonmusic/Casino_Deficento.mp3"}

		end

		if self:GetClass() == "npc_vj_totu_fon_lament" then

			self.HasSoundTrack = true
			self.SoundTrackVolume = 0.90
			self.SoundTbl_SoundTrack = {"fx/fonmusic/I'm_Alive_0.8.mp3"}

		end

	end

	if
		self:GetClass() == "npc_vj_totu_base_infected" or
		self:GetClass() == "npc_vj_totu_lnr_inf" or
		self:GetClass() == "npc_vj_totu_lnr_inf_ply" or
		self:GetClass() == "npc_vj_totu_milzomb_infected" or
		self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or
		self:GetClass() == "npc_vj_totu_milzomb_detonator" or
		self:GetClass() == "npc_vj_totu_milzomb_ghost" or
		self:GetClass() == "npc_vj_totu_workers_infected" or
		self:GetClass() == "npc_vj_totu_weaponized_smog" or
		self:GetClass() == "npc_vj_totu_milzomb_ghillie" or
		self:GetClass() == "npc_vj_totu_milzomb_airman_infected" or
		self:GetClass() == "npc_vj_totu_fon_bulldozer" or
		self:GetClass() == "npc_vj_totu_milzomb_hazmat_infected" or
		self.ToTU_Nightkin_IsKin
	then
		self.AnimTbl_Walk = {ACT_RUN}
		self.AnimTbl_Run = {ACT_SPRINT}
		self.TOTU_LNR_Walker = false
		self.TOTU_LNR_Infected = true
		self.ToTU_Almanac_Strain = "Strain: Infected"
	end

	if self:GetClass() == "npc_vj_totu_milzomb_detonator" then

		-- self.AnimTbl_MeleeAttack = {
			-- "vjseq_nz_sonic_attack_2",
			-- "vjseq_nz_death_microwave_2",
			-- "vjseq_nz_death_microwave_3",
		-- }

	end
	
	if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then

		-- self.AnimTbl_MeleeAttack = {
			-- "vjseq_nz_napalm_explode_1",
			-- "vjseq_nz_taunt_2",
			-- "vjseq_nz_taunt_7",
		-- }

		if GetConVar("VJ_ToTU_MilZ_Det_Bulk_NMRIHWalks"):GetInt() == 1 then

			self.AnimTbl_Run = {ACT_WALK_RELAXED}

		end


		self.TOTU_LNR_Walker = true
		self.TOTU_LNR_Infected = false

	end

	if self:GetClass() == "npc_vj_totu_base_infected" then

		self.Model = {"models/totu/testmonkinf.mdl"}

		self.ToTU_Almanac_FlavorText = "ToTU's other code backbone, atleast until the Walker had all the code merged."
		self.ToTU_Almanac_Notes = "Standard infected business."
		self.ToTU_Almanac_VoiceActor = "Effect 4/Flower (RB's Two Faces Mod)"

	end

	if
		self:GetClass() == "npc_vj_totu_milzomb_walker" or
		self:GetClass() == "npc_vj_totu_milzomb_infected" or
		self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or
		self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or
		self:GetClass() == "npc_vj_totu_nightkin_scragg" or
		self:GetClass() == "npc_vj_totu_weaponized_smog" or
		self:GetClass() == "npc_vj_totu_deimos_cancer" or
		self:GetClass() == "npc_vj_totu_deimos_reborn" or
		self:GetClass() == "npc_vj_totu_deimos_redead_grunt" or
		self:GetClass() == "npc_vj_totu_deimos_redead_guard" or
		self:GetClass() == "npc_vj_totu_deimos_redead_sci" or
		self:GetClass() == "npc_vj_totu_deimos_redead" or
		self:GetClass() == "npc_vj_totu_fon_juggernaut" or
		self:GetClass() == "npc_vj_totu_fon_bulldozer"
	then
		self.ToTU_CanDodge = true
	end

	if
		self:GetClass() == "npc_vj_totu_tundra_frostbite" or
		self:GetClass() == "npc_vj_totu_milzomb_walker_snowy" or
		self:GetClass() == "npc_vj_totu_milzomb_infected_snowy" or
		self:GetClass() == "npc_vj_totu_milzomb_juggernaut_snowy" or
		self:GetClass() == "npc_vj_totu_milzomb_bulldozer_snowy" or
		self:GetClass() == "npc_vj_totu_tundra_glacier"
	then
		self.MiLZ_Tundra_IsTundraZomb = true
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize() end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_UpdateAlmanacStuff() end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:VJ_TOTU_Deimos_CreateBoneMerge(targEnt,oldModel,oldSkin,bg)
	local creator = NULL
	if targEnt:IsNPC() then
		creator = IsValid(targEnt:GetCreator()) && targEnt:GetCreator()
		targEnt:SetCollisionBounds(Vector(13,13,72),Vector(-13,-13,0))
	end

	local body = ents.Create("vj_totu_lnr_infection")
	body:SetModel(oldModel)
	body:SetPos(targEnt:GetPos())
	body:SetAngles(targEnt:GetAngles())
	body.VJ_Owner = targEnt
	body:Spawn()
	body:SetParent(targEnt)
	body:SetSkin(oldSkin)
	body:SetColor(oldColor)
	body:SetMaterial(oldMaterial)		
	if bg then
			for i = 0,18 do
			--	body:SetBodygroup(i,bg[i])
			end			
		end
	targEnt.Bonemerge = body
	targEnt.BonemergeModel = oldModel
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()

	-- kills the zombie after half a second
	/*
	timer.Simple(0.5,function() if IsValid(self) then

		local d = DamageInfo()
		d:SetDamage(self:GetMaxHealth())
		d:SetAttacker(self)
		d:SetDamageType(DMG_GENERIC) 
		self:TakeDamageInfo(d)

	end end)
	*/

	self.ToTU_Almanac_Name = "-= "..self:GetName().." =-"

	if GetConVar("VJ_ToTU_General_NotZombieAllied"):GetInt() == 1 then
		self.VJ_NPC_Class = {"CLASS_TOTU"}
	end

	if GetConVar("VJ_ToTU_General_CanEat"):GetInt() == 0 then
		self.CanEat = false
	end

	if
		self:GetClass() == "npc_vj_totu_deimos_redead_inf" or
		self:GetClass() == "npc_vj_totu_deimos_redead_inf_ply" or
		self:GetClass() == "npc_vj_totu_deimos_reborn" or
		self:GetClass() == "npc_vj_totu_deimos_redead" or
		self:GetClass() == "npc_vj_totu_deimos_redead_sci" or
		self:GetClass() == "npc_vj_totu_deimos_redead_guard" or
		self:GetClass() == "npc_vj_totu_deimos_redead_grunt" or
		self:GetClass() == "npc_vj_totu_deimos_carcass" or
		self:GetClass() == "npc_vj_totu_deimos_carcass_torso" or
		self:GetClass() == "npc_vj_totu_deimos_cazador" or
		self:GetClass() == "npc_vj_totu_deimos_cazador_torso" or
		self:GetClass() == "npc_vj_totu_deimos_cyst" or
		self:GetClass() == "npc_vj_totu_deimos_cancer" or
		self:GetClass() == "npc_vj_totu_deimos_revenant" or
		self:GetClass() == "npc_vj_totu_deimos_corrupt" or
		self:GetClass() == "npc_vj_totu_deimos_corrupt_brute" or
		self:GetClass() == "npc_vj_totu_fon_gail" or
		self:GetClass() == "npc_vj_totu_fon_lament"
	then
		-- self.TOTU_LNR_VirusInfection = false
		self.TOTU_LNR_Walker = false
		self.TOTU_LNR_Infected = false
		self.ToTU_Deimos = true
		self.ToTU_Almanac_Strain = "Strain: Deimos"
	end

	if self.ToTU_Weaponized_IsHL2Zomb then

		self:Zombie_CustomOnInitialize()
		self:ZombieSounds()
		self:Zombie_Difficulty()

	return end

	self.ToTU_NextRestT = CurTime() + math.random(10,120)

	if self.TOTU_LNR_Walker then
		self.AnimTbl_Walk = {ACT_WALK_RELAXED}
	end

	if
		GetConVar("VJ_TOTU_LNR_Crawl"):GetInt() == 1 &&
		!self.ToTU_IsFreakOfNature &&
		(!self.ToTU_Deimos or
		self.ToTU_Deimos &&
		(self:GetClass() == "npc_vj_totu_deimos_redead" or
		self:GetClass() == "npc_vj_totu_deimos_redead_guard" or
		self:GetClass() == "npc_vj_totu_deimos_redead_sci" or
		self:GetClass() == "npc_vj_totu_deimos_redead_grunt" or
		self:GetClass() == "npc_vj_totu_deimos_revenant")) &&
		self:GetClass() != "npc_vj_totu_lnr_wal" &&
		self:GetClass() != "npc_vj_totu_lnr_wal_ply" &&
		self:GetClass() != "npc_vj_totu_lnr_inf" &&
		self:GetClass() != "npc_vj_totu_lnr_inf_ply" &&
		self:GetClass() != "npc_vj_totu_deimos_readead_inf" &&
		self:GetClass() != "npc_vj_totu_deimos_readead_inf_ply"
	then

		if math.random(1,GetConVar("VJ_ToTU_General_Crawler_Chance"):GetInt()) == 1 && GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() != 5 then

			self.TOTU_LNR_Crippled = true
			self:Cripple()

		end

	end

	if
		GetConVar("VJ_TOTU_LNR_GroundRise"):GetInt() == 1 &&
		( self:IsDirtGround(self:GetPos()) or GetConVar("VJ_ToTU_Spawn_UniversalDig"):GetInt() == 1 ) &&
		!self.ToTU_InstantDigout
	then
		if math.random(1,GetConVar("VJ_ToTU_Spawn_DigChance"):GetInt()) == 1 then
			if
				(self:GetClass() != "npc_vj_totu_deimos_redead" or
				(self:GetClass() == "npc_vj_totu_deimos_redead" && !self.ToTU_Weaponized_Redead_Infectee)) &&
				self:GetClass() != "npc_vj_totu_lnr_wal" &&
				self:GetClass() != "npc_vj_totu_lnr_wal_ply" &&
				self:GetClass() != "npc_vj_totu_lnr_inf" &&
				self:GetClass() != "npc_vj_totu_lnr_inf_ply" &&
				self:GetClass() != "npc_vj_totu_deimos_redead_inf" &&
				self:GetClass() != "npc_vj_totu_deimos_redead_inf_ply"
			then
				self:RiseFromGround()
			end
		end
	end

	if self.TOTU_LNR_Infected then
		if self:GetClass() == "npc_vj_totu_nightkin_squaller" then
			util.AddNetworkString("VJ_ToTU_Squaller_Hud")
		else
			util.AddNetworkString("VJ_TOTU_LNR_Infected_HUD")
		end
	end

	if self.TOTU_LNR_Walker then
		util.AddNetworkString("VJ_TOTU_LNR_Walker_HUD")
	end

	if self.ToTU_Deimos then
		util.AddNetworkString("VJ_TOTU_Deimos_HUD")
	end

	if !self.TOTU_LNR_Crippled then

		if
			math.random(1,3) == 1 &&
			!self.ToTU_Nightkin_Squaller_UsingIronWill &&
			self:GetClass() != "npc_vj_totu_milzomb_detonator" &&
			self:GetClass() != "npc_vj_totu_milzomb_detonator_bulk" &&
			self:GetClass() != "npc_vj_totu_milzomb_tank"
		then
			self.TOTU_LNR_UsingRelaxedIdle = true
			self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
		end

		if GetConVar("VJ_ToTU_General_Jump_DownOnly"):GetInt() == 1 then
			self.MaxJumpLegalDistance = VJ_Set(5, 550)
		end

		if self.TOTU_LNR_Walker && !self.ToTU_IsFreakOfNature && !self.ToTU_Deimos then

			if
				GetConVar("VJ_TOTU_LNR_Runner"):GetInt() == 1 &&
				math.random(1,GetConVar("VJ_ToTU_General_Runners_Chance"):GetInt()) == 1 &&
				!self.ToTU_IsFreakOfNature
			then
				if
					(self:GetClass() != "npc_vj_totu_milzomb_tank" && self:GetClass() != "npc_vj_totu_milzomb_detonator_bulk") or
					(self:GetClass() == "npc_vj_totu_milzomb_tank" && GetConVar("VJ_ToTU_MilZ_Tank_SubtypeBlacklisted"):GetInt() == 0) or
					(self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" && GetConVar("VJ_ToTU_MilZ_Det_Bulk_SubtypeBlacklisted"):GetInt() == 0)
				then
					self.TOTU_LNR_Runner = true
					self.AnimTbl_Walk = {ACT_WALK}
					self.AnimTbl_Run = {ACT_RUN}
				end
			end

			if
				GetConVar("VJ_TOTU_LNR_Biter"):GetInt() == 1 &&
				!self.ToTU_IsFreakOfNature
			then
				if
					math.random(1,GetConVar("VJ_TOTU_LNR_Biter_Chance"):GetInt()) == 1 && 
					self:GetClass() != "npc_vj_totu_milzomb_ghost_walker" && 
					self:GetClass() != "npc_vj_totu_milzomb_hazmat" && 
					self:GetClass() != "npc_vj_totu_milzomb_juggernaut" && 
					self:GetClass() != "npc_vj_totu_milzomb_tank" && 
					self:GetClass() != "npc_vj_totu_milzomb_ghillie_walker" && 
					self:GetClass() != "npc_vj_totu_fon_juggernaut" && 
					self:GetClass() != "npc_vj_totu_milzomb_airman" && 
					self:GetClass() != "npc_vj_totu_lnr_wal" && 
					self:GetClass() != "npc_vj_totu_lnr_wal_ply" && 
					self:GetClass() != "npc_vj_totu_milzomb_detonator_bulk" && 
					!self.MilZ_HasGasmask
				then
					self.TOTU_LNR_Biter = true
				end
			end

			if
				GetConVar("VJ_ToTU_General_Rushers_Allow"):GetInt() == 2 or
				GetConVar("VJ_ToTU_General_Rushers_Allow"):GetInt() == 3 or
				GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 or
				self:GetClass() == "npc_vj_totu_lnr_wal_ply"
			then
				if
					math.random(1,GetConVar("VJ_ToTU_General_Rushers_Chance"):GetInt()) == 1 or
					GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 or
					self:GetClass() == "npc_vj_totu_lnr_wal_ply"
				then
					if
						(self:GetClass() != "npc_vj_totu_milzomb_tank" && self:GetClass() != "npc_vj_totu_milzomb_detonator_bulk") or
						(self:GetClass() == "npc_vj_totu_milzomb_tank" && GetConVar("VJ_ToTU_MilZ_Tank_SubtypeBlacklisted"):GetInt() == 0) or
						(self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" && GetConVar("VJ_ToTU_MilZ_Det_Bulk_SubtypeBlacklisted"):GetInt() == 0)
					then
						self.AnimTbl_Walk = {ACT_RUN}
						self.AnimTbl_Run = {ACT_SPRINT}
						self.ToTU_Rusher = true
					end
				end
			end
		end

		if self.TOTU_LNR_Infected && !self.ToTU_IsFreakOfNature && !self.ToTU_Deimos then

			if 
				GetConVar("VJ_TOTU_LNR_SuperSprinter"):GetInt() == 1 &&
				self:GetClass() != "npc_vj_totu_nightkin_squaller" &&
				self:GetClass() != "npc_vj_totu_fon_bulldozer" && 
				!self.ToTU_IsFreakOfNature 
			then 
				if math.random(1,GetConVar("VJ_ToTU_General_SuperSprinters_Chance"):GetInt()) == 1 then
					if
						(self:GetClass() != "npc_vj_totu_milzomb_detonator" && self:GetClass() != "npc_vj_totu_nightkin_scylla") or
						(self:GetClass() == "npc_vj_totu_milzomb_detonator" && GetConVar("VJ_ToTU_MilZ_Det_SubtypeBlacklisted"):GetInt() == 0) or
						(self:GetClass() == "npc_vj_totu_nightkin_scylla" && GetConVar("VJ_ToTU_Nightkin_Scylla_SubtypeBlacklisted"):GetInt() == 0)
					then
						self.TOTU_LNR_SuperSprinter = true
						self.AnimTbl_Walk = {ACT_RUN_AIM}
						self.AnimTbl_Run = {ACT_RUN_AIM}
					end
				end
			end

			if
				GetConVar("VJ_ToTU_General_Rushers_Allow"):GetInt() == 1 or
				GetConVar("VJ_ToTU_General_Rushers_Allow"):GetInt() == 3 or
				GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 or
				self:GetClass() == "npc_vj_totu_lnr_inf_ply" or
				self:GetClass() == "npc_vj_totu_nightkin_skitter" or
				self:GetClass() == "npc_vj_totu_milzomb_ghillie"
			then
				if
					math.random(1,GetConVar("VJ_ToTU_General_Rushers_Chance"):GetInt()) == 1 or
					GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 or
					self:GetClass() == "npc_vj_totu_lnr_inf_ply" or
					self:GetClass() == "npc_vj_totu_nightkin_skitter" or
					self:GetClass() == "npc_vj_totu_milzomb_ghillie"
				then
					if
						(self:GetClass() != "npc_vj_totu_milzomb_detonator" && self:GetClass() != "npc_vj_totu_nightkin_scylla") or
						(self:GetClass() == "npc_vj_totu_milzomb_detonator" && GetConVar("VJ_ToTU_MilZ_Det_SubtypeBlacklisted"):GetInt() == 0) or
						(self:GetClass() == "npc_vj_totu_nightkin_scylla" && GetConVar("VJ_ToTU_Nightkin_Scylla_SubtypeBlacklisted"):GetInt() == 0)
					then
						self.AnimTbl_Walk = {ACT_SPRINT}
						self.AnimTbl_Run = {ACT_RUN_RELAXED}
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
		self:GetClass() == "npc_vj_totu_fon_juggernaut" or
		self:GetClass() == "npc_vj_totu_fon_bulldozer"
	then
		self.ToTU_GiantZombie = true
		-- if
			-- self:GetClass() != "npc_vj_totu_milzomb_detonator_bulk"
		-- then
			self.ToTU_UseCIAttacks = true
		-- end
	end

	if self:GetClass() == "npc_vj_totu_milzomb_ghost" or self:GetClass() == "npc_vj_totu_nightkin_skitter" then
		if !self.TOTU_LNR_Crippled then
		self.SoundTbl_LeapAttackJump = {self.SoundTbl_BeforeMeleeAttack}

		self.SoundTbl_LeapAttackDamage = {
			"fx/hit_punch_01.wav",
			"fx/hit_punch_02.wav",
			"fx/hit_punch_03.wav",
			"fx/hit_punch_04.wav",
			"fx/hit_punch_05.wav",
			"fx/hit_punch_06.wav",
			"fx/hit_punch_07.wav",
			"fx/hit_punch_08.wav"
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

	if self.StartHealth <= 49 then
		self.ToTU_Almanac_Toughness = "Toughness: Fragile"
	elseif self.StartHealth > 49 && self.StartHealth < 100 then
		self.ToTU_Almanac_Toughness = "Toughness: Weak"
	elseif self.StartHealth == 100 then
		self.ToTU_Almanac_Toughness = "Toughness: Average"
	elseif self.StartHealth > 101 && self.StartHealth < 151 then
		self.ToTU_Almanac_Toughness = "Toughness: Above-Average"
	elseif self.StartHealth > 150 && self.StartHealth < 201 then
		self.ToTU_Almanac_Toughness = "Toughness: Stronger-Than-Average"
	elseif self.StartHealth > 200 && self.StartHealth < 351 then
		self.ToTU_Almanac_Toughness = "Toughness: Beefy"
	elseif self.StartHealth > 350 && self.StartHealth < 451 then
		self.ToTU_Almanac_Toughness = "Toughness: Tough"
	elseif self.StartHealth > 450 && self.StartHealth < 651 then
		self.ToTU_Almanac_Toughness = "Toughness: Very Tough"
	elseif self.StartHealth > 650 && self.StartHealth < 901 then
		self.ToTU_Almanac_Toughness = "Toughness: Dense"
	elseif self.StartHealth > 900 && self.StartHealth < 1251 then
		self.ToTU_Almanac_Toughness = "Toughness: Stonewalled"
	elseif self.StartHealth > 1250 && self.StartHealth < 1501 then
		self.ToTU_Almanac_Toughness = "Toughness: Undying"
	elseif self.StartHealth > 1500 && self.StartHealth < 3001 then
		self.ToTU_Almanac_Toughness = "Toughness: Uber-Undying"
	elseif self.StartHealth > 3000 && self.StartHealth < 5001 then
		self.ToTU_Almanac_Toughness = "Toughness: Overkill"
	elseif self.StartHealth > 5000 && self.StartHealth < 10000 then
		self.ToTU_Almanac_Toughness = "Toughness: Godlike"
	elseif self.StartHealth > 9999 then
		self.ToTU_Almanac_Toughness = "Toughness: Nigh-Invulnerable"
	end

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

		self.ToTU_Almanac_VoiceActor = "Father Grigori (Half-Life 2), Walter White (Breaking Bad)"
		self.ToTU_Almanac_FlavorText = "ToTU's code backbone."
		self.ToTU_Almanac_Notes = "Standard walker business."

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

	if self.TOTU_LNR_Infected then

		self.SoundTbl_Idle = {
			"voices/default/infected/zomb_runner_male1-idle-01.wav",
			"voices/default/infected/zomb_runner_male1-idle-02.wav",
			"voices/default/infected/zomb_runner_male1-idle-03.wav",
			"voices/default/infected/zomb_runner_male1-idle-04.wav",
			"voices/default/infected/zomb_runner_male1-idle-05.wav",
			"voices/default/infected/zomb_runner_male1-idle-06.wav",
			"voices/default/infected/zomb_runner_male1-idle-07.wav",
			"voices/default/infected/zomb_runner_male1-idle-08.wav",
			"voices/default/infected/zomb_runner_male1-idle-09.wav",
			"voices/default/infected/zomb_runner_male1-idle-10.wav"
		}

		self.SoundTbl_Alert = {
			"voices/default/infected/zomb_runner_male1-alert-01.wav",
			"voices/default/infected/zomb_runner_male1-alert-02.wav",
			"voices/default/infected/zomb_runner_male1-alert-03.wav",
			"voices/default/infected/zomb_runner_male1-alert-04.wav",
			"voices/default/infected/zomb_runner_male1-alert-05.wav",
			"voices/default/infected/zomb_runner_male1-alert-06.wav",
			"voices/default/infected/zomb_runner_male1-alert-07.wav",
			"voices/default/infected/zomb_runner_male1-alert-08.wav",
			"voices/default/infected/zomb_runner_male1-alert-09.wav",
			"voices/default/infected/zomb_runner_male1-alert-10.wav",
			"voices/default/infected/zomb_runner_male1-alert-11.wav",
			"voices/default/infected/zomb_runner_male1-alert-12.wav",
			"voices/default/infected/zomb_runner_male1-alert-13.wav",
			"voices/default/infected/zomb_runner_male1-alert-14.wav",
			"voices/default/infected/zomb_runner_male1-alert-15.wav"
		}

		self.SoundTbl_CombatIdle = {
			"voices/default/infected/zomb_runner_male1-pursuit-01.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-02.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-03.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-04.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-05.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-06.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-07.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-08.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-09.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-10.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-11.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-12.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-13.wav"	
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"voices/default/infected/zomb_runner_male1-attack01.wav",
			"voices/default/infected/zomb_runner_male1-attack02.wav",
			"voices/default/infected/zomb_runner_male1-attack03.wav",
			"voices/default/infected/zomb_runner_male1-attack04.wav",
			"voices/default/infected/zomb_runner_male1-attack05.wav",
			"voices/default/infected/zomb_runner_male1-attack06.wav",
			"voices/default/infected/zomb_runner_male1-attack07.wav",
			"voices/default/infected/zomb_runner_male1-attack08.wav",
			"voices/default/infected/zomb_runner_male1-attack09.wav",
			"voices/default/infected/zomb_runner_male1-attack10.wav",
			"voices/default/infected/zomb_runner_male1-attack11.wav",
			"voices/default/infected/zomb_runner_male1-attack12.wav",
			"voices/default/infected/zomb_runner_male1-attack13.wav",
			"voices/default/infected/zomb_runner_male1-attack14.wav",
			"voices/default/infected/zomb_runner_male1-attack15.wav",
			"voices/default/infected/zomb_runner_male1-attack16.wav",
			"voices/default/infected/zomb_runner_male1-attack17.wav",
			"voices/default/infected/zomb_runner_male1-attack18.wav",
			"voices/default/infected/zomb_runner_male1-attack19.wav",
			"voices/default/infected/zomb_runner_male1-attack20.wav"	
		}

		self.SoundTbl_Pain = {
			"voices/default/infected/zomb_runner_male1-pain01.wav",
			"voices/default/infected/zomb_runner_male1-pain02.wav",
			"voices/default/infected/zomb_runner_male1-pain03.wav",
			"voices/default/infected/zomb_runner_male1-pain04.wav",
			"voices/default/infected/zomb_runner_male1-pain05.wav",
			"voices/default/infected/zomb_runner_male1-pain06.wav",
			"voices/default/infected/zomb_runner_male1-pain07.wav",
			"voices/default/infected/zomb_runner_male1-pain08.wav",
			"voices/default/infected/zomb_runner_male1-pain09.wav",
			"voices/default/infected/zomb_runner_male1-pain10.wav",
			"voices/default/infected/zomb_runner_male1-pain11.wav",
			"voices/default/infected/zomb_runner_male1-pain12.wav",
			"voices/default/infected/zomb_runner_male1-pain13.wav",
			"voices/default/infected/zomb_runner_male1-pain14.wav",
			"voices/default/infected/zomb_runner_male1-pain15.wav",
			"voices/default/infected/zomb_runner_male1-pain16.wav",
			"voices/default/infected/zomb_runner_male1-pain17.wav",
			"voices/default/infected/zomb_runner_male1-pain18.wav"
		}

		self.SoundTbl_Death = {
			"voices/default/infected/zomb_runner_male1-death-01.wav",
			"voices/default/infected/zomb_runner_male1-death-02.wav",
			"voices/default/infected/zomb_runner_male1-death-03.wav",
			"voices/default/infected/zomb_runner_male1-death-04.wav",
			"voices/default/infected/zomb_runner_male1-death-05.wav",
			"voices/default/infected/zomb_runner_male1-death-06.wav",
			"voices/default/infected/zomb_runner_male1-death-07.wav",
			"voices/default/infected/zomb_runner_male1-death-08.wav",
			"voices/default/infected/zomb_runner_male1-death-09.wav",
			"voices/default/infected/zomb_runner_male1-death-10.wav",
			"voices/default/infected/zomb_runner_male1-death-11.wav",
			"voices/default/infected/zomb_runner_male1-death-12.wav",
			"voices/default/infected/zomb_runner_male1-death-13.wav",
			"voices/default/infected/zomb_runner_male1-death-14.wav",
			"voices/default/infected/zomb_runner_male1-death-15.wav",
			"voices/default/infected/zomb_runner_male1-death-16.wav",
			"voices/default/infected/zomb_runner_male1-death-17.wav",
			"voices/default/infected/zomb_runner_male1-death-18.wav",
			"voices/default/infected/zomb_runner_male1-death-19.wav",
			"voices/default/infected/zomb_runner_male1-death-20.wav"
		}

		self.ToTU_Almanac_VoiceActor = "Male Zombie (No More Room In Hell)"

		if GetConVar("VJ_ToTU_General_DefaultVoices_AltInfected"):GetInt() == 1 then
		
		self.SoundTbl_Idle = {
			"voices/l4d/common/idle/breathing/breathing01.wav",
			"voices/l4d/common/idle/breathing/breathing08.wav",
			"voices/l4d/common/idle/breathing/breathing09.wav",
			"voices/l4d/common/idle/breathing/breathing10.wav",
			"voices/l4d/common/idle/breathing/breathing13.wav",
			"voices/l4d/common/idle/breathing/breathing16.wav",
			"voices/l4d/common/idle/breathing/breathing18.wav",
			"voices/l4d/common/idle/breathing/breathing25.wav",
			"voices/l4d/common/idle/breathing/breathing26.wav",
			"voices/l4d/common/idle/breathing/idle_breath_01.wav",
			"voices/l4d/common/idle/breathing/idle_breath_02.wav",
			"voices/l4d/common/idle/breathing/idle_breath_03.wav",
			"voices/l4d/common/idle/breathing/idle_breath_04.wav",
			"voices/l4d/common/idle/breathing/idle_breath_06.wav",
			"voices/l4d/common/idle/moaning/moan01.wav",
			"voices/l4d/common/idle/moaning/moan02.wav",
			"voices/l4d/common/idle/moaning/moan03.wav",
			"voices/l4d/common/idle/moaning/moan04.wav",
			"voices/l4d/common/idle/moaning/moan05.wav",
			"voices/l4d/common/idle/moaning/moan06.wav",
			"voices/l4d/common/idle/moaning/moan07.wav",
			"voices/l4d/common/idle/moaning/moan08.wav",
			"voices/l4d/common/idle/moaning/moan09.wav",
			"voices/l4d/common/idle/mumbling/mumbling01.wav",
			"voices/l4d/common/idle/mumbling/mumbling02.wav",
			"voices/l4d/common/idle/mumbling/mumbling03.wav",
			"voices/l4d/common/idle/mumbling/mumbling04.wav",
			"voices/l4d/common/idle/mumbling/mumbling05.wav",
			"voices/l4d/common/idle/mumbling/mumbling06.wav",
			"voices/l4d/common/idle/mumbling/mumbling07.wav",
			"voices/l4d/common/idle/mumbling/mumbling08.wav",
		}

		self.SoundTbl_Alert = {
			"voices/l4d/common/alert/alert/alert13.wav",
			"voices/l4d/common/alert/alert/alert16.wav",
			"voices/l4d/common/alert/alert/alert22.wav",
			"voices/l4d/common/alert/alert/alert23.wav",
			"voices/l4d/common/alert/alert/alert25.wav",
			"voices/l4d/common/alert/alert/alert26.wav",
			"voices/l4d/common/alert/alert/alert27.wav",
			"voices/l4d/common/alert/alert/alert36.wav",
			"voices/l4d/common/alert/alert/alert37.wav",
			"voices/l4d/common/alert/alert/alert38.wav",
			"voices/l4d/common/alert/alert/alert39.wav",
			"voices/l4d/common/alert/alert/alert40.wav",
			"voices/l4d/common/alert/alert/alert41.wav",
			"voices/l4d/common/alert/alert/alert42.wav",
			"voices/l4d/common/alert/alert/alert43.wav",
			"voices/l4d/common/alert/alert/alert44.wav",
			"voices/l4d/common/alert/alert/male/alert50.wav",
			"voices/l4d/common/alert/alert/male/alert51.wav",
			"voices/l4d/common/alert/alert/male/alert52.wav",
			"voices/l4d/common/alert/alert/male/alert53.wav",
			"voices/l4d/common/alert/alert/male/alert54.wav",
			"voices/l4d/common/alert/alert/male/alert55.wav",
		}

		self.SoundTbl_CombatIdle = {
			"voices/l4d/common/action/rage/shoved_1.wav",
			"voices/l4d/common/action/rage/shoved_2.wav",
			"voices/l4d/common/action/rage/shoved_3.wav",
			"voices/l4d/common/action/rage/shoved_4.wav",
			"voices/l4d/common/action/rage/male/rage_50.wav",
			"voices/l4d/common/action/rage/male/rage_51.wav",
			"voices/l4d/common/action/rage/male/rage_52.wav",
			"voices/l4d/common/action/rage/male/rage_53.wav",
			"voices/l4d/common/action/rage/male/rage_54.wav",
			"voices/l4d/common/action/rage/male/rage_55.wav",
			"voices/l4d/common/action/rage/male/rage_56.wav",
			"voices/l4d/common/action/rage/male/rage_57.wav",
			"voices/l4d/common/action/rage/male/rage_58.wav",
			"voices/l4d/common/action/rage/male/rage_59.wav",
			"voices/l4d/common/action/rage/male/rage_60.wav",
			"voices/l4d/common/action/rage/male/rage_61.wav",
			"voices/l4d/common/action/rage/male/rage_62.wav",
			"voices/l4d/common/action/rage/male/rage_64.wav",
			"voices/l4d/common/action/rage/male/rage_65.wav",
			"voices/l4d/common/action/rage/male/rage_66.wav",
			"voices/l4d/common/action/rage/male/rage_67.wav",
			"voices/l4d/common/action/rage/male/rage_68.wav",
			"voices/l4d/common/action/rage/male/rage_69.wav",
			"voices/l4d/common/action/rage/male/rage_70.wav",
			"voices/l4d/common/action/rage/male/rage_71.wav",
			"voices/l4d/common/action/rage/male/rage_72.wav",
			"voices/l4d/common/action/rage/male/rage_73.wav",
			"voices/l4d/common/action/rage/male/rage_74.wav",
			"voices/l4d/common/action/rage/male/rage_75.wav",
			"voices/l4d/common/action/rage/male/rage_76.wav",
			"voices/l4d/common/action/rage/male/rage_77.wav",
			"voices/l4d/common/action/rage/male/rage_78.wav",
			"voices/l4d/common/action/rage/male/rage_79.wav",
			"voices/l4d/common/action/rage/male/rage_80.wav",
			"voices/l4d/common/action/rage/male/rage_81.wav",
			"voices/l4d/common/action/rage/male/rage_82.wav",
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"voices/l4d/common/action/rageat/rage_at_victim01.wav",
			"voices/l4d/common/action/rageat/rage_at_victim02.wav",
			"voices/l4d/common/action/rageat/rage_at_victim21.wav",
			"voices/l4d/common/action/rageat/rage_at_victim22.wav",
			"voices/l4d/common/action/rageat/rage_at_victim25.wav",
			"voices/l4d/common/action/rageat/rage_at_victim26.wav",
			"voices/l4d/common/action/rageat/rage_at_victim34.wav",
			"voices/l4d/common/action/rageat/rage_at_victim35.wav",
			"voices/l4d/common/action/rageat/snarl_4.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim20.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim21.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim22.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim23.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim24.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim25.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim26.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim27.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim28.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim29.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim30.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim31.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim32.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim33.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim34.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim35.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim36.wav",
			"voices/l4d/common/action/rageat/male/rage_at_victim37.wav",
		}

		self.SoundTbl_Pain = {
			"voices/l4d/common/action/been_shot/been_shot_01.wav",
			"voices/l4d/common/action/been_shot/been_shot_02.wav",
			"voices/l4d/common/action/been_shot/been_shot_04.wav",
			"voices/l4d/common/action/been_shot/been_shot_05.wav",
			"voices/l4d/common/action/been_shot/been_shot_06.wav",
			"voices/l4d/common/action/been_shot/been_shot_08.wav",
			"voices/l4d/common/action/been_shot/been_shot_09.wav",
			"voices/l4d/common/action/been_shot/been_shot_12.wav",
			"voices/l4d/common/action/been_shot/been_shot_13.wav",
			"voices/l4d/common/action/been_shot/been_shot_14.wav",
			"voices/l4d/common/action/been_shot/been_shot_18.wav",
			"voices/l4d/common/action/been_shot/been_shot_19.wav",
			"voices/l4d/common/action/been_shot/been_shot_20.wav",
			"voices/l4d/common/action/been_shot/been_shot_21.wav",
			"voices/l4d/common/action/been_shot/been_shot_22.wav",
			"voices/l4d/common/action/been_shot/been_shot_24.wav",
			"voices/l4d/common/action/been_shot/male/been_shot_30.wav",
			"voices/l4d/common/action/been_shot/male/been_shot_31.wav",
			"voices/l4d/common/action/been_shot/male/been_shot_32.wav",
			"voices/l4d/common/action/been_shot/male/been_shot_33.wav",
			"voices/l4d/common/action/been_shot/male/been_shot_34.wav",
			"voices/l4d/common/action/been_shot/male/been_shot_35.wav",
			"voices/l4d/common/action/been_shot/male/been_shot_36.wav",
			"voices/l4d/common/action/been_shot/male/been_shot_37.wav",
		}

		self.SoundTbl_Death = {
			"voices/l4d/common/action/die/death_14.wav",
			"voices/l4d/common/action/die/death_17.wav",
			"voices/l4d/common/action/die/death_18.wav",
			"voices/l4d/common/action/die/death_19.wav",
			"voices/l4d/common/action/die/death_22.wav",
			"voices/l4d/common/action/die/death_23.wav",
			"voices/l4d/common/action/die/death_24.wav",
			"voices/l4d/common/action/die/death_25.wav",
			"voices/l4d/common/action/die/death_26.wav",
			"voices/l4d/common/action/die/death_27.wav",
			"voices/l4d/common/action/die/death_28.wav",
			"voices/l4d/common/action/die/death_29.wav",
			"voices/l4d/common/action/die/death_30.wav",
			"voices/l4d/common/action/die/death_32.wav",
			"voices/l4d/common/action/die/death_33.wav",
			"voices/l4d/common/action/die/death_34.wav",
			"voices/l4d/common/action/die/death_35.wav",
			"voices/l4d/common/action/die/death_36.wav",
			"voices/l4d/common/action/die/death_37.wav",
			"voices/l4d/common/action/die/death_38.wav",
			"voices/l4d/common/action/die/male/death_40.wav",
			"voices/l4d/common/action/die/male/death_41.wav",
			"voices/l4d/common/action/die/male/death_42.wav",
			"voices/l4d/common/action/die/male/death_43.wav",
			"voices/l4d/common/action/die/male/death_44.wav",
			"voices/l4d/common/action/die/male/death_45.wav",
			"voices/l4d/common/action/die/male/death_46.wav",
			"voices/l4d/common/action/die/male/death_47.wav",
			"voices/l4d/common/action/die/male/death_48.wav",
			"voices/l4d/common/action/die/male/death_49.wav",
		}

		self.ToTU_Almanac_VoiceActor = "Common Infected (Left 4 Dead)"

		end

	else

		self.SoundTbl_Idle = {
			"voices/default/walker/idle1.wav",
			"voices/default/walker/idle2.wav",
			"voices/default/walker/idle3.wav",
			"voices/default/walker/idle4.wav",
			"voices/default/walker/idle5.wav",
			"voices/default/walker/idle6.wav",
			"voices/default/walker/idle7.wav",
			"voices/default/walker/idle8.wav",
			"voices/default/walker/idle9.wav",
			"voices/default/walker/idle10.wav",
			"voices/default/walker/idle11.wav",
			"voices/default/walker/idle12.wav",
			"voices/default/walker/idle13.wav",
			"voices/default/walker/idle14.wav",
			"voices/default/walker/idle15.wav",	
			"voices/default/walker/idle16.wav",
			"voices/default/walker/idle17.wav",
			"voices/default/walker/idle18.wav",
			"voices/default/walker/idle19.wav",
			"voices/default/walker/idle20.wav"
		}

		self.SoundTbl_Alert = {
			"voices/default/walker/alert_sham_m_01.wav",
			"voices/default/walker/alert_sham_m_02.wav",
			"voices/default/walker/alert_sham_m_03.wav",
			"voices/default/walker/alert_sham_m_04.wav",
			"voices/default/walker/alert_sham_m_05.wav",
			"voices/default/walker/alert_sham_m_06.wav",
			"voices/default/walker/alert_sham_m_07.wav",
			"voices/default/walker/alert_sham_m_08.wav",
			"voices/default/walker/alert_sham_m_09.wav",
			"voices/default/walker/alert_sham_m_10.wav",
			"voices/default/walker/alert_sham_m_11.wav",
			"voices/default/walker/alert_sham_m_12.wav",
			"voices/default/walker/alert_sham_m_13.wav",
			"voices/default/walker/alert_sham_m_14.wav",
			"voices/default/walker/alert_sham_m_15.wav",
			"voices/default/walker/alert_sham_m_16.wav",
			"voices/default/walker/alert_sham_m_17.wav",
			"voices/default/walker/alert_sham_m_18.wav",
			"voices/default/walker/alert_sham_m_19.wav",
			"voices/default/walker/alert_sham_m_20.wav",	
			"voices/default/walker/alert_sham_m_21.wav",
			"voices/default/walker/alert1.wav",
			"voices/default/walker/alert2.wav",
			"voices/default/walker/alert3.wav",
			"voices/default/walker/alert4.wav",	
			"voices/default/walker/alert5.wav",
			"voices/default/walker/alert6.wav",
			"voices/default/walker/alert7.wav",
			"voices/default/walker/alert8.wav",
			"voices/default/walker/alert9.wav",	
			"voices/default/walker/alert10.wav"		
		}

		self.SoundTbl_CombatIdle = {
			"voices/default/walker/pursuit_sham_m_01.wav",
			"voices/default/walker/pursuit_sham_m_02.wav",
			"voices/default/walker/pursuit_sham_m_03.wav",
			"voices/default/walker/pursuit_sham_m_04.wav",
			"voices/default/walker/pursuit_sham_m_05.wav",
			"voices/default/walker/pursuit_sham_m_06.wav",
			"voices/default/walker/pursuit_sham_m_07.wav",
			"voices/default/walker/pursuit_sham_m_08.wav",
			"voices/default/walker/pursuit_sham_m_09.wav",
			"voices/default/walker/pursuit_sham_m_10.wav",
			"voices/default/walker/pursuit_sham_m_11.wav",
			"voices/default/walker/pursuit_sham_m_12.wav",
			"voices/default/walker/pursuit_sham_m_13.wav",
			"voices/default/walker/pursuit_sham_m_14.wav",
			"voices/default/walker/pursuit_sham_m_15.wav",
			"voices/default/walker/pursuit_sham_m_16.wav",
			"voices/default/walker/pursuit_sham_m_17.wav",
			"voices/default/walker/pursuit_sham_m_18.wav"
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"voices/default/walker/attack_sham_m_01.wav",
			"voices/default/walker/attack_sham_m_02.wav",
			"voices/default/walker/attack_sham_m_03.wav",
			"voices/default/walker/attack_sham_m_04.wav",
			"voices/default/walker/attack_sham_m_05.wav",
			"voices/default/walker/attack_sham_m_06.wav",
			"voices/default/walker/attack_sham_m_07.wav",
			"voices/default/walker/attack_sham_m_08.wav",
			"voices/default/walker/attack_sham_m_09.wav",
			"voices/default/walker/attack_sham_m_10.wav",
			"voices/default/walker/attack_sham_m_11.wav",
			"voices/default/walker/attack_sham_m_12.wav",
			"voices/default/walker/attack_sham_m_13.wav",
			"voices/default/walker/attack_sham_m_14.wav",
			"voices/default/walker/attack_sham_m_15.wav",
			"voices/default/walker/attack_sham_m_16.wav",
			"voices/default/walker/attack_sham_m_17.wav",
			"voices/default/walker/attack_sham_m_18.wav",
			"voices/default/walker/attack_sham_m_19.wav",
			"voices/default/walker/attack_sham_m_20.wav",	
			"voices/default/walker/attack_sham_m_21.wav",
			"voices/default/walker/attack_sham_m_22.wav"	
		}
	
		self.SoundTbl_Pain = {
			"voices/default/walker/pain01.wav",
			"voices/default/walker/pain02.wav",
			"voices/default/walker/pain03.wav",
			"voices/default/walker/pain04.wav",
			"voices/default/walker/pain05.wav"
		}

		self.SoundTbl_Death = {
			"voices/default/walker/die01.wav",
			"voices/default/walker/die02.wav",
			"voices/default/walker/die03.wav",
			"voices/default/walker/die04.wav",
			"voices/default/walker/die05.wav"
		}

		self.ToTU_Almanac_VoiceActor = "Male Zombie (No More Room In Hell)"

		if GetConVar("VJ_ToTU_General_DefaultVoices_AltWalker"):GetInt() == 1 then

			self.SoundTbl_Idle = {
				"voices/dlbiter/idle_1.mp3",
				"voices/dlbiter/idle_2.mp3",
				"voices/dlbiter/idle_3.mp3",
				"voices/dlbiter/idle_4.mp3",
				"voices/dlbiter/idle_5.mp3",
				"voices/dlbiter/idle_6.mp3",
				"voices/dlbiter/idle_7.mp3",
				"voices/dlbiter/idle_8.mp3",
				"voices/dlbiter/idle_9.mp3",
				"voices/dlbiter/idle_10.mp3",
				"voices/dlbiter/idle_11.mp3",
				"voices/dlbiter/idle_12.mp3",
				"voices/dlbiter/idle_13.mp3",
				"voices/dlbiter/idle_14.mp3",
				"voices/dlbiter/idle_15.mp3",
				"voices/dlbiter/idle_16.mp3",
				"voices/dlbiter/idle_17.mp3",
				"voices/dlbiter/idle_18.mp3",
				"voices/dlbiter/idle_19.mp3",
				"voices/dlbiter/idle_20.mp3",
				"voices/dlbiter/idle_21.mp3",
				"voices/dlbiter/idle_22.mp3",
				"voices/dlbiter/idle_23.mp3",
				"voices/dlbiter/idle_24.mp3",
				"voices/dlbiter/idle_25.mp3",
				"voices/dlbiter/idle_26.mp3",
				"voices/dlbiter/idle_27.mp3",
				"voices/dlbiter/idle_28.mp3",
			}

			self.SoundTbl_Alert = {
				"voices/dlbiter/alert_1.mp3",
				"voices/dlbiter/alert_2.mp3",
				"voices/dlbiter/alert_3.mp3",
				"voices/dlbiter/alert_4.mp3",
				"voices/dlbiter/alert_5.mp3",
			}

			self.SoundTbl_CombatIdle = {
				"voices/dlbiter/idle_1.mp3",
				"voices/dlbiter/idle_2.mp3",
				"voices/dlbiter/idle_3.mp3",
				"voices/dlbiter/idle_4.mp3",
				"voices/dlbiter/idle_5.mp3",
				"voices/dlbiter/idle_6.mp3",
				"voices/dlbiter/idle_7.mp3",
				"voices/dlbiter/idle_8.mp3",
				"voices/dlbiter/idle_9.mp3",
				"voices/dlbiter/idle_10.mp3",
				"voices/dlbiter/idle_11.mp3",
				"voices/dlbiter/idle_12.mp3",
				"voices/dlbiter/idle_13.mp3",
				"voices/dlbiter/idle_14.mp3",
				"voices/dlbiter/idle_15.mp3",
				"voices/dlbiter/idle_16.mp3",
				"voices/dlbiter/idle_17.mp3",
				"voices/dlbiter/idle_18.mp3",
				"voices/dlbiter/idle_19.mp3",
				"voices/dlbiter/idle_20.mp3",
				"voices/dlbiter/idle_21.mp3",
				"voices/dlbiter/idle_22.mp3",
				"voices/dlbiter/idle_23.mp3",
				"voices/dlbiter/idle_24.mp3",
				"voices/dlbiter/idle_25.mp3",
				"voices/dlbiter/idle_26.mp3",
				"voices/dlbiter/idle_27.mp3",
				"voices/dlbiter/idle_28.mp3",
			}

			self.SoundTbl_BeforeMeleeAttack = {
				"voices/dlbiter/attack_1.mp3",
				"voices/dlbiter/attack_2.mp3",
				"voices/dlbiter/attack_3.mp3",
				"voices/dlbiter/attack_4.mp3",
				"voices/dlbiter/attack_5.mp3",
			}
		
			self.SoundTbl_Pain = {
				"voices/dlbiter/pain_1.mp3",
				"voices/dlbiter/pain_2.mp3",
				"voices/dlbiter/pain_3.mp3",
				"voices/dlbiter/pain_4.mp3",
				"voices/dlbiter/pain_5.mp3",
				"voices/dlbiter/pain_6.mp3",
				"voices/dlbiter/pain_7.mp3",
				"voices/dlbiter/pain_8.mp3",
			}

			self.SoundTbl_Death = {
				"voices/dlbiter/death_1.mp3",
				"voices/dlbiter/death_2.mp3",
				"voices/dlbiter/death_3.mp3",
				"voices/dlbiter/death_4.mp3",
				"voices/dlbiter/death_5.mp3",
			}
			
			self.ToTU_Almanac_VoiceActor = "Biter (Dying Light)"

			if self.TOTU_LNR_Runner then
				self.SoundTbl_CombatIdle = {
					"voices/dlbiter/berserker_short_1.mp3",
					"voices/dlbiter/berserker_short_2.mp3",
					"voices/dlbiter/berserker_short_3.mp3",
					"voices/dlbiter/berserker_short_4.mp3",
					"voices/dlbiter/berserker_short_5.mp3",
					"voices/dlbiter/berserker_short_6.mp3",
					"voices/dlbiter/berserker_short_7.mp3",
				}
			end

			if self.ToTU_Rusher then
				self.SoundTbl_CombatIdle = {
					"voices/dlbiter/berserker_long_1.mp3",
					"voices/dlbiter/berserker_long_2.mp3",
					"voices/dlbiter/berserker_long_3.mp3",
					"voices/dlbiter/berserker_long_4.mp3",
					"voices/dlbiter/berserker_long_5.mp3",
				}
			end

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_GiveDefault_Female()

	if self.TOTU_LNR_Infected then

		self.SoundTbl_Idle = {
			"voices/default/infected/zomb_runner_male1-idle-01.wav",
			"voices/default/infected/zomb_runner_male1-idle-02.wav",
			"voices/default/infected/zomb_runner_male1-idle-03.wav",
			"voices/default/infected/zomb_runner_male1-idle-04.wav",
			"voices/default/infected/zomb_runner_male1-idle-05.wav",
			"voices/default/infected/zomb_runner_male1-idle-06.wav",
			"voices/default/infected/zomb_runner_male1-idle-07.wav",
			"voices/default/infected/zomb_runner_male1-idle-08.wav",
			"voices/default/infected/zomb_runner_male1-idle-09.wav",
			"voices/default/infected/zomb_runner_male1-idle-10.wav"
		}

		self.SoundTbl_Alert = {
			"voices/default/infected/zomb_runner_male1-alert-01.wav",
			"voices/default/infected/zomb_runner_male1-alert-02.wav",
			"voices/default/infected/zomb_runner_male1-alert-03.wav",
			"voices/default/infected/zomb_runner_male1-alert-04.wav",
			"voices/default/infected/zomb_runner_male1-alert-05.wav",
			"voices/default/infected/zomb_runner_male1-alert-06.wav",
			"voices/default/infected/zomb_runner_male1-alert-07.wav",
			"voices/default/infected/zomb_runner_male1-alert-08.wav",
			"voices/default/infected/zomb_runner_male1-alert-09.wav",
			"voices/default/infected/zomb_runner_male1-alert-10.wav",
			"voices/default/infected/zomb_runner_male1-alert-11.wav",
			"voices/default/infected/zomb_runner_male1-alert-12.wav",
			"voices/default/infected/zomb_runner_male1-alert-13.wav",
			"voices/default/infected/zomb_runner_male1-alert-14.wav",
			"voices/default/infected/zomb_runner_male1-alert-15.wav"
		}

		self.SoundTbl_CombatIdle = {
			"voices/default/infected/zomb_runner_male1-pursuit-01.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-02.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-03.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-04.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-05.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-06.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-07.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-08.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-09.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-10.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-11.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-12.wav",
			"voices/default/infected/zomb_runner_male1-pursuit-13.wav"	
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"voices/default/infected/zomb_runner_male1-attack01.wav",
			"voices/default/infected/zomb_runner_male1-attack02.wav",
			"voices/default/infected/zomb_runner_male1-attack03.wav",
			"voices/default/infected/zomb_runner_male1-attack04.wav",
			"voices/default/infected/zomb_runner_male1-attack05.wav",
			"voices/default/infected/zomb_runner_male1-attack06.wav",
			"voices/default/infected/zomb_runner_male1-attack07.wav",
			"voices/default/infected/zomb_runner_male1-attack08.wav",
			"voices/default/infected/zomb_runner_male1-attack09.wav",
			"voices/default/infected/zomb_runner_male1-attack10.wav",
			"voices/default/infected/zomb_runner_male1-attack11.wav",
			"voices/default/infected/zomb_runner_male1-attack12.wav",
			"voices/default/infected/zomb_runner_male1-attack13.wav",
			"voices/default/infected/zomb_runner_male1-attack14.wav",
			"voices/default/infected/zomb_runner_male1-attack15.wav",
			"voices/default/infected/zomb_runner_male1-attack16.wav",
			"voices/default/infected/zomb_runner_male1-attack17.wav",
			"voices/default/infected/zomb_runner_male1-attack18.wav",
			"voices/default/infected/zomb_runner_male1-attack19.wav",
			"voices/default/infected/zomb_runner_male1-attack20.wav"	
		}

		self.SoundTbl_Pain = {
			"voices/default/infected/zomb_runner_male1-pain01.wav",
			"voices/default/infected/zomb_runner_male1-pain02.wav",
			"voices/default/infected/zomb_runner_male1-pain03.wav",
			"voices/default/infected/zomb_runner_male1-pain04.wav",
			"voices/default/infected/zomb_runner_male1-pain05.wav",
			"voices/default/infected/zomb_runner_male1-pain06.wav",
			"voices/default/infected/zomb_runner_male1-pain07.wav",
			"voices/default/infected/zomb_runner_male1-pain08.wav",
			"voices/default/infected/zomb_runner_male1-pain09.wav",
			"voices/default/infected/zomb_runner_male1-pain10.wav",
			"voices/default/infected/zomb_runner_male1-pain11.wav",
			"voices/default/infected/zomb_runner_male1-pain12.wav",
			"voices/default/infected/zomb_runner_male1-pain13.wav",
			"voices/default/infected/zomb_runner_male1-pain14.wav",
			"voices/default/infected/zomb_runner_male1-pain15.wav",
			"voices/default/infected/zomb_runner_male1-pain16.wav",
			"voices/default/infected/zomb_runner_male1-pain17.wav",
			"voices/default/infected/zomb_runner_male1-pain18.wav"
		}

		self.SoundTbl_Death = {
			"voices/default/infected/zomb_runner_male1-death-01.wav",
			"voices/default/infected/zomb_runner_male1-death-02.wav",
			"voices/default/infected/zomb_runner_male1-death-03.wav",
			"voices/default/infected/zomb_runner_male1-death-04.wav",
			"voices/default/infected/zomb_runner_male1-death-05.wav",
			"voices/default/infected/zomb_runner_male1-death-06.wav",
			"voices/default/infected/zomb_runner_male1-death-07.wav",
			"voices/default/infected/zomb_runner_male1-death-08.wav",
			"voices/default/infected/zomb_runner_male1-death-09.wav",
			"voices/default/infected/zomb_runner_male1-death-10.wav",
			"voices/default/infected/zomb_runner_male1-death-11.wav",
			"voices/default/infected/zomb_runner_male1-death-12.wav",
			"voices/default/infected/zomb_runner_male1-death-13.wav",
			"voices/default/infected/zomb_runner_male1-death-14.wav",
			"voices/default/infected/zomb_runner_male1-death-15.wav",
			"voices/default/infected/zomb_runner_male1-death-16.wav",
			"voices/default/infected/zomb_runner_male1-death-17.wav",
			"voices/default/infected/zomb_runner_male1-death-18.wav",
			"voices/default/infected/zomb_runner_male1-death-19.wav",
			"voices/default/infected/zomb_runner_male1-death-20.wav"
		}

		self.IdleSoundPitch = VJ_Set(120, 120)
		self.CombatIdleSoundPitch = VJ_Set(120, 120)
		self.AlertSoundPitch = VJ_Set(120, 120)
		self.CallForHelpSoundPitch = VJ_Set(120, 120)
		self.BeforeMeleeAttackSoundPitch = VJ_Set(120, 120)
		self.PainSoundPitch = VJ_Set(120, 120)
		self.DeathSoundPitch = VJ_Set(120, 120)

		self.ToTU_Almanac_VoiceActor = "Male Zombie (No More Room In Hell)"

		if GetConVar("VJ_ToTU_General_DefaultVoices_AltInfected"):GetInt() == 1 then
		
		self.SoundTbl_Idle = {
			"voices/l4d/common/idle/breathing/breathing01.wav",
			"voices/l4d/common/idle/breathing/breathing08.wav",
			"voices/l4d/common/idle/breathing/breathing09.wav",
			"voices/l4d/common/idle/breathing/breathing10.wav",
			"voices/l4d/common/idle/breathing/breathing13.wav",
			"voices/l4d/common/idle/breathing/breathing16.wav",
			"voices/l4d/common/idle/breathing/breathing18.wav",
			"voices/l4d/common/idle/breathing/breathing25.wav",
			"voices/l4d/common/idle/breathing/breathing26.wav",
			"voices/l4d/common/idle/breathing/idle_breath_01.wav",
			"voices/l4d/common/idle/breathing/idle_breath_02.wav",
			"voices/l4d/common/idle/breathing/idle_breath_03.wav",
			"voices/l4d/common/idle/breathing/idle_breath_04.wav",
			"voices/l4d/common/idle/breathing/idle_breath_06.wav",
			"voices/l4d/common/idle/moaning/moan01.wav",
			"voices/l4d/common/idle/moaning/moan02.wav",
			"voices/l4d/common/idle/moaning/moan03.wav",
			"voices/l4d/common/idle/moaning/moan04.wav",
			"voices/l4d/common/idle/moaning/moan05.wav",
			"voices/l4d/common/idle/moaning/moan06.wav",
			"voices/l4d/common/idle/moaning/moan07.wav",
			"voices/l4d/common/idle/moaning/moan08.wav",
			"voices/l4d/common/idle/moaning/moan09.wav",
			"voices/l4d/common/idle/mumbling/mumbling01.wav",
			"voices/l4d/common/idle/mumbling/mumbling02.wav",
			"voices/l4d/common/idle/mumbling/mumbling03.wav",
			"voices/l4d/common/idle/mumbling/mumbling04.wav",
			"voices/l4d/common/idle/mumbling/mumbling05.wav",
			"voices/l4d/common/idle/mumbling/mumbling06.wav",
			"voices/l4d/common/idle/mumbling/mumbling07.wav",
			"voices/l4d/common/idle/mumbling/mumbling08.wav",
		}

		self.SoundTbl_Alert = {
			"voices/l4d/common/alert/alert/alert13.wav",
			"voices/l4d/common/alert/alert/alert16.wav",
			"voices/l4d/common/alert/alert/alert22.wav",
			"voices/l4d/common/alert/alert/alert23.wav",
			"voices/l4d/common/alert/alert/alert25.wav",
			"voices/l4d/common/alert/alert/alert26.wav",
			"voices/l4d/common/alert/alert/alert27.wav",
			"voices/l4d/common/alert/alert/alert36.wav",
			"voices/l4d/common/alert/alert/alert37.wav",
			"voices/l4d/common/alert/alert/alert38.wav",
			"voices/l4d/common/alert/alert/alert39.wav",
			"voices/l4d/common/alert/alert/alert40.wav",
			"voices/l4d/common/alert/alert/alert41.wav",
			"voices/l4d/common/alert/alert/alert42.wav",
			"voices/l4d/common/alert/alert/alert43.wav",
			"voices/l4d/common/alert/alert/alert44.wav",
			"voices/l4d/common/alert/alert/female/alert50.wav",
			"voices/l4d/common/alert/alert/female/alert51.wav",
			"voices/l4d/common/alert/alert/female/alert52.wav",
			"voices/l4d/common/alert/alert/female/alert53.wav",
			"voices/l4d/common/alert/alert/female/alert54.wav",
			"voices/l4d/common/alert/alert/female/alert55.wav",
		}

		self.SoundTbl_CombatIdle = {
			"voices/l4d/common/action/rage/shoved_1.wav",
			"voices/l4d/common/action/rage/shoved_2.wav",
			"voices/l4d/common/action/rage/shoved_3.wav",
			"voices/l4d/common/action/rage/shoved_4.wav",
			"voices/l4d/common/action/rage/female/rage_50.wav",
			"voices/l4d/common/action/rage/female/rage_51.wav",
			"voices/l4d/common/action/rage/female/rage_52.wav",
			"voices/l4d/common/action/rage/female/rage_53.wav",
			"voices/l4d/common/action/rage/female/rage_54.wav",
			"voices/l4d/common/action/rage/female/rage_55.wav",
			"voices/l4d/common/action/rage/female/rage_56.wav",
			"voices/l4d/common/action/rage/female/rage_57.wav",
			"voices/l4d/common/action/rage/female/rage_58.wav",
			"voices/l4d/common/action/rage/female/rage_59.wav",
			"voices/l4d/common/action/rage/female/rage_60.wav",
			"voices/l4d/common/action/rage/female/rage_61.wav",
			"voices/l4d/common/action/rage/female/rage_62.wav",
			"voices/l4d/common/action/rage/female/rage_64.wav",
			"voices/l4d/common/action/rage/female/rage_65.wav",
			"voices/l4d/common/action/rage/female/rage_66.wav",
			"voices/l4d/common/action/rage/female/rage_67.wav",
			"voices/l4d/common/action/rage/female/rage_68.wav",
			"voices/l4d/common/action/rage/female/rage_69.wav",
			"voices/l4d/common/action/rage/female/rage_70.wav",
			"voices/l4d/common/action/rage/female/rage_71.wav",
			"voices/l4d/common/action/rage/female/rage_72.wav",
			"voices/l4d/common/action/rage/female/rage_73.wav",
			"voices/l4d/common/action/rage/female/rage_74.wav",
			"voices/l4d/common/action/rage/female/rage_75.wav",
			"voices/l4d/common/action/rage/female/rage_76.wav",
			"voices/l4d/common/action/rage/female/rage_77.wav",
			"voices/l4d/common/action/rage/female/rage_78.wav",
			"voices/l4d/common/action/rage/female/rage_79.wav",
			"voices/l4d/common/action/rage/female/rage_80.wav",
			"voices/l4d/common/action/rage/female/rage_81.wav",
			"voices/l4d/common/action/rage/female/rage_82.wav",
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"voices/l4d/common/action/rageat/rage_at_victim01.wav",
			"voices/l4d/common/action/rageat/rage_at_victim02.wav",
			"voices/l4d/common/action/rageat/rage_at_victim21.wav",
			"voices/l4d/common/action/rageat/rage_at_victim22.wav",
			"voices/l4d/common/action/rageat/rage_at_victim25.wav",
			"voices/l4d/common/action/rageat/rage_at_victim26.wav",
			"voices/l4d/common/action/rageat/rage_at_victim34.wav",
			"voices/l4d/common/action/rageat/rage_at_victim35.wav",
			"voices/l4d/common/action/rageat/snarl_4.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim20.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim21.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim22.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim23.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim24.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim25.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim26.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim27.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim28.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim29.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim30.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim31.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim32.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim33.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim34.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim35.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim36.wav",
			"voices/l4d/common/action/rageat/female/rage_at_victim37.wav",
		}

		self.SoundTbl_Pain = {
			"voices/l4d/common/action/been_shot/been_shot_01.wav",
			"voices/l4d/common/action/been_shot/been_shot_02.wav",
			"voices/l4d/common/action/been_shot/been_shot_04.wav",
			"voices/l4d/common/action/been_shot/been_shot_05.wav",
			"voices/l4d/common/action/been_shot/been_shot_06.wav",
			"voices/l4d/common/action/been_shot/been_shot_08.wav",
			"voices/l4d/common/action/been_shot/been_shot_09.wav",
			"voices/l4d/common/action/been_shot/been_shot_12.wav",
			"voices/l4d/common/action/been_shot/been_shot_13.wav",
			"voices/l4d/common/action/been_shot/been_shot_14.wav",
			"voices/l4d/common/action/been_shot/been_shot_18.wav",
			"voices/l4d/common/action/been_shot/been_shot_19.wav",
			"voices/l4d/common/action/been_shot/been_shot_20.wav",
			"voices/l4d/common/action/been_shot/been_shot_21.wav",
			"voices/l4d/common/action/been_shot/been_shot_22.wav",
			"voices/l4d/common/action/been_shot/been_shot_24.wav",
			"voices/l4d/common/action/been_shot/female/been_shot_30.wav",
			"voices/l4d/common/action/been_shot/female/been_shot_31.wav",
			"voices/l4d/common/action/been_shot/female/been_shot_32.wav",
			"voices/l4d/common/action/been_shot/female/been_shot_33.wav",
			"voices/l4d/common/action/been_shot/female/been_shot_34.wav",
			"voices/l4d/common/action/been_shot/female/been_shot_35.wav",
			"voices/l4d/common/action/been_shot/female/been_shot_36.wav",
			"voices/l4d/common/action/been_shot/female/been_shot_37.wav",
		}

		self.SoundTbl_Death = {
			"voices/l4d/common/action/die/death_14.wav",
			"voices/l4d/common/action/die/death_17.wav",
			"voices/l4d/common/action/die/death_18.wav",
			"voices/l4d/common/action/die/death_19.wav",
			"voices/l4d/common/action/die/death_22.wav",
			"voices/l4d/common/action/die/death_23.wav",
			"voices/l4d/common/action/die/death_24.wav",
			"voices/l4d/common/action/die/death_25.wav",
			"voices/l4d/common/action/die/death_26.wav",
			"voices/l4d/common/action/die/death_27.wav",
			"voices/l4d/common/action/die/death_28.wav",
			"voices/l4d/common/action/die/death_29.wav",
			"voices/l4d/common/action/die/death_30.wav",
			"voices/l4d/common/action/die/death_32.wav",
			"voices/l4d/common/action/die/death_33.wav",
			"voices/l4d/common/action/die/death_34.wav",
			"voices/l4d/common/action/die/death_35.wav",
			"voices/l4d/common/action/die/death_36.wav",
			"voices/l4d/common/action/die/death_37.wav",
			"voices/l4d/common/action/die/death_38.wav",
			"voices/l4d/common/action/die/female/death_40.wav",
			"voices/l4d/common/action/die/female/death_41.wav",
			"voices/l4d/common/action/die/female/death_42.wav",
			"voices/l4d/common/action/die/female/death_43.wav",
			"voices/l4d/common/action/die/female/death_44.wav",
			"voices/l4d/common/action/die/female/death_45.wav",
			"voices/l4d/common/action/die/female/death_46.wav",
			"voices/l4d/common/action/die/female/death_47.wav",
			"voices/l4d/common/action/die/female/death_48.wav",
			"voices/l4d/common/action/die/female/death_49.wav",
		}

		self.ToTU_Almanac_VoiceActor = "Common Infected (Left 4 Dead)"

		end

	end

	if self.TOTU_LNR_Walker then

		self.SoundTbl_Idle = {
			"voices/default/femwal/femzom_idle01.wav",
			"voices/default/femwal/femzom_idle02.wav",
			"voices/default/femwal/femzom_idle03.wav",
			"voices/default/femwal/femzom_idle04.wav",
			"voices/default/femwal/femzom_idle05.wav",
			"voices/default/femwal/femzom_idle06.wav",
			"voices/default/femwal/femzom_idle07.wav",
			"voices/default/femwal/femzom_idle08.wav",
			"voices/default/femwal/femzom_idle09.wav",
			"voices/default/femwal/femzom_idle10.wav",
			"voices/default/femwal/femzom_idle11.wav"
		}

		self.SoundTbl_Alert = {
			"voices/default/femwal/femzom_sighted01.wav",
			"voices/default/femwal/femzom_sighted02.wav",
			"voices/default/femwal/femzom_sighted03.wav",
			"voices/default/femwal/femzom_sighted04.wav",
			"voices/default/femwal/femzom_sighted05.wav",
			"voices/default/femwal/femzom_sighted06.wav",
			"voices/default/femwal/femzom_sighted07.wav",
			"voices/default/femwal/femzom_sighted08.wav",
			"voices/default/femwal/femzom_sighted09.wav",
			"voices/default/femwal/femzom_sighted10.wav",
			"voices/default/femwal/femzom_sighted11.wav"
		}

		self.SoundTbl_CombatIdle = {
			"voices/default/femwal/femzom_sighted01.wav",
			"voices/default/femwal/femzom_sighted02.wav",
			"voices/default/femwal/femzom_sighted03.wav",
			"voices/default/femwal/femzom_sighted04.wav",
			"voices/default/femwal/femzom_sighted05.wav",
			"voices/default/femwal/femzom_sighted06.wav",
			"voices/default/femwal/femzom_sighted07.wav",
			"voices/default/femwal/femzom_sighted08.wav",
			"voices/default/femwal/femzom_sighted09.wav",
			"voices/default/femwal/femzom_sighted10.wav",
			"voices/default/femwal/femzom_sighted11.wav"
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"voices/default/femwal/femzom_attack01.wav",
			"voices/default/femwal/femzom_attack02.wav",
			"voices/default/femwal/femzom_attack03.wav",
			"voices/default/femwal/femzom_attack04.wav",
			"voices/default/femwal/femzom_attack05.wav",
			"voices/default/femwal/femzom_attack06.wav",
			"voices/default/femwal/femzom_attack07.wav"
		}
		self.SoundTbl_LeapAttackJump = {
			"voices/default/femwal/femzom_attack01.wav",
			"voices/default/femwal/femzom_attack02.wav",
			"voices/default/femwal/femzom_attack03.wav",
			"voices/default/femwal/femzom_attack04.wav",
			"voices/default/femwal/femzom_attack05.wav",
			"voices/default/femwal/femzom_attack06.wav",
			"voices/default/femwal/femzom_attack07.wav"
		}

		self.SoundTbl_Pain = {
			"voices/default/femwal/femzom_pain01.wav",
			"voices/default/femwal/femzom_pain02.wav",
			"voices/default/femwal/femzom_pain03.wav",
			"voices/default/femwal/femzom_pain04.wav",
			"voices/default/femwal/femzom_pain05.wav",
			"voices/default/femwal/femzom_pain06.wav",
			"voices/default/femwal/femzom_pain07.wav"
		}

		self.SoundTbl_Death = {
			"voices/default/femwal/femzom_pain01.wav",
			"voices/default/femwal/femzom_pain02.wav",
			"voices/default/femwal/femzom_pain03.wav",
			"voices/default/femwal/femzom_pain04.wav",
			"voices/default/femwal/femzom_pain05.wav",
			"voices/default/femwal/femzom_pain06.wav",
			"voices/default/femwal/femzom_pain07.wav"
		}

		self.ToTU_Almanac_VoiceActor = "Female Zombie (No More Room In Hell)"

		if GetConVar("VJ_ToTU_General_DefaultVoices_AltWalker"):GetInt() == 1 then

			self.SoundTbl_Idle = {
				"voices/dlbiter/fem/idle_1.mp3",
				"voices/dlbiter/fem/idle_2.mp3",
				"voices/dlbiter/fem/idle_3.mp3",
				"voices/dlbiter/fem/idle_4.mp3"
			}

			self.SoundTbl_Alert = {
				"voices/dlbiter/fem/alert_1.mp3",
				"voices/dlbiter/fem/alert_2.mp3",
				"voices/dlbiter/fem/alert_3.mp3",
				"voices/dlbiter/fem/alert_4.mp3",
				"voices/dlbiter/fem/alert_5.mp3"
			}

			self.SoundTbl_CombatIdle = {
				"voices/dlbiter/fem/idle_1.mp3",
				"voices/dlbiter/fem/idle_2.mp3",
				"voices/dlbiter/fem/idle_3.mp3",
				"voices/dlbiter/fem/idle_4.mp3"
			}

			self.SoundTbl_BeforeMeleeAttack = {
				"voices/dlbiter/fem/attack_1.mp3",
				"voices/dlbiter/fem/attack_2.mp3",
				"voices/dlbiter/fem/attack_3.mp3",
				"voices/dlbiter/fem/attack_4.mp3",
				"voices/dlbiter/fem/attack_5.mp3",
				"voices/dlbiter/fem/attack_6.mp3"
			}
		
			self.SoundTbl_Pain = {
				"voices/dlbiter/fem/pain_1.mp3",
				"voices/dlbiter/fem/pain_2.mp3",
				"voices/dlbiter/fem/pain_3.mp3",
				"voices/dlbiter/fem/pain_4.mp3",
				"voices/dlbiter/fem/pain_5.mp3",
				"voices/dlbiter/fem/pain_6.mp3"
			}

			self.SoundTbl_Death = {
				"voices/dlbiter/fem/death_1.mp3",
				"voices/dlbiter/fem/death_2.mp3",
				"voices/dlbiter/fem/death_3.mp3",
				"voices/dlbiter/fem/death_4.mp3"
			}
			
			self.ToTU_Almanac_VoiceActor = "Female Biter (Dying Light)"

			if self.TOTU_LNR_Runner or self.ToTU_Rusher then
				self.SoundTbl_CombatIdle = {
					"voices/dlbiter/fem/berserker_1.mp3",
					"voices/dlbiter/fem/berserker_2.mp3",
					"voices/dlbiter/fem/berserker_3.mp3",
					"voices/dlbiter/fem/berserker_4.mp3"
				}
			end

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieWeapons()

	if self.TOTU_LNR_Crippled then return end

	self.ToTU_WeHaveAWeapon = true

	if self.MilZ_Grunt_IsGrunt then

		-- knives and guns
		if GetConVar("VJ_ToTU_MilZ_Weapons"):GetInt() == 1 then

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

	if self:GetClass() == "npc_vj_totu_deimos_redead" && !self.ToTU_Weaponized_PoopShitter && !self.ToTU_Weaponized_Shitter then

		self.ToTU_Weaponized_HasWeapon = true

		self.WeaponModel = ents.Create("prop_physics")
	
		local RandRedeadWeapon = math.random(1,7)
		if RandRedeadWeapon == 1 then

			self.WeaponModel:SetModel("models/totu/wep_knife_ct.mdl")
			self.ToTU_Weaponized_WeaponBleed = true

		elseif RandRedeadWeapon == 2 then

			self.WeaponModel:SetModel("models/weapons/w_crowbar.mdl")
			self.ToTU_Weaponized_WeaponBleed = true

		elseif RandRedeadWeapon == 3 then

			self.WeaponModel:SetModel("models/props_canal/mattpipe.mdl")

		elseif RandRedeadWeapon == 4 then

			self.WeaponModel:SetModel("models/totu/wep_axe.mdl")
			self.ToTU_Weaponized_WeaponBleed = true

		elseif RandRedeadWeapon == 5 then

			self.WeaponModel:SetModel("models/totu/wep_brokenbottle.mdl")
			self.ToTU_Weaponized_WeaponBleed = true

		elseif RandRedeadWeapon == 6 then

			self.WeaponModel:SetModel("models/totu/wep_pot.mdl")

		elseif RandRedeadWeapon == 7 then

			self.WeaponModel:SetModel("models/totu/wep_pan.mdl")

		end

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

		if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
			self.MeleeAttackDamage = math.Rand(10,15)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
			self.MeleeAttackDamage = math.Rand(15,20)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
			self.MeleeAttackDamage = math.Rand(20,25)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
			self.MeleeAttackDamage = math.Rand(25,30)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
			self.MeleeAttackDamage = math.Rand(30,35)
		else
			self.MeleeAttackDamage = math.Rand(15,20)
		end

		if self.ToTU_Weaponized_WeaponBleed then
		
			self.MeleeAttackBleedEnemy = true
			self.MeleeAttackBleedEnemyChance = 3
			self.MeleeAttackBleedEnemyDamage = 1
			self.MeleeAttackBleedEnemyTime = 1
			self.MeleeAttackBleedEnemyReps = 4
			self.MeleeAttackDamageType = DMG_SLASH

		end

	end



	if self:GetClass() == "npc_vj_totu_deimos_redead_grunt" then

		self.ToTU_Weaponized_HasWeapon = true

		self.WeaponModel = ents.Create("prop_physics")
	
		local RandRedeadWeapon = math.random(1,2)
		if RandRedeadWeapon == 1 then

			self.WeaponModel:SetModel("models/totu/wep_knife_ct.mdl")
			self.ToTU_Weaponized_WeaponBleed = true

		elseif RandRedeadWeapon == 2 then

			self.WeaponModel:SetModel("models/vj_weapons/w_glock.mdl")

		end

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

		if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
			self.MeleeAttackDamage = math.Rand(10,15)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
			self.MeleeAttackDamage = math.Rand(15,20)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
			self.MeleeAttackDamage = math.Rand(20,25)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
			self.MeleeAttackDamage = math.Rand(25,30)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
			self.MeleeAttackDamage = math.Rand(30,35)
		else
			self.MeleeAttackDamage = math.Rand(15,20)
		end

		if self.ToTU_Weaponized_WeaponBleed then
		
			self.MeleeAttackBleedEnemy = true
			self.MeleeAttackBleedEnemyChance = 3
			self.MeleeAttackBleedEnemyDamage = 1
			self.MeleeAttackBleedEnemyTime = 1
			self.MeleeAttackBleedEnemyReps = 4
			self.MeleeAttackDamageType = DMG_SLASH

		end

	end


	if self.DisableFindEnemy == true then

		if IsValid(self.WeaponModel) then 

			self.WeaponModel:SetMaterial("models/totu/bonemerge") 
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

	self.MilZ_HasKnife = true

	self.MeleeAttackBleedEnemy = true
	self.MeleeAttackBleedEnemyChance = 3
	self.MeleeAttackBleedEnemyDamage = 1
	self.MeleeAttackBleedEnemyTime = 1
	self.MeleeAttackBleedEnemyReps = 4
	self.MeleeAttackDamageType = DMG_SLASH
	self.SoundTbl_MeleeAttack = {""}

	self.WeaponModel = ents.Create("prop_physics")
	self.WeaponModel:SetModel("models/totu/wep_knife_ct.mdl")
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

	self.DisableRangeAttackAnimation = true

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

	if (math.random(1,GetConVar("VJ_ToTU_MilZ_ShootableGun_Chance"):GetInt()) == 1 && GetConVar("VJ_ToTU_MilZ_ShootableGun"):GetInt() == 1) or (self.VJ_IsBeingControlled && GetConVar("VJ_ToTU_General_PossessionUpgrades"):GetInt() == 1) then

		self.MilZ_CanShuutDeGun = true
		self.MilZ_GunAmmo = self.MilZ_GunAmmo + math.random(1,17)

		if self.VJ_IsBeingControlled && GetConVar("VJ_ToTU_General_PossessionUpgrades"):GetInt() == 1 then
			self.MilZ_GunAmmo = self.MilZ_GunAmmo + 8
		end

		self.HasRangeAttack = true 
		self.DisableDefaultRangeAttackCode = true 
		self.DisableRangeAttackAnimation = true 
		self.RangeAttackAnimationStopMovement = false 
		self.RangeDistance = 2000 
		self.RangeToMeleeDistance = 1 
		self.TimeUntilRangeAttackProjectileRelease = 0.1

		self.NextRangeAttackTime = 0.1
		self.NextRangeAttackTime_DoRand = 1
		
		if self.VJ_IsBeingControlled && GetConVar("VJ_ToTU_General_PossessionUpgrades"):GetInt() == 1 then
			self.NextRangeAttackTime = 0.1
			self.NextRangeAttackTime_DoRand = 0.35
		end

		if self.TOTU_LNR_Walker then

			self.AnimTbl_Run = {ACT_WALK_PISTOL}

			if self.TOTU_LNR_Runner then

				self.AnimTbl_Run = {ACT_RUN_PISTOL}

			end

			if self.ToTU_Rusher then

				self.AnimTbl_Run = {ACT_RUN_AIM_PISTOL}

			end

		elseif self.TOTU_LNR_Infected then

			if !self.TOTU_LNR_SuperSprinter && !self.ToTU_Rusher then

				self.AnimTbl_Run = {ACT_RUN_AIM_PISTOL}

			end

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		-- I'm Too Young To Die
		self.StartHealth = 35
		self.MeleeAttackDamage = math.Rand(1,5)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		-- Hey, Not Too Rough
		self.StartHealth = 75
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		-- Hurt Me Plenty
		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		-- Ultra Violence
		self.StartHealth = 275
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		-- NIGHTMARE!
		self.StartHealth = 600
		self.MeleeAttackDamage = math.Rand(25,30)

	else

		-- HMP failsafe incase the convar is set to an unsupported number
		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(10,15)

	end

	self:SetHealth(self.StartHealth)	

	self.TOTU_LNR_LegHP = self.StartHealth * 0.20

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)

	if key == "step" then
		self:FootStepSoundCode()
	end

	if key == "step" then
	
		util.ScreenShake(self:GetPos(), self.ToTU_WorldShakeOnMoveAmplitude, 100, 1, 1000)

		if
			self.MilZ_IsMilZ &&
			!self.MilZ_Det_IsDetonator &&
			self.MilZ_Ghillie_PlayChangeStateAnim != 2 &&
			!self.MilZ_Airman_IsAirman &&
			!self.MilZ_Hazmat_IsHazmat
		then

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
				VJ_EmitSound(self,"fx/footsteps/gear/gear"..math.random(1,3)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end

			if
				self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or
				self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or
				self:GetClass() == "npc_vj_totu_milzomb_tank" or
				self:GetClass() == "npc_vj_totu_fon_juggernaut" or
				self:GetClass() == "npc_vj_totu_fon_bulldozer"
			then
				VJ_EmitSound(self,"fx/footsteps/mil_big/step_"..math.random(1,4)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end


		end

		if self.MilZ_HasFlakSuit == true or self.MilZ_Det_IsDetonator then
			VJ_EmitSound(self,"fx/footsteps/mil_flak/step_"..math.random(1,4)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end

		if self:GetClass() == "npc_vj_totu_nightkin_squaller" && self.ToTU_Nightkin_Squaller_UsingIronWill then
			VJ_EmitSound(self,"fx/footsteps/squal/step_"..math.random(1,9)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end

		if self:GetClass() == "npc_vj_totu_nightkin_scylla" then
			VJ_EmitSound(self,"fx/footsteps/gol/step_"..math.random(1,5)..".wav",75,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end

		if self:GetClass() == "npc_vj_totu_weaponized_smog" then
			VJ_EmitSound(self,"monsters/tesla/tesla_biped_walk_0"..math.random(1,5)..".wav",75,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end

		if self:GetClass() == "npc_vj_totu_deimos_corrupt" then
			VJ_EmitSound(self,"fx/footsteps/squal/step_"..math.random(1,9)..".mp3",70,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end

		if self:GetClass() == "npc_vj_totu_deimos_corrupt_brute" or self:GetClass() == "npc_vj_totu_fon_lament" then
			VJ_EmitSound(self,"fx/footsteps/squal/step_"..math.random(1,9)..".mp3",75,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end

		if self:GetClass() == "npc_vj_totu_deimos_corrupt_brute" or self:GetClass() == "npc_vj_totu_fon_lament" then
			
			if self:GetActivity() == ACT_RUN or self:GetActivity() == ACT_MELEE_ATTACK2 then
				VJ_EmitSound(self,"fx/ambru/metal_run0"..math.random(1,8)..".wav",75,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			else
				VJ_EmitSound(self,"fx/ambru/metal_walk0"..math.random(1,8)..".wav",75,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end
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
		VJ_EmitSound(self,"fx/footsteps/concrete"..math.random(1,4)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
	end

	if key == "crawl" && self:WaterLevel() > 0 && self:WaterLevel() < 3 then
		VJ_EmitSound(self,"player/footsteps/wade" .. math.random(1,8) .. ".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
	end

	if key == "climb" then
		VJ_EmitSound(self,"player/footsteps/ladder"..math.random(1,4)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
	end	

	if key == "split" then
		if self:GetClass() == "npc_vj_totu_deimos_carcass" or self:GetClass() == "npc_vj_totu_deimos_cazador" then
			self:ToTU_Carcass_Split()
		end
	end

	if key == "attack" then
		self:MeleeAttackCode()
	end

	if key == "attack_range" then
		self:RangeAttackCode() 
	end

	if key == "attack_stomp" then
	
		local effectdata = EffectData()
		effectdata:SetOrigin(self:GetPos())
		effectdata:SetScale( 500 )
		util.Effect( "ThumperDust", effectdata )
		util.ScreenShake(self:GetPos(), self.ToTU_WorldShakeOnMoveAmplitude, 100, 1, 1000)
		util.VJ_SphereDamage(self, self, self:GetPos(), 190, math.Rand(10,15), DMG_VEHICLE, true, true, {Force=100})
		VJ_EmitSound(self,"fx/footsteps/beh/step_"..math.random(1,4)..".mp3",75,100)

	end

	if key == "drop_weapon" then
		self:DropTheFuckignWeaponGoddamn()
	end

	if key == "death" then

		VJ_EmitSound(self,"physics/body/body_medium_impact_soft"..math.random(1,7)..".wav",75,100)

		self:DropTheFuckignWeaponGoddamn()

		if self.MilZ_IsMilZ then

			if !self.MilZ_Det_IsDetonator && !self.MilZ_Airman_IsAirman && !self.MilZ_Hazmat_IsHazmat then
				VJ_EmitSound(self,"vj_lnrhl2/zombine/gear"..math.random(1,3)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end

			if
				self.MilZ_HasFlakSuit or
				self.MilZ_Det_IsDetonator
			then
				VJ_EmitSound(self,"fx/footsteps/mil_flak/step_"..math.random(1,4)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end

		end

		if
			self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or
			self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or
			self:GetClass() == "npc_vj_totu_milzomb_tank" or
			self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" or
			self:GetClass() == "npc_vj_totu_weaponized_smog" or
			self:GetClass() == "npc_vj_totu_nightkin_scylla" or
			self:GetClass() == "npc_vj_totu_fon_juggernaut" or
			self:GetClass() == "npc_vj_totu_fon_bulldozer"
		then
			if self.MilZ_IsMilZ && !MilZ_Det_IsDetonator then
				VJ_EmitSound(self,"fx/footsteps/mil_big/step_"..math.random(1,4)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end
			util.ScreenShake(self:GetPos(), self.ToTU_WorldShakeOnMoveAmplitude, 100, 1, 1000)
		end

		if self:GetClass() == "npc_vj_totu_nightkin_squaller" then
			VJ_EmitSound(self,"fx/footsteps/squal/step_"..math.random(1,9)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end

		if self:GetClass() == "npc_vj_totu_nightkin_scylla" then
			VJ_EmitSound(self,"fx/footsteps/gol/step_"..math.random(1,5)..".wav",75,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			VJ_EmitSound(self,"fx/footsteps/smog/step_"..math.random(1,5)..".wav",75,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end

		if (self:GetClass() == "npc_vj_totu_milzomb_ghost_walker" or self:GetClass() == "npc_vj_totu_milzomb_ghost") && self.MilZ_Ghost_CloakBroke then
			if GetConVar("VJ_ToTU_MilZ_Ghost_Smokes"):GetInt() == 1 then		
				if math.random(1,GetConVar("VJ_ToTU_MilZ_Ghost_Smokes_Chance"):GetInt()) == 1 then
					local carproj = ents.Create("obj_vj_totu_smokeg")
					carproj:SetPos(self:LocalToWorld(Vector(0,0,0)))
					carproj:SetAngles(Angle(math.random(0,360),math.random(0,360),math.random(0,360)))
					carproj:SetOwner(self)
					carproj:Spawn()
					carproj:Activate()
					local phys = carproj:GetPhysicsObject()
					if IsValid(phys) then
						phys:SetVelocity(Vector(math.Rand(-25,25),math.Rand(-25,25),math.Rand(0,50)))
					end
				end
			end
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

		if IsValid(self.TOTU_LNR_DoorToBreak) then

			local doorDmg = self.MeleeAttackDamage
			local door = self.TOTU_LNR_DoorToBreak

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
						VJ_EmitSound(door,"fx/doorhit/wood_heavy_"..math.random(1,3)..".mp3",70,100)
					else
						VJ_EmitSound(door,"fx/doorhit/wood_weak_"..math.random(1,3)..".mp3",70,100)
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
						VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",70,100)
					else
						VJ_EmitSound(door,"fx/doorhit/train_wagon_weak_"..math.random(1,3)..".mp3",70,100)
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
					VJ_EmitSound(door,"fx/doorhit/wood_heavy_"..math.random(1,3)..".mp3",70,100)
				else
					VJ_EmitSound(door,"fx/doorhit/wood_weak_"..math.random(1,3)..".mp3",70,100)
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
					VJ_EmitSound(door,"fx/doorhit/metal_heavy_"..math.random(1,3)..".mp3",65,100)
					if self.ToTU_BigZombie or self.ToTU_GiantZombie then
						VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",65,100)
						VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",60,100)
						VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",60,100)
						VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",60,100)
					else
						VJ_EmitSound(door,"fx/doorhit/train_wagon_weak_"..math.random(1,3)..".mp3",60,100)
						VJ_EmitSound(door,"fx/doorhit/train_wagon_weak_"..math.random(1,3)..".mp3",60,100)
					end
				end
			elseif 
				door:GetModel() == "models/props_lab/elevatordoor.mdl" or
				door:GetModel() == "models/props_mining/elevator01_cagedoor.mdl"
			then
				VJ_EmitSound(door,"fx/doorhit/wire_heavy_"..math.random(1,3)..".mp3",60,100)
				VJ_EmitSound(door,"fx/doorhit/grid_metal_heavy_"..math.random(1,4)..".mp3",60,100)
			elseif 
				door:GetModel() == "models/props_mining/techgate01.mdl" or
				door:GetModel() == "models/props_doors/checkpoint_door_01.mdl" or
				door:GetModel() == "models/props_doors/checkpoint_door_-01.mdl" 
			then
				VJ_EmitSound(door,"fx/doorhit/grid_metal_heavy_"..math.random(1,4)..".mp3",60,100)
				VJ_EmitSound(door,"fx/doorhit/metal_heavy_"..math.random(1,3)..".mp3",60,100)
				VJ_EmitSound(door,"fx/doorhit/metal_heavy_"..math.random(1,3)..".mp3",60,100)
				if self.ToTU_BigZombie or self.ToTU_GiantZombie then
					VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",60,100)
					VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",60,100)
					VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",60,100)
					VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",60,100)
				else
					VJ_EmitSound(door,"fx/doorhit/train_wagon_weak_"..math.random(1,3)..".mp3",60,100)
					VJ_EmitSound(door,"fx/doorhit/train_wagon_weak_"..math.random(1,3)..".mp3",60,100)
				end
			elseif 
				door:GetModel() == "models/props_doors/door_rotate_112.mdl"
			then
				if self.ToTU_BigZombie or self.ToTU_GiantZombie then
					VJ_EmitSound(door,"physics/glass/glass_impact_hard"..math.random(1,3)..".wav",60,100)
					VJ_EmitSound(door,"physics/glass/glass_bottle_impact_hard"..math.random(1,3)..".wav",60,100)
					VJ_EmitSound(door,"physics/glass/glass_sheet_impact_hard"..math.random(1,3)..".wav",60,100)
				else
					VJ_EmitSound(door,"physics/glass/glass_sheet_impact_hard"..math.random(1,3)..".wav",60,100)
				end
			elseif door:GetModel() == "models/props_doors/doorglassmain01.mdl" or
				door:GetModel() == 	"models/props_doors/door_sliding_112.mdl" or
				door:GetModel() == 	"models/props_doors/doorglassmain01_small.mdl" 
			then
				VJ_EmitSound(door,"fx/doorhit/wire_heavy_"..math.random(1,3)..".mp3",60,100)
				if self.ToTU_BigZombie or self.ToTU_GiantZombie then
					VJ_EmitSound(door,"fx/doorhit/train_wagon_heavy_"..math.random(1,4)..".mp3",60,100)
				else
					VJ_EmitSound(door,"fx/doorhit/train_wagon_weak_"..math.random(1,3)..".mp3",60,100)
				end
			else
				VJ_EmitSound(door,"physics/wood/wood_panel_impact_hard1.wav",60,100)
			end

			if 
				self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or 
				self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or 
				self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" or 
				self:GetClass() == "npc_vj_totu_milzomb_tank" or 
				self:GetClass() == "npc_vj_totu_weaponized_smog" or 
				self:GetClass() == "npc_vj_totu_nightkin_scylla" or
				self:GetClass() == "npc_vj_totu_fon_juggernaut" or
				self:GetClass() == "npc_vj_totu_fon_bulldozer"
			then
				util.ScreenShake(self:GetPos(), self.ToTU_WorldShakeOnMoveAmplitude, 100, 1, 1000)
			end

			if door.DoorHealth == nil then
				door.DoorHealth = 200 - doorDmg
			elseif door.DoorHealth <= 0 then
				VJ_EmitSound(self,self.SoundTbl_MeleeAttackMiss,self.MeleeAttackMissSoundLevel,self:VJ_DecideSoundPitch(self.MeleeAttackMissSoundPitch.a,self.MeleeAttackMissSoundPitch.b))
			return -- To prevent door props making a duplication when it shouldn't
			else
				door.DoorHealth = door.DoorHealth - doorDmg
			end
			
			if
				(door:GetClass() == "prop_door_rotating" or
				door:GetClass() == "func_door_rotating" or
				door:GetClass() == "prop_door_dynamic") &&
				door.DoorHealth <= 0
			then

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

	if self.MilZ_Ghost_IsGhost && !self.MilZ_Ghost_CloakBroke then
		if IsValid(self) then
			self:RemoveAllDecals()
		end
	end

	if
		self:GetSequence() == self:LookupSequence("shove_backwards_01") or
		self:GetSequence() == self:LookupSequence("shove_backwards_02") or
		self:GetSequence() == self:LookupSequence("shove_backwards_03") or
		self:GetSequence() == self:LookupSequence("shove_backwards_04") or
		self:GetSequence() == self:LookupSequence("shove_backwards_05") or
		self:GetSequence() == self:LookupSequence("shove_backwards_06") or
		self:GetSequence() == self:LookupSequence("shove_backwards_07") or
		self:GetSequence() == self:LookupSequence("shove_backwards_08") or
		self:GetSequence() == self:LookupSequence("shove_backwards_09") or
		self:GetSequence() == self:LookupSequence("shove_backwards_10") or
		self:GetSequence() == self:LookupSequence("shove_forward_01") or
		self:GetSequence() == self:LookupSequence("ShoveReact") or
		self:GetSequence() == self:LookupSequence("ShoveReactBehind") or
		self:GetSequence() == self:LookupSequence("shove_backwards_01") or
		self:GetSequence() == self:LookupSequence("Run_Stumble_01") or
		self:GetSequence() == self:LookupSequence("Run_Stumble_01_Short")
	then
		self.ToTU_IsStumbling = true
	else
		self.ToTU_IsStumbling = false
	end

	if
		GetConVar("VJ_TOTU_LNR_BreakDoors"):GetInt() == 0 or
		self.TOTU_LNR_Crippled or
		self.Dead or
		self.DeathAnimationCodeRan or
		self.Flinching or
		-- there's probably a better way to do this
		self:GetSequence() == self:LookupSequence("nz_spawn_climbout_fast") or
		self:GetSequence() == self:LookupSequence("nz_spawn_jump") or
		self:GetSequence() == self:LookupSequence("shove_forward_01") or
		self:GetSequence() == self:LookupSequence("infectionrise") or
		self:GetSequence() == self:LookupSequence("infectionrise2") or
		self:GetSequence() == self:LookupSequence("slumprise_a") or
		self:GetSequence() == self:LookupSequence("slumprise_a2") or
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
		self.MeleeAttacking == true or
		self.RangeAttacking == true or
		self.LeapAttacking == true
	then
		self.TOTU_LNR_DoorToBreak = NULL
	return end

	if self.VJ_IsBeingControlled then return end

	if VJ_AnimationExists(self,ACT_OPEN_DOOR) then
		if !IsValid(self.TOTU_LNR_DoorToBreak) then
			for _,v in pairs(ents.FindInSphere(self:GetPos(),40)) do
				if v:GetClass() == "func_door_rotating" && v:Visible(self) then self.TOTU_LNR_DoorToBreak = v end
				if v:GetClass() == "prop_door_dynamic" && !v.ToTU_DynamDoor_Broken && v:Visible(self) then self.TOTU_LNR_DoorToBreak = v end
				if v:GetClass() == "prop_door_rotating" && v:Visible(self) then
					local anim = string.lower(v:GetSequenceName(v:GetSequence()))
					if string.find(anim,"idle") or string.find(anim,"open") /*or string.find(anim,"locked")*/ then
						self.TOTU_LNR_DoorToBreak = v
						break
					end
				end
			end
		else
		    if self.PlayingAttackAnimation or !self.TOTU_LNR_DoorToBreak:Visible(self) then self.TOTU_LNR_DoorToBreak = NULL return end
			if self:GetActivity() != ACT_OPEN_DOOR then
				local ang = self:GetAngles()
				self:SetAngles(Angle(ang.x,(self.TOTU_LNR_DoorToBreak:GetPos() -self:GetPos()):Angle().y,ang.z))
				self:VJ_ACT_PLAYACTIVITY(ACT_OPEN_DOOR,true,false,false)
			end
		end
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink_AIEnabled()

	self:Zombie_CustomOnThink_AIEnabled()

	if self.VJ_IsBeingControlled && self.VJ_TheController:KeyDown(IN_DUCK) then
		if !IsValid(self.TOTU_LNR_DoorToBreak) then
			for _,v in pairs(ents.FindInSphere(self:GetPos(),40)) do
				if v:GetClass() == "func_door_rotating" && v:Visible(self) then self.TOTU_LNR_DoorToBreak = v end
				if v:GetClass() == "prop_door_dynamic" && !v.ToTU_DynamDoor_Broken && v:Visible(self) then self.TOTU_LNR_DoorToBreak = v end
				if v:GetClass() == "prop_door_rotating" && v:Visible(self) then
					local anim = string.lower(v:GetSequenceName(v:GetSequence()))
					if string.find(anim,"idle") or string.find(anim,"open") /*or string.find(anim,"locked")*/ then
						self.TOTU_LNR_DoorToBreak = v
						break
					end
				end
			end
		else
		    if self.PlayingAttackAnimation or !self.TOTU_LNR_DoorToBreak:Visible(self) /*or (self:GetActivity() == ACT_OPEN_DOOR && dist <= 100)*/ then self.TOTU_LNR_DoorToBreak = NULL return end
			if self:GetActivity() != ACT_OPEN_DOOR then
				local ang = self:GetAngles()
				self:SetAngles(Angle(ang.x,(self.TOTU_LNR_DoorToBreak:GetPos() -self:GetPos()):Angle().y,ang.z))
				self:VJ_ACT_PLAYACTIVITY(ACT_OPEN_DOOR,true,false,false)
			end
		end
	end

	if !self.ToTU_Weaponized_IsHL2Zomb && !self.TOTU_LNR_Crippled && !self.VJ_IsBeingControlled && self.ToTU_CanRest then
		if
			!self.Alerted &&
			!IsValid(self:GetEnemy()) &&
			!self:IsMoving() &&
			CurTime() > self.ToTU_NextRestT &&
			self.ToTU_Resting != 1 &&
			self.ToTU_Resting != 2 &&
			!self:IsBusy()
		then
			local sleept = math.Rand(15, 30) -- How long it should sleep
			if math.random(1,2) == 1 then
				self.ToTU_Resting = 1
				self.AnimTbl_IdleStand = {ACT_BUSY_SIT_GROUND}
				self:VJ_ACT_PLAYACTIVITY(ACT_BUSY_SIT_GROUND_ENTRY, true, false, false)
			else
				self.ToTU_Resting = 2
				self.AnimTbl_IdleStand = {ACT_BUSY_SIT_CHAIR}
				self:VJ_ACT_PLAYACTIVITY(ACT_HL2MP_ZOMBIE_SLUMP_RISE, true, false, false)
			end
			self.DisableWandering = true
			self.HasIdleSounds = false
			self.CanTurnWhileStationary = false
			self.TurningSpeed = 0
			-- self:SetState(VJ_STATE_ONLY_ANIMATION, sleept)

			timer.Simple(sleept, function() -- Reset after sleept seconds

				if IsValid(self) && (self.ToTU_Resting == 1 or self.ToTU_Resting == 2)then
					if math.random(1,2) == 1 then
						if self.ToTU_Resting == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_GMOD_TAUNT_PERSISTENCE, true, false, false)
							self.AnimTbl_IdleStand = {ACT_BUSY_SIT_CHAIR}
							self.ToTU_Resting = 2
						elseif self.ToTU_Resting == 2 then
							self:VJ_ACT_PLAYACTIVITY(ACT_BUSY_SIT_CHAIR_ENTRY, true, false, false)
							self.AnimTbl_IdleStand = {ACT_BUSY_SIT_GROUND}
							self.ToTU_Resting = 1
						end
						local sleept2 = math.random(15,30)
						timer.Simple(sleept2, function()
							if IsValid(self) then
								if self.ToTU_Resting == 1 then
									self:VJ_ACT_PLAYACTIVITY(ACT_BUSY_SIT_GROUND_EXIT, true, false, false)
								elseif self.ToTU_Resting == 2 then
									self:VJ_ACT_PLAYACTIVITY(ACT_BUSY_QUEUE, true, false, false)
								end
								self.ToTU_Resting = 0
								self.ToTU_NextRestT = CurTime() + math.Rand(30, 180)
								if GetConVar("vj_npc_nowandering"):GetInt() != 1 then
									self.DisableWandering = false
								end
								self.HasIdleSounds = true
								self.CanTurnWhileStationary = true
								self.TurningSpeed = 15
								self.AnimTbl_IdleStand = {ACT_IDLE}
								if self.TOTU_LNR_UsingRelaxedIdle == true then
									self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
								end
							end
						end)
					else
						if self.ToTU_Resting == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_BUSY_SIT_GROUND_EXIT, true, false, false)
						elseif self.ToTU_Resting == 2 then
							self:VJ_ACT_PLAYACTIVITY(ACT_BUSY_QUEUE, true, false, false)
						end
						self.ToTU_Resting = 0
						self.ToTU_NextRestT = CurTime() + math.Rand(30, 180)
						if GetConVar("vj_npc_nowandering"):GetInt() != 1 then
							self.DisableWandering = false
						end
						self.HasIdleSounds = true
						self.CanTurnWhileStationary = true
						self.TurningSpeed = 15
						self.AnimTbl_IdleStand = {ACT_IDLE}
						if self.TOTU_LNR_UsingRelaxedIdle == true then
							self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
						end
					end
				end
			end)
		end
	end

	if self.ToTU_CanDodge && !self.TOTU_LNR_Crippled then

		if
			self.MeleeAttacking or
			self.RangeAttacking or
			self.LeapAttacking or
			self.Dead or
			self:GetEnemy() == nil or
			self.TOTU_LNR_Crippled or
			self.ToTU_Crawling or
			self:GetActivity() == ACT_STEP_BACK or
			self:GetActivity() == ACT_STEP_FORE or
			self:GetActivity() == ACT_SMALL_FLINCH or
			self:GetActivity() == ACT_BIG_FLINCH or
			self:GetActivity() == ACT_FLINCH_STOMACH or
			self:GetActivity() == ACT_GMOD_SHOWOFF_STAND_01 or
			self:GetActivity() == ACT_JUMP or
			self:GetActivity() == ACT_GLIDE or
			self:GetActivity() == ACT_LAND or
			self:GetActivity() == ACT_CLIMB_UP or
			self:GetActivity() == ACT_CLIMB_DOWN or
			self:GetActivity() == ACT_CLIMB_DISMOUNT or
			self:GetSequence() == self:LookupSequence("shove_forward_01") or
			self:GetSequence() == self:LookupSequence("Run_Stumble_01") or
			!self:IsOnGround() or
			self.ToTU_IsStumbling
		then return end

		local WalkerDodgeAnims = {ACT_STEP_LEFT, ACT_STEP_RIGHT}
		local InfectedDodgeAnims = {ACT_STRAFE_LEFT, ACT_STRAFE_RIGHT}
		local TheHammerIsOperationalAgain = self:GetEnemy()

		if self.ToTU_NextDodgeT < CurTime() then

			if self:GetEnemy() != nil && self:Visible(TheHammerIsOperationalAgain) && !self.VJ_IsBeingControlled && !self.ToTU_Dodge_CloseIn then

				if self.TOTU_LNR_Infected or (self.TOTU_LNR_Walker && self.ToTU_Rusher) or (self.ToTU_Deimos && self.ToTU_Weaponized_Redead_Running) then

					self:VJ_ACT_PLAYACTIVITY(InfectedDodgeAnims,true,0.9,false)
					self.ToTU_NextDodgeT = CurTime() + math.random(3,7)

				else

					self:VJ_ACT_PLAYACTIVITY(WalkerDodgeAnims,true,2,false)
					self.ToTU_NextDodgeT = CurTime() + math.random(5,15)

				end

			end
			
			if self.VJ_IsBeingControlled then

		
				if
					(self.VJ_TheController:KeyDown(IN_JUMP) &&
					(self.VJ_TheController:KeyDown(IN_MOVELEFT)))
				then

					if self.TOTU_LNR_Infected or self.ToTU_Mutated or (self.ToTU_Deimos && self.ToTU_Weaponized_Redead_Running) or (self.TOTU_LNR_Walker && self.ToTU_Rusher) then

						self:VJ_ACT_PLAYACTIVITY(ACT_STRAFE_LEFT,true,0.9,false)

					else

						self:VJ_ACT_PLAYACTIVITY(ACT_STEP_LEFT,true,2,false)

					end

					self.ToTU_NextDodgeT = CurTime() + math.random(2,3)

				end

				if
					(self.VJ_TheController:KeyDown(IN_JUMP) &&
					(self.VJ_TheController:KeyDown(IN_MOVERIGHT)))
				then
				
					if self.TOTU_LNR_Infected or self.ToTU_Mutated or (self.ToTU_Deimos && self.ToTU_Weaponized_Redead_Running) or (self.TOTU_LNR_Walker && self.ToTU_Rusher) then

						self:VJ_ACT_PLAYACTIVITY(ACT_STRAFE_RIGHT,true,0.9,false)

					else

						self:VJ_ACT_PLAYACTIVITY(ACT_STEP_RIGHT,true,2,false)

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

	/*
	if self.VJ_IsBeingControlled && !self.ToTU_Mutated then
		if self.VJ_TheController:KeyDown(IN_USE) && self.VJ_TheController:KeyDown(IN_RELOAD) then
			self:ToTU_Mutate()
		end
	end
	*/

	/*
	if
		self.VJ_IsBeingControlled &&
		self.VJ_TheController:KeyDown(IN_ZOOM) &&
		self.ToTU_CanJumpT < CurTime() &&
		!self.TOTU_LNR_Crippled
	then

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
	*/

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnEat(status, statusInfo)
	if status == "CheckFood" then
		return self:Health() != self:GetMaxHealth()
	elseif status == "BeginEating" then
		self:SetIdleAnimation({ACT_HL2MP_IDLE_CROUCH_ZOMBIE_01}, true)
		local anim = {"vjseq_Stand_to_crouch"}
		return
			self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
	elseif status == "Eat" then
		local food = self.EatingData.Ent
		local damage = 5
		local foodHP = food:Health()
		self:SetHealth(math.Clamp(self:Health() + ((damage > foodHP and foodHP) or damage), self:Health(), self:GetMaxHealth()))
		food:SetHealth(foodHP - damage)
		local bloodData = food.BloodData
		if bloodData then
			local bloodPos = food:GetPos() + food:OBBCenter()
			local bloodParticle = VJ_PICK(bloodData.Particle)
			if bloodParticle then
				ParticleEffect(bloodParticle, bloodPos, self:GetAngles())
			end
		end
		return 1
	elseif status == "StopEating" then
		if statusInfo != "Dead" && self.EatingData.AnimStatus != "None" then
			local anim = {"vjseq_Crouch_to_stand"}				
			return
				self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
		end
	end
	return 0
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

	if self.ToTU_InstantDigout or self:GetClass() == "npc_vj_totu_weaponized_corrupt" or self:GetClass() == "npc_vj_totu_deimos_corrupt_brute" or self:GetClass() == "npc_vj_totu_fon_lament" or (self:GetClass() == "npc_vj_totu_weaponized_redead" && self.ToTU_Weaponized_Redead_Infectee) then return end

	if self.ToTU_Nightkin_Squaller_UsingIronWill or self:GetClass() == "npc_vj_totu_weaponized_cyst" then return end

	if self.ToTU_Weaponized_Redead_CannotDigout then return end

	self:SetMaterial("models/totu/bonemerge")

	if IsValid(self.WeaponModel) then
		self.WeaponModel:SetMaterial("models/totu/bonemerge")
		self.WeaponModel:DrawShadow(false)
	end

	if IsValid(self.bobm) then
		self.bobm:SetMaterial("models/totu/bonemerge")
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
	self.CanInvestigate = false

	if self.MilZ_Det_IsDetonator then
		self.MilZ_Det_Beep_CanBeep = false
	end

	if self.MilZ_Ghost_IsGhost then
		self.MilZ_Ghost_CloakT = CurTime() + 1.3
	end

	if self:GetClass() == "npc_vj_totu_milzomb_tank" then
		self.MilZ_Tank_NextShumbleT = CurTime() + 3
	end

	timer.Simple(1.3,function() if IsValid(self) then

		if GetConVar("VJ_ToTU_Spawn_AlertSound"):GetInt() == 1 then
			VJ_CreateSound(self,self.SoundTbl_Alert,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.AlertSoundPitch.a, self.AlertSoundPitch.b))
		end

		self:DrawShadow(true)
		self:RemoveFlags(FL_NOTARGET)
		self.GodMode = false
		self:DoChangeMovementType(VJ_MOVETYPE_GROUND)
		self.HasSounds = true
		self.HasPoseParameterLooking = true
        self.DisableFindEnemy = false		
		self.CallForHelp = true

		if self.ToTU_IsFreakOfNature then
			self:StartSoundTrack()
		end

		if math.random(1,100) == 1 && GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
			self:VJ_ACT_PLAYACTIVITY({"vjseq_reanimated"},true,false,false)
		else
			if math.random(1,11) == 1 then
				self:VJ_ACT_PLAYACTIVITY({"vjseq_nz_spawn_climbout_fast","vjseq_nz_spawn_jump"},true,false,false)
			else
				self:VJ_ACT_PLAYACTIVITY({
					"vjseq_Climb120_00_InPlace",
					"vjseq_Climb120_00a_InPlace",
					"vjseq_Climb120_03_InPlace",
					"vjseq_Climb120_03a_InPlace",
					"vjseq_Climb120_04_InPlace",
					"vjseq_Climb144_00_InPlace",
					"vjseq_Climb144_00a_InPlace",
					"vjseq_Climb144_01_InPlace",
					"vjseq_Climb144_03_InPlace",
					"vjseq_Climb144_03a_InPlace",
					"vjseq_Climb144_04_InPlace",
					"vjseq_Climb72_03_InPlace",
					"vjseq_Climb72_04_InPlace",
					"vjseq_Climb72_05_InPlace",
					"vjseq_Climb72_06_InPlace",
					"vjseq_Climb72_07_InPlace",
					"vjseq_Climb96_00_InPlace",
					"vjseq_Climb96_00a_InPlace",
					"vjseq_Climb96_03_InPlace",
					"vjseq_Climb96_03a_InPlace",
					"vjseq_Climb96_04a_InPlace",
					"vjseq_Climb96_05_InPlace"
					},true,false,false)
				self.ToTU_Digout_DelayVis = true
				self.CanTurnWhileStationary = false
			end
		end

		if self.ToTU_Digout_DelayVis then
			timer.Simple(0.2,function() if IsValid(self) then
				self:SetMaterial()
				if IsValid(self.WeaponModel) then
					self.WeaponModel:SetMaterial()
					self.WeaponModel:DrawShadow(true)
				end
				if IsValid(self.bobm) then
					self.bobm:SetMaterial()
					self.bobm:DrawShadow(true)
				end
			end end)
		else
			self:SetMaterial()
			if IsValid(self.WeaponModel) then
				self.WeaponModel:SetMaterial()
				self.WeaponModel:DrawShadow(true)
			end
			if IsValid(self.bobm) then
				self.bobm:SetMaterial()
				self.bobm:DrawShadow(true)
			end
		end
		
		timer.Simple(5,function() if IsValid(self) then
			self.CanTurnWhileStationary = true
			self.CanInvestigate = true
		end end)
		
		VJ_EmitSound(self,"fx/dirtintro"..math.random(1,2)..".wav",75,100)
		ParticleEffect("advisor_plat_break",self:GetPos(),self:GetAngles(),self)
		ParticleEffect("strider_impale_ground",self:GetPos(),self:GetAngles(),self)

		if self:GetClass() == "npc_vj_totu_milzomb_detonator" or self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
			self.MilZ_Det_Beep_CanBeep = true
		end

	end end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RiseFromGround_Instant()

		if math.random(1,100) == 1 && GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
			self:VJ_ACT_PLAYACTIVITY({"vjseq_reanimated"},true,false,false)
		else
			if math.random(1,11) == 1 then
				self:VJ_ACT_PLAYACTIVITY({"vjseq_nz_spawn_climbout_fast","vjseq_nz_spawn_jump"},true,false,false)
			else
				self:VJ_ACT_PLAYACTIVITY({
					"vjseq_Climb120_00_InPlace",
					"vjseq_Climb120_00a_InPlace",
					"vjseq_Climb120_03_InPlace",
					"vjseq_Climb120_03a_InPlace",
					"vjseq_Climb120_04_InPlace",
					"vjseq_Climb144_00_InPlace",
					"vjseq_Climb144_00a_InPlace",
					"vjseq_Climb144_01_InPlace",
					"vjseq_Climb144_03_InPlace",
					"vjseq_Climb144_03a_InPlace",
					"vjseq_Climb144_04_InPlace",
					"vjseq_Climb72_03_InPlace",
					"vjseq_Climb72_04_InPlace",
					"vjseq_Climb72_05_InPlace",
					"vjseq_Climb72_06_InPlace",
					"vjseq_Climb72_07_InPlace",
					"vjseq_Climb96_00_InPlace",
					"vjseq_Climb96_00a_InPlace",
					"vjseq_Climb96_03_InPlace",
					"vjseq_Climb96_03a_InPlace",
					"vjseq_Climb96_04a_InPlace",
					"vjseq_Climb96_05_InPlace"
					},true,false,false)
				self.ToTU_Digout_DelayVis = true
				self.CanTurnWhileStationary = false
			end
		end
	VJ_EmitSound(self,"vj_lnrhl2/shared/dirtintro"..math.random(1,2)..".wav",75,100)
	ParticleEffect("advisor_plat_break",self:GetPos(),self:GetAngles(),self)
	ParticleEffect("advisor_plat_break",self:GetPos()+self:GetUp()*50,self:GetAngles(),self)
	ParticleEffect("advisor_plat_break",self:GetPos()+self:GetUp()*-50,self:GetAngles(),self)
	ParticleEffect("strider_impale_ground",self:GetPos(),self:GetAngles(),self)
	ParticleEffect("strider_impale_ground",self:GetPos()+self:GetUp()*50,self:GetAngles(),self)
	ParticleEffect("strider_impale_ground",self:GetPos()+self:GetUp()*-50,self:GetAngles(),self)

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

		self.TOTU_LNR_LegHP = self.TOTU_LNR_LegHP *3

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

		if self.TOTU_LNR_Infected then

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
    if self.TOTU_LNR_Crippled or self.VJ_IsBeingControlled then self.NextIdleStandTime = 0 end 
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnChangeMovementType(movType)

	if
		GetConVar("VJ_TOTU_LNR_JumpClimb"):GetInt() == 0 or
		self.TOTU_LNR_Crippled
	then
        self:CapabilitiesRemove(bit.bor(CAP_MOVE_JUMP))
	end

	if
		GetConVar("VJ_TOTU_LNR_JumpClimb"):GetInt() == 0 or
		GetConVar("VJ_TOTU_LNR_JumpClimb"):GetInt() == 1 or
		self.TOTU_LNR_Crippled
	then
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

    if self.TOTU_LNR_Crippled then
		self:SetPoseParameter("aim_pitch",0) 
		self:SetPoseParameter("spine_yaw",0)
		self.PoseParameterLooking_Names = {pitch={"head_pitch"}, yaw={"head_yaw"}, roll={}}
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_IntMsg(ply)

	-- ply:ChatPrint("INTERACT/USE + RELOAD: Mutate. (Jank)")
	-- ply:ChatPrint("ZOOM: Toggle Jumping.")

	if self.ToTU_Deimos && self:GetClass() != "npc_vj_totu_deimos_cazador" && self:GetClass() != "npc_vj_totu_deimos_cazador_torso" then
		ply:ChatPrint("RELOAD: Speed Up.")
		self.ToTU_Weaponized_Redead_NextRunT = 0
		self.ToTU_Weaponized_Carcass_NextZombineRunT = 0
	end


	if GetConVar("VJ_ToTU_General_PossessionUpgrades"):GetInt() == 1 then
		if self.TOTU_LNR_Crippled then
			self:UnCripple()
		end
		if self.TOTU_LNR_Walker then
			if
				(self:GetClass() != "npc_vj_totu_milzomb_tank" && self:GetClass() != "npc_vj_totu_milzomb_detonator_bulk") or
				(self:GetClass() == "npc_vj_totu_milzomb_tank" && GetConVar("VJ_ToTU_MilZ_Tank_SubtypeBlacklisted"):GetInt() == 0) or
				(self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" && GetConVar("VJ_ToTU_MilZ_Det_Bulk_SubtypeBlacklisted"):GetInt() == 0)
			then
				self.AnimTbl_Walk = {ACT_RUN}
				self.AnimTbl_Run = {ACT_SPRINT}
				self.ToTU_Rusher = true
			end
		end
		if self.TOTU_LNR_Infected then
			if
				(self:GetClass() != "npc_vj_totu_milzomb_detonator" && self:GetClass() != "npc_vj_totu_nightkin_scylla") or
				(self:GetClass() == "npc_vj_totu_milzomb_detonator" && GetConVar("VJ_ToTU_MilZ_Det_SubtypeBlacklisted"):GetInt() == 0) or
				(self:GetClass() == "npc_vj_totu_nightkin_scylla" && GetConVar("VJ_ToTU_Nightkin_Scylla_SubtypeBlacklisted"):GetInt() == 0)
			then
				self.AnimTbl_Walk = {ACT_SPRINT}
				self.AnimTbl_Run = {ACT_RUN_RELAXED}
				self.ToTU_Rusher = true
			end
		end
		if self:GetClass() == "npc_vj_totu_milzomb_walker" or self:GetClass() == "npc_vj_totu_milzomb_infected" then
			self.MilZ_HasFlakSuit = true
			self:SetBodygroup(2,3)
			local badtotheboner = CreateSound(self, "ui/gascan_spawn.wav")
			badtotheboner:SetSoundLevel(70)
			badtotheboner:Play()
			if self:GetClass() == "npc_vj_totu_milzomb_walker" then
				if self.MilZ_HasKnife then
					self.MilZ_HasKnife = false
					self.WeaponModel:Remove()
					self.MeleeAttackBleedEnemy = false
				end
				if self.MilZ_HasGrenades then
					self.MilZ_HasGrenades = false
				end
				if !self.MiLZ_HasGun then
					self.ToTU_WeHaveAWeapon = true
					self:MilZ_GiveGun()
					self.AnimTbl_Run = {ACT_RUN_AIM_PISTOL}
				end
			end
			if self:GetClass() == "npc_vj_totu_milzomb_infected" then
				if self.MilZ_HasGun then
					self.MilZ_HasGun = false
					self.WeaponModel:Remove()
				end
				if !self.MilZ_HasKnife then
					self.ToTU_WeHaveAWeapon = true
					self:MilZ_GiveKnife()
				end
				if !self.MilZ_HasGrenades then
					self.HasRangeAttack = true
					self.RangeAttackEntityToSpawn = "obj_vj_totu_milzgren"
					self.RangeAttackAnimationFaceEnemy = true
					self.AnimTbl_RangeAttack = {"vjseq_throw_right"}
					self.RangeDistance = 750 
					self.RangeToMeleeDistance = 1 
					self.RangeAttackAngleRadius = 100
					self.TimeUntilRangeAttackProjectileRelease = 1.6
					self.NextRangeAttackTime = math.random(5,10)
					self.RangeUseAttachmentForPos = true 
					self.RangeUseAttachmentForPosID = "anim_attachment_RH"
					self.RangeAttackPos_Forward = 20
					self.RangeAttackPos_Up = 20

					self.MilZ_HasGrenades = true

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
					self.AnimTbl_RangeAttack = {"vjseq_throw_left"}
					self.RangeUseAttachmentForPosID = "anim_attachment_LH"
				end
			end
			if !self.MilZ_Corpsman then
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

				if self:GetClass() == "npc_vj_totu_milzomb_walker" then
					self:SetModel("models/totu/milzomb_walker_corpsman.mdl")
				else
					self:SetModel("models/totu/milzomb_infected_corpsman.mdl")
				end
			end
			effects.BeamRingPoint(self:GetPos()+self:GetUp()*55, 0.25, 2, 100, 5, 0, Color(35, 140, 0), {material="sprites/physgbeamb", framerate=20})
			effects.BeamRingPoint(self:GetPos()+self:GetUp()*35, 0.25, 2, 150, 5, 0, Color(35, 140, 0), {material="sprites/physgbeamb", framerate=20})
			effects.BeamRingPoint(self:GetPos()+self:GetUp()*15, 0.25, 2, 100, 5, 0, Color(35, 140, 0), {material="sprites/physgbeamb", framerate=20})
		end
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
			if !self.MilZ_HasFlakSuit then
				self.MilZ_HasFlakSuit = true
				if self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
					self:SetBodygroup(1,3)
				else
					self:SetBodygroup(2,3)
				end
				local badtotheboner = CreateSound(self, "ui/gascan_spawn.wav")
				badtotheboner:SetSoundLevel(70)
				badtotheboner:Play()				
				effects.BeamRingPoint(self:GetPos()+self:GetUp()*55, 0.25, 2, 100, 5, 0, Color(35, 140, 0), {material="sprites/physgbeamb", framerate=20})
				effects.BeamRingPoint(self:GetPos()+self:GetUp()*35, 0.25, 2, 150, 5, 0, Color(35, 140, 0), {material="sprites/physgbeamb", framerate=20})
				effects.BeamRingPoint(self:GetPos()+self:GetUp()*15, 0.25, 2, 100, 5, 0, Color(35, 140, 0), {material="sprites/physgbeamb", framerate=20})
			end
		end
	end

	if self:GetClass() == "npc_vj_totu_deimos_revenant" then
		-- ply:ChatPrint("JUMP Near Corpse: Revive Corpse.")
	end

	if self.MilZ_Hazmat_IsHazmat then
		ply:ChatPrint("MOUSE2/RIGHT CLICK: Explode.")
	end

	if self:GetClass() == "npc_vj_totu_milzomb_tank" then
		ply:ChatPrint("JUMP: Stumble forward.")
		self.MilZ_Tank_NextShumbleT = 0
	end

	if self.MilZ_Det_IsDetonator then
		if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
			ply:ChatPrint("MOUSE1/LEFT CLICK: Send them to hell.")
		else
			ply:ChatPrint("MOUSE1/LEFT CLICK: Explode.")
		end
	end

	if self:GetClass() == "npc_vj_totu_deimos_redead" then

		ply:ChatPrint("JUMP: Give yourself a weapon (if you have none).")

		self.HasRangeAttack = true
		self.RangeAttackAnimationFaceEnemy = true
		self.AnimTbl_RangeAttack = {"vjseq_throwsomeshit"}
		self.RangeDistance = 750 
		self.RangeToMeleeDistance = 1 
		self.RangeAttackAngleRadius = 100
		self.TimeUntilRangeAttackProjectileRelease = 1.6
		self.NextRangeAttackTime = math.random(5,10)
		self.RangeAttackPos_Up = 65
		self.RangeAttackPos_Right = -10

	end

	if self:GetClass() == "npc_vj_totu_deimos_redead_guard" then
		self.ToTU_Weaponized_Redead_Guard_HasVest = true
		self:SetBodygroup(3,1)
		if math.random(1,3) == 1 then
			self:SetBodygroup(3,2)
		end
		self.ToTU_Weaponized_Redead_Guard_HasHelmet = true
		self:SetBodygroup(2,0)
		self.ToTU_Weaponized_Redead_Guard_HelmetHealth = 100
		local badtotheboner = CreateSound(self, "ui/gascan_spawn.wav")
		badtotheboner:SetSoundLevel(70)
		badtotheboner:Play()
		effects.BeamRingPoint(self:GetPos()+self:GetUp()*55, 0.25, 2, 100, 5, 0, Color(220, 0, 255), {material="sprites/physgbeamb", framerate=20})
		effects.BeamRingPoint(self:GetPos()+self:GetUp()*35, 0.25, 2, 150, 5, 0, Color(220, 0, 255), {material="sprites/physgbeamb", framerate=20})
		effects.BeamRingPoint(self:GetPos()+self:GetUp()*15, 0.25, 2, 100, 5, 0, Color(220, 0, 255), {material="sprites/physgbeamb", framerate=20})
	end

	if self:GetClass() == "npc_vj_totu_deimos_redead_grunt" then

		ply:ChatPrint("JUMP: Give yourself a weapon (if you have none).")

		self.HasRangeAttack = true
		self.RangeAttackAnimationFaceEnemy = true
		self.AnimTbl_RangeAttack = {"vjseq_throwsomeshit"}
		self.RangeDistance = 750 
		self.RangeToMeleeDistance = 1 
		self.RangeAttackAngleRadius = 100
		self.TimeUntilRangeAttackProjectileRelease = 1.6
		self.NextRangeAttackTime = math.random(5,10)
		self.RangeAttackPos_Up = 65
		self.RangeAttackPos_Right = -10
		self.MilZ_Grenades = math.random(99,99)

		self.MilZ_HasFlakSuit = true
		self:SetBodygroup(2,3)

		self:SetModel("models/totu/remort_med.mdl")
		self.ToTU_Weaponized_Redead_Grunt_IsCaretaker = true
		local badtotheboner = CreateSound(self, "ui/gascan_spawn.wav")
		badtotheboner:SetSoundLevel(70)
		badtotheboner:Play()
		effects.BeamRingPoint(self:GetPos()+self:GetUp()*55, 0.25, 2, 100, 5, 0, Color(220, 0, 255), {material="sprites/physgbeamb", framerate=20})
		effects.BeamRingPoint(self:GetPos()+self:GetUp()*35, 0.25, 2, 150, 5, 0, Color(220, 0, 255), {material="sprites/physgbeamb", framerate=20})
		effects.BeamRingPoint(self:GetPos()+self:GetUp()*15, 0.25, 2, 100, 5, 0, Color(220, 0, 255), {material="sprites/physgbeamb", framerate=20})
	end

	if GetConVar("VJ_TOTU_LNR_BreakDoors"):GetInt() == 1 then

		ply:ChatPrint("DUCK/CROUCH Next to Door: Start breaking down door.")

	end

	if self.ToTU_CanDodge then

		ply:ChatPrint("LEFT/RIGHT + JUMP: Dodge.")
		self.ToTU_NextDodgeT = 0

	end

	if self.MilZ_CanShuutDeGun == true && (!self.TOTU_LNR_Infected or (self.TOTU_LNR_Infected && !self.TOTU_LNR_SuperSprinter && !self.ToTU_Rusher)) then
		if GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 && math.random(1,100) == 1 then
			ply:ChatPrint("MOUSE2/RIGHT CLICK: Cap a motherfucker.")
		else
			ply:ChatPrint("MOUSE2/RIGHT CLICK: Shoot the gun.")
		end
	end

	if self.MilZ_HasGrenades == true then
		ply:ChatPrint("RMB: Throw a grenade.")
	end

	if self.MilZ_Corpsman then
		ply:ChatPrint("You will automatically heal nearby allies.")
	end

	if self:GetClass() == "npc_vj_totu_nightkin_skitter" or self.MiLZ_Ghillie_IsGhillie then
		ply:ChatPrint("MOUSE2/RIGHT CLICK: Stand/Crouch.")
	end

	if self:GetClass() == "npc_vj_totu_nightkin_spectre" then
		ply:ChatPrint("JUMP: Phase Toggle.")
	end

	-- add this sound at some point
	local badtotheboner = CreateSound(ply, "ui/pickup_guitarriff10.wav", ply)
	badtotheboner:SetSoundLevel(40)
	badtotheboner:Play()

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)


	if self.TOTU_LNR_Walker then

		net.Start("VJ_TOTU_LNR_Walker_HUD")
		net.WriteBool(false)
		net.WriteEntity(self)
		net.Send(ply)

		function self.VJ_TheControllerEntity:CustomOnStopControlling()
			net.Start("VJ_TOTU_LNR_Walker_HUD")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.Send(ply)
		end

	end

	if self.TOTU_LNR_Infected then

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

		else

			net.Start("VJ_TOTU_LNR_Infected_HUD")
			net.WriteBool(false)
			net.WriteEntity(self)
			net.Send(ply)

			function self.VJ_TheControllerEntity:CustomOnStopControlling()
				net.Start("VJ_TOTU_LNR_Infected_HUD")
				net.WriteBool(true)
				net.WriteEntity(self)
				net.Send(ply)
			end

		end

	end
	
	if self.ToTU_Deimos then

		net.Start("VJ_TOTU_Deimos_HUD")
		net.WriteBool(false)
		net.WriteEntity(self)
		net.Send(ply)

		function self.VJ_TheControllerEntity:CustomOnStopControlling()
			net.Start("VJ_TOTU_Deimos_HUD")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.Send(ply)
		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInvestigate(ent)

	if self.ToTU_Resting != 0 then
		if self.ToTU_Resting == 1 then
			self:VJ_ACT_PLAYACTIVITY(ACT_BUSY_SIT_CHAIR_EXIT, true, false, false)
		elseif self.ToTU_Resting == 2 then
			self:VJ_ACT_PLAYACTIVITY(ACT_BUSY_STAND, true, false, false)
		end
		self.ToTU_Resting = 0
		self.ToTU_NextRestT = CurTime() + math.Rand(30, 180)
		if GetConVar("vj_npc_nowandering"):GetInt() != 1 then
			self.DisableWandering = false
		end
		self.HasIdleSounds = true
		self.CanTurnWhileStationary = true
		self.TurningSpeed = 15
		self.AnimTbl_IdleStand = {ACT_IDLE}
		if self.TOTU_LNR_UsingRelaxedIdle == true then
			self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAlert(ent)

	if self:GetClass() == "npc_vj_totu_deimos_carcass" or self:GetClass() == "npc_vj_totu_deimos_carcass_torso" then

		self.ToTU_Weaponized_Carcass_NextZombineRunT = CurTime() + math.random(3,7)

	end

	if self:GetClass() == "npc_vj_totu_deimos_cyst" then

		self.ToTU_Weaponized_Carcass_NextZombineRunT = CurTime() + math.random(7,15)

	end

	if !self.VJ_IsBeingControlled then
		if
			self:GetClass() == "npc_vj_totu_deimos_redead" or
			self:GetClass() == "npc_vj_totu_deimos_redead_guard" or
			self:GetClass() == "npc_vj_totu_deimos_redead_sci" or
			self:GetClass() == "npc_vj_totu_deimos_corrupt" or
			self:GetClass() == "npc_vj_totu_deimos_corrupt_brute" or
			self:GetClass() == "npc_vj_totu_fon_lament" or
			self:GetClass() == "npc_vj_totu_deimos_redead_grunt" or
			self:GetClass() == "npc_vj_totu_deimos_reborn" or
			self:GetClass() == "npc_vj_totu_deimos_cancer"
		then

			self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(3,7)

		end
	end

	if self.ToTU_Resting != 0 then
		if self.ToTU_Resting == 1 then
			self:VJ_ACT_PLAYACTIVITY(ACT_BUSY_SIT_CHAIR_EXIT, true, false, false)
		elseif self.ToTU_Resting == 2 then
			self:VJ_ACT_PLAYACTIVITY(ACT_BUSY_STAND, true, false, false)
		end
		self.ToTU_Resting = 0
		self.ToTU_NextRestT = CurTime() + math.Rand(30, 180)
		if GetConVar("vj_npc_nowandering"):GetInt() != 1 then
			self.DisableWandering = false
		end
		self.HasIdleSounds = true
		self.CanTurnWhileStationary = true
		self.TurningSpeed = 15
		self.AnimTbl_IdleStand = {ACT_IDLE}
		if self.TOTU_LNR_UsingRelaxedIdle == true then
			self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
		end
	end


	if self.MiLZ_Ghillie_IsGhillie && self.MilZ_Ghillie_PlayChangeStateAnim == 1 then
		if
			self.TOTU_LNR_Crippled or
			self.ToTU_Crawling or
			self:GetClass() == "npc_vj_totu_deimos_cyst" or
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
			self:GetSequence() == self:LookupSequence("Run_Stumble_01") or
			self:GetSequence() == self:LookupSequence("attack_jumpstomp") or
			self.ToTU_Resting == 1 or
			self.ToTU_Resting == 2
		then
		return end
		self:ToTU_Ghillie_StartCrawling()
		self.MilZ_Ghillie_PlayChangeStateAnim_T = CurTime() + (0.5)
		local anim = {"vjseq_Stand_to_crouch"}
		self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
	end

	if self:GetClass() == "npc_vj_totu_nightkin_skitter" && self.ToTU_Nightkin_Skitter_PlayChangeStateAnim == 1 then
		if
			self.TOTU_LNR_Crippled or
			self.ToTU_Crawling or
			self:GetClass() == "npc_vj_totu_deimos_cyst" or
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
			self:GetSequence() == self:LookupSequence("Run_Stumble_01") or
			self:GetSequence() == self:LookupSequence("attack_jumpstomp") or
			self.ToTU_Resting == 1 or
			self.ToTU_Resting == 2
		then
		return end
		self:ToTU_Skitter_StartCrawling()
		self.ToTU_Nightkin_Skitter_PlayChangeStateAnimT = CurTime() + (0.5)
		local anim = {"vjseq_Stand_to_crouch"}
		self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
	end

	if self.VJ_IsBeingControlled or self.TOTU_LNR_Crippled or self.ToTU_Weaponized_IsHL2Zomb then return end

	self.ToTU_NextDodgeT = CurTime() + math.random(5,10)

	if self.TOTU_LNR_Infected or (self.ToTU_Deimos && !self.ToTU_Weaponized_IsHL2Zomb && self:GetClass() != "npc_vj_totu_deimos_corrupt" && self:GetClass() != "npc_vj_totu_deimos_corrupt_brute" && self:GetClass() != "npc_vj_totu_fon_lament") then

		if self:GetClass() == "npc_vj_totu_milzomb_ghost" then

			self.AnimTbl_IdleStand = {ACT_IDLE_AIM_STEALTH}

		else

			self.AnimTbl_IdleStand = {ACT_IDLE_ANGRY}

		end

	end
	
	if self.MilZ_Det_IsDetonator then
		self.MilZ_Det_Beep_BeepT = 0
	end

	if self:GetClass() == "npc_vj_totu_milzomb_tank" then
		self.MilZ_Tank_NextShumbleT = CurTime() + math.random(3,15)
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnResetEnemy()

	if self.VJ_IsBeingControlled or self.TOTU_LNR_Crippled or self.ToTU_Weaponized_IsHL2Zomb then return end

	if self.TOTU_LNR_Infected or (self.ToTU_Deimos && !self.ToTU_Weaponized_IsHL2Zomb && self:GetClass() != "npc_vj_totu_deimos_corrupt") then

		if self.TOTU_LNR_UsingRelaxedIdle then

			if (self.ToTU_Deimos && !self.ToTU_Weaponized_IsHL2Zomb && self:GetClass() != "npc_vj_totu_deimos_corrupt" && self:GetClass() != "npc_vj_totu_deimos_corrupt_brute" && self:GetClass() != "npc_vj_totu_fon_lament") then
				self.AnimTbl_IdleStand = {ACT_IDLE}
			else
				self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
			end

		else

			if (self.ToTU_Deimos && !self.ToTU_Weaponized_IsHL2Zomb && self:GetClass() != "npc_vj_totu_deimos_corrupt" && self:GetClass() != "npc_vj_totu_deimos_corrupt_brute" && self:GetClass() != "npc_vj_totu_fon_lament") then
				self.AnimTbl_IdleStand = {ACT_IDLE_AIM_STIMULATED}
			else
				self.AnimTbl_IdleStand = {ACT_IDLE}
			end

		end

	end
	
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
		self:VJ_ACT_PLAYACTIVITY({"vjseq_Running_to_Standing","vjseq_Running_to_Standing_02"},true,false,false)
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMeleeAttack_AfterChecks(hitEnt, isProp)

	if self:IsOnFire() then hitEnt:Ignite(4) end

    if self.TOTU_LNR_Biter && !isProp && !self.TOTU_LNR_Crippled then	

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
	
	if IsValid(self.WeaponModel) && self.WeaponModel:GetModel() == "models/totu/wep_knife_ct.mdl" then

		if hitEnt.IsVJBaseSNPC && VJ_PICK(hitEnt.CustomBlood_Particle) then

			ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))

		elseif (hitEnt:IsPlayer() or hitEnt:IsNPC() or hitEnt:IsNextBot()) then

			ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))

		end

	end

	if self.ToTU_Nightkin_IsKin or self.ToTU_Weaponized_IsHL2Zomb then

		if hitEnt.IsVJBaseSNPC && VJ_PICK(hitEnt.CustomBlood_Particle) then

			ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
			ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))

		elseif (hitEnt:IsPlayer() or hitEnt:IsNPC() or hitEnt:IsNextBot()) then

			ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
			ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))

		end

	end

	if (self:GetClass() == "npc_vj_totu_deimos_corrupt" or self:GetClass() == "npc_vj_totu_deimos_corrupt_brute" or self:GetClass() == "npc_vj_totu_fon_lament") && self:GetSequence() != self:LookupSequence("attack2") then
			if hitEnt.IsVJBaseSNPC && VJ_PICK(hitEnt.CustomBlood_Particle) then

			ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,self,self:LookupAttachment("bloodeffect"))
			ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,self,self:LookupAttachment("bloodeffect"))

		elseif (hitEnt:IsPlayer() or hitEnt:IsNPC() or hitEnt:IsNextBot()) then

			ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("bloodeffect"))
			ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("bloodeffect"))

		end
	end

	if self.ToTU_Weaponized_WeaponBleed then
			if hitEnt.IsVJBaseSNPC && VJ_PICK(hitEnt.CustomBlood_Particle) then

			ParticleEffectAttach(VJ_PICK(hitEnt.CustomBlood_Particle),PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))

		elseif (hitEnt:IsPlayer() or hitEnt:IsNPC() or hitEnt:IsNextBot()) then

			ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))

		end
	end

    -- if hitEnt:IsPlayer() && hitEnt:Health() < self.MeleeAttackDamage + 1 && GetConVar("VJ_ToTU_LNR_Infection"):GetInt() == 1 then
       -- VJ_TOTU_LNR_SetPlayerZombie(hitEnt,self,self)
	-- end

    if hitEnt:IsPlayer() && hitEnt:Health() < self.MeleeAttackDamage + 1 then
		VJ_TOTU_LNR_SetPlayerZombie(hitEnt,self,self)
	end

	if GetConVar("VJ_TOTU_LNR_InfectionHit"):GetInt() == 0 then return end

	if math.random(1,GetConVar("VJ_TOTU_LNR_InfectionChance"):GetInt()) == 1 && (hitEnt:LookupBone("ValveBiped.Bip01_Pelvis") != nil) && !hitEnt.TOTU_LNR_InfectedVictim then

		if (hitEnt:IsPlayer() && hitEnt:Armor() < 25 && GetConVar("sbox_godmode"):GetInt() == 0) or hitEnt:IsNPC() then

			if hitEnt.TOTU_InfectedVictim then return end

			hitEnt.TOTU_InfectedVictim = true
			VJ_ToTU_LNR_InfectionApply(hitEnt,self)

		end

	end

	return false

end	
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMeleeAttack_Miss()

	if self.TOTU_LNR_Biter then

		if self.MeleeAttacking && !self:IsMoving() && self:GetSequence() != self:LookupSequence("choke_eat") then

			self.PlayingAttackAnimation = false
			self:StopAttacks(false)
			self.vACT_StopAttacks = false	
			self:VJ_ACT_PLAYACTIVITY("vjseq_choke_miss",true,false,true)

		end

	end

	if 
		(
			self.TOTU_LNR_Infected or
			self.TOTU_LNR_Walker && GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 or
			self.ToTU_Deimos && 
			!self.ToTU_Weaponized_IsHL2Zomb && 
			self:GetClass() != "npc_vj_totu_deimos_corrupt" && 
			self:GetClass() != "npc_vj_totu_deimos_corrupt_brute" && 
			self:GetClass() != "npc_vj_totu_fon_lament"
		) &&
		!self:IsMoving() && 
		!self.TOTU_LNR_Crippled && 
		!self.ToTU_WeHaveAWeapon

	then

		self.PlayingAttackAnimation = false
		self:StopAttacks(false)
		self.vACT_StopAttacks = false	
		self:VJ_ACT_PLAYACTIVITY("vjseq_choke_miss",true,false,true)

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMeleeAttack_BeforeStartTimer(seed)

	self:Zombie_CustomOnMeleeAttack_BeforeStartTimer(seed)

	if
		self:GetClass() == "npc_vj_totu_milzomb_detonator" && !self.MilZ_Det_Beep_CanBeep or
		(self:GetClass() == "npc_vj_totu_nightkin_shrieker" && self.ToTU_Nightkin_Shrieker_CanShriek) or
		self.ToTU_Weaponized_IsHL2Zomb or
		self:GetClass() == "npc_vj_totu_deimos_corrupt" or
		self:GetClass() == "npc_vj_totu_fon_lament" or
		self:GetClass() == "npc_vj_totu_deimos_corrupt_brute"
		then
	return end

	-- Melee Sounds	--
	if self.TOTU_LNR_Biter && !self.TOTU_LNR_Crippled then

        self.SoundTbl_MeleeAttackExtra = {
        "fx/zombie_bite1.wav",
        "fx/zombie_bite2.wav",
        "fx/zombie_bite3.wav"
		}

		self.SoundTbl_MeleeAttack = {
			""
		}

	elseif self.ToTU_Nightkin_IsKin or self.ToTU_Weaponized_IsHL2Zomb then

        self.SoundTbl_MeleeAttackExtra = {
			"fx/zombie_slice_1.wav",
			"fx/zombie_slice_2.wav",
			"fx/zombie_slice_3.wav",
			"fx/zombie_slice_4.wav",
			"fx/zombie_slice_5.wav",
			"fx/zombie_slice_6.wav"
		}

		self.SoundTbl_MeleeAttack = {
			""
		}

	else

		self.SoundTbl_MeleeAttackExtra = {
			""
		}

		self.SoundTbl_MeleeAttack = {
			"fx/hit_punch_01.wav",
			"fx/hit_punch_02.wav",
			"fx/hit_punch_03.wav",
			"fx/hit_punch_04.wav",
			"fx/hit_punch_05.wav",
			"fx/hit_punch_06.wav",
			"fx/hit_punch_07.wav",
			"fx/hit_punch_08.wav"
		}

	end

    if IsValid(self.WeaponModel) then

		if self.WeaponModel:GetModel() == "models/totu/wep_knife_ct.mdl" then 

			self.SoundTbl_MeleeAttackExtra = {
				"fx/knife/knife_hit1.wav",
				"fx/knife/knife_hit2.wav",
				"fx/knife/knife_hit3.wav",
				"fx/knife/knife_hit4.wav",
				"fx/knife/knife_stab.wav"
			}

			self.SoundTbl_MeleeAttack = {
				""
			}

		end

		if self.WeaponModel:GetModel() == "models/vj_weapons/w_glock.mdl" then

			self.SoundTbl_MeleeAttackExtra = {
				"fx/weapon/rifle_swing_hit_infected10.wav",
				"fx/weapon/rifle_swing_hit_infected11.wav",
				"fx/weapon/rifle_swing_hit_infected12.wav",
				"fx/weapon/rifle_swing_hit_infected7.wav",
				"fx/weapon/rifle_swing_hit_infected8.wav",
				"fx/weapon/rifle_swing_hit_infected9.wav"
			}

			self.SoundTbl_MeleeAttackMiss = {
				"fx/weapon/swish_weaponswing_swipe5.wav",
				"fx/weapon/swish_weaponswing_swipe6.wav"
			}

		end

		if self.WeaponModel:GetModel() == "models/weapons/w_crowbar.mdl" then

			self.SoundTbl_MeleeAttackExtra = {
				"fx/weapon/axe_impact_flesh1.wav",
				"fx/weapon/axe_impact_flesh2.wav",
				"fx/weapon/axe_impact_flesh3.wav",
				"fx/weapon/axe_impact_flesh4.wav"
			}

			self.SoundTbl_MeleeAttackMiss = {
				"weapons/iceaxe/iceaxe_swing1.wav"
			}

		end

		if self.WeaponModel:GetModel() == "models/props_canal/mattpipe.mdl" then

			self.SoundTbl_MeleeAttackExtra = {
				"physics/metal/metal_canister_impact_hard1.wav",
				"physics/metal/metal_canister_impact_hard2.wav",
				"physics/metal/metal_canister_impact_hard3.wav"
			}

			self.SoundTbl_MeleeAttack = {
				"physics/body/body_medium_impact_hard1.wav",
				"physics/body/body_medium_impact_hard2.wav",
				"physics/body/body_medium_impact_hard3.wav",
				"physics/body/body_medium_impact_hard4.wav",
				"physics/body/body_medium_impact_hard5.wav",
				"physics/body/body_medium_impact_hard6.wav"
			}

			self.SoundTbl_MeleeAttackMiss = {
				"weapons/iceaxe/iceaxe_swing1.wav"
			}

		end

		if self.WeaponModel:GetModel() == "models/totu/wep_axe.mdl" then

			self.SoundTbl_MeleeAttackExtra = {
				"fx/weapon/melee_axe_01.wav",
				"fx/weapon/melee_axe_02.wav",
				"fx/weapon/melee_axe_03.wav"
			}

			self.SoundTbl_MeleeAttackMiss = {
				"weapons/iceaxe/iceaxe_swing1.wav"
			}

		end

		if self.WeaponModel:GetModel() == "models/totu/wep_brokenbottle.mdl" then
			self.SoundTbl_MeleeAttack = {""}
			self.SoundTbl_MeleeAttackExtra = {
				"fx/knife/knife_stab.wav"
			}
		end

		if self.WeaponModel:GetModel() == "models/totu/wep_pot.mdl" or self.WeaponModel:GetModel() == "models/totu/wep_pan.mdl" then
			self.SoundTbl_MeleeAttackExtra = {
				"fx/weapon/melee_frying_pan_01.wav",
				"fx/weapon/melee_frying_pan_02.wav",
				"fx/weapon/melee_frying_pan_03.wav",
				"fx/weapon/melee_frying_pan_04.wav"
			}
		end

	end

	-- When Crawling or Crippled --
    if self.TOTU_LNR_Crippled then
		if self.TOTU_LNR_Walker then
			self.AnimTbl_MeleeAttack = {"vjseq_crawl_attack"}	
		elseif self.TOTU_LNR_Infected or self.ToTU_Deimos then
			self.AnimTbl_MeleeAttack = {"vjseq_crawl_attack2"}
		end
	end

	if self.TOTU_LNR_Crippled then return end

	-- When Dismembered or for Biters --
	if self.TOTU_LNR_Biter && !self.TOTU_LNR_Crippled then

		if self:IsMoving() then
		
			self.MeleeAttackAnimationAllowOtherTasks = true
			self.AnimTbl_MeleeAttack = {"vjges_Choke_Eat"}		
			self.HasMeleeAttackMissSounds = true
			self.HasMeleeAttackKnockBack = false 	
			self.SlowPlayerOnMeleeAttack = false
			
		elseif !self:IsMoving() && !self.TOTU_LNR_Crippled then
		
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

    if !self.TOTU_LNR_Crippled or !self.TOTU_LNR_Biter or !self.ToTU_Crawling then

		-- When Standing --
		if !self:IsMoving() && !self.TOTU_LNR_Biter then

			self.MeleeAttackAnimationAllowOtherTasks = false

			if self.ToTU_WeHaveAWeapon == true then

				if self.WeaponModel:GetModel() == "models/totu/wep_knife_ct.mdl" then
					if self.TOTU_LNR_Walker then
						if math.random(1,3) == 1 then
							self.SoundTbl_MeleeAttackExtra = {
								"fx/knife/knife_stab.wav"
							}
							self.AnimTbl_MeleeAttack = {
								"vjseq_geen_stabs_a_bitch"
							}
						else
							self.SoundTbl_MeleeAttackExtra = {
								"fx/knife/knife_hit1.wav",
								"fx/knife/knife_hit2.wav",
								"fx/knife/knife_hit3.wav",
								"fx/knife/knife_hit4.wav"
							}
							self.AnimTbl_MeleeAttack = {
								"vjseq_weapon_swing_overhead_slow",
								"vjseq_weapon_swing_side_slow"
							}
						end
					else
						if math.random(1,3) == 1 then
							self.SoundTbl_MeleeAttackExtra = {
								"fx/knife/knife_stab.wav"
							}
							self.AnimTbl_MeleeAttack = {
								"vjseq_geen_stabs_a_bitch"
							}
						else
							self.SoundTbl_MeleeAttackExtra = {
								"fx/knife/knife_hit1.wav",
								"fx/knife/knife_hit2.wav",
								"fx/knife/knife_hit3.wav",
								"fx/knife/knife_hit4.wav"
							}
							self.AnimTbl_MeleeAttack = {
								"vjseq_weapon_swing_overhead",
								"vjseq_weapon_swing_side"
							}
						end
					end
				end

				if self.WeaponModel:GetModel() == "models/vj_weapons/w_glock.mdl" then
					if self.TOTU_LNR_Walker then
						self.AnimTbl_MeleeAttack = {
							"vjseq_weapon_swing_overhead_slow",
							"vjseq_weapon_swing_side_slow"
						}
					else
						self.AnimTbl_MeleeAttack = {
							"vjseq_weapon_swing_overhead",
							"vjseq_weapon_swing_side"
						}
					end
				end

				if self.WeaponModel:GetModel() == "models/weapons/w_crowbar.mdl" or self.WeaponModel:GetModel() == "models/props_canal/mattpipe.mdl" or self.WeaponModel:GetModel() == "models/totu/wep_axe.mdl" then
					self.AnimTbl_MeleeAttack = {
						"vjges_melee_2h_left",
						"vjges_melee_2h_overhead",
						"vjges_melee_2h_right"
					}
				end

				if self.WeaponModel:GetModel() == "models/totu/wep_brokenbottle.mdl" then
					self.SoundTbl_MeleeAttack = {""}
					self.SoundTbl_MeleeAttackExtra = {
						"fx/knife/knife_stab.wav"
					}
					self.AnimTbl_MeleeAttack = {
						"vjseq_geen_stabs_a_bitch"
					}
				end

				if self.WeaponModel:GetModel() == "models/totu/wep_pot.mdl" or self.WeaponModel:GetModel() == "models/totu/wep_pan.mdl" then
					if self.TOTU_LNR_Walker then
						self.AnimTbl_MeleeAttack = {
							"vjseq_weapon_swing_overhead_slow",
							"vjseq_weapon_swing_side_slow"
						}
					else
						self.AnimTbl_MeleeAttack = {
							"vjseq_weapon_swing_overhead",
							"vjseq_weapon_swing_side"
						}
					end
					self.SoundTbl_MeleeAttackExtra = {
						"fx/weapon/melee_frying_pan_01.wav",
						"fx/weapon/melee_frying_pan_02.wav",
						"fx/weapon/melee_frying_pan_03.wav",
						"fx/weapon/melee_frying_pan_04.wav"
					}
				end

			else
			
			if self.TOTU_LNR_Infected or self.ToTU_Deimos or self.TOTU_LNR_Walker && GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

				self.AnimTbl_MeleeAttack = {
					"vjseq_CI_Standing_Melee_1",
					"vjseq_CI_Standing_Melee_2",
					"vjseq_CI_Standing_Melee_3",
					"vjseq_CI_Standing_Melee_4"
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

			if self.ToTU_GiantZombie && math.random(1,3) == 1 then -- your fat ass slows you down
				self.AnimTbl_MeleeAttack = {"vjseq_attack_jumpstomp"}
			end

		end

	end
	
	if self:GetClass() == "npc_vj_totu_milzomb_tank" && self:IsMoving() then
		if math.random(1,3) == 1 then
			self.MeleeAttackAnimationAllowOtherTasks = false
			self.AnimTbl_MeleeAttack = {"vjseq_attack_jumpstomp"}
		end
	end
	-- When Walking --
	if self:IsMoving() && !self.TOTU_LNR_Crippled && !self.TOTU_LNR_Biter && self.ToTU_CanUseMovingAttacks then

		self.MeleeAttackAnimationAllowOtherTasks = true

		if self.ToTU_WeHaveAWeapon == true then

			if self.WeaponModel:GetModel() == "models/totu/wep_knife_ct.mdl" then 
				self.AnimTbl_MeleeAttack = {
					"vjges_melee_1h_left",
					"vjges_melee_1h_overhead",
					"vjges_melee_1h_right",
					"vjges_melee_1h_stab"
				}
			end

			if self.WeaponModel:GetModel() == "models/vj_weapons/w_glock.mdl" or self.WeaponModel:GetModel() == "models/totu/wep_pot.mdl" or self.WeaponModel:GetModel() == "models/totu/wep_pan.mdl" then
				self.AnimTbl_MeleeAttack = {
					"vjges_melee_1h_left",
					"vjges_melee_1h_overhead",
					"vjges_melee_1h_right"
				}
			end

			if self.WeaponModel:GetModel() == "models/weapons/w_crowbar.mdl" or self.WeaponModel:GetModel() == "models/props_canal/mattpipe.mdl" or self.WeaponModel:GetModel() == "models/totu/wep_axe.mdl" then
				self.AnimTbl_MeleeAttack = {
					"vjges_melee_2h_left",
					"vjges_melee_2h_overhead",
					"vjges_melee_2h_right"
				}
			end

			if self.WeaponModel:GetModel() == "models/totu/wep_brokenbottle.mdl" then
				self.AnimTbl_MeleeAttack = {
					"vjges_melee_1h_stab"
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
			if self:GetClass() == "npc_vj_totu_milzomb_tank" then
				if math.random(1,3) == 1 then
					self.MeleeAttackAnimationAllowOtherTasks = false
					self.AnimTbl_MeleeAttack = {"vjseq_attack_jumpstomp"}
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

	if self:GetClass() == "npc_vj_totu_deimos_corrupt" or self:GetClass() == "npc_vj_totu_deimos_corrupt_brute" or self:GetClass() == "npc_vj_totu_fon_lament" then return end

	if
		GetConVar("VJ_ToTU_General_Stumbling_Disable"):GetInt() == 1 or
		self.TOTU_LNR_Crippled or
		self.ToTU_Crawling or
		self:GetClass() == "npc_vj_totu_deimos_cyst" or
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
		self:GetSequence() == self:LookupSequence("Run_Stumble_01") or
		self:GetSequence() == self:LookupSequence("attack_jumpstomp") or
		self.ToTU_Resting == 1 or
		self.ToTU_Resting == 2 or
		self.ToTU_IsStumbling
	then
		self:ToTU_ResetFlinchHitgroups()
	return end
	
	if (dmginfo:GetDamage() >= 20 or dmginfo:GetDamageForce():Length() >= 5000 or bit.band(dmginfo:GetDamageType(), DMG_BUCKSHOT) != 0) && self:GetClass() != "npc_vj_totu_deimos_carcass" && !self.MeleeAttacking then
		-- carcass flinch anims are broken, so dont run this but if it's a carcass
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

	if self.ToTU_CanDoTheFunny == false or self.TOTU_LNR_Crippled or self:GetActivity() == ACT_GLIDE or self.ToTU_Resting != 0 then return end

	-- melee stumbles
	if
		dmginfo:IsDamageType(DMG_CLUB) or
		dmginfo:IsDamageType(DMG_SLASH) or
		dmginfo:IsDamageType(DMG_GENERIC) or
		dmginfo:IsDamageType(DMG_SONIC) or
		dmginfo:IsDamageType(DMG_VEHICLE) or
		dmginfo:IsDamageType(DMG_DIRECT) or
		dmginfo:IsDamageType(DMG_NEVERGIB) or
		dmginfo:IsDamageType(DMG_PHYSGUN) or
		dmginfo:IsDamageType(DMG_CRUSH)
	then	
		if self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_GMOD_SHOWOFF_STAND_01) && self.ToTU_Resting == 0 && self.ToTU_CanStumble then
			if self.ToTU_GiantZombie then
				if dmginfo:GetDamage() >= 150 or dmginfo:GetDamageForce():Length() >= 45000 then
					if self.TOTU_LNR_NextShoveT < CurTime() then
						local randbigbackstumble = math.random(1,4)
						if randbigbackstumble == 2 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_08",true,4.6,false)
						elseif randbigbackstumble == 3 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_09",true,4.1,false)
						elseif randbigbackstumble == 4 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_10",true,4.6,false)
						else
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_07",true,5,false)
						end
						self.TOTU_LNR_NextShoveT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					end
				elseif dmginfo:GetDamage() >= 100 or dmginfo:GetDamageForce():Length() >= 30000 then
					if self.TOTU_LNR_NextShoveT < CurTime() then
						local randmediumbackstumble = math.random(1,6)
						if randmediumbackstumble == 2 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_02",true,2.4,false)
						elseif randmediumbackstumble == 3 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_03",true,2.3,false)
						elseif randmediumbackstumble == 4 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_04",true,2.6,false)
						elseif randmediumbackstumble == 5 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_05",true,3.3,false)
						elseif randmediumbackstumble == 6 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_06",true,3,false)
						else
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_01",true,2.4,false)
						end
						self.TOTU_LNR_NextShoveT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					end
				elseif dmginfo:GetDamage() <= 100 or dmginfo:GetDamageForce():Length() <= 30000 then
					if self.TOTU_LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
						self.TOTU_LNR_NextShoveT = CurTime() + 3
					end
				end
			elseif self.ToTU_BigZombie then
				if dmginfo:GetDamage() >= 100 or dmginfo:GetDamageForce():Length() >= 30000 then
					if self.TOTU_LNR_NextShoveT < CurTime() then
						local randbigbackstumble = math.random(1,4)
						if randbigbackstumble == 2 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_08",true,4.6,false)
						elseif randbigbackstumble == 3 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_09",true,4.1,false)
						elseif randbigbackstumble == 4 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_10",true,4.6,false)
						else
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_07",true,5,false)
						end
						self.TOTU_LNR_NextShoveT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					end
				elseif dmginfo:GetDamage() >= 50 or dmginfo:GetDamageForce():Length() >= 15000 then
					if self.TOTU_LNR_NextShoveT < CurTime() then
						local randmediumbackstumble = math.random(1,6)
						if randmediumbackstumble == 2 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_02",true,2.4,false)
						elseif randmediumbackstumble == 3 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_03",true,2.3,false)
						elseif randmediumbackstumble == 4 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_04",true,2.6,false)
						elseif randmediumbackstumble == 5 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_05",true,3.3,false)
						elseif randmediumbackstumble == 6 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_06",true,3,false)
						else
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_01",true,2.4,false)
						end
						self.TOTU_LNR_NextShoveT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					end
				elseif dmginfo:GetDamage() <= 50 or dmginfo:GetDamageForce():Length() <= 15000 then
					if self.TOTU_LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
						self.TOTU_LNR_NextShoveT = CurTime() + 3
					end
				end
			else
				if dmginfo:GetDamage() >= 30 or dmginfo:GetDamageForce():Length() >= 10000 then
					if self.TOTU_LNR_NextShoveT < CurTime() then
						local randbigbackstumble = math.random(1,4)
						if randbigbackstumble == 2 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_08",true,4.6,false)
						elseif randbigbackstumble == 3 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_09",true,4.1,false)
						elseif randbigbackstumble == 4 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_10",true,4.6,false)
						else
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_07",true,5,false)
						end
						self.TOTU_LNR_NextShoveT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					end
				elseif dmginfo:GetDamage() >= 15 or dmginfo:GetDamageForce():Length() >= 5000 then
					if self.TOTU_LNR_NextShoveT < CurTime() then
						local randmediumbackstumble = math.random(1,6)
						if randmediumbackstumble == 2 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_02",true,2.4,false)
						elseif randmediumbackstumble == 3 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_03",true,2.3,false)
						elseif randmediumbackstumble == 4 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_04",true,2.6,false)
						elseif randmediumbackstumble == 5 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_05",true,3.3,false)
						elseif randmediumbackstumble == 6 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_06",true,3,false)
						else
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_01",true,2.4,false)
						end
						self.TOTU_LNR_NextShoveT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					end
				elseif dmginfo:GetDamage() <= 15 or dmginfo:GetDamageForce():Length() <= 5000 then
					if self.TOTU_LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
						self.TOTU_LNR_NextShoveT = CurTime() + 3
					end
				end
			end
		end
	end

	-- bullet stumbles
	if
		(dmginfo:IsBulletDamage() or
		dmginfo:IsDamageType(DMG_BUCKSHOT) or
		dmginfo:IsDamageType(DMG_SNIPER) or
		dmginfo:IsDamageType(DMG_AIRBOAT))
		&& self.ToTU_CanStumble
	then
		if hitgroup == HITGROUP_HEAD or hitgroup == HITGROUP_CHEST or hitgroup == HITGROUP_STOMACH then
			if self.TOTU_LNR_NextStumbleT < CurTime() && self:GetSequence() != self:LookupSequence(ACT_GMOD_SHOWOFF_STAND_01) && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) then
				if self.ToTU_GiantZombie then
					if dmginfo:GetDamage() >= 210 or dmginfo:GetDamageForce():Length() >= 48000 then
						local randbigbackstumble = math.random(1,4)
						if randbigbackstumble == 2 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_08",true,4.6,false)
						elseif randbigbackstumble == 3 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_09",true,4.1,false)
						elseif randbigbackstumble == 4 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_10",true,4.6,false)
						else
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_07",true,5,false)
						end
						self.TOTU_LNR_NextStumbleT = CurTime() + 7
						self:ToTU_ResetFlinchHitgroups()
					elseif dmginfo:GetDamage() >= 120 or dmginfo:GetDamageForce():Length() >= 33000 then
						if math.random (1,2) == 1 then
							local randmediumbackstumble = math.random(1,6)
							if randmediumbackstumble == 2 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_02",true,2.4,false)
							elseif randmediumbackstumble == 3 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_03",true,2.3,false)
							elseif randmediumbackstumble == 4 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_04",true,2.6,false)
							elseif randmediumbackstumble == 5 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_05",true,3.3,false)
							elseif randmediumbackstumble == 6 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_06",true,3,false)
							else
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_01",true,2.4,false)
							end
							self.TOTU_LNR_NextStumbleT = CurTime() + 7
							self:ToTU_ResetFlinchHitgroups()
						end
					else
						if math.random (1,3) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
							self.TOTU_LNR_NextStumbleT = CurTime() + 3
							self:ToTU_ResetFlinchHitgroups()
						end
					end
				elseif self.ToTU_BigZombie then
					if dmginfo:GetDamage() >= 70 or dmginfo:GetDamageForce():Length() >= 16000 then
						local randbigbackstumble = math.random(1,4)
						if randbigbackstumble == 2 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_08",true,4.6,false)
						elseif randbigbackstumble == 3 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_09",true,4.1,false)
						elseif randbigbackstumble == 4 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_10",true,4.6,false)
						else
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_07",true,5,false)
						end
						self.TOTU_LNR_NextStumbleT = CurTime() + 7			
						self:ToTU_ResetFlinchHitgroups()
					elseif dmginfo:GetDamage() >= 40 or dmginfo:GetDamageForce():Length() >= 11000 then
						if math.random (1,2) == 1 then
							local randmediumbackstumble = math.random(1,6)
							if randmediumbackstumble == 2 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_02",true,2.4,false)
							elseif randmediumbackstumble == 3 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_03",true,2.3,false)
							elseif randmediumbackstumble == 4 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_04",true,2.6,false)
							elseif randmediumbackstumble == 5 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_05",true,3.3,false)
							elseif randmediumbackstumble == 6 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_06",true,3,false)
							else
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_01",true,2.4,false)
							end
							self.TOTU_LNR_NextStumbleT = CurTime() + 7
							self:ToTU_ResetFlinchHitgroups()
						end
					else
						if math.random (1,3) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
							self.TOTU_LNR_NextStumbleT = CurTime() + 3
							self:ToTU_ResetFlinchHitgroups()
						end
					end
				else
					if dmginfo:GetDamage() >= 55 or dmginfo:GetDamageForce():Length() >= 8000 then
						local randbigbackstumble = math.random(1,4)
						if randbigbackstumble == 2 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_08",true,4.6,false)
						elseif randbigbackstumble == 3 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_09",true,4.1,false)
						elseif randbigbackstumble == 4 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_10",true,4.6,false)
						else
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_07",true,5,false)
						end
						self.TOTU_LNR_NextStumbleT = CurTime() + 7			
						self:ToTU_ResetFlinchHitgroups()
					elseif dmginfo:GetDamage() >= 25 or dmginfo:GetDamageForce():Length() >= 5500 then
						if math.random (1,2) == 1 then
							local randmediumbackstumble = math.random(1,6)
							if randmediumbackstumble == 2 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_02",true,2.4,false)
							elseif randmediumbackstumble == 3 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_03",true,2.3,false)
							elseif randmediumbackstumble == 4 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_04",true,2.6,false)
							elseif randmediumbackstumble == 5 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_05",true,3.3,false)
							elseif randmediumbackstumble == 6 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_06",true,3,false)
							else
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_01",true,2.4,false)
							end
							self.TOTU_LNR_NextStumbleT = CurTime() + 7
							self:ToTU_ResetFlinchHitgroups()
						end
					else
						if math.random (1,3) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
							self.TOTU_LNR_NextStumbleT = CurTime() + 3
							self:ToTU_ResetFlinchHitgroups()
						end
					end
				end
			end
		elseif hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then		 
			if self.TOTU_LNR_NextStumbleT < CurTime() && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_GMOD_SHOWOFF_STAND_01) then
				if self:GetActivity() == ACT_SPRINT or self:GetActivity() == ACT_RUN_AIM or self:GetActivity() == ACT_RUN_RELAXED or self:GetActivity() == ACT_RUN_AIM_PISTOL then
					if self.ToTU_GiantZombie then
						if dmginfo:GetDamage() >= 75 or dmginfo:GetDamageForce():Length() >= 15000 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_Run_Stumble_01",true,3,false)
							self.TOTU_LNR_NextStumbleT = CurTime() + 7
							self:ToTU_ResetFlinchHitgroups()
						elseif dmginfo:GetDamage() <= 75 or dmginfo:GetDamageForce():Length() <= 15000 then
							if math.random (1,2) == 1 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,2.6,false)
								self.TOTU_LNR_NextStumbleT = CurTime() + 7
								self:ToTU_ResetFlinchHitgroups()
							end
						end
					else
						if dmginfo:GetDamage() >= 20 or dmginfo:GetDamageForce():Length() >= 2500 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_Run_Stumble_01",true,3,false)
							self.TOTU_LNR_NextStumbleT = CurTime() + 7
							self:ToTU_ResetFlinchHitgroups()
						elseif dmginfo:GetDamage() <= 20 or dmginfo:GetDamageForce():Length() <= 2500 then
							if math.random (1,2) == 1 then
								self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,2.6,false)
								self.TOTU_LNR_NextStumbleT = CurTime() + 7
								self:ToTU_ResetFlinchHitgroups()
							end
						end
					end
				else
					if math.random (1,3) == 1 then
						self:VJ_ACT_PLAYACTIVITY("vjseq_ShoveReactBehind",true,1.6)
						self.TOTU_LNR_NextStumbleT = CurTime() + 3
						self:ToTU_ResetFlinchHitgroups()
					end
				end
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_ResetFlinchHitgroups()

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
	if GetConVar("VJ_TOTU_LNR_Headshot"):GetInt() == 1 && self.TOTU_LNR_CanBeHeadshot && hitgroup == HITGROUP_HEAD then
		dmginfo:SetDamage(self:Health())
	end
	if GetConVar("VJ_ToTU_MilZ_Tank_Shielding"):GetInt() == 1 then
		for _,v in ipairs(ents.FindInSphere(self:GetPos(),300)) do
			if self:GetClass() != "npc_vj_totu_milzomb_tank" && v:IsNPC() && v:GetClass() == "npc_vj_totu_milzomb_tank" && v.MilZ_Tank_NextShieldT < CurTime() then
				dmginfo:ScaleDamage(0.25)
				v.MilZ_Tank_NextShieldT = CurTime() + 0.1
				VJ_EmitSound(v,TankProtectSounds,100,math.random(100,95))
				VJ_EmitSound(v,TankProtectSounds,100,math.random(100,95))
				VJ_EmitSound(self,"physics/metal/metal_sheet_impact_soft2.wav",70,math.random(100,95))
				effects.BeamRingPoint(self:GetPos()+self:GetUp()*55, 0.25, 2, 100, 5, 0, Color(29, 0, 255), {material="sprites/physgbeamb", framerate=20})
				effects.BeamRingPoint(self:GetPos()+self:GetUp()*35, 0.25, 2, 150, 5, 0, Color(29, 0, 255), {material="sprites/physgbeamb", framerate=20})
				effects.BeamRingPoint(self:GetPos()+self:GetUp()*15, 0.25, 2, 100, 5, 0, Color(29, 0, 255), {material="sprites/physgbeamb", framerate=20})
				effects.BeamRingPoint(v:GetPos()+v:GetUp()*55, 0.25, 2, 100, 5, 0, Color(29, 0, 255), {material="sprites/physgbeamb", framerate=20})
				effects.BeamRingPoint(v:GetPos()+v:GetUp()*35, 0.25, 2, 150, 5, 0, Color(29, 0, 255), {material="sprites/physgbeamb", framerate=20})
				effects.BeamRingPoint(v:GetPos()+v:GetUp()*15, 0.25, 2, 100, 5, 0, Color(29, 0, 255), {material="sprites/physgbeamb", framerate=20})
			end
		end
	end

	self:ArmorDamage(dmginfo,hitgroup)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup) end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DropTheFuckignWeaponGoddamn()

	if IsValid(self.WeaponModel) && self.ToTU_WeHaveAWeapon then

		self.SoundTbl_MeleeAttack = {
			"fx/hit_punch_01.wav",
			"fx/hit_punch_02.wav",
			"fx/hit_punch_03.wav",
			"fx/hit_punch_04.wav",
			"fx/hit_punch_05.wav",
			"fx/hit_punch_06.wav",
			"fx/hit_punch_07.wav",
			"fx/hit_punch_08.wav"
			}

		self.SoundTbl_MeleeAttackExtra = {""}
		self.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss2.wav","npc/zombie/claw_miss1.wav"}

		self.MeleeAttackDamageType = DMG_CLUB
		self:CreateGibEntity("prop_physics",self.WeaponModel:GetModel(),{Pos=self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos,Ang=self:GetAngles()}) self.WeaponModel:SetMaterial("models/totu/bonemerge") self.WeaponModel:DrawShadow(false) self.ToTU_WeHaveAWeapon = false
		self.WeaponModel:Remove()

		if self.VJ_IsBeingControlled then
			self.VJ_TheController:ChatPrint("You lost your weapon!")
			local badtotheboner = CreateSound(self.VJ_TheController, "common/warning.wav", self.VJ_TheController)
			badtotheboner:SetSoundLevel(0)
			badtotheboner:Play()
		end

		if self.MilZ_HasKnife == true then
			self.MeleeAttackBleedEnemy = false
		end

		if self.MilZ_HasGun == true then

			self.MilZ_HasGun = false
			self.HasRangeAttack = false

			if self.TOTU_LNR_Walker then

				self.AnimTbl_Run = {ACT_WALK}

				if self.TOTU_LNR_Runner then
					self.AnimTbl_Run = {ACT_RUN}
				end

				if self.ToTU_Rusher then
					self.AnimTbl_Run = {ACT_SPRINT}
				end

			elseif self.TOTU_LNR_Infected then

				if !self.TOTU_LNR_SuperSprinter && !self.ToTU_Rusher then
					self.AnimTbl_Run = {ACT_SPRINT}
				end

			end

		end

		if self.ToTU_Weaponized_HasWeapon then
			self.ToTU_Weaponized_HasWeapon = false
		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)

	if self.ToTU_Resting != 0 then
		if self.ToTU_Resting == 1 then
			self:VJ_ACT_PLAYACTIVITY(ACT_BUSY_SIT_CHAIR_EXIT, true, false, false)
		elseif self.ToTU_Resting == 2 then
			self:VJ_ACT_PLAYACTIVITY(ACT_BUSY_STAND, true, false, false)
		end
		self.ToTU_Resting = 0
		self.ToTU_NextRestT = CurTime() + math.Rand(30, 180)
		if GetConVar("vj_npc_nowandering"):GetInt() != 1 then
			self.DisableWandering = false
		end
		self.HasIdleSounds = true
		self.CanTurnWhileStationary = true
		self.TurningSpeed = 15
		self.AnimTbl_IdleStand = {ACT_IDLE}
		if self.TOTU_LNR_UsingRelaxedIdle == true then
			self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
		end
	end

	-- explosion stumbles
	if
		(dmginfo:IsExplosionDamage() or
		dmginfo:IsDamageType(DMG_BLAST_SURFACE) or
		dmginfo:IsDamageType(DMG_MISSILEDEFENSE) or
		dmginfo:IsDamageType(DMG_ALWAYSGIB)) &&
		self.ToTU_Resting == 0 &&
		self.ToTU_CanStumble &&
		!self.Dead
	then
		if
			GetConVar("VJ_ToTU_General_Stumbling_Disable"):GetInt() == 1 or
			self.TOTU_LNR_Crippled or
			self.ToTU_Crawling or
			self:GetActivity() == ACT_BIG_FLINCH or
			self:GetActivity() == ACT_FLINCH_STOMACH or
			self:GetActivity() == ACT_GMOD_SHOWOFF_STAND_01 or
			self:GetActivity() == ACT_GLIDE or
			self:GetSequence() == self:LookupSequence("Run_Stumble_01") 
		then return end

		if self.ToTU_NextSplodeStumbleT < CurTime() then
			if self.ToTU_Resting != 0 then return end
			if math.random(1,2) == 1 then
				if math.random(1,2) == 1 then
					self:VJ_ACT_PLAYACTIVITY("vjseq_Run_Stumble_01",true,3,false)
				else
					self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,2.6,false)
				end
			else
				local randbigbackstumble = math.random(1,4)
				if randbigbackstumble == 2 then
					self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_08",true,4.6,false)
				elseif randbigbackstumble == 3 then
					self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_09",true,4.1,false)
				elseif randbigbackstumble == 4 then
					self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_10",true,4.6,false)
				else
					self:VJ_ACT_PLAYACTIVITY("vjseq_shove_backwards_07",true,5,false)
				end
			end
			self.ToTU_NextSplodeStumbleT = CurTime() + 5
		end

	end

	if GetConVar("VJ_TOTU_LNR_Cripple"):GetInt() == 1 && self:GetClass() != "npc_vj_totu_deimos_cyst" && !self.ToTU_IsFreakOfNature then 
		if hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then
			if
				self:GetActivity() != ACT_GLIDE or
				self:GetActivity() != ACT_BIG_FLINCH or
				self:GetActivity() != ACT_GMOD_SHOWOFF_STAND_01 or
				self.ToTU_Resting == 0
			then
				self.TOTU_LNR_LegHP = self.TOTU_LNR_LegHP -dmginfo:GetDamage()
			end
		end
	end

	if self.TOTU_LNR_LegHP <= 0 && !self.TOTU_LNR_Crippled && !self.ToTU_Nightkin_Squaller_UsingIronWill && !self.ToTU_IsFreakOfNature then

		self.TOTU_LNR_Crippled = true
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

	self.CanEat = false

	if self.VJ_IsBeingControlled then

		self.VJ_TheController:ChatPrint("Your legs have been crippled!")

		local badtotheboner = CreateSound(self.VJ_TheController, "common/warning.wav", self.VJ_TheController)
		badtotheboner:SetSoundLevel(0)
		badtotheboner:Play()

		local badtomyballs = CreateSound(self.VJ_TheController,"physics/body/body_medium_break"..math.random(2,4)..".wav", self.VJ_TheController)
		badtomyballs:SetSoundLevel(0)
		badtomyballs:Play()

	end

	if self:GetClass() == "npc_vj_totu_deimos_carcass" or self:GetClass() == "npc_vj_totu_deimos_cazador" then

		if self:GetClass() == "npc_vj_totu_deimos_carcass" && (self.ToTU_Weaponized_Carcass_Type == 2 or self.ToTU_Weaponized_Carcass_Type == 3) then

			self.ToTU_Weaponized_Carcass_CanZombineRun = false
			self:SetCollisionBounds(Vector(13,13,20),Vector(-13,-13,0))
			self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
			self.AnimTbl_Walk = {ACT_WALK_AGITATED}
			self.AnimTbl_Run = {ACT_WALK_AGITATED}
			self.TOTU_LNR_Crippled = true

			self.VJC_Data = {
				CameraMode = 1, 
				ThirdP_Offset = Vector(30, 25, -20), 
				FirstP_Bone = "ValveBiped.Bip01_Head1", 
				FirstP_Offset = Vector(5, 0, -1), 
			}	

		elseif self:GetClass() == "npc_vj_totu_deimos_carcass" or self:GetClass() == "npc_vj_totu_deimos_cazador" then
			self.AnimTbl_IdleStand = {ACT_IDLE_STIMULATED}
			self.AnimTbl_Walk = {ACT_IDLE_STIMULATED}
			self.AnimTbl_Run = {ACT_IDLE_STIMULATED}
			self.MovementType = VJ_MOVETYPE_STATIONARY
			self.ToTU_Weaponized_Carcass_CanZombineRun = false
			self.HasMeleeAttack = false
			self.HasLeapAttack = false
			self:SetCollisionBounds(Vector(13,13,20),Vector(-13,-13,0))

		end
	
	return end

	self.MeleeAttackAnimationAllowOtherTasks = false	
	self.MeleeAttackDistance = 15
	self.MeleeAttackDamageDistance = 45	

	self.HasLeapAttack = false 

	self.CanTurnWhileStationary = false
	self:DropTheFuckignWeaponGoddamn()
	self.HasRangeAttack = false

	if self.TOTU_LNR_Walker then
		self.AnimTbl_IdleStand = {ACT_IDLE_STIMULATED}
		self.AnimTbl_Walk = {ACT_WALK_STIMULATED}
		self.AnimTbl_Run = {ACT_WALK_STIMULATED}
	elseif self.TOTU_LNR_Infected or self.ToTU_Mutated or self.ToTU_Deimos then
		self.AnimTbl_IdleStand = {ACT_IDLE_AGITATED}
		self.AnimTbl_Walk = {ACT_WALK_AGITATED}
		self.AnimTbl_Run = {ACT_WALK_AGITATED}
	end

	-- if self:GetClass() == "npc_vj_totu_nightkin_squaller" then

	-- self.AnimTbl_IdleStand = {ACT_CROUCHIDLE}
	-- self.AnimTbl_Walk = {ACT_WALK_CROUCH_AIM}

	-- self.AnimTbl_Run = {ACT_RUN_STEALTH}
	-- end

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

	if
		self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or
		self:GetClass() == "npc_vj_totu_milzomb_bulldozer" or
		self:GetClass() == "npc_vj_totu_milzomb_tank" or
		self:GetClass() == "npc_vj_totu_nightkin_scylla"
	then
		if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
			self.MeleeAttackDamage = math.Rand(10,15)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
			self.MeleeAttackDamage = math.Rand(15,20)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
			self.MeleeAttackDamage = math.Rand(25,30)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
			self.MeleeAttackDamage = math.Rand(30,35)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
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
function ENT:UnCripple()

	if self.ToTU_Weaponized_IsHL2Zomb then return end

	if self.VJ_IsBeingControlled then
		local badtotheboner = CreateSound(self.VJ_TheController, "ui/bigreward.wav", self.VJ_TheController)
		badtotheboner:SetSoundLevel(0)
		badtotheboner:Play()
		self.VJ_TheController:ChatPrint("Your legs have been healed!")
	end

	self:VJ_ACT_PLAYACTIVITY("vjseq_infectionrise2",true,3.6,false)
	self.MovementType = VJ_MOVETYPE_STATIONARY
	self.HasMeleeAttack = false
	self.ToTU_CanStumble = false
	timer.Simple(3.6,function() if IsValid(self) then
		self.MovementType = VJ_MOVETYPE_GROUND
		self.HasMeleeAttack = true
		self.ToTU_CanStumble = true
	end end)

	self.CanEat = true

	self.MeleeAttackAnimationAllowOtherTasks = true
	self.MeleeAttackDistance = 40
	self.MeleeAttackDamageDistance = 60

	self.CanTurnWhileStationary = true

	if self.TOTU_LNR_UsingRelaxedIdle then
		self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
	else	
		self.AnimTbl_IdleStand = {ACT_IDLE}
	end

	if self.TOTU_LNR_Walker then
		self.AnimTbl_Walk = {ACT_WALK_RELAXED}
		self.AnimTbl_Run = {ACT_WALK}
		if self.TOTU_LNR_Runner then
			self.AnimTbl_Walk = {ACT_WALK}
			self.AnimTbl_Run = {ACT_RUN}
		end
		if self.ToTU_Rusher then
			self.AnimTbl_Walk = {ACT_RUN}
			self.AnimTbl_Run = {ACT_SPRINT}
		end
	end
	if self.TOTU_LNR_Infected then
		self.AnimTbl_Walk = {ACT_RUN}
		self.AnimTbl_Run = {ACT_SPRINT}
		if self.TOTU_LNR_SuperSprinter then
			self.AnimTbl_Walk = {ACT_RUN_AIM}
			self.AnimTbl_Run = {ACT_RUN_AIM}
		end
		if self.ToTU_Rusher then
			self.AnimTbl_Walk = {ACT_SPRINT}
			self.AnimTbl_Run = {ACT_RUN_RELAXED}
		end
	end
	if
		self.ToTU_Deimos &&
		(
			self:GetClass() == "npc_vj_totu_deimos_redead_grunt" or
			self:GetClass() == "npc_vj_totu_deimos_redead_guard" or
			self:GetClass() == "npc_vj_totu_deimos_redead_sci" or
			self:GetClass() == "npc_vj_totu_deimos_revenant" or
			self:GetClass() == "npc_vj_totu_deimos_reborn" or
			self:GetClass() == "npc_vj_totu_deimos_redead_inf" or
			self:GetClass() == "npc_vj_totu_deimos_redead_inf_ply" or
			self:GetClass() == "npc_vj_totu_deimos_redead"
		)
	then
		self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(3,7)
		if self:GetClass() == "npc_vj_totu_deimos_cancer" then
			self.AnimTbl_Walk = {ACT_WALK_RELAXED}
			self.AnimTbl_Run = {ACT_WALK_AIM}
		elseif self:GetClass() == "npc_vj_totu_deimos_revenant" then
			self.AnimTbl_Walk = {ACT_MP_MELEE_GRENADE1_IDLE}
			self.AnimTbl_Run = {ACT_RUN}
		elseif self:GetClass() == "npc_vj_totu_deimos_reborn" then
			self.AnimTbl_Walk = {ACT_MP_MELEE_GRENADE1_IDLE}
			self.AnimTbl_Run = {ACT_RUN}
		else
			self.AnimTbl_Walk = {ACT_MP_MELEE_GRENADE1_IDLE}
			self.AnimTbl_Run = {ACT_SPRINT}
		end
	end
	self:SetCollisionBounds(Vector(13, 13, 68), Vector(-13, -13, 0))

	self.VJC_Data = {
		CameraMode = 1,
		ThirdP_Offset = Vector(40, 20, -50),
		FirstP_Bone = "ValveBiped.Bip01_Head1",
		FirstP_Offset = Vector(0, 0, 5),
	}	

	if
		GetConVar("VJ_TOTU_LNR_JumpClimb"):GetInt() == 2
	then
		self:CapabilitiesAdd(bit.bor(CAP_MOVE_CLIMB))
	end

	if
		GetConVar("VJ_TOTU_LNR_JumpClimb"):GetInt() == 1 or
		GetConVar("VJ_TOTU_LNR_JumpClimb"):GetInt() == 2
	then
		self:CapabilitiesAdd(bit.bor(CAP_MOVE_JUMP))
	end

	self.HasDeathAnimation = true
	self.TOTU_LNR_Crippled = false

	self.TOTU_LNR_LegHP = self.StartHealth * 0.20

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPriorToKilled(dmginfo, hitgroup)

    self:SetSolid(SOLID_NONE)
    self:AddFlags(FL_NOTARGET)

	if self:GetClass() == "npc_vj_totu_deimos_cazador" && !self:IsOnGround() then
		self.HasDeathAnimation = false
	end
	if self.MilZ_Ghost_IsGhost && !self.MilZ_Ghost_CloakBroke then
		self:ToTU_Ghost_BreakCloak()
	end

	if self.ToTU_Weaponized_Carcass_Exploder == true then
		VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",100,math.random(100,95))
		VJ_EmitSound(self,{"npc/barnacle/barnacle_tongue_pull2.wav"},100,math.random(100,95))
	end

	if 
		(self:GetClass() == "npc_vj_totu_deimos_carcass" or self:GetClass() == "npc_vj_totu_deimos_cyst") && 
		self.ToTU_Weaponized_Carcass_Exploder &&
		GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1
	then
		if math.random(1,100) == 1 then
			self.SoundTbl_Death = {
				"fx/egg/eminemvsibs.mp3",
				"fx/egg/chowder/omgmiaof.mp3",
				"fx/egg/chowder/omgmiaofvo.mp3"
			}
			self.DeathSoundLevel = 90
		end
	end

	if
		(
			self:GetClass() == "npc_vj_totu_deimos_cancer" or
			self:GetClass() == "npc_vj_totu_deimos_reborn" or
			self:GetClass() == "npc_vj_totu_deimos_redead_sci" or
			self:GetClass() == "npc_vj_totu_deimos_redead_guard"
		)
		&&
		(
			dmginfo:IsDamageType(DMG_BURN) or 
			dmginfo:IsDamageType(DMG_SLOWBURN) or 
			self:IsOnFire()
		)
	then
		self.ToTU_Weaponized_Cancer_FireDeath = true
	end

	if self:GetClass() == "npc_vj_totu_deimos_cyst" then return end

	if 
		(dmginfo:IsDamageType(DMG_BURN) or
		dmginfo:IsDamageType(DMG_SLOWBURN) or
		dmginfo:IsDamageType(DMG_ENERGYBEAM) or
		dmginfo:IsDamageType(DMG_DISSOLVE) or
		dmginfo:IsDamageType (DMG_PLASMA) or
		dmginfo:IsDamageType(DMG_SHOCK)) &&
		self:GetSequence() != self:LookupSequence("jump_attack")
	then
		self.DeathAnimationChance = 1
	end
	
	if self:GetSequence() == self:LookupSequence("jump_attack") then
		self.AnimTbl_Death = {"vjseq_nz_death_expl_b_1"}	
	end

	if
		self.TOTU_LNR_Crippled or
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

	if self.MilZ_Det_IsDetonator then
		if !self.MilZ_Det_DeathExplosionAllowed then
			self:CreateGibEntity("prop_physics",self.bobm:GetModel(),{Pos=self:GetAttachment(self:LookupAttachment("bobomb")).Pos,Ang=self:GetAngles()}) self.bobm:SetMaterial("models/totu/bonemerge") self.bobm:DrawShadow(false) self.ToTU_WeHaveAWeapon = false
			self.bobm:Remove()	
		end
	end

	if self.MilZ_Hazmat_IsHazmat && self.MilZ_Det_DeathExplosionAllowed == true then

		local effectdata = EffectData()
		effectdata:SetOrigin(self:GetPos())
		effectdata:SetScale( 500 )
		util.Effect( "HelicopterMegaBomb", effectdata )
		util.Effect( "ThumperDust", effectdata )
		util.Effect( "Explosion", effectdata )
		util.Effect( "VJ_Small_Explosion1", effectdata )

		VJ_EmitSound(self,"fx/funny.mp3",85)
		ParticleEffect("vj_explosion2",self:GetPos() + self:GetUp()*48 + self:GetForward()*1,Angle(0,0,0),nil) 
		ParticleEffect("vj_explosion1",self:GetPos() + self:GetUp()*15,Angle(0,0,0),nil)
		ParticleEffect("vj_explosionfire2",self:GetPos() + self:GetUp()*20,Angle(0,0,0),nil)
		ParticleEffect("vj_explosionfire1",self:GetPos() + self:GetUp()*20,Angle(0,0,0),nil)

		if GetConVar("VJ_ToTU_MilZ_Det_ExplosionSetup"):GetInt() == true then
			util.VJ_SphereDamage(self, self, self:GetPos(), 40, 25, DMG_BLAST, true, true, {Force=70})
			util.VJ_SphereDamage(self, self, self:GetPos(), 80, 25, DMG_BLAST, true, true, {Force=70})
			util.VJ_SphereDamage(self, self, self:GetPos(), 120, 25, DMG_BLAST, true, true, {Force=70})
			util.VJ_SphereDamage(self, self, self:GetPos(), 160, 25, DMG_BLAST, true, true, {Force=70})
			util.VJ_SphereDamage(self, self, self:GetPos(), 200, 25, DMG_BLAST, true, true, {Force=70})
		else
			util.VJ_SphereDamage(self, self, self:GetPos(), 200, 125, DMG_BLAST, true, true, {Force=70})
		end
		util.ScreenShake(self:GetPos(), 300, 500, 1.6, 1200)

	end


end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo,hitgroup)

	if self.TOTU_LNR_Crippled or self.ToTU_Resting == 1 or self.ToTU_Resting == 2 or self:GetClass() == "npc_vj_totu_deimos_cyst" or self:GetClass() == "npc_vj_totu_deimos_corrupt" or self:GetClass() == "npc_vj_totu_deimos_corrupt_brute" or self:GetClass() == "npc_vj_totu_fon_lament" then return end
	
	if self:IsMoving() && GetConVar("VJ_ToTU_General_MovingDeathAnimations"):GetInt() == 1 && !self.ToTU_GiantZombie && !self.ToTU_IsFreakOfNature && !self.ToTU_Weaponized_IsHL2Zomb then

		if
			self:GetActivity() == ACT_RUN_STEALTH or
			self:GetActivity() == ACT_WALK_HURT or
			self:GetActivity() == ACT_RUN_AIM or
			self:GetActivity() == ACT_SPRINT or
			self:GetActivity() == ACT_RUN_RELAXED or
			self:GetActivity() == ACT_RUN_HURT or
			self:GetActivity() == ACT_RUN_AIM_PISTOL
		then

			if hitgroup == HITGROUP_STOMACH then
				self.AnimTbl_Death = {
					"vjseq_DeathRunning_03",
					"vjseq_DeathRunning_05"
				}
			else
				self.AnimTbl_Death = {
					"vjseq_DeathRunning_01",
					"vjseq_DeathRunning_04",
					"vjseq_DeathRunning_06",
					"vjseq_DeathRunning_07",
					"vjseq_DeathRunning_08",
					"vjseq_DeathRunning_11a",
					"vjseq_DeathRunning_11b",
					"vjseq_DeathRunning_11c",
					"vjseq_DeathRunning_11e",
					"vjseq_DeathRunning_11f",
					"vjseq_DeathRunning_11g",
				}
			end

		else

			self.AnimTbl_Death = {
				"vjseq_nz_death_f_1",
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
				"vjseq_nz_death_f_13",
				"vjseq_DeathRunning_11d",
			}

		end

	end

	if self:IsMoving() && GetConVar("VJ_ToTU_General_MovingDeathAnimations"):GetInt() == 1 && (self:GetClass() == "npc_vj_totu_deimos_carcass" or self:GetClass() == "npc_vj_totu_deimos_cazador") then

		self.AnimTbl_Death = {
			"vjseq_nz_death_f_1",
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
			"vjseq_nz_death_f_13",
		}

	end

	/*
	if self.ToTU_GiantZombie then

		if dmginfo:GetDamage() >= 420 or dmginfo:GetDamageForce():Length() >= 96000 then

			self.AnimTbl_Death = {
				"vjseq_nz_death_expl_f_1",
				"vjseq_nz_death_expl_f_2",
				"vjseq_nz_death_expl_f_3"
			}
			self.DeathAnimationTime = 1

		end

	elseif self.ToTU_BigZombie && !self.ToTU_Nightkin_Squaller_UsingIronWill then

		if dmginfo:GetDamage() >= 210 or dmginfo:GetDamageForce():Length() >= 32000 then
		
			self.AnimTbl_Death = {
				"vjseq_nz_death_expl_f_1",
				"vjseq_nz_death_expl_f_2",
				"vjseq_nz_death_expl_f_3"
			}	
			self.DeathAnimationTime = 1
	   
	   end

	else

		if
			(dmginfo:GetDamage() >= 110 or dmginfo:GetDamageForce():Length() >= 16000) or
			bit.band(dmginfo:GetDamageType(), DMG_BUCKSHOT) != 0
		then

			self.AnimTbl_Death = {"vjseq_nz_death_expl_f_1",
				"vjseq_nz_death_expl_f_2",
				"vjseq_nz_death_expl_f_3"}	
			self.DeathAnimationTime = 1

		end

	end
	*/

	if dmginfo:IsDamageType(DMG_BURN) or dmginfo:IsDamageType(DMG_SLOWBURN) then

		self:Ignite(60)

		if math.random(1,4) == 1 then
			self.AnimTbl_Death = {"vjseq_Standing_OnFire"}
			self.DeathAnimationTime = math.random(1,9.4)
		else
			self.AnimTbl_Death = {
			"vjseq_nz_death_fire_1",
			"vjseq_nz_death_fire_2"
			}
		end

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

    if
		dmginfo:IsExplosionDamage() or
		dmginfo:IsDamageType(DMG_BLAST_SURFACE) or
		dmginfo:IsDamageType(DMG_MISSILEDEFENSE) or
		dmginfo:IsDamageType(DMG_ALWAYSGIB) or
		dmginfo:IsDamageType(DMG_CRUSH) or
		dmginfo:IsDamageType(DMG_VEHICLE) or
		dmginfo:IsDamageType(DMG_SONIC) or
		dmginfo:IsDamageType(DMG_PHYSGUN) or
		self:GetActivity() == ACT_GLIDE or
		self:GetActivity() == ACT_JUMP
	then
		self.AnimTbl_Death = {
		"vjseq_nz_death_expl_f_1",
		"vjseq_nz_death_expl_f_2",
		"vjseq_nz_death_expl_f_3",
		"vjseq_nz_death_expl_b_1",
		"vjseq_nz_death_expl_l_1",
		"vjseq_nz_death_expl_r_1",
		"vjseq_DeathRunning_09",
		"vjseq_DeathRunning_10",
		}	
	   self.DeathAnimationTime = 1
	end

    if
		dmginfo:IsDamageType(DMG_SHOCK) or
		dmginfo:IsDamageType(DMG_ENERGYBEAM) or
		dmginfo:IsDamageType(DMG_DISSOLVE) or
		dmginfo:IsDamageType (DMG_PLASMA)
	then
		if
			self:GetClass() == "npc_vj_totu_deimos_cancer" or
			self:GetClass() == "npc_vj_totu_deimos_reborn" or
			self:GetClass() == "npc_vj_totu_deimos_redead_sci" or
			self:GetClass() == "npc_vj_totu_deimos_redead_guard"
		then
			self.ToTU_Weaponized_Cancer_FireDeath = true
		end
		self.ToTU_ZappyDeath = true
		self.AnimTbl_Death = {
			"vjseq_nz_death_elec_1",
			"vjseq_nz_death_elec_2",
			"vjseq_nz_death_elec_3",
			"vjseq_nz_death_elec_4"
		}
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
					self:SetKeyValue("rendercolor","82 82 82 255")
				end end)
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

		if self:GetClass() == "npc_vj_totu_deimos_cyst" then
			self:SetKeyValue("rendercolor","255 255 255 255")
		end

		util.VJ_SphereDamage(self, self, self:GetPos(), 75, 35, DMG_BLAST, true, true, {Force=50})

		if GetConVar("VJ_TOTU_LNR_Gib"):GetInt() == 1 then

			self:CreateGibEntity("obj_vj_gib", "UseHuman_Big")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Big")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Big")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Big")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Small")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Small")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Small")
			self:CreateGibEntity("obj_vj_gib", "UseHuman_Small")

			if self:GetClass() == "npc_vj_totu_deimos_cyst" then

				self:CreateGibEntity("prop_ragdoll", "models/totu/gibs/skeleton_leg_l.mdl")
				self:CreateGibEntity("prop_ragdoll", "models/totu/gibs/skeleton_arm_l.mdl")
				self:CreateGibEntity("prop_ragdoll", "models/totu/gibs/skeleton_arm.mdl")
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

	if	(
			self:GetClass() == "npc_vj_totu_lnr_wal" or
			self:GetClass() == "npc_vj_totu_lnr_wal_ply" or
			self:GetClass() == "npc_vj_totu_lnr_inf" or
			self:GetClass() == "npc_vj_totu_lnr_inf_ply" or
			self:GetClass() == "npc_vj_totu_deimos_redead_inf" or
			self:GetClass() == "npc_vj_totu_deimos_redead_inf_ply"
		) &&
		IsValid(GetCorpse)
	then

		-- GetCorpse:Remove()

		if IsValid(self.Bonemerge) then
			GetCorpse:VJ_ToTU_LNR_CreateBoneMerge(GetCorpse,self.Bonemerge:GetModel(),self.Bonemerge:GetSkin(),self.Bonemerge:GetColor(),self.Bonemerge:GetMaterial(),self.Bonemerge:GetPlayerColor(),self.Bonemerge)		
		end

	end

	if self:GetClass() == "npc_vj_totu_nightkin_squaller" && IsValid(GetCorpse) then

		if !self.ToTU_Nightkin_Squaller_HasIronWill then return end

		local AnimTime = VJ_GetSequenceDuration(self,"vjseq_infectionrise2")
		local AnimTime2 = VJ_GetSequenceDuration(self,"vjseq_Lying_to_Standing_Alert03d")
		local RevSqSpawnH = self.StartHealth * 0.5

		timer.Simple(math.random(5,10),function() if IsValid(GetCorpse) then

			VJ_EmitSound(GetCorpse,"fx/ironwill_start.mp3",75,100)

			local RevivedSquall = ents.Create("npc_vj_totu_nightkin_squaller")			
			RevivedSquall.CanEat = false
			RevivedSquall.CanFlinch = 0
			RevivedSquall.CanInvestigate = false
			RevivedSquall.HasDeathAnimation = false
			-- RevivedSquall.HasPoseParameterLooking = false
			-- RevivedSquall.DisableFindEnemy = true
			-- RevivedSquall.DisableMakingSelfEnemyToNPCs = true
			-- RevivedSquall.CallForHelp = false
			RevivedSquall.ToTU_Nightkin_Squaller_UsingIronWill = true
			-- RevivedSquall.MovementType = VJ_MOVETYPE_STATIONARY
			RevivedSquall.CanTurnWhileStationary = false								
			RevivedSquall:SetPos(GetCorpse:GetPos())
			RevivedSquall:SetAngles(GetCorpse:GetAngles())
			RevivedSquall:Spawn()
			RevivedSquall:Activate()
			undo.ReplaceEntity(self,RevivedSquall)
			RevivedSquall:SetHealth(RevSqSpawnH)
			-- RevivedSquall:SetMaterial("models/totu/bonemerge")
			RevivedSquall:SetMaterial()
			-- RevivedSquall:SetModel(GetCorpse:GetModel())
			RevivedSquall:SetSkin(GetCorpse:GetSkin())
			RevivedSquall:SetBodygroup(1,GetCorpse:GetBodygroup(1))
			RevivedSquall:SetBodygroup(2,GetCorpse:GetBodygroup(2))
			RevivedSquall:SetBodygroup(3,GetCorpse:GetBodygroup(3))

			if math.random(1,100) == 1 && GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
				VJ_EmitSound(RevivedSquall,"fx/egg/gettingrevived14.wav",80,100)
			end

			timer.Simple(0.08,function() if IsValid(RevivedSquall) then

				if math.random(1,2) == 1 then
					RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_infectionrise2",true,false,false)
				else
					RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_Lying_to_Standing_Alert03d",true,false,false)
				end
				VJ_CreateSound(RevivedSquall,RevivedSquall.SoundTbl_GetUp,75,100)					
				RevivedSquall:SetMaterial()
				RevivedSquall:SetSkin(GetCorpse:GetSkin())
				RevivedSquall:SetPos(RevivedSquall:GetPos() + RevivedSquall:GetUp()*-6)
					
				if IsValid(GetCorpse) then
					GetCorpse:Remove()
				end

				timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
					-- RevivedSquall:DoChangeMovementType(VJ_MOVETYPE_GROUND)
					RevivedSquall.CanFlinch = 1
					-- RevivedSquall.HasSounds = true	
					RevivedSquall.HasDeathAnimation = true
					-- RevivedSquall.HasPoseParameterLooking = true
					-- RevivedSquall.DisableFindEnemy = false		
					-- RevivedSquall.DisableMakingSelfEnemyToNPCs = false
					-- RevivedSquall.CallForHelp = true	
					RevivedSquall.ToTU_Nightkin_Squaller_HasIronWill = false
					RevivedSquall.CanInvestigate = true
				end end)

			end end)

		end end)

    end

	if self:GetClass() == "npc_vj_totu_nightkin_spitballer" && IsValid(GetCorpse) then

		local LightGlow = ents.Create("light_dynamic")
		LightGlow:SetKeyValue("brightness", "10")
		LightGlow:SetKeyValue("distance", "30")
		LightGlow:SetLocalPos(GetCorpse:GetPos() +GetCorpse:OBBCenter())
		LightGlow:SetLocalAngles(GetCorpse:GetAngles())
		LightGlow:Fire("Color", "93 0 255 255")
		LightGlow:SetParent(GetCorpse)
		LightGlow:Spawn()
		LightGlow:Activate()
		LightGlow:Fire("SetParentAttachment","legs_gib")
		LightGlow:Fire("TurnOn", "", 0)
		GetCorpse:DeleteOnRemove(LightGlow)
		GetCorpse.LightGlow = LightGlow

		local LightGlow = ents.Create("light_dynamic")
		LightGlow:SetKeyValue("brightness", "5")
		LightGlow:SetKeyValue("distance", "30")
		LightGlow:SetLocalPos(GetCorpse:GetPos() +GetCorpse:OBBCenter())
		LightGlow:SetLocalAngles(GetCorpse:GetAngles())
		LightGlow:Fire("Color", "93 0 255 255")
		LightGlow:SetParent(GetCorpse)
		LightGlow:Spawn()
		LightGlow:Activate()
		LightGlow:Fire("SetParentAttachment","chest")
		LightGlow:Fire("TurnOn", "", 0)
		GetCorpse:DeleteOnRemove(LightGlow)
		GetCorpse.LightGlow = LightGlow

	end

	if self.ToTU_Weaponized_Carcass_Exploder == true then

		GetCorpse:EmitSound(Sound("fx/explode_ ("..math.random(1,3)..").wav", 100, math.random(100,100)))
		GetCorpse:EmitSound(Sound("fx/explode_ ("..math.random(1,3)..").wav", 100, math.random(100,100)))
		GetCorpse:EmitSound(Sound("fx/explode_ ("..math.random(1,3)..").wav", 100, math.random(100,100)))

		local bloodspray = EffectData()
		bloodspray:SetOrigin(GetCorpse:GetPos())
		bloodspray:SetScale(10)
		bloodspray:SetFlags(3)
		bloodspray:SetColor(0)
		util.Effect("bloodspray",bloodspray)
		util.Effect("bloodspray",bloodspray)

		if self:GetClass() == "npc_vj_totu_deimos_cyst" then
			local bloodeffect = EffectData()
			bloodeffect:SetOrigin(GetCorpse:GetPos() +GetCorpse:GetUp()*40)
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

		if self:GetClass() == "npc_vj_totu_deimos_cyst" then
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

	if self:GetClass() == "npc_vj_totu_nightkin_spectre" && IsValid(GetCorpse) then

		timer.Simple(3,function() if IsValid(GetCorpse) then

			effects.BeamRingPoint(GetCorpse:GetPos(), 0.25, 2, 150, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
			effects.BeamRingPoint(GetCorpse:GetPos()+GetCorpse:GetUp()*15, 0.25, 2, 115, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
			effects.BeamRingPoint(GetCorpse:GetPos()+GetCorpse:GetUp()*30, 0.25, 2, 80, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
			effects.BeamRingPoint(GetCorpse:GetPos()+GetCorpse:GetUp()*45, 0.25, 2, 45, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
			effects.BeamRingPoint(GetCorpse:GetPos()+GetCorpse:GetUp()*60, 0.25, 2, 10, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})

			effects.BeamRingPoint(GetCorpse:GetPos(), 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
			effects.BeamRingPoint(GetCorpse:GetPos()+GetCorpse:GetUp()*15, 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
			effects.BeamRingPoint(GetCorpse:GetPos()+GetCorpse:GetUp()*30, 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
			effects.BeamRingPoint(GetCorpse:GetPos()+GetCorpse:GetUp()*45, 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
			effects.BeamRingPoint(GetCorpse:GetPos()+GetCorpse:GetUp()*60, 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})

			local bomblight = ents.Create("light_dynamic")
			bomblight:SetKeyValue("brightness", "7")
			bomblight:SetKeyValue("distance", "75")
			bomblight:SetParent(GetCorpse)
			bomblight:Fire("Color", "0 69 125")
			bomblight:Fire("SetParentAttachment","legs_gib")
			bomblight:Spawn()
			bomblight:Activate()
			bomblight:Fire("Kill", "", 0.4)
			GetCorpse:DeleteOnRemove(bomblight)

			local bombglow = ents.Create("env_sprite")
			bombglow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
			bombglow:SetKeyValue("scale", "0.75")
			bombglow:SetKeyValue("rendermode","5")
			bombglow:SetKeyValue("rendercolor","0 69 125")
			bombglow:SetKeyValue("spawnflags","1") -- If animated
			bombglow:SetParent(GetCorpse)
			bombglow:Fire("SetParentAttachment", "legs_gib")
			bombglow:Spawn()
			bombglow:Activate()
			bombglow:Fire("Kill", "", 0.35)
			GetCorpse:DeleteOnRemove(bombglow)

			VJ_EmitSound(GetCorpse,"voices/nightkin/spectre/time_glitch_hit_0"..math.random(1,4)..".mp3",80,math.random(100,95))
			VJ_EmitSound(GetCorpse,"ambient/levels/labs/teleport_postblast_thunder1.wav",80,math.random(100,95))

			GetCorpse:Remove()

		end end)

	end

	if self:GetClass() == "npc_vj_totu_deimos_cancer" && IsValid(GetCorpse) && !self.ToTU_Weaponized_Cancer_FireDeath then

		local AnimTime = VJ_GetSequenceDuration(self,"vjseq_infectionrise2")
		local AnimTime2 = VJ_GetSequenceDuration(self,"vjseq_Lying_to_Standing_Alert03d")
		local RevSqSpawnH = self.StartHealth * 0.10


		timer.Simple(math.random(5,10),function() if IsValid(GetCorpse) && GetConVar("VJ_ToTU_Deimos_Cancer_Reviving"):GetInt() == 1 then

			if math.random(1,GetConVar("VJ_ToTU_Deimos_Cancer_Mutation_Chance"):GetInt()) == 1 && GetConVar("VJ_ToTU_Deimos_Cancer_Mutation"):GetInt() == 1 then
				local RandMutate = math.random(1,3)
				
				if RandMutate == 1 then

					local RevivedSquall = ents.Create("npc_vj_totu_deimos_carcass")
					RevivedSquall.CanFlinch = 0
					RevivedSquall.CanInvestigate = false
					RevivedSquall.HasDeathAnimation = false
					RevivedSquall.CanTurnWhileStationary = false
					
					RevivedSquall:SetPos(GetCorpse:GetPos())
					RevivedSquall:SetAngles(GetCorpse:GetAngles())
					RevivedSquall.ToTU_Weaponized_CarcRevivee = true
					RevivedSquall.ToTU_Weaponized_Redead_CannotDigout = true
					RevivedSquall:Spawn()
					RevivedSquall:Activate()
					undo.ReplaceEntity(self,RevivedSquall)

					timer.Simple(0.01,function() if IsValid(RevivedSquall) then

						RevivedSquall:EmitSound(Sound("fx/deimos_mutate_"..math.random(1,3)..".mp3",80,math.random(100,90)))

						local bloodspray = EffectData()
						bloodspray:SetOrigin(RevivedSquall:GetPos())
						bloodspray:SetScale(10)
						bloodspray:SetFlags(3)
						bloodspray:SetColor(0)
						util.Effect("bloodspray",bloodspray)
						util.Effect("bloodspray",bloodspray)
						
						local bloodeffect = EffectData()
						bloodeffect:SetOrigin(RevivedSquall:GetPos())
						bloodeffect:SetColor(VJ_Color2Byte(Color(17,6,6,255)))
						bloodeffect:SetScale(125)
						util.Effect("VJ_Blood1",bloodeffect)

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
							
						if IsValid(GetCorpse) then
							GetCorpse:Remove()
						end

						timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
							RevivedSquall.CanFlinch = 1
							RevivedSquall.HasDeathAnimation = true
							RevivedSquall.CanInvestigate = true
							RevivedSquall.CanTurnWhileStationary = true
							
						end end)

					end end)
				
				elseif RandMutate == 2 then

					local RevivedSquall = ents.Create("npc_vj_totu_deimos_cazador")
					RevivedSquall.CanFlinch = 0
					RevivedSquall.CanInvestigate = false
					RevivedSquall.HasDeathAnimation = false
					RevivedSquall.CanTurnWhileStationary = false
					
					RevivedSquall:SetPos(GetCorpse:GetPos())
					RevivedSquall:SetAngles(GetCorpse:GetAngles())
					RevivedSquall.ToTU_Weaponized_Redead_CannotDigout = true
					RevivedSquall:Spawn()
					RevivedSquall:Activate()
					undo.ReplaceEntity(self,RevivedSquall)

					timer.Simple(0.01,function() if IsValid(RevivedSquall) then
					
						RevivedSquall:EmitSound(Sound("fx/deimos_mutate_"..math.random(1,3)..".mp3",80,math.random(100,90)))

						local bloodspray = EffectData()
						bloodspray:SetOrigin(RevivedSquall:GetPos())
						bloodspray:SetScale(10)
						bloodspray:SetFlags(3)
						bloodspray:SetColor(0)
						util.Effect("bloodspray",bloodspray)
						util.Effect("bloodspray",bloodspray)
						
						local bloodeffect = EffectData()
						bloodeffect:SetOrigin(RevivedSquall:GetPos())
						bloodeffect:SetColor(VJ_Color2Byte(Color(17,6,6,255)))
						bloodeffect:SetScale(125)
						util.Effect("VJ_Blood1",bloodeffect)
							
						local RandCazRevAnims = math.random(1,3)
						if RandCazRevAnims == 1 then
							RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_b",true,false,false)
						elseif RandCazRevAnims == 1 then
							RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_c",true,false,false)
						else
							RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_a",true,false,false)
						end

						RevivedSquall:SetPos(RevivedSquall:GetPos() + RevivedSquall:GetUp()*6)
							
						if IsValid(GetCorpse) then
							GetCorpse:Remove()
						end

						timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
							RevivedSquall.CanFlinch = 1
							RevivedSquall.HasDeathAnimation = true
							RevivedSquall.CanInvestigate = true
							RevivedSquall.CanTurnWhileStationary = true
							
						end end)

					end end)

				elseif RandMutate == 3 then

					local RevivedSquall = ents.Create("npc_vj_totu_deimos_cyst")
					RevivedSquall.CanFlinch = 0
					RevivedSquall.CanInvestigate = false
					RevivedSquall.HasDeathAnimation = false
					RevivedSquall.CanTurnWhileStationary = false
					
					RevivedSquall:SetPos(GetCorpse:GetPos())
					RevivedSquall:SetAngles(GetCorpse:GetAngles())
					RevivedSquall.ToTU_Weaponized_Redead_CannotDigout = true
					RevivedSquall:Spawn()
					RevivedSquall:Activate()
					undo.ReplaceEntity(self,RevivedSquall)

					timer.Simple(0.01,function() if IsValid(RevivedSquall) then

						RevivedSquall:EmitSound(Sound("fx/deimos_mutate_"..math.random(1,3)..".mp3",80,math.random(100,90)))

						local bloodspray = EffectData()
						bloodspray:SetOrigin(RevivedSquall:GetPos())
						bloodspray:SetScale(10)
						bloodspray:SetFlags(3)
						bloodspray:SetColor(0)
						util.Effect("bloodspray",bloodspray)
						util.Effect("bloodspray",bloodspray)
						
						local bloodeffect = EffectData()
						bloodeffect:SetOrigin(RevivedSquall:GetPos())
						bloodeffect:SetColor(VJ_Color2Byte(Color(17,6,6,255)))
						bloodeffect:SetScale(125)
						util.Effect("VJ_Blood1",bloodeffect)

						RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_a",true,false,false)

						RevivedSquall:SetPos(RevivedSquall:GetPos() + RevivedSquall:GetUp()*6)
							
						if IsValid(GetCorpse) then
							GetCorpse:Remove()
						end

						timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
							RevivedSquall.CanFlinch = 1
							RevivedSquall.HasDeathAnimation = true
							RevivedSquall.CanInvestigate = true
							RevivedSquall.CanTurnWhileStationary = true
							
						end end)

					end end)
				end

			else

				local RevivedSquall = ents.Create("npc_vj_totu_deimos_cancer")
				RevivedSquall.CanEat = false
				RevivedSquall.CanFlinch = 0
				RevivedSquall.CanInvestigate = false
				RevivedSquall.HasDeathAnimation = false
				RevivedSquall.CanTurnWhileStationary = false
				
				RevivedSquall:SetPos(GetCorpse:GetPos())
				RevivedSquall:SetAngles(GetCorpse:GetAngles())
				RevivedSquall.ToTU_Weaponized_Redead_CannotDigout = true
				RevivedSquall:Spawn()
				RevivedSquall:Activate()
				RevivedSquall:SetSkin(GetCorpse:GetSkin())
				undo.ReplaceEntity(self,RevivedSquall)
				RevivedSquall:SetHealth(RevSqSpawnH)

				timer.Simple(0.01,function() if IsValid(RevivedSquall) then

					if math.random(1,2) == 1 then
						RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_infectionrise2",true,false,false)
					else
						RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_Lying_to_Standing_Alert03d",true,false,false)
					end

					RevivedSquall:SetPos(RevivedSquall:GetPos() + RevivedSquall:GetUp()*6)
						
					if IsValid(GetCorpse) then
						GetCorpse:Remove()
					end

					if math.random(1,100) == 1 && GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
						VJ_EmitSound(RevivedSquall,"fx/egg/igetup.mp3",100,100)
					end

					timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
						RevivedSquall.CanFlinch = 1
						RevivedSquall.HasDeathAnimation = true
						RevivedSquall.CanInvestigate = true
						RevivedSquall.CanEat = true
						RevivedSquall.CanTurnWhileStationary = true
						
					end end)

				end end)

			end

		end end)

    end

	if
		(
			self:GetClass() == "npc_vj_totu_deimos_redead" or
			self:GetClass() == "npc_vj_totu_deimos_redead_sci" or
			self:GetClass() == "npc_vj_totu_deimos_redead_guard"
		) &&
		self.ToTU_Weaponized_Redead_CanMutate &&
		IsValid(GetCorpse) &&
		!self.ToTU_Weaponized_Cancer_FireDeath
	then

		local AnimTime = VJ_GetSequenceDuration(self,"vjseq_infectionrise2")
		local AnimTime2 = VJ_GetSequenceDuration(self,"vjseq_Lying_to_Standing_Alert03d")
		-- local RevSqSpawnH = self.StartHealth * 0.10

		timer.Simple(math.random(5,10),function() if IsValid(GetCorpse) && GetConVar("VJ_ToTU_Deimos_RebornMutation"):GetInt() == 1 then
			
			local RevivedSquall = ents.Create("npc_vj_totu_deimos_reborn")
			RevivedSquall.CanEat = false
			RevivedSquall.CanFlinch = 0
			RevivedSquall.CanInvestigate = false
			RevivedSquall.HasDeathAnimation = false
			RevivedSquall.CanTurnWhileStationary = false
			
			RevivedSquall:SetPos(GetCorpse:GetPos())
			RevivedSquall:SetAngles(GetCorpse:GetAngles())
			RevivedSquall.ToTU_Weaponized_Redead_CannotDigout = true
			RevivedSquall:Spawn()
			RevivedSquall:Activate()
			RevivedSquall:SetSkin(GetCorpse:GetSkin())
			undo.ReplaceEntity(self,RevivedSquall)
			-- RevivedSquall:SetHealth(RevSqSpawnH)

			timer.Simple(0.01,function() if IsValid(RevivedSquall) then

				if math.random(1,2) == 1 then
					RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_infectionrise2",true,false,false)
				else
					RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_Lying_to_Standing_Alert03d",true,false,false)
				end

				RevivedSquall:SetPos(RevivedSquall:GetPos() + RevivedSquall:GetUp()*6)
				
				RevivedSquall:EmitSound(Sound("fx/deimos_mutate_"..math.random(1,3)..".mp3",80,math.random(100,90)))

				local bloodspray = EffectData()
				bloodspray:SetOrigin(RevivedSquall:GetPos())
				bloodspray:SetScale(10)
				bloodspray:SetFlags(3)
				bloodspray:SetColor(0)
				util.Effect("bloodspray",bloodspray)
				util.Effect("bloodspray",bloodspray)
				
				local bloodeffect = EffectData()
				bloodeffect:SetOrigin(RevivedSquall:GetPos())
				bloodeffect:SetColor(VJ_Color2Byte(Color(17,6,6,255)))
				bloodeffect:SetScale(125)
				util.Effect("VJ_Blood1",bloodeffect)

				if IsValid(GetCorpse) then
					GetCorpse:Remove()
				end

				if math.random(1,100) == 1 && GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
					VJ_EmitSound(RevivedSquall,"fx/egg/igetup.mp3",100,100)
				end

				timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
					RevivedSquall.CanFlinch = 1
					RevivedSquall.HasDeathAnimation = true
					RevivedSquall.CanInvestigate = true
					RevivedSquall.CanEat = true
					RevivedSquall.CanTurnWhileStationary = true
					
				end end)

			end end)

		end end)

    end

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/