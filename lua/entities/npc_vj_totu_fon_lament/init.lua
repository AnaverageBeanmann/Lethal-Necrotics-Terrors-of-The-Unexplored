AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_Difficulty()

	self.HasHealthRegeneration = true
	self.HealthRegenerationDelay = VJ_Set(2, 2)
	self.HealthRegenerationResetOnDmg = false
	
	-- health regen formula is starthealth divided by 30

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 1400
		self.MeleeAttackDamage = math.Rand(40,45)
		self.HealthRegenerationAmount = 46

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 6000
		self.MeleeAttackDamage = math.Rand(55,60)
		self.HealthRegenerationAmount = 50

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 1600
		self.MeleeAttackDamage = math.Rand(50,55)
		self.HealthRegenerationAmount = 53

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 1700
		self.MeleeAttackDamage = math.Rand(55,60)
		self.HealthRegenerationAmount = 56

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

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
		
		if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
			self.MeleeAttackBleedEnemyDamage = math.random(5,10)
		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
			self.MeleeAttackBleedEnemyDamage = math.random(10,15)
		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
			self.MeleeAttackBleedEnemyDamage = math.random(15,20)
		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
			self.MeleeAttackBleedEnemyDamage = math.random(20,25)
		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
			self.MeleeAttackBleedEnemyDamage = math.random(25,30)
		else
			self.MeleeAttackBleedEnemyDamage = math.random(10,15)
		end
	end

	self:SetHealth(self.StartHealth)

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

		if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
			self.MeleeAttackDamage = math.Rand(25,30)
		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
			self.MeleeAttackDamage = math.Rand(55,60)
		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
			self.MeleeAttackDamage = math.Rand(35,40)
		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
			self.MeleeAttackDamage = math.Rand(40,45)
		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
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
		if math.random(1,4) == 1 then
			self.AnimTbl_MeleeAttack = {"vjseq_flinch"}
			self.SoundTbl_BeforeMeleeAttack = {"fx/aah.mp3"}
			util.VJ_SphereDamage(self, self, pos, 150, 10, DMG_SONIC, true, true, {DisableVisibilityCheck=true, Force=5})
			util.ScreenShake(self:GetPos(), 10, 500, 1.6, 1200)
			self.SoundTbl_BeforeMeleeAttack = {
				"voices/deimos/reaper/run_1.mp3",
				"voices/deimos/reaper/run_2.mp3",
				"voices/deimos/reaper/run_3.mp3",
				"voices/deimos/reaper/run_4.mp3"
			}
			VJ_EmitSound(self,"fx/aah.mp3",80,50)
			VJ_EmitSound(self,"fx/aah.mp3",80,50)
			effects.BeamRingPoint(self:GetPos(), 0.3, 2, 100, 15, 0, Color(255, 255, 255), {material="sprites/physbeama", framerate=20})
			effects.BeamRingPoint(self:GetPos(), 0.3, 2, 300, 10, 0, Color(255, 255, 255), {material="sprites/physbeama", framerate=20})
			effects.BeamRingPoint(self:GetPos(), 0.3, 2, 500, 5, 0, Color(255, 255, 255), {material="sprites/physbeama", framerate=20})
			self.ToTU_Weaponized_Redead_NextRunT = CurTime() - math.random(6,12)
			if self.ToTU_FreakOfNature_Phase == 2 then
				self:ToTU_Weaponized_Lament_Summon_Spawn()
				self:ToTU_Weaponized_Lament_Summon_Spawn()
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

				if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
					self.MeleeAttackDamage = math.Rand(25,30)
				elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
					self.MeleeAttackDamage = math.Rand(55,60)
				elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
					self.MeleeAttackDamage = math.Rand(35,40)
				elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
					self.MeleeAttackDamage = math.Rand(40,45)
				elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
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
					"vj_lnrhl2/shared/melee/hit_punch_01.wav",
					"vj_lnrhl2/shared/melee/hit_punch_02.wav",
					"vj_lnrhl2/shared/melee/hit_punch_03.wav",
					"vj_lnrhl2/shared/melee/hit_punch_04.wav",
					"vj_lnrhl2/shared/melee/hit_punch_05.wav",
					"vj_lnrhl2/shared/melee/hit_punch_06.wav",
					"vj_lnrhl2/shared/melee/hit_punch_07.wav",
					"vj_lnrhl2/shared/melee/hit_punch_08.wav"
				}

			self.MeleeAttackSoundPitch = VJ_Set(100, 95)

				self.AnimTbl_MeleeAttack = {"vjseq_attack2"}

				if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
					self.MeleeAttackDamage = math.Rand(5,10)
				elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
					self.MeleeAttackDamage = math.Rand(35,40)
				elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
					self.MeleeAttackDamage = math.Rand(15,20)
				elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
					self.MeleeAttackDamage = math.Rand(20,25)
				elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
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

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RangeAttackCode_GetShootPos(TheProjectile)
		return (self:GetEnemy():GetPos() - self:LocalToWorld(Vector(80,0,0)))*2.5
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Weaponized_Lament_Summon_Spawn()
	if !IsValid(self.KinHelp1) then
		self.KinHelp1 = self:ToTU_Weaponized_Lament_Summon()
		return 15
	elseif !IsValid(self.KinHelp2) then
		self.KinHelp2 = self:ToTU_Weaponized_Lament_Summon()
		return 15
	elseif !IsValid(self.KinHelp3) then
		self.KinHelp3 = self:ToTU_Weaponized_Lament_Summon()
		return 15
	elseif !IsValid(self.KinHelp4) then
		self.KinHelp4 = self:ToTU_Weaponized_Lament_Summon()
		return 15
	elseif !IsValid(self.KinHelp5) then
		self.KinHelp5 = self:ToTU_Weaponized_Lament_Summon()
		return 15
	elseif !IsValid(self.KinHelp6) then
		self.KinHelp6 = self:ToTU_Weaponized_Lament_Summon()
		return 15
	elseif !IsValid(self.KinHelp7) then
		self.KinHelp7 = self:ToTU_Weaponized_Lament_Summon()
		return 15
	elseif !IsValid(self.KinHelp8) then
		self.KinHelp8 = self:ToTU_Weaponized_Lament_Summon()
		return 15
	elseif !IsValid(self.KinHelp9) then
		self.KinHelp9 = self:ToTU_Weaponized_Lament_Summon()
		return 15
	elseif !IsValid(self.KinHelp10) then
		self.KinHelp10 = self:ToTU_Weaponized_Lament_Summon()
		return 15
	
	end
	return 8
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Weaponized_Lament_Summon()

	local randnest = math.random(1,3)
	if randnest == 1 then
		self.KinT = "npc_vj_totu_deimos_corrupt_brute"
	else
		self.KinT = "npc_vj_totu_deimos_corrupt"
	end

	local tr = util.TraceLine({
		start = self:GetPos(),
		endpos = self:GetPos() + self:GetForward() * math.Rand(350, -350) + self:GetRight() * math.Rand(350, -350) + self:GetUp() * 60,
		filter = {self},
		mask = MASK_SOLID,
	})
	local spawnpos = tr.HitPos + tr.HitNormal*-350
	local ally = ents.Create(self.KinT)
	ally:SetPos(spawnpos)
	ally:SetAngles(self:GetAngles())
	ally:Spawn()
	ally:Activate()
	ally.VJ_NPC_Class = self.VJ_NPC_Class
	ally:RiseFromGround()
	return ally
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/