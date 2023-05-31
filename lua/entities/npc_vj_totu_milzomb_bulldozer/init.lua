AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Idle = {
		"voices/l4d/tank/idle/tank_breathe_01.wav",
		"voices/l4d/tank/idle/tank_breathe_02.wav",
		"voices/l4d/tank/idle/tank_breathe_03.wav",
		"voices/l4d/tank/idle/tank_breathe_04.wav",
		"voices/l4d/tank/idle/tank_breathe_05.wav",
		"voices/l4d/tank/idle/tank_breathe_06.wav",
		"voices/l4d/tank/idle/tank_breathe_07.wav",
		"voices/l4d/tank/idle/tank_breathe_08.wav",
		"voices/l4d/tank/idle/tank_growl_01.wav",
		"voices/l4d/tank/idle/tank_growl_02.wav",
		"voices/l4d/tank/idle/tank_growl_03.wav",
		"voices/l4d/tank/idle/tank_growl_09.wav",
		"voices/l4d/tank/idle/tank_growl_10.wav",
		"voices/l4d/tank/idle/tank_growl_11.wav",
		"voices/l4d/tank/idle/tank_growl_12.wav",
		"voices/l4d/tank/idle/tank_voice_01.wav",
		"voices/l4d/tank/idle/tank_voice_02.wav",
		"voices/l4d/tank/idle/tank_voice_03.wav",
		"voices/l4d/tank/idle/tank_voice_04.wav",
		"voices/l4d/tank/idle/tank_voice_05.wav",
		"voices/l4d/tank/idle/tank_voice_06.wav",
		"voices/l4d/tank/idle/tank_voice_07.wav",
		"voices/l4d/tank/idle/tank_voice_08.wav",
		"voices/l4d/tank/idle/tank_voice_09.wav"
	}

	self.SoundTbl_Alert = {
		"voices/l4d/tank/yell/tank_yell_01.wav",
		"voices/l4d/tank/yell/tank_yell_02.wav",
		"voices/l4d/tank/yell/tank_yell_03.wav",
		"voices/l4d/tank/yell/tank_yell_04.wav",
		"voices/l4d/tank/yell/tank_yell_05.wav",
		"voices/l4d/tank/yell/tank_yell_06.wav",
		"voices/l4d/tank/yell/tank_yell_07.wav",
		"voices/l4d/tank/yell/tank_yell_08.wav",
		"voices/l4d/tank/yell/tank_yell_09.wav",
		"voices/l4d/tank/yell/tank_yell_10.wav",
		"voices/l4d/tank/yell/tank_yell_12.wav",
		"voices/l4d/tank/yell/tank_yell_16.wav"
	}

	self.SoundTbl_CombatIdle = {
		"voices/l4d/tank/yell/tank_yell_01.wav",
		"voices/l4d/tank/yell/tank_yell_02.wav",
		"voices/l4d/tank/yell/tank_yell_03.wav",
		"voices/l4d/tank/yell/tank_yell_04.wav",
		"voices/l4d/tank/yell/tank_yell_05.wav",
		"voices/l4d/tank/yell/tank_yell_06.wav",
		"voices/l4d/tank/yell/tank_yell_07.wav",
		"voices/l4d/tank/yell/tank_yell_08.wav",
		"voices/l4d/tank/yell/tank_yell_09.wav",
		"voices/l4d/tank/yell/tank_yell_10.wav",
		"voices/l4d/tank/yell/tank_yell_12.wav",
		"voices/l4d/tank/yell/tank_yell_16.wav"
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"voices/l4d/tank/attack/tank_attack_01.wav",
		"voices/l4d/tank/attack/tank_attack_02.wav",
		"voices/l4d/tank/attack/tank_attack_03.wav",
		"voices/l4d/tank/attack/tank_attack_04.wav",
		"voices/l4d/tank/attack/tank_attack_05.wav",
		"voices/l4d/tank/attack/tank_attack_06.wav",
		"voices/l4d/tank/attack/tank_attack_07.wav",
		"voices/l4d/tank/attack/tank_attack_08.wav",
		"voices/l4d/tank/attack/tank_attack_09.wav",
		"voices/l4d/tank/attack/tank_attack_10.wav"
	}

	self.SoundTbl_Pain = {
		"voices/l4d/tank/pain/tank_pain_01.wav",
		"voices/l4d/tank/pain/tank_pain_02.wav",
		"voices/l4d/tank/pain/tank_pain_03.wav",
		"voices/l4d/tank/pain/tank_pain_04.wav",
		"voices/l4d/tank/pain/tank_pain_05.wav",
		"voices/l4d/tank/pain/tank_pain_06.wav",
		"voices/l4d/tank/pain/tank_pain_07.wav",
		"voices/l4d/tank/pain/tank_pain_08.wav",
		"voices/l4d/tank/pain/tank_pain_09.wav",
		"voices/l4d/tank/pain/tank_pain_10.wav"
	}

	self.SoundTbl_Death = {
		"voices/l4d/tank/die/tank_death_01.wav",
		"voices/l4d/tank/die/tank_death_02.wav",
		"voices/l4d/tank/die/tank_death_03.wav",
		"voices/l4d/tank/die/tank_death_04.wav",
		"voices/l4d/tank/die/tank_death_05.wav",
		"voices/l4d/tank/die/tank_death_06.wav",
		"voices/l4d/tank/die/tank_death_07.wav"
	}

	self.ToTU_Almanac_VoiceActor = "Tank (Left 4 Dead)"

	self.IdleSoundPitch = VJ_Set(80, 70)
	self.AlertSoundPitch = VJ_Set(75, 65)
	self.CombatIdleSoundPitch = VJ_Set(75, 65)
	self.BeforeMeleeAttackSoundPitch = VJ_Set(80, 70)
	self.PainSoundPitch = VJ_Set(75, 65)
	self.DeathSoundPitch = VJ_Set(75, 65)	

	if self:GetClass() == "npc_vj_totu_fon_bulldozer" then
		self.IdleSoundPitch = VJ_Set(55, 60)
		self.AlertSoundPitch = VJ_Set(50, 55)
		self.CombatIdleSoundPitch = VJ_Set(50, 55)
		self.BeforeMeleeAttackSoundPitch = VJ_Set(55, 60)
		self.PainSoundPitch = VJ_Set(50, 55)
		self.DeathSoundPitch = VJ_Set(50, 55)	
	end

	if
		GetConVar("VJ_ToTU_MilZ_Bull_Voice"):GetInt() == 1 or
		(GetConVar("VJ_ToTU_MilZ_Bull_Voice"):GetInt() == 2 && math.random(1,2) == 1)
	then

		self.SoundTbl_Idle = {
			"voices/l4d/charger/idle/charger_lurk_01.wav",
			"voices/l4d/charger/idle/charger_lurk_02.wav",
			"voices/l4d/charger/idle/charger_lurk_03.wav",
			"voices/l4d/charger/idle/charger_lurk_03.wav",
			"voices/l4d/charger/idle/charger_lurk_04.wav",
			"voices/l4d/charger/idle/charger_lurk_05.wav",
			"voices/l4d/charger/idle/charger_lurk_06.wav",
			"voices/l4d/charger/idle/charger_lurk_07.wav",
			"voices/l4d/charger/idle/charger_lurk_08.wav",
			"voices/l4d/charger/idle/charger_lurk_09.wav",
			"voices/l4d/charger/idle/charger_lurk_10.wav",
			"voices/l4d/charger/idle/charger_lurk_11.wav",
			"voices/l4d/charger/idle/charger_lurk_12.wav",
			"voices/l4d/charger/idle/charger_lurk_13.wav",
			"voices/l4d/charger/idle/charger_lurk_14.wav",
			"voices/l4d/charger/idle/charger_lurk_15.wav",
			"voices/l4d/charger/idle/charger_lurk_16.wav",
			"voices/l4d/charger/idle/charger_lurk_17.wav",
			"voices/l4d/charger/idle/charger_lurk_18.wav",
			"voices/l4d/charger/idle/charger_lurk_19.wav",
			"voices/l4d/charger/idle/charger_lurk_20.wav",
			"voices/l4d/charger/idle/charger_lurk_21.wav",
			"voices/l4d/charger/idle/charger_lurk_22.wav",
			"voices/l4d/charger/idle/charger_lurk_23.wav"
		}

		self.SoundTbl_Alert = {
			"voices/l4d/charger/alert/charger_alert_01.wav",
			"voices/l4d/charger/alert/charger_alert_02.wav",
			"voices/l4d/charger/attack/charger_charge_01.wav",
			"voices/l4d/charger/attack/charger_charge_02.wav",
			"voices/l4d/charger/idle/charger_spotprey_01.wav",
			"voices/l4d/charger/idle/charger_spotprey_02.wav",
			"voices/l4d/charger/idle/charger_spotprey_03.wav"
		}

		self.SoundTbl_CombatIdle = {
			"voices/l4d/charger/idle/charger_lurk_01.wav",
			"voices/l4d/charger/idle/charger_lurk_02.wav",
			"voices/l4d/charger/idle/charger_lurk_03.wav",
			"voices/l4d/charger/idle/charger_lurk_03.wav",
			"voices/l4d/charger/idle/charger_lurk_04.wav",
			"voices/l4d/charger/idle/charger_lurk_05.wav",
			"voices/l4d/charger/idle/charger_lurk_06.wav",
			"voices/l4d/charger/idle/charger_lurk_07.wav",
			"voices/l4d/charger/idle/charger_lurk_08.wav",
			"voices/l4d/charger/idle/charger_lurk_09.wav",
			"voices/l4d/charger/idle/charger_lurk_10.wav",
			"voices/l4d/charger/idle/charger_lurk_11.wav",
			"voices/l4d/charger/idle/charger_lurk_12.wav",
			"voices/l4d/charger/idle/charger_lurk_13.wav",
			"voices/l4d/charger/idle/charger_lurk_14.wav",
			"voices/l4d/charger/idle/charger_lurk_15.wav",
			"voices/l4d/charger/idle/charger_lurk_16.wav",
			"voices/l4d/charger/idle/charger_lurk_17.wav",
			"voices/l4d/charger/idle/charger_lurk_18.wav",
			"voices/l4d/charger/idle/charger_lurk_19.wav",
			"voices/l4d/charger/idle/charger_lurk_20.wav",
			"voices/l4d/charger/idle/charger_lurk_21.wav",
			"voices/l4d/charger/idle/charger_lurk_22.wav",
			"voices/l4d/charger/idle/charger_lurk_23.wav"
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"voices/l4d/charger/attack/charger_pummel01.wav",
			"voices/l4d/charger/attack/charger_pummel02.wav",
			"voices/l4d/charger/attack/charger_pummel03.wav",
			"voices/l4d/charger/attack/charger_pummel04.wav",
			"voices/l4d/charger/pain/charger_stagger01.wav",
			"voices/l4d/charger/pain/charger_stagger02.wav"
		}

		self.SoundTbl_Pain = {
			"voices/l4d/charger/pain/charger_pain_01.wav",
			"voices/l4d/charger/pain/charger_pain_02.wav",
			"voices/l4d/charger/pain/charger_pain_03.wav",
			"voices/l4d/charger/pain/charger_pain_04.wav",
			"voices/l4d/charger/pain/charger_pain_05.wav",
			"voices/l4d/charger/pain/charger_pain_06.wav"
		}

		self.SoundTbl_Death = {
			"voices/l4d/charger/die/charger_die_01.wav",
			"voices/l4d/charger/die/charger_die_02.wav",
			"voices/l4d/charger/die/charger_die_03.wav"
		}

		self.IdleSoundPitch = VJ_Set(95, 85)
		self.AlertSoundPitch = VJ_Set(95, 85)
		self.CombatIdleSoundPitch = VJ_Set(95, 85)
		self.BeforeMeleeAttackSoundPitch = VJ_Set(95, 85)
		self.PainSoundPitch = VJ_Set(95, 85)
		self.DeathSoundPitch = VJ_Set(95, 85)

		if self:GetClass() == "npc_vj_totu_fon_bulldozer" then
			self.IdleSoundPitch = VJ_Set(55, 60)
			self.AlertSoundPitch = VJ_Set(50, 55)
			self.CombatIdleSoundPitch = VJ_Set(50, 55)
			self.BeforeMeleeAttackSoundPitch = VJ_Set(55, 60)
			self.PainSoundPitch = VJ_Set(50, 55)
			self.DeathSoundPitch = VJ_Set(50, 55)	
		end
		
		self.ToTU_Almanac_VoiceActor = "Charger (Left 4 Dead 2)"

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 500
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 400
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 1750
		self.MeleeAttackDamage = math.Rand(25,30)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 2500
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