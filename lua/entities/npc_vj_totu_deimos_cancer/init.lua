AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_CustomOnPreInitialize()

	self.Model = {"models/totu/cancer.mdl"}

	timer.Simple(0.1,function() if IsValid(self) then
		self.AnimTbl_Walk = {ACT_WALK_AIM}
		self.AnimTbl_Run = {ACT_WALK_AIM}
		self.AnimTbl_IdleStand = {ACT_IDLE_AIM_STIMULATED}
		if self.LNR_UsingRelaxedIdle == true then
			self.AnimTbl_IdleStand = {ACT_IDLE}
		end
	end end)

	self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(3,10)	
	self.ToTU_BigZombie = true
	self.DeathAnimationChance = 1

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()
		self.SoundTbl_Idle = {
			"voices/deimos/cancer/groan1.mp3",
			"voices/deimos/cancer/groan2.mp3",
			"voices/deimos/cancer/groan3.mp3",
			"voices/deimos/cancer/groan4.mp3",
			"voices/deimos/cancer/groan5.mp3",
			"voices/deimos/cancer/groan6.mp3",
			"voices/deimos/cancer/groan7.mp3",
			"voices/deimos/cancer/snarl1.mp3",
			"voices/deimos/cancer/snarl2.mp3"
		}

		self.SoundTbl_Alert = {
			"voices/deimos/cancer/getup1.mp3",
			"voices/deimos/cancer/getup2.mp3",
			"voices/deimos/cancer/getup3.mp3",
		}

		self.SoundTbl_CombatIdle = {
			"voices/deimos/cancer/groan1.mp3",
			"voices/deimos/cancer/groan2.mp3",
			"voices/deimos/cancer/groan3.mp3",
			"voices/deimos/cancer/groan4.mp3",
			"voices/deimos/cancer/groan5.mp3",
			"voices/deimos/cancer/groan6.mp3",
			"voices/deimos/cancer/groan7.mp3",
			"voices/deimos/cancer/snarl1.mp3",
			"voices/deimos/cancer/snarl2.mp3"
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"voices/deimos/cancer/vo_att1.mp3",
			"voices/deimos/cancer/vo_att2.mp3",
			"voices/deimos/cancer/vo_att3.mp3",
			"voices/deimos/cancer/vo_att4.mp3",
			"voices/deimos/cancer/vo_att5.mp3",
			"voices/deimos/cancer/vo_att6.mp3",
			"voices/deimos/cancer/vo_att7.mp3",
			"voices/deimos/cancer/vo_att_180.mp3"
		}

		self.SoundTbl_Pain = {
			"voices/deimos/cancer/hurt1.mp3",
			"voices/deimos/cancer/hurt2.mp3",
			"voices/deimos/cancer/hurt3.mp3",
			"voices/deimos/cancer/hurt4.mp3",
			"voices/deimos/cancer/hurt5.mp3",
			"voices/deimos/cancer/hurt6.mp3",
		}

    	self.SoundTbl_Death = {
			"voices/deimos/cancer/death1.mp3",
			"voices/deimos/cancer/death2.mp3",
			"voices/deimos/cancer/death3.mp3",
			"voices/deimos/cancer/death4.mp3",
		}
		
		self.ToTU_Almanac_VoiceActor = "Crimson Head (Resident Evil 1 Remake)"
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	self.HasHealthRegeneration = true
	self.HealthRegenerationDelay = VJ_Set(0.25,0.25)
	self.HealthRegenerationResetOnDmg = false

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(10,15)
		self.HealthRegenerationAmount = 2

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(15,20)
		self.HealthRegenerationAmount = 4

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 400
		self.MeleeAttackDamage = math.Rand(20,25)
		self.HealthRegenerationAmount = 6

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 500
		self.MeleeAttackDamage = math.Rand(25,30)
		self.HealthRegenerationAmount = 8

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 600
		self.MeleeAttackDamage = math.Rand(30,35)
		self.HealthRegenerationAmount = 10

	else

		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(15,20)
		self.HealthRegenerationAmount = 4

	end

	self:SetHealth(self.StartHealth)

	self.LNR_LegHP = self.StartHealth * 0.20

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:UnCripple()

	self.CanEat = true

	self.MeleeAttackAnimationAllowOtherTasks = true
	self.MeleeAttackDistance = 40
	self.MeleeAttackDamageDistance = 60

	self.CanTurnWhileStationary = true

	if self.LNR_UsingRelaxedIdle then
		self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
	else	
		self.AnimTbl_IdleStand = {ACT_IDLE}
	end

	self:SetCollisionBounds(Vector(13, 13, 68), Vector(-13, -13, 0))

	self.VJC_Data = {
		CameraMode = 1,
		ThirdP_Offset = Vector(40, 20, -50),
		FirstP_Bone = "ValveBiped.Bip01_Head1",
		FirstP_Offset = Vector(0, 0, 5),
	}	

	if GetConVar("VJ_LNR_JumpClimb"):GetInt() != 0 then
		self:CapabilitiesAdd(bit.bor(CAP_MOVE_JUMP))
		self:CapabilitiesAdd(bit.bor(CAP_MOVE_CLIMB))
	end

	self.HasDeathAnimation = true
	self.LNR_Crippled = false

	self.LNR_LegHP = self.StartHealth * 0.20

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/