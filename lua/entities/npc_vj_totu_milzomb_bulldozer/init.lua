AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:ZombieSounds_Custom()

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

	if
		GetConVar("VJ_ToTU_MilZ_Bull_Voice"):GetInt() == 1
	or
		(GetConVar("VJ_ToTU_MilZ_Bull_Voice"):GetInt() == 2 && math.random(1,2) == 1)
	then

		self.SoundTbl_Idle = {
			"player/charger/voice/idle/charger_lurk_01.wav",
			"player/charger/voice/idle/charger_lurk_02.wav",
			"player/charger/voice/idle/charger_lurk_03.wav",
			"player/charger/voice/idle/charger_lurk_03.wav",
			"player/charger/voice/idle/charger_lurk_04.wav",
			"player/charger/voice/idle/charger_lurk_05.wav",
			"player/charger/voice/idle/charger_lurk_06.wav",
			"player/charger/voice/idle/charger_lurk_07.wav",
			"player/charger/voice/idle/charger_lurk_08.wav",
			"player/charger/voice/idle/charger_lurk_09.wav",
			"player/charger/voice/idle/charger_lurk_10.wav",
			"player/charger/voice/idle/charger_lurk_11.wav",
			"player/charger/voice/idle/charger_lurk_12.wav",
			"player/charger/voice/idle/charger_lurk_13.wav",
			"player/charger/voice/idle/charger_lurk_14.wav",
			"player/charger/voice/idle/charger_lurk_15.wav",
			"player/charger/voice/idle/charger_lurk_16.wav",
			"player/charger/voice/idle/charger_lurk_17.wav",
			"player/charger/voice/idle/charger_lurk_18.wav",
			"player/charger/voice/idle/charger_lurk_19.wav",
			"player/charger/voice/idle/charger_lurk_20.wav",
			"player/charger/voice/idle/charger_lurk_21.wav",
			"player/charger/voice/idle/charger_lurk_22.wav",
			"player/charger/voice/idle/charger_lurk_23.wav"
		}

		self.SoundTbl_Alert = {
			"player/charger/voice/alert/charger_alert_01.wav",
			"player/charger/voice/alert/charger_alert_02.wav",
			"player/charger/voice/attack/charger_charge_01.wav",
			"player/charger/voice/attack/charger_charge_02.wav",
			"player/charger/voice/idle/charger_spotprey_01.wav",
			"player/charger/voice/idle/charger_spotprey_02.wav",
			"player/charger/voice/idle/charger_spotprey_03.wav"
		}

		self.SoundTbl_CombatIdle = {
			"player/charger/voice/idle/charger_lurk_01.wav",
			"player/charger/voice/idle/charger_lurk_02.wav",
			"player/charger/voice/idle/charger_lurk_03.wav",
			"player/charger/voice/idle/charger_lurk_03.wav",
			"player/charger/voice/idle/charger_lurk_04.wav",
			"player/charger/voice/idle/charger_lurk_05.wav",
			"player/charger/voice/idle/charger_lurk_06.wav",
			"player/charger/voice/idle/charger_lurk_07.wav",
			"player/charger/voice/idle/charger_lurk_08.wav",
			"player/charger/voice/idle/charger_lurk_09.wav",
			"player/charger/voice/idle/charger_lurk_10.wav",
			"player/charger/voice/idle/charger_lurk_11.wav",
			"player/charger/voice/idle/charger_lurk_12.wav",
			"player/charger/voice/idle/charger_lurk_13.wav",
			"player/charger/voice/idle/charger_lurk_14.wav",
			"player/charger/voice/idle/charger_lurk_15.wav",
			"player/charger/voice/idle/charger_lurk_16.wav",
			"player/charger/voice/idle/charger_lurk_17.wav",
			"player/charger/voice/idle/charger_lurk_18.wav",
			"player/charger/voice/idle/charger_lurk_19.wav",
			"player/charger/voice/idle/charger_lurk_20.wav",
			"player/charger/voice/idle/charger_lurk_21.wav",
			"player/charger/voice/idle/charger_lurk_22.wav",
			"player/charger/voice/idle/charger_lurk_23.wav"
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"player/charger/voice/attack/charger_pummel01.wav",
			"player/charger/voice/attack/charger_pummel02.wav",
			"player/charger/voice/attack/charger_pummel03.wav",
			"player/charger/voice/attack/charger_pummel04.wav",
			"player/charger/voice/pain/charger_stagger01.wav",
			"player/charger/voice/pain/charger_stagger02.wav"
		}

		self.SoundTbl_Pain = {
			"player/charger/voice/pain/charger_pain_01.wav",
			"player/charger/voice/pain/charger_pain_02.wav",
			"player/charger/voice/pain/charger_pain_03.wav",
			"player/charger/voice/pain/charger_pain_04.wav",
			"player/charger/voice/pain/charger_pain_05.wav",
			"player/charger/voice/pain/charger_pain_06.wav"
		}

		self.SoundTbl_Death = {
			"player/charger/voice/die/charger_die_01.wav",
			"player/charger/voice/die/charger_die_02.wav",
			"player/charger/voice/die/charger_die_03.wav"
		}

		self.IdleSoundPitch = VJ_Set(95, 85)
		self.AlertSoundPitch = VJ_Set(95, 85)
		self.CombatIdleSoundPitch = VJ_Set(95, 85)
		self.BeforeMeleeAttackSoundPitch = VJ_Set(95, 85)
		self.PainSoundPitch = VJ_Set(95, 85)
		self.DeathSoundPitch = VJ_Set(95, 85)

	end

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/