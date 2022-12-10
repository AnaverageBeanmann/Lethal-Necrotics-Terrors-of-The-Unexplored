AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/totu/testmonkcstrain.mdl"}
ENT.VJC_Data = {
	CameraMode = 1,
	ThirdP_Offset = Vector(40, 20, -50),
	FirstP_Bone = "ValveBiped.Bip01_Head1",
	FirstP_Offset = Vector(0, 0, 5),
}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.CustomBlood_Particle = {"lnr_bullet_impact_01","lnr_bullet_impact_02","lnr_bullet_impact_03","lnr_bullet_impact_04"}
ENT.CustomBlood_Decal = {"VJ_LNR_Blood_Red"}
ENT.ImmuneDamagesTable = {DMG_RADIATION,DMG_NERVEGAS}
ENT.CanFlinch = 1
ENT.FlinchChance = 5
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
ENT.MeleeAttackDamage = math.Rand(15,10)
ENT.AnimTbl_MeleeAttack = {"vjseq_MeleeAttack01"} -- Melee Attack Animations
ENT.TimeUntilMeleeAttackDamage = false -- This counted in seconds | This calculates the time until it hits something
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ENT.DisableFootStepSoundTimer = true
ENT.WaitForEnemyToComeOut = false
ENT.NoWeapon_UseScaredBehavior = false
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ENT.HasGrenadeAttack = true
ENT.GrenadeAttackEntity = "obj_vj_totu_milzgren"
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.GeneralSoundPitch1 = 100
ENT.GeneralSoundPitch2 = 95
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.LNR_AllowedToStumble = true
ENT.LNR_NextStumbleT = 0
ENT.LNR_NextShoveT = 0
ENT.LNR_DoorToBreak = NULL

ENT.ZappyDeath = false
ENT.CanDoTheFunny = true
ENT.NextSplodeStumbleT = 0
ENT.WeHaveAWeapon = false
ENT.MilZ_IsMilZ = false
ENT.CStrain_DroppedWeapon = false

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

ENT.SoundTbl_FootStep = {""}
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

	if GetConVar("VJ_LNR_GroundRise"):GetInt() == 1 && ( self:IsDirtGround(self:GetPos()) or GetConVar("VJ_ToTU_Spawn_UniversalDig"):GetInt() == 1 ) then
		if math.random(1,GetConVar("VJ_ToTU_Spawn_DigChance"):GetInt()) == 1 && !self.LNR_Crawler then
			self:RiseFromGround()
		end
	end
	
	if GetConVar("VJ_ToTU_General_Jump_DownOnly"):GetInt() == 1 then
		self.MaxJumpLegalDistance = VJ_Set(5, 280)
	end
	
	/*
	isn't in yet!
	util.AddNetworkString("VJ_ToTU_CStrain_Hud")
	*/
	
	self:Zombie_Difficulty()
	self:Zombie_CustomOnInitialize()
    self:ZombieSounds()	
	self:ZombieWeapons()
	self:CapabilitiesAdd(bit.bor(CAP_MOVE_CLIMB))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize() end -- For additional initialize options
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds()
	if self:GetClass() == "npc_vj_totu_base_cstrain" then
		if math.random(2,2) == 1 then
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
			"test/JESSE2.mp3",
			"test/monk_death07_glitch.mp3"}
		self.SoundTbl_BeforeMeleeAttack = {"test/come_1.mp3",
			"test/come_2.mp3",
			"test/come_3.mp3",
			"test/come_4.mp3",
			"test/come_5.mp3",
			"test/come_6.mp3",
			"test/come_7.mp3",
			"test/come_8.mp3",
			"test/come_9.mp3",
			"test/come_10.mp3"}
		self.SoundTbl_GrenadeAttack = {"test/come_1.mp3",
			"test/come_2.mp3",
			"test/come_3.mp3",
			"test/come_4.mp3",
			"test/come_5.mp3",
			"test/come_6.mp3",
			"test/come_7.mp3",
			"test/come_8.mp3",
			"test/come_9.mp3",
			"test/come_10.mp3"}
			
		self.SoundTbl_MeleeAttack = {
			"vj_lnrhl2/shared/melee/hit_punch_01.wav",
			"vj_lnrhl2/shared/melee/hit_punch_02.wav",
			"vj_lnrhl2/shared/melee/hit_punch_03.wav",
			"vj_lnrhl2/shared/melee/hit_punch_04.wav",
			"vj_lnrhl2/shared/melee/hit_punch_05.wav",
			"vj_lnrhl2/shared/melee/hit_punch_06.wav",
			"vj_lnrhl2/shared/melee/hit_punch_07.wav",
			"vj_lnrhl2/shared/melee/hit_punch_08.wav"}
		self.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss2.wav","npc/zombie/claw_miss1.wav"}
		else
		self.SoundTbl_Idle = {
			"vj_codz/bo1/amb/amb_00.wav",
			"vj_codz/bo1/amb/amb_01.wav",
			"vj_codz/bo1/amb/amb_02.wav",
			"vj_codz/bo1/amb/amb_03.wav",
			"vj_codz/bo1/amb/amb_04.wav",
			"vj_codz/bo1/amb/amb_05.wav",
			}
		self.SoundTbl_Alert = {
			"vj_codz/bo1/taunt/taunt_00.wav",
			"vj_codz/bo1/taunt/taunt_01.wav",
			"vj_codz/bo1/taunt/taunt_02.wav",
			"vj_codz/bo1/taunt/taunt_03.wav",
			"vj_codz/bo1/taunt/taunt_04.wav",
			"vj_codz/bo1/taunt/taunt_05.wav",
			"vj_codz/bo1/taunt/taunt_06.wav"
			}
		self.SoundTbl_CombatIdle = {
			"vj_codz/bo1/sprint/sprint_00.wav",
			"vj_codz/bo1/sprint/sprint_01.wav",
			"vj_codz/bo1/sprint/sprint_02.wav",
			"vj_codz/bo1/sprint/sprint_03.wav",
			"vj_codz/bo1/sprint/sprint_04.wav",
			"vj_codz/bo1/sprint/sprint_05.wav",
			"vj_codz/bo1/sprint/sprint_06.wav",
			"vj_codz/bo1/sprint/sprint_07.wav",
			"vj_codz/bo1/sprint/sprint_08.wav",
			"vj_codz/bo1/sprint/sprint_09.wav"
			}
		self.SoundTbl_Pain = {
			"vj_codz/bo1/behind/behind_00.wav",
			"vj_codz/bo1/behind/behind_01.wav",
			"vj_codz/bo1/behind/behind_02.wav",
			"vj_codz/bo1/behind/behind_03.wav",
			"vj_codz/bo1/behind/behind_04.wav",
			}
		self.SoundTbl_Death = {
			"vj_codz/bo1/death/death_00.wav",
			"vj_codz/bo1/death/death_01.wav",
			"vj_codz/bo1/death/death_02.wav",
			"vj_codz/bo1/death/death_03.wav",
			"vj_codz/bo1/death/death_04.wav",
			"vj_codz/bo1/death/death_05.wav",
			"vj_codz/bo1/death/death_06.wav",
			"vj_codz/bo1/death/death_07.wav",
			"vj_codz/bo1/death/death_08.wav",
			"vj_codz/bo1/death/death_09.wav",
			"vj_codz/bo1/death/death_10.wav"
			}
		self.SoundTbl_BeforeMeleeAttack = {
			"vj_codz/bo1/attack/attack_00.wav",
			"vj_codz/bo1/attack/attack_01.wav",
			"vj_codz/bo1/attack/attack_02.wav",
			"vj_codz/bo1/attack/attack_03.wav",
			"vj_codz/bo1/attack/attack_04.wav",
			"vj_codz/bo1/attack/attack_05.wav",
			"vj_codz/bo1/attack/attack_06.wav",
			"vj_codz/bo1/attack/attack_07.wav",
			"vj_codz/bo1/attack/attack_08.wav",
			"vj_codz/bo1/attack/attack_09.wav",
			"vj_codz/bo1/attack/attack_10.wav",
			"vj_codz/bo1/attack/attack_11.wav",
			"vj_codz/bo1/attack/attack_12.wav",
			"vj_codz/bo1/attack/attack_13.wav",
			"vj_codz/bo1/attack/attack_14.wav",
			"vj_codz/bo1/attack/attack_15.wav",
			}
		self.SoundTbl_GrenadeAttack = {
			"vj_codz/bo1/crawl/crawl_00.wav",
			"vj_codz/bo1/crawl/crawl_01.wav",
			"vj_codz/bo1/crawl/crawl_02.wav",
			"vj_codz/bo1/crawl/crawl_03.wav",
			"vj_codz/bo1/crawl/crawl_04.wav",
			"vj_codz/bo1/crawl/crawl_05.wav",
			}
		self.SoundTbl_OnGrenadeSight = {
			"vj_codz/bo1/elec/elec_00.wav",
			"vj_codz/bo1/elec/elec_01.wav",
			"vj_codz/bo1/elec/elec_02.wav",
			"vj_codz/bo1/elec/elec_03.wav",
			"vj_codz/bo1/elec/elec_04.wav",
			"vj_codz/bo1/elec/elec_05.wav",
			}
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieWeapons()
	self.WeHaveAWeapon = true

	if self.DisableFindEnemy == true then		
		timer.Simple(1.3,function() if IsValid(self) then
			self:ZombieWeapons_Give()
		end end)
	else
		self:ZombieWeapons_Give()
	end	
	
end	
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieWeapons_Give()
	
	-- make it so they only attack at close range
	-- so they don't just stay like 5000 feet away while spraying smg bullets
	-- exclude the razor for obvious reasons

	if self:GetClass() == "npc_vj_totu_base_cstrain" then
		local CBaseWeapon = math.random(1,9)
		if CBaseWeapon == 1 then
			self:Give("weapon_vj_spas12")
		elseif CBaseWeapon == 2 then
			self:Give("weapon_vj_ak47")
		elseif CBaseWeapon == 3 then
			self:Give("weapon_vj_smg1")
		elseif CBaseWeapon == 4 then
			self:Give("weapon_vj_ar2")
		elseif CBaseWeapon == 5 then
			self:Give("weapon_vj_blaster")
		elseif CBaseWeapon == 6 then
			self:Give("weapon_vj_k3")
		elseif CBaseWeapon == 7 then
			self:Give("weapon_vj_m16a1")
		elseif CBaseWeapon == 8 then
			self:Give("weapon_vj_mp40")
		elseif CBaseWeapon == 9 then
			self:Give("weapon_vj_ssg08")
		else
			self:Give("weapon_vj_crowbar")
		end
		
		local CBaseGrenade = math.random(1,14)
		if CBaseGrenade == 1 then
			self.GrenadeAttackEntity = "sent_vj_lnr_barrel_ln21a"
		elseif CBaseGrenade == 2 then
			self.GrenadeAttackEntity = "sent_vj_lnr_barrel_ln21b"
		elseif CBaseGrenade == 3 then
			self.GrenadeAttackEntity = "sent_vj_lnr_sample_ln21a"
		elseif CBaseGrenade == 4 then
			self.GrenadeAttackEntity = "sent_vj_lnr_sample_ln21b"
		elseif CBaseGrenade == 5 then
			self.GrenadeAttackEntity = "sent_vj_lnr_vial_ln21a"
		elseif CBaseGrenade == 6 then
			self.GrenadeAttackEntity = "sent_vj_lnr_vial_ln21b"
		elseif CBaseGrenade == 7 then
			self.GrenadeAttackEntity = "obj_vj_flareround"
		elseif CBaseGrenade == 8 then
			self.GrenadeAttackEntity = "obj_vj_blasterrod"
		elseif CBaseGrenade == 9 then
			self.GrenadeAttackEntity = "obj_vj_combineball"
		elseif CBaseGrenade == 10 then
			self.GrenadeAttackEntity = "obj_vj_crossbowbolt"
		elseif CBaseGrenade == 11 then
			self.GrenadeAttackEntity = "obj_vj_grenade"
		elseif CBaseGrenade == 12 then
			self.GrenadeAttackEntity = "obj_vj_grenade_rifle"
		elseif CBaseGrenade == 13 then
			self.GrenadeAttackEntity = "obj_vj_tank_shell"
		end
		
		-- timer.Simple(0.1,function() if IsValid(self) then
		self.WeaponInventory_AntiArmor = true
		self.WeaponInventory_AntiArmorList = {"weapon_vj_rpg","weapon_vj_crossbow"}
		self.WeaponInventory_Melee = true
		self.WeaponInventory_MeleeList = {"weapon_vj_flaregun","weapon_vj_crowbar","weapon_vj_357","weapon_vj_9mmpistol","weapon_vj_glock17"}
		-- end end)
		self.ThrowGrenadeChance = 1
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then // Easy
		self.StartHealth = 50
		self.MeleeAttackDamage = math.Rand(5,10)
	end
		
	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then // Normal
		self.StartHealth = 100		
		self.MeleeAttackDamage = math.Rand(10,15)
	end
	
	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then // Hard
		self.StartHealth = 150	
		self.MeleeAttackDamage = math.Rand(15,20)
	end
	
	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then // Nightmare
		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(20,25)
	end
	
	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then // Apocalypse
		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(25,30) 
	end
	
	self:SetHealth(self.StartHealth)	
end

---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnSetupWeaponHoldTypeAnims(hType)

/*
htypes are as follow

 
 copied from hobo king
	if hType == "pistol" or hType == "revolver" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_PISTOL
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_GESTURE_RANGE_ATTACK_PISTOL
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_RANGE_ATTACK_PISTOL_LOW
		self.WeaponAnimTranslations[ACT_RELOAD] 						= ACT_RELOAD_PISTOL
		self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= ACT_RELOAD_PISTOL
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_IDLE
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_IDLE_ANGRY
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_WALK_RIFLE
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_WALK_AIM_RIFLE
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_WALK_CROUCH_RPG
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_WALK_CROUCH_AIM_RIFLE
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_RUN_RIFLE
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_RUN_AIM_RIFLE
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_RUN_CROUCH_RPG
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_RUN_CROUCH_AIM_RIFLE
		self.CanCrouchOnWeaponAttack = false
		return true
	else
		self.CanCrouchOnWeaponAttack = true
		return false
	end
*/
	/*
	local come = math.random(1,10)
		if come == 1 then
			VJ_EmitSound(self,"test/come_1.mp3",75,100) -- make sure this is even working
		elseif come == 2 then
			VJ_EmitSound(self,"test/come_2.mp3",75,100) -- make sure this is even working
		elseif come == 3 then
			VJ_EmitSound(self,"test/come_3.mp3",75,100) -- make sure this is even working
		elseif come == 4 then
			VJ_EmitSound(self,"test/come_4.mp3",75,100) -- make sure this is even working
		elseif come == 5 then
			VJ_EmitSound(self,"test/come_5.mp3",75,100) -- make sure this is even working
		elseif come == 6 then
			VJ_EmitSound(self,"test/come_6.mp3",75,100) -- make sure this is even working
		elseif come == 7 then
			VJ_EmitSound(self,"test/come_7.mp3",75,100) -- make sure this is even working
		elseif come == 8 then
			VJ_EmitSound(self,"test/come_8.mp3",75,100) -- make sure this is even working
		elseif come == 9 then
			VJ_EmitSound(self,"test/come_9.mp3",75,100) -- make sure this is even working
		elseif come == 10 then
			VJ_EmitSound(self,"test/come_10.mp3",75,100) -- make sure this is even working
		end
		*/
		
	if hType == "fist" then
			self.MeleeAttackDamage = math.Rand(15,10)
			self.AnimTbl_MeleeAttack = {
				"vjges_CI_Melee_Moving01",
				"vjges_CI_Melee_Moving02",
				"vjges_CI_Melee_Moving03",
				"vjges_CI_Melee_Moving04",
				"vjges_CI_Melee_Moving05",
				"vjges_CI_Melee_Moving06"}
			self.TimeUntilMeleeAttackDamage = false -- This counted in seconds | This calculates the time until it hits something
			self.SoundTbl_MeleeAttack = {
        "vj_lnrhl2/shared/melee/hit_punch_01.wav",
        "vj_lnrhl2/shared/melee/hit_punch_02.wav",
        "vj_lnrhl2/shared/melee/hit_punch_03.wav",
        "vj_lnrhl2/shared/melee/hit_punch_04.wav",
        "vj_lnrhl2/shared/melee/hit_punch_05.wav",
        "vj_lnrhl2/shared/melee/hit_punch_06.wav",
        "vj_lnrhl2/shared/melee/hit_punch_07.wav",
        "vj_lnrhl2/shared/melee/hit_punch_08.wav"}
			self.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss2.wav","npc/zombie/claw_miss1.wav"}
		self.WeaponInventory_AntiArmor = false
		self.WeaponInventory_Melee = false
		self.WeaponInventory_AntiArmorList = {""}
		self.WeaponInventory_MeleeList = {""}

		-- port lnr melee anims
	
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 				= ACT_MELEE_ATTACK2
			self.WeaponAnimTranslations[ACT_WALK] 						= ACT_SPRINT
			self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_SPRINT
			self.WeaponAnimTranslations[ACT_RUN] 						= ACT_SPRINT
			self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_SPRINT
			self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 				= ACT_MELEE_ATTACK2
	elseif hType == "melee" or hType == "melee2" or hType == "knife" then
			self.WeaponAnimTranslations[ACT_IDLE] 						= ACT_BUSY_THREAT
			
			self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 				= ACT_IDLE_ANGRY_MELEE
			
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 				= ACT_MELEE_ATTACK_SWING
			
			self.WeaponAnimTranslations[ACT_WALK] 						= ACT_WALK_ANGRY
			
			self.WeaponAnimTranslations[ACT_RUN] 						= ACT_SPRINT
		return true
	elseif hType == "pistol" or hType == "revolver" then
	
			self.WeaponAnimTranslations[ACT_IDLE] 						= ACT_IDLE_PISTOL
			
			self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 				= ACT_IDLE_ANGRY_PISTOL
				
			self.WeaponAnimTranslations[ACT_COVER_LOW] 					= ACT_COVER
	
			self.WeaponAnimTranslations[ACT_WALK] 						= ACT_WALK_PISTOL
			
			self.WeaponAnimTranslations[ACT_WALK_AIM] 					= ACT_WALK_AIM_PISTOL
			
			self.WeaponAnimTranslations[ACT_WALK_CROUCH] 				= ACT_WALK_CROUCH_RIFLE
			
			self.WeaponAnimTranslations[ACT_RUN] 						= ACT_RUN_PISTOL
			
			self.WeaponAnimTranslations[ACT_RUN_AIM] 					= ACT_RUN_AIM_PISTOL
			
			self.WeaponAnimTranslations[ACT_RUN_CROUCH] 				= ACT_RUN_CROUCH_RIFLE
			
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 				= ACT_RANGE_ATTACK_PISTOL
			
			self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 		= ACT_GESTURE_RANGE_ATTACK_PISTOL
			
			self.WeaponAnimTranslations[ACT_RELOAD] 					= ACT_RELOAD_PISTOL

			self.WeaponAnimTranslations[ACT_RELOAD_LOW] 				= ACT_RELOAD_PISTOL_LOW

			self.MeleeAttackDamage = math.Rand(15,10)
			self.AnimTbl_MeleeAttack = {"vjseq_melee_gunhit"} -- Melee Attack Animations
			self.TimeUntilMeleeAttackDamage = 0.5 -- This counted in seconds | This calculates the time until it hits something
			self.SoundTbl_MeleeAttack = {
				"player/survivor/hit/rifle_swing_hit_infected10.wav",
				"player/survivor/hit/rifle_swing_hit_infected11.wav",
				"player/survivor/hit/rifle_swing_hit_infected12.wav",
				"player/survivor/hit/rifle_swing_hit_infected7.wav",
				"player/survivor/hit/rifle_swing_hit_infected8.wav",
				"player/survivor/hit/rifle_swing_hit_infected9.wav"}
			self.SoundTbl_MeleeAttackMiss = {
				"player/survivor/swing/swish_weaponswing_swipe5.wav",
			"player/survivor/swing/swish_weaponswing_swipe6.wav"}
			
		return true
	elseif hType == "smg" then
				
			self.WeaponAnimTranslations[ACT_IDLE] 						= ACT_IDLE_SMG1_RELAXED
			
			self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 				= ACT_IDLE_ANGRY_SMG1
				
			self.WeaponAnimTranslations[ACT_COVER_LOW] 					= ACT_COVER_LOW
			
			self.WeaponAnimTranslations[ACT_WALK] 						= ACT_WALK_RIFLE_RELAXED
			
			self.WeaponAnimTranslations[ACT_WALK_AIM] 					= ACT_WALK_AIM_RIFLE
			
			self.WeaponAnimTranslations[ACT_WALK_CROUCH] 				= ACT_WALK_CROUCH_RIFLE
			
			self.WeaponAnimTranslations[ACT_RUN] 						= ACT_RUN
			
			self.WeaponAnimTranslations[ACT_RUN_AIM] 					= ACT_RUN_AIM_RIFLE
			
			self.WeaponAnimTranslations[ACT_RUN_CROUCH] 				= ACT_RUN_CROUCH_RIFLE
			
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 				= ACT_RANGE_ATTACK_SMG1
				
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 			= ACT_RANGE_ATTACK_SMG1_LOW
				
			self.WeaponAnimTranslations[ACT_RELOAD] 					= ACT_RELOAD_SMG1
				
			self.WeaponAnimTranslations[ACT_RELOAD_LOW] 				= ACT_RELOAD_SMG1_LOW
			
			
			self.MeleeAttackDamage = math.Rand(15,10)
			self.AnimTbl_MeleeAttack = {"vjseq_melee_gunhit"} -- Melee Attack Animations
			self.TimeUntilMeleeAttackDamage = 0.5 -- This counted in seconds | This calculates the time until it hits something
			self.SoundTbl_MeleeAttack = {
				"player/survivor/hit/rifle_swing_hit_infected10.wav",
				"player/survivor/hit/rifle_swing_hit_infected11.wav",
				"player/survivor/hit/rifle_swing_hit_infected12.wav",
				"player/survivor/hit/rifle_swing_hit_infected7.wav",
				"player/survivor/hit/rifle_swing_hit_infected8.wav",
				"player/survivor/hit/rifle_swing_hit_infected9.wav"}
			self.SoundTbl_MeleeAttackMiss = {
				"player/survivor/swing/swish_weaponswing_swipe5.wav",
			"player/survivor/swing/swish_weaponswing_swipe6.wav"}
			
		return true
	elseif hType == "ar2" or hType == "rpg" then
	
			self.WeaponAnimTranslations[ACT_IDLE] 						= ACT_IDLE_SMG1_RELAXED -- ar2 anims weren't working
			
			self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 				= ACT_IDLE_ANGRY_SMG1
				
			self.WeaponAnimTranslations[ACT_COVER_LOW] 					= ACT_COVER_LOW
			
			self.WeaponAnimTranslations[ACT_WALK] 						= VJ_PICK({ACT_WALK_AR2_RELAXED, ACT_WALK_AR2_STIMULATED, ACT_WALK_AR2})
			
			self.WeaponAnimTranslations[ACT_WALK_AIM] 					= ACT_WALK_AIM_RIFLE
			
			self.WeaponAnimTranslations[ACT_WALK_CROUCH] 				= ACT_WALK_CROUCH_RIFLE
			
			self.WeaponAnimTranslations[ACT_RUN] 						= ACT_RUN
			
			self.WeaponAnimTranslations[ACT_RUN_AIM] 					= ACT_RUN_AIM_RIFLE
			
			self.WeaponAnimTranslations[ACT_RUN_CROUCH] 				= ACT_RUN_CROUCH_RIFLE
			
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 				= ACT_RANGE_ATTACK_AR2
				
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 			= ACT_RANGE_ATTACK_AR2_LOW
				
			self.WeaponAnimTranslations[ACT_RELOAD] 					= ACT_RELOAD
				
			self.WeaponAnimTranslations[ACT_RELOAD_LOW] 				= ACT_RELOAD_LOW
				
				
			
			self.MeleeAttackDamage = math.Rand(15,10)
			self.AnimTbl_MeleeAttack = {"vjseq_melee_gunhit"} -- Melee Attack Animations
			self.TimeUntilMeleeAttackDamage = 0.5 -- This counted in seconds | This calculates the time until it hits something
			self.SoundTbl_MeleeAttack = {
				"player/survivor/hit/rifle_swing_hit_infected10.wav",
				"player/survivor/hit/rifle_swing_hit_infected11.wav",
				"player/survivor/hit/rifle_swing_hit_infected12.wav",
				"player/survivor/hit/rifle_swing_hit_infected7.wav",
				"player/survivor/hit/rifle_swing_hit_infected8.wav",
				"player/survivor/hit/rifle_swing_hit_infected9.wav"}
			self.SoundTbl_MeleeAttackMiss = {
				"player/survivor/swing/swish_weaponswing_swipe5.wav",
			"player/survivor/swing/swish_weaponswing_swipe6.wav"}
				
		return true
	elseif hType == "shotgun" or hType == "crossbow" then
	
			self.WeaponAnimTranslations[ACT_IDLE] 						= ACT_IDLE_SHOTGUN_RELAXED
			
			self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 				= ACT_IDLE_ANGRY_SHOTGUN
				
			self.WeaponAnimTranslations[ACT_COVER_LOW] 					= ACT_COVER_LOW
			
			self.WeaponAnimTranslations[ACT_WALK] 						= VJ_PICK({ACT_WALK_AR2_RELAXED, ACT_WALK_AR2_STIMULATED, ACT_WALK_AR2})
			
			self.WeaponAnimTranslations[ACT_WALK_AIM] 					= ACT_WALK_AIM_SHOTGUN
			
			self.WeaponAnimTranslations[ACT_WALK_CROUCH] 				= ACT_WALK_CROUCH_RIFLE
			
			self.WeaponAnimTranslations[ACT_RUN] 						= ACT_RUN
			
			self.WeaponAnimTranslations[ACT_RUN_AIM] 					= ACT_RUN_AIM_RIFLE
			
			self.WeaponAnimTranslations[ACT_RUN_CROUCH] 				= ACT_RUN_CROUCH_RIFLE
			
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 				= ACT_RANGE_ATTACK_SHOTGUN
				
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 			= ACT_RANGE_ATTACK_SHOTGUN_LOW
				
			self.WeaponAnimTranslations[ACT_RELOAD] 					= ACT_RELOAD
				
			self.WeaponAnimTranslations[ACT_RELOAD_LOW] 				= ACT_RELOAD_LOW
				
				
			
			self.MeleeAttackDamage = math.Rand(15,10)
			self.AnimTbl_MeleeAttack = {"vjseq_melee_gunhit"} -- Melee Attack Animations
			self.TimeUntilMeleeAttackDamage = 0.5 -- This counted in seconds | This calculates the time until it hits something
			self.SoundTbl_MeleeAttack = {
				"player/survivor/hit/rifle_swing_hit_infected10.wav",
				"player/survivor/hit/rifle_swing_hit_infected11.wav",
				"player/survivor/hit/rifle_swing_hit_infected12.wav",
				"player/survivor/hit/rifle_swing_hit_infected7.wav",
				"player/survivor/hit/rifle_swing_hit_infected8.wav",
				"player/survivor/hit/rifle_swing_hit_infected9.wav"}
			self.SoundTbl_MeleeAttackMiss = {
				"player/survivor/swing/swish_weaponswing_swipe5.wav",
			"player/survivor/swing/swish_weaponswing_swipe6.wav"}
				
		return true
	end
	end


-- return false end -- return true to disable the base code
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)

	if key == "step" then
		self:FootStepSoundCode()
	end
	
	if key == "step" then
		if self.MilZ_IsMilZ then
			if self:GetActivity() == ACT_RUN or self:GetActivity() == ACT_RUN_AIM or self:GetActivity() == ACT_SPRINT or self:GetActivity() == ACT_RUN_RELAXED then
				VJ_EmitSound(self,"npc/combine_soldier/gear"..math.random(1,6)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			else
				VJ_EmitSound(self,"vj_lnrhl2/zombine/gear"..math.random(1,3)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			end
		end
	end
	
	if key == "step" then
		if self.MilZ_IsMilZ then
			if self.MilZ_HasFlakSuit == true or self:GetClass() == "npc_vj_totu_milzomb_detonator" then
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
	
	/*
	if key == "grenthroww" then
		self:ThrowGrenadeCode()
	end
	*/
	
	if key == "death" then
		VJ_EmitSound(self,"physics/body/body_medium_impact_soft"..math.random(1,7)..".wav",75,100)
		self:DropTheFuckignWeaponGoddamn()
	end
	
	if key == "death" && self.MilZ_IsMilZ then
		VJ_EmitSound(self,"vj_lnrhl2/zombine/gear"..math.random(1,3)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
	end
	
	if key == "death" && self.MilZ_IsMilZ then
		if self.MilZ_HasFlakSuit == true or self:GetClass() == "npc_vj_totu_milzomb_detonator" then
			VJ_EmitSound(self,"fx/footsteps/mil_flak/step_"..math.random(1,4)..".mp3",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
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
			
			if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
				util.ScreenShake(self:GetPos(), self.WorldShakeOnMoveAmplitude, self.WorldShakeOnMoveFrequency, self.WorldShakeOnMoveDuration, self.WorldShakeOnMoveRadius)
			end
			
			local doorDmg = self.MeleeAttackDamage
			local door = self.LNR_DoorToBreak
			
			if door.DoorHealth == nil then
				door.DoorHealth = 200 - doorDmg
			elseif door.DoorHealth <= 0 then
				VJ_EmitSound(self,self.SoundTbl_MeleeAttackMiss,self.MeleeAttackMissSoundLevel,self:VJ_DecideSoundPitch(self.MeleeAttackMissSoundPitch.a,self.MeleeAttackMissSoundPitch.b))
			return -- To prevent door props making a duplication when it shouldn't
			else
				door.DoorHealth = door.DoorHealth - doorDmg
			end
			
		if door:GetClass() == "prop_door_rotating" && door.DoorHealth <= 0 then
		
			door:EmitSound("physics/wood/wood_furniture_break"..math.random(1,2)..".wav",75,100)
			door:EmitSound("ambient/materials/door_hit1.wav",75,100)
			ParticleEffect("door_pound_core",door:GetPos(),door:GetAngles(),nil)
			ParticleEffect("door_explosion_chunks",door:GetPos(),door:GetAngles(),nil)
			door:Remove()
			self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
			
            local doorgib = ents.Create("prop_physics")
            doorgib:SetPos(door:GetPos())
            doorgib:SetAngles(door:GetAngles())
            doorgib:SetModel(door:GetModel())
            doorgib:SetSkin(door:GetSkin())
			doorgib:SetBodygroup(1,door:GetBodygroup(1))
			doorgib:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
			doorgib:SetSolid(SOLID_NONE)
            doorgib:Spawn()
			doorgib:GetPhysicsObject():ApplyForceCenter(self:GetForward()*5000)
			SafeRemoveEntityDelayed(doorgib,30)
			
		elseif door:GetClass() == "func_door_rotating" && door.DoorHealth <= 0 then
		
			door:EmitSound("physics/wood/wood_furniture_break"..math.random(1,2)..".wav",75,100)
			ParticleEffect("door_pound_core",door:GetPos(),door:GetAngles(),nil)
			ParticleEffect("door_explosion_chunks",door:GetPos(),door:GetAngles(),nil)
			door:Remove()
			self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
			
            local doorgibs = ents.Create("prop_dynamic")
            doorgibs:SetPos(door:GetPos())
            doorgibs:SetModel("models/props_c17/FurnitureDresser001a.mdl")
            doorgibs:Spawn()
            doorgibs:TakeDamage(9999)
            doorgibs:Fire("break")		
			
			end
		end
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
						if string.find(anim,"idle") or string.find(anim,"open") then
							self.LNR_DoorToBreak = v
							break
						end
					end
				end
			end
		else
		    if self.PlayingAttackAnimation or !self.LNR_DoorToBreak:Visible(self) then self.LNR_DoorToBreak = NULL return end
			if self:GetActivity() != ACT_OPEN_DOOR then
				local ang = self:GetAngles()
				self:SetAngles(Angle(ang.x,(self.LNR_DoorToBreak:GetPos() -self:GetPos()):Angle().y,ang.z))
				self:VJ_ACT_PLAYACTIVITY(ACT_OPEN_DOOR,true,false,false)
			end
		end
	end
	
	
	if !IsValid(self:GetActiveWeapon()) && !self.CStrain_DroppedWeapon then
			self.MeleeAttackDamage = math.Rand(15,10)
			self.AnimTbl_MeleeAttack = {
				"vjges_CI_Melee_Moving01",
				"vjges_CI_Melee_Moving02",
				"vjges_CI_Melee_Moving03",
				"vjges_CI_Melee_Moving04",
				"vjges_CI_Melee_Moving05",
				"vjges_CI_Melee_Moving06"}
			self.TimeUntilMeleeAttackDamage = false -- This counted in seconds | This calculates the time until it hits something
			self.SoundTbl_MeleeAttack = {
        "vj_lnrhl2/shared/melee/hit_punch_01.wav",
        "vj_lnrhl2/shared/melee/hit_punch_02.wav",
        "vj_lnrhl2/shared/melee/hit_punch_03.wav",
        "vj_lnrhl2/shared/melee/hit_punch_04.wav",
        "vj_lnrhl2/shared/melee/hit_punch_05.wav",
        "vj_lnrhl2/shared/melee/hit_punch_06.wav",
        "vj_lnrhl2/shared/melee/hit_punch_07.wav",
        "vj_lnrhl2/shared/melee/hit_punch_08.wav"}
			self.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss2.wav","npc/zombie/claw_miss1.wav"}
			self.AnimTbl_IdleStand = {ACT_IDLE}
			self.AnimTbl_Run = {ACT_SPRINT}
			-- self:SetState()
			self:Give("weapon_vj_totu_empty")
			-- self.DisableWeapons = true
		self.WeaponInventory_AntiArmor = false
		self.WeaponInventory_Melee = false
			if self.CStrain_DroppedWeapon == false then
					-- self:Give("weapon_vj_crowbar")
					self.CStrain_DroppedWeapon = true
				-- timer.Simple(0.5,function() if IsValid(self) then	
					-- self.DisableWeapons = true
				-- self.VJ_PlayingSequence = false
				-- end end)
			end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink_AIEnabled()
	self:Zombie_CustomOnThink_AIEnabled()
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
	self:SetMaterial("lnr/bonemerge")
	if IsValid(self.WeaponModel) then self.WeaponModel:SetMaterial("lnr/bonemerge") self.WeaponModel:DrawShadow(false) end
	if IsValid(self.bobm) then self.bobm:SetMaterial("lnr/bonemerge") self.bobm:DrawShadow(false) end
	self:DrawShadow(false)
	self:AddFlags(FL_NOTARGET)
	self.GodMode = true
	self.MovementType = VJ_MOVETYPE_STATIONARY
	self.CanTurnWhileStationary = false
	self.HasSounds = false
	self.HasPoseParameterLooking = false
	self.DisableFindEnemy = true		
	self.CallForHelp = false
	
	if self:GetClass() == "npc_vj_totu_milzomb_detonator" then
		self.MilZ_Det_Beep_CanBeep = false
	end
	
	
	timer.Simple(1.3,function() if IsValid(self) then
		if GetConVar("VJ_ToTU_Spawn_AlertSound"):GetInt() == 1 then
			VJ_CreateSound(self,self.SoundTbl_Alert,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.AlertSoundPitch.a, self.AlertSoundPitch.b))
		end
		self:SetMaterial()
		if IsValid(self.WeaponModel) then self.WeaponModel:SetMaterial() self.WeaponModel:DrawShadow(true) end
		if IsValid(self.bobm) then self.bobm:SetMaterial() self.bobm:DrawShadow(true) end
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
	if self:GetClass() == "npc_vj_totu_milzomb_detonator" then
		self.MilZ_Det_Beep_CanBeep = true
	end	
	end end)
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
function ENT:Controller_Initialize(ply)

	/*
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
	*/
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAlert(ent)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnResetEnemy()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnFlinch_BeforeFlinch(dmginfo,hitgroup)
	-- if self.LNR_Crawler or self.LNR_Crippled or self.ToTU_Crawling then return end
		if dmginfo:GetDamage() > 19 or dmginfo:GetDamageForce():Length() > 5000 then
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
			-- VJ_EmitSound(self,{"ambient/fire/gascan_ignite1.wav","ambient/fire/ignite.wav"},100,math.random(100,95))
	-- if IsValid(self:GetActiveWeapon()) && !self:GetActiveWeapon() == "weapon_vj_crowbar" then
		
		-- self.TheDroppedWeapon = ents.Create(self.CurrentWeaponEntity:GetClass())
		-- self.TheDroppedWeapon:SetPos(getAttach.Pos)
		-- self.TheDroppedWeapon:Spawn()
		-- self.TheDroppedWeapon:Activate()
		-- self:Give("weapon_vj_totu_empty")
		self:DropOurGunCauseYouFellDumdum(dmginfo, hitgroup)
		self:Give("weapon_vj_totu_empty")
		
	-- end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DropOurGunCauseYouFellDumdum(dmginfo, hitgroup)
	if self.DropWeaponOnDeath != true or !IsValid(self:GetActiveWeapon()) or self.CStrain_DroppedWeapon then return end
	
	
	self.CurrentWeaponEntity = self:GetActiveWeapon()
		self:CreateGibEntity("prop_physics",self.CurrentWeaponEntity:GetModel(),{Pos=self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos,Ang=self:GetAngles()})
		self.CurrentWeaponEntity:SetMaterial("lnr/bonemerge")
		self.CurrentWeaponEntity:DrawShadow(false)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)

	-- if self.CanDoTheFunny == false or self.LNR_Crawler or self.LNR_Crippled then return end
	
	if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) then
		if hitgroup == HITGROUP_HEAD or hitgroup == HITGROUP_CHEST or hitgroup == HITGROUP_STOMACH then
			if self.LNR_NextStumbleT < CurTime() && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) then
				if dmginfo:GetDamage() >= 85 or dmginfo:GetDamageForce():Length() >= 12500 then
					if math.random (1,1) == 1 then
						self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
						self.LNR_NextStumbleT = CurTime() + 7
					end
				elseif dmginfo:GetDamage() >= 40 or dmginfo:GetDamageForce():Length() >= 7500 then
					if math.random (1,3) == 1 then
						self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
						self.LNR_NextStumbleT = CurTime() + 7
					end
				else
					if math.random (1,5) == 1 then
						self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
						self.LNR_NextStumbleT = CurTime() + 6
					end
				end
			end
		elseif hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then		 
			if self.LNR_NextStumbleT < CurTime() && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) then
				if self:GetActivity() == ACT_SPRINT or self:GetActivity() == ACT_RUN_AIM or self:GetActivity() == ACT_RUN or self:GetActivity() == ACT_RUN_AIM_PISTOL or self:GetActivity() == ACT_RUN_PISTOL or self:GetActivity() == ACT_RUN_AIM_SHOTGUN or self:GetActivity() == ACT_RUN_AIM_RIFLE or self:GetActivity() == ACT_RUN_CROUCH_RIFLE then
					if dmginfo:GetDamage() >= 20 or dmginfo:GetDamageForce():Length() >= 2500 then
						self:VJ_ACT_PLAYACTIVITY("vjseq_Run_Stumble_01",true,false,false)
						self.LNR_NextStumbleT = CurTime() + 7
					elseif dmginfo:GetDamage() <= 20 or dmginfo:GetDamageForce():Length() <= 2500 then
						if math.random (1,2) == 1 then
							self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,false,false)
							self.LNR_NextStumbleT = CurTime() + 7
						end
					end
				else
					if math.random (1,5) == 1 then
						self:VJ_ACT_PLAYACTIVITY(ACT_STEP_FORE,true,1.6)
						self.LNR_NextStumbleT = CurTime() + 3
					end
				end
			end
		end
	end
		
	if dmginfo:IsDamageType(DMG_CLUB) or dmginfo:IsDamageType(DMG_SLASH) or dmginfo:IsDamageType(DMG_GENERIC) or dmginfo:IsDamageType(DMG_SONIC) or dmginfo:IsDamageType(DMG_CRUSH) then
		if self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) then
			if dmginfo:GetDamage() >= 50 or dmginfo:GetDamageForce():Length() >= 10000 then
				if self.LNR_NextShoveT < CurTime() then
					self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
					self.LNR_NextShoveT = CurTime() + math.random(5,8)
				end
			elseif dmginfo:GetDamage() >= 25 or dmginfo:GetDamageForce():Length() >= 5000 then
				if self.LNR_NextShoveT < CurTime() then
					self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
					self.LNR_NextShoveT = CurTime() + math.random(5,8)
				end
		elseif dmginfo:GetDamage() <= 25 or dmginfo:GetDamageForce():Length() <= 5000 then
			if self.LNR_NextShoveT < CurTime() then
				self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
				self.LNR_NextShoveT = CurTime() + math.random(5,8)
			end
		end
	end
    return !self.LNR_Crawler && !self.LNR_Crippled && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH)
	end
	
	if dmginfo:IsExplosionDamage() then
		if self.NextSplodeStumbleT < CurTime() then
			if math.random(1,2) == 1 then
				if math.random(1,2) == 1 then
					self:VJ_ACT_PLAYACTIVITY("vjseq_Run_Stumble_01",true,false,false)
				else
					self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,false,false)
				end
			else
				self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
			end
		self.NextSplodeStumbleT = CurTime() + 5
	end
   return !self.LNR_Crawler && !self.LNR_Crippled && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH)
	end
	
	
	/*
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
	*/
end
---------------------------------------------------------------------------------------------------------------------------------------------
/*
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

*/
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPriorToKilled(dmginfo, hitgroup)

	if dmginfo:IsDamageType(DMG_BURN) or dmginfo:IsDamageType(DMG_SLOWBURN) or dmginfo:IsDamageType(DMG_ENERGYBEAM) or dmginfo:IsDamageType(DMG_DISSOLVE) or dmginfo:IsDamageType (DMG_PLASMA) or dmginfo:IsDamageType(DMG_SHOCK) then
		self.DeathAnimationChance = 1
	end
	
	if self:GetActivity() == ACT_BIG_FLINCH or self:GetActivity() == ACT_SMALL_FLINCH then
		self.HasDeathAnimation = false
	end
	
	-- self.CanDoTheFunny = false
	-- self.CanFlinch = 0
	self:DropTheFuckignWeaponGoddamn()
	
	
    self:SetSolid(SOLID_NONE)
    self:AddFlags(FL_NOTARGET) -- So normal NPCs can stop shooting at the corpse.
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo,hitgroup)
	if self.LNR_Crawler then return end
	if self:IsMoving() and dmginfo:IsBulletDamage() && GetConVar("VJ_ToTU_General_MovingDeathAnimations"):GetInt() == 1 then
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