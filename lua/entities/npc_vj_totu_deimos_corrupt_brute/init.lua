AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_CustomOnInitialize()

	if self:GetClass() == "npc_vj_totu_fon_lament" then
		self:SetModelScale(1.49)
	else
		self:SetModelScale(1.35)
	end
	self.AnimTbl_Flinch = {}

	self.MeleeAttackDistance = 50
	self.MeleeAttackDamageDistance = 70
	self.BeforeMeleeAttackSoundLevel = 80

	if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 0 or GetConVar("vj_npc_noidleparticle"):GetInt() == 1 then return end
		
		local EyeGlow = ents.Create("env_sprite")
		EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		EyeGlow:SetKeyValue("scale","0.02")
		EyeGlow:SetKeyValue("rendermode","5")
		EyeGlow:SetKeyValue("rendercolor","220 0 255 255")
		EyeGlow:SetKeyValue("spawnflags","1") 
		EyeGlow:SetParent(self)
		EyeGlow:Fire("SetParentAttachment","eyeglow",0)
		EyeGlow:Spawn()
		EyeGlow:Activate()
		self:DeleteOnRemove(EyeGlow)

	if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
		local TrailColor = Color(220,0,255,255)
		local EyeTrail = util.SpriteTrail(self,1,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Idle = {
		"voices/deimos/reaper/idle_1.mp3",
		"voices/deimos/reaper/idle_2.mp3",
		"voices/deimos/reaper/idle_3.mp3",
		"voices/deimos/reaper/idle_4.mp3",
		"voices/deimos/reaper/idle_5.mp3",
		"voices/deimos/reaper/idle_6.mp3",
		"voices/deimos/reaper/idle_7.mp3",
		"voices/deimos/reaper/idle_8.mp3",
		"voices/deimos/reaper/idle_9.mp3",
		"voices/deimos/reaper/idle_10.mp3",
		"voices/deimos/reaper/idle_11.mp3"
	}

	self.SoundTbl_Alert = {
		"voices/deimos/reaper/alert_1.mp3",
		"voices/deimos/reaper/alert_2.mp3",
		"voices/deimos/reaper/alert_3.mp3"
	}

	self.SoundTbl_CombatIdle = {
		"voices/deimos/reaper/cidle_1.mp3",
		"voices/deimos/reaper/cidle_2.mp3",
		"voices/deimos/reaper/cidle_3.mp3",
		"voices/deimos/reaper/cidle_4.mp3",
		"voices/deimos/reaper/cidle_5.mp3",
		"voices/deimos/reaper/cidle_6.mp3"
	}

	self.SoundTbl_BeforeMeleeAttack = {""}

	self.SoundTbl_Pain = {
		"voices/deimos/reaper/pain_1.mp3",
		"voices/deimos/reaper/pain_2.mp3",
		"voices/deimos/reaper/pain_3.mp3",
		"voices/deimos/reaper/pain_4.mp3",
		"voices/deimos/reaper/pain_5.mp3",
		"voices/deimos/reaper/pain_6.mp3",
		"voices/deimos/reaper/pain_7.mp3",
		"voices/deimos/reaper/pain_8.mp3",
		"voices/deimos/reaper/pain_9.mp3",
		"voices/deimos/reaper/pain_10.mp3",
		"voices/deimos/reaper/pain_11.mp3",
		"voices/deimos/reaper/pain_12.mp3"
	}

	self.SoundTbl_Death = {
		"voices/deimos/reaper/death_1.mp3",
		"voices/deimos/reaper/death_2.mp3",
		"voices/deimos/reaper/death_3.mp3",
		"voices/deimos/reaper/death_4.mp3",
		"voices/deimos/reaper/death_5.mp3",
		"voices/deimos/reaper/death_6.mp3",
		"voices/deimos/reaper/death_7.mp3",
		"voices/deimos/reaper/death_8.mp3",
		"voices/deimos/reaper/death_9.mp3",
		"voices/deimos/reaper/death_10.mp3",
		"voices/deimos/reaper/death_11.mp3",
		"voices/deimos/reaper/death_12.mp3",
		"voices/deimos/reaper/death_13.mp3",
		"voices/deimos/reaper/death_14.mp3",
		"voices/deimos/reaper/death_15.mp3",
		"voices/deimos/reaper/death_16.mp3",
		"voices/deimos/reaper/death_17.mp3",
		"voices/deimos/reaper/death_18.mp3"
	}

	self.IdleSoundLevel = 80
	self.AlertSoundLevel = 85
	self.BeforeMeleeAttackSoundLevel = 80
	self.PainSoundLevel = 85
	self.DeathSoundLevel = 85

	self.ToTU_Almanac_VoiceActor = "Jeff (Half-Life: Alyx)"

	if self:GetClass() == "npc_vj_totu_fon_lament" then
		self.IdleSoundPitch = VJ_Set(60, 65)
		self.AlertSoundPitch = VJ_Set(60, 65)
		self.CombatIdleSoundPitch = VJ_Set(60, 65)
		self.BeforeMeleeAttackSoundPitch = VJ_Set(60, 65)
		self.PainSoundPitch = VJ_Set(60, 65)
		self.DeathSoundPitch = VJ_Set(60, 65)
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	self.HasHealthRegeneration = true
	self.HealthRegenerationDelay = VJ_Set(2, 2)
	self.HealthRegenerationResetOnDmg = false

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 1400
		self.MeleeAttackDamage = math.Rand(40,45)
		self.HealthRegenerationAmount = 46

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 1500
		self.MeleeAttackDamage = math.Rand(45,50)
		self.HealthRegenerationAmount = 50

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 1500
		self.MeleeAttackDamage = math.Rand(50,55)
		self.HealthRegenerationAmount = 53

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 1700
		self.MeleeAttackDamage = math.Rand(55,60)
		self.HealthRegenerationAmount = 56

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 1800
		self.MeleeAttackDamage = math.Rand(60,65)
		self.HealthRegenerationAmount = 60

	else

		self.StartHealth = 1500
		self.MeleeAttackDamage = math.Rand(45,50)
		self.HealthRegenerationAmount = 50

	end


	if GetConVar("VJ_ToTU_Weaponized_Carcass_Bleed"):GetInt() == 1 then

		self.MeleeAttackBleedEnemy = true
		self.MeleeAttackBleedEnemyChance = 3
		self.MeleeAttackBleedEnemyTime = 1
		self.MeleeAttackBleedEnemyReps = 4
		
		if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
			self.MeleeAttackBleedEnemyDamage = math.random(5,10)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
			self.MeleeAttackBleedEnemyDamage = math.random(10,15)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
			self.MeleeAttackBleedEnemyDamage = math.random(15,20)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
			self.MeleeAttackBleedEnemyDamage = math.random(20,25)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
			self.MeleeAttackBleedEnemyDamage = math.random(25,30)
		else
			self.MeleeAttackBleedEnemyDamage = math.random(10,15)
		end
	end

	self:SetHealth(self.StartHealth)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GetSightDirection()
	return self:GetForward()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnMeleeAttack_BeforeStartTimer(seed)

	if self:IsMoving() && self.ToTU_Weaponized_Redead_Running then

		self.SoundTbl_BeforeMeleeAttack = {
			"voices/deimos/reaper/attack_moving_1.mp3",
			"voices/deimos/reaper/attack_moving_2.mp3",
			"voices/deimos/reaper/attack_moving_3.mp3",
			"voices/deimos/reaper/attack_moving_4.mp3",
			"voices/deimos/reaper/attack_moving_5.mp3",
			"voices/deimos/reaper/attack_moving_6.mp3",
			"voices/deimos/reaper/attack_moving_7.mp3",
			"voices/deimos/reaper/attack_moving_8.mp3",
			"voices/deimos/reaper/attack_moving_9.mp3",
			"voices/deimos/reaper/attack_moving_10.mp3",
			"voices/deimos/reaper/attack_moving_11.mp3",
			"voices/deimos/reaper/attack_moving_12.mp3"
		}

		self.AnimTbl_MeleeAttack = {"vjseq_attack_run"}
		
		self.SoundTbl_MeleeAttackExtra = {
			"fx/ambru/attack_claw_hit01.wav",
			"fx/ambru/attack_claw_hit02.wav",
			"fx/ambru/attack_claw_hit03.wav"
		}

			self.SoundTbl_MeleeAttack = {
				"physics/body/body_medium_break2.wav",
				"physics/body/body_medium_break3.wav",
				"physics/body/body_medium_break4.wav"
			}

			self.MeleeAttackSoundPitch = VJ_Set(80, 75)

		if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
			self.MeleeAttackDamage = math.Rand(25,30)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
			self.MeleeAttackDamage = math.Rand(30,35)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
			self.MeleeAttackDamage = math.Rand(35,40)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
			self.MeleeAttackDamage = math.Rand(40,45)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
			self.MeleeAttackDamage = math.Rand(45,50)
		else
			self.MeleeAttackDamage = math.Rand(30,35)
		end

		self.HasMeleeAttackKnockBack = false

		self.MeleeAttackDamageType = DMG_SLASH
		
		if GetConVar("VJ_ToTU_Weaponized_Carcass_Bleed"):GetInt() == 1 then
			self.MeleeAttackBleedEnemy = true
		end

	else

		self.SoundTbl_BeforeMeleeAttack = {
			"voices/deimos/reaper/attack_stand_1.mp3",
			"voices/deimos/reaper/attack_stand_2.mp3",
			"voices/deimos/reaper/attack_stand_3.mp3",
			"voices/deimos/reaper/attack_stand_4.mp3",
			"voices/deimos/reaper/attack_stand_5.mp3"
		}

		if math.random(1,3) != 1 then

			self.AnimTbl_MeleeAttack = {"vjseq_attack1"}

			self.SoundTbl_MeleeAttackExtra = {
				"fx/ambru/attack_claw_hit01.wav",
				"fx/ambru/attack_claw_hit02.wav",
				"fx/ambru/attack_claw_hit03.wav"
			}

			self.SoundTbl_MeleeAttack = {
				"physics/body/body_medium_break2.wav",
				"physics/body/body_medium_break3.wav",
				"physics/body/body_medium_break4.wav"
			}

			self.MeleeAttackSoundPitch = VJ_Set(80, 75)

			if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
				self.MeleeAttackDamage = math.Rand(25,30)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
				self.MeleeAttackDamage = math.Rand(30,35)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
				self.MeleeAttackDamage = math.Rand(35,40)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
				self.MeleeAttackDamage = math.Rand(40,45)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
				self.MeleeAttackDamage = math.Rand(45,50)
			else
				self.MeleeAttackDamage = math.Rand(30,35)
			end

			self.HasMeleeAttackKnockBack = false
			
			self.MeleeAttackDamageType = DMG_SLASH

			if GetConVar("VJ_ToTU_Weaponized_Carcass_Bleed"):GetInt() == 1 then
				self.MeleeAttackBleedEnemy = true
			end

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

			self.MeleeAttackSoundPitch = VJ_Set(100, 95)

			self.AnimTbl_MeleeAttack = {"vjseq_attack2"}

			if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
				self.MeleeAttackDamage = math.Rand(5,10)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
				self.MeleeAttackDamage = math.Rand(10,15)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
				self.MeleeAttackDamage = math.Rand(15,20)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
				self.MeleeAttackDamage = math.Rand(20,25)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
				self.MeleeAttackDamage = math.Rand(30,35)
			else
				self.MeleeAttackDamage = math.Rand(10,15)
			end

			self.HasMeleeAttackKnockBack = true
			self.MeleeAttackKnockBack_Forward1 = 195
			self.MeleeAttackKnockBack_Forward2 = 195
			self.MeleeAttackKnockBack_Up1 = 145
			self.MeleeAttackKnockBack_Up2 = 180

			self.MeleeAttackDamageType = DMG_CLUB
			self.MeleeAttackBleedEnemy = false

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)

	if GetConVar("VJ_ToTU_General_Armor_Allow"):GetInt() == 0 then return end

	if
		(hitgroup == HITGROUP_GEAR or
		hitgroup == HITGROUP_GENERIC) &&
		(dmginfo:IsDamageType(DMG_CLUB) or
		dmginfo:IsDamageType(DMG_SLASH) or
		dmginfo:IsDamageType(DMG_GENERIC))
	then

		if math.random(1,2) != 1 then
			local randmetalhitsound = math.random(1,3)
			if randmetalhitsound == 1 then
				VJ_EmitSound(self,"physics/metal/metal_solid_impact_hard1.wav",70) 
			end
			if randmetalhitsound == 2 then
				VJ_EmitSound(self,"physics/metal/metal_solid_impact_hard4.wav",70) 
			end
			if randmetalhitsound == 3 then
				VJ_EmitSound(self,"physics/metal/metal_solid_impact_hard5.wav",70) 
			end

			dmginfo:ScaleDamage(0.30)

			if math.random(1,100) == 1 && GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
				VJ_EmitSound(self,"fx/egg/metalpipe.mp3",100,100)
			end
		end

	end

	if hitgroup == HITGROUP_GEAR then

		if
			dmginfo:IsBulletDamage() or
			dmginfo:IsDamageType(DMG_BUCKSHOT) or
			dmginfo:IsDamageType(DMG_SLASH) or
			dmginfo:IsDamageType(DMG_CLUB)
		then

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

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/