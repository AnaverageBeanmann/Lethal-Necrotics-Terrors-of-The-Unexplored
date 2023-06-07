AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 25
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 45
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 175
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 400
		self.MeleeAttackDamage = math.Rand(30,35)

	else

		self.StartHealth = 175
		self.MeleeAttackDamage = math.Rand(15,20)

	end

	self:SetHealth(self.StartHealth)	

	self.TOTU_LNR_LegHP = self.StartHealth * 0.20

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Idle = {
		"voices/l4d/spitter/voice/idle/spitter_lurk_01.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_02.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_03.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_04.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_05.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_06.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_07.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_08.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_09.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_10.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_11.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_12.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_14.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_15.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_16.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_17.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_18.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_19.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_20.wav",
	}

	self.SoundTbl_Alert = {
		"voices/l4d/spitter/voice/idle/spitter_spotprey_01.wav",
		"voices/l4d/spitter/voice/idle/spitter_spotprey_02.wav",
		"voices/l4d/spitter/voice/idle/spitter_spotprey_03.wav",
		"voices/l4d/spitter/voice/idle/spitter_spotprey_04.wav",
		"voices/l4d/spitter/voice/idle/spitter_spotprey_05.wav",
		"voices/l4d/spitter/voice/idle/spitter_spotprey_06.wav",
		"voices/l4d/spitter/voice/alert/spitter_alert_01.wav",
		"voices/l4d/spitter/voice/alert/spitter_alert_02.wav",
	}

	self.SoundTbl_CombatIdle = {
		"voices/l4d/spitter/voice/idle/spitter_lurk_01.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_02.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_03.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_04.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_05.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_06.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_07.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_08.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_09.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_10.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_11.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_12.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_14.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_15.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_16.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_17.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_18.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_19.wav",
		"voices/l4d/spitter/voice/idle/spitter_lurk_20.wav",
	}

	self.SoundTbl_BeforeMeleeAttack = {""}

	self.SoundTbl_BeforeRangeAttack = {
		"voices/l4d/spitter/voice/warn/spitter_spit_01.wav",
		"voices/l4d/spitter/voice/warn/spitter_spit_02.wav",
	}

	self.SoundTbl_Pain = {
		"voices/l4d/spitter/voice/pain/spitter_pain_01.wav",
		"voices/l4d/spitter/voice/pain/spitter_pain_02.wav",
		"voices/l4d/spitter/voice/pain/spitter_pain_03.wav",
		"voices/l4d/spitter/voice/pain/spitter_painshort_01.wav",
		"voices/l4d/spitter/voice/pain/spitter_painshort_02.wav",
		"voices/l4d/spitter/voice/pain/spitter_painshort_03.wav",
	}

	self.SoundTbl_Death = {
		"voices/l4d/spitter/voice/die/spitter_death_01.wav",
		"voices/l4d/spitter/voice/die/spitter_death_02.wav",
	}

	self.ToTU_Almanac_VoiceActor = "Spitter (Left 4 Dead 2)"

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/