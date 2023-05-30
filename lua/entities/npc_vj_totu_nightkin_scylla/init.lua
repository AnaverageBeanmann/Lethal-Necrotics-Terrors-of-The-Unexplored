AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 1000
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 1250
		self.MeleeAttackDamage = math.Rand(25,30)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 1500
		self.MeleeAttackDamage = math.Rand(30,35)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 1750
		self.MeleeAttackDamage = math.Rand(35,40)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 2000
		self.MeleeAttackDamage = math.Rand(40,45)

	else

		self.StartHealth = 1250
		self.MeleeAttackDamage = math.Rand(25,30)

	end

	self:SetHealth(self.StartHealth)	

	self.LNR_LegHP = self.StartHealth * 0.20

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Idle = {
		"voices/amnesia/suitor/amb_idle01.wav",
		"voices/amnesia/suitor/amb_idle02.wav",
		"voices/amnesia/suitor/amb_idle03.wav",
		"voices/amnesia/suitor/amb_idle04.wav",
		"voices/amnesia/suitor/amb_idle05.wav",
		"voices/amnesia/suitor/amb_alert01.wav",
		"voices/amnesia/suitor/amb_alert02.wav",
		"voices/amnesia/suitor/amb_alert03.wav"
	}

	self.SoundTbl_Alert = {
		"voices/amnesia/suitor/enabled01.wav",
		"voices/amnesia/suitor/enabled02.wav",
		"voices/amnesia/suitor/enabled03.wav"
	}

	self.SoundTbl_CombatIdle = {
		"voices/amnesia/suitor/amb_idle_scratch01.wav",
		"voices/amnesia/suitor/amb_idle_scratch02.wav",
		"voices/amnesia/suitor/amb_idle_scratch03.wav",
		"voices/amnesia/suitor/amb_idle_scratch04.wav"
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"voices/amnesia/suitor/attack_claw01.wav",
		"voices/amnesia/suitor/attack_claw02.wav",
		"voices/amnesia/suitor/attack_launch01.wav",
		"voices/amnesia/suitor/attack_launch02.wav"
	}

	self.SoundTbl_Pain = {
		"voices/amnesia/suitor/notice01.wav",
		"voices/amnesia/suitor/notice02.wav",
		"voices/amnesia/suitor/notice03.wav",
		"voices/amnesia/suitor/notice_long01.wav",
		"voices/amnesia/suitor/notice_long02.wav"
	}

	self.SoundTbl_Death = {
		"voices/amnesia/suitor/amb_idle_whimp01.wav",
		"voices/amnesia/suitor/amb_idle_whimp02.wav",
	}

	self.IdleSoundPitch = VJ_Set(70, 60)
	self.AlertSoundPitch = VJ_Set(80, 70)
	self.CombatIdleSoundPitch = VJ_Set(70, 60)
	self.BeforeMeleeAttackSoundPitch = VJ_Set(70, 60)
	self.PainSoundPitch = VJ_Set(70, 60)
	self.DeathSoundPitch = VJ_Set(70, 60)

	self.ToTU_Almanac_VoiceActor = "Servant Suitor (Amnesia: The Dark Descent)"

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/