AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:ZombieSounds_Custom()

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
		
	self.ToTU_Almanac_VoiceActor = "Demolisher (Dying Light 1)"

	self.MeleeAttackSoundPitch = VJ_Set(80, 75)
	self.DeathSoundPitch = VJ_Set(100, 90)

	if self.LNR_Runner or self.ToTU_Rusher then
		
		self.SoundTbl_Alert = {
			"voices/mil_jugg/run_start_1.mp3",
			"voices/mil_jugg/run_start_2.mp3",
			"voices/mil_jugg/run_start_3.mp3"
		}

		self.SoundTbl_CombatIdle = {
			"voices/mil_jugg/cidle_1.mp3",
			"voices/mil_jugg/cidle_2.mp3"
		}

	end

	if self:GetClass() == "npc_vj_totu_fon_juggernaut" then
		self.IdleSoundPitch = VJ_Set(75, 65)
		self.AlertSoundPitch = VJ_Set(75, 65)
		self.CombatIdleSoundPitch = VJ_Set(75, 65)
		self.BeforeMeleeAttackSoundPitch = VJ_Set(75, 65)
		self.PainSoundPitch = VJ_Set(75, 65)
		self.DeathSoundPitch = VJ_Set(75, 65)	
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 500
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 500
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 3000
		self.MeleeAttackDamage = math.Rand(25,30)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 4750
		self.MeleeAttackDamage = math.Rand(30,35)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 1500
		self.MeleeAttackDamage = math.Rand(40,45)

	end
	
	self:SetHealth(self.StartHealth)	

	self.LNR_LegHP = self.StartHealth * 0.20

end 
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/