AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.HasItemDropsOnDeath = true 
-- ENT.ItemDropsOnDeathChance = 1
ENT.ItemDropsOnDeathChance = 4
ENT.MilZ_HasGasmask = false
ENT.MilZ_HasFlakSuit = false
ENT.MilZ_HasKnife = false
ENT.MilZ_CanShuutDeGun = false
ENT.MilZ_HasGun = false
ENT.MilZ_GunAmmo = 0
ENT.MilZ_HasGrenades = false
ENT.MilZ_Grenades = 0
ENT.MilZ_IsMilZ = true
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()

	self.ItemDropsOnDeath_EntityList = {"item_ammo_pistol",
		"item_ammo_pistol",
		"item_ammo_357",
		"item_ammo_smg1",
		"item_ammo_ar2",
		"item_ammo_ar2",
		"item_box_buckshot",
		"weapon_frag",
		"item_healthvial",
		"item_battery"}
		
	self.SoundTbl_Breath = {"ambient/levels/prison/radio_random1.wav",
		"ambient/levels/prison/radio_random2.wav",
		"ambient/levels/prison/radio_random3.wav",
		"ambient/levels/prison/radio_random4.wav",
		"ambient/levels/prison/radio_random5.wav",
		"ambient/levels/prison/radio_random6.wav",
		"ambient/levels/prison/radio_random7.wav",
		"ambient/levels/prison/radio_random8.wav",
		"ambient/levels/prison/radio_random9.wav",
		"ambient/levels/prison/radio_random10.wav",
		"ambient/levels/prison/radio_random11.wav",
		"ambient/levels/prison/radio_random12.wav",
		"ambient/levels/prison/radio_random13.wav",
		"ambient/levels/prison/radio_random14.wav"}
		
	self.NextSoundTime_Breath = VJ_Set(7,20)
	
	
	if math.random(1,4) == 1 then
		self.SoundTbl_Breath = {"zombies/military/radio/1/radio_1.mp3",
		"zombies/military/radio/1/radio_2.mp3",
		"zombies/military/radio/1/radio_3.mp3",
		"zombies/military/radio/1/radio_4.mp3",
		"zombies/military/radio/1/radio_5.mp3",
		"zombies/military/radio/1/radio_6.mp3",
		"zombies/military/radio/1/radio_7.mp3",
		"zombies/military/radio/1/radio_8.mp3",
		"zombies/military/radio/1/radio_9.mp3"}
	end		
	
	if math.random(1,7) == 1 then
		self.SoundTbl_Breath = {"zombies/military/radio/2/beep.mp3",
		"zombies/military/radio/2/radio_1.mp3",
		"zombies/military/radio/2/radio_2.mp3",
		"zombies/military/radio/2/radio_3.mp3",
		"zombies/military/radio/2/radio_4.mp3",
		"zombies/military/radio/2/radio_5.mp3",
		"zombies/military/radio/2/radio_6.mp3",
		"zombies/military/radio/2/radio_7.mp3",
		"zombies/military/radio/2/radio_8.mp3",
		"zombies/military/radio/2/radio_9.mp3",
		"zombies/military/radio/2/radio_10.mp3",
		"zombies/military/radio/2/radio_11.mp3",
		"zombies/military/radio/2/radio_12.mp3",
		"zombies/military/radio/2/radio_13.mp3",
		"zombies/military/radio/2/radio_14.mp3",
		"zombies/military/radio/2/radio_15.mp3",
		"zombies/military/radio/2/radio_16.mp3",
		"zombies/military/radio/2/radio_17.mp3",
		"zombies/military/radio/2/radio_18.mp3",
		"zombies/military/radio/2/radio_19.mp3",
		"zombies/military/radio/2/radio_20.mp3",
		"zombies/military/radio/2/radio_21.mp3",
		"zombies/military/radio/2/radio_22.mp3",
		"zombies/military/radio/2/radio_23.mp3",
		"zombies/military/radio/2/radio_24.mp3",
		"zombies/military/radio/2/radio_25.mp3",
		"zombies/military/radio/2/radio_26.mp3",
		"zombies/military/radio/2/radio_27.mp3",
		"zombies/military/radio/2/radio_28.mp3"}
	end	
	
	if self:GetClass() == "npc_vj_totu_milzomb_walker" or self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
	
		self.Model = {"models/totu/milzomb_walker.mdl"}
		
		self.SoundTbl_Idle = {
			"vj_lnrhl2/walker_male/idle1.wav",
			"vj_lnrhl2/walker_male/idle2.wav",
			"vj_lnrhl2/walker_male/idle3.wav",
	"vj_lnrhl2/walker_male/idle4.wav",
	"vj_lnrhl2/walker_male/idle5.wav",
	"vj_lnrhl2/walker_male/idle6.wav",
	"vj_lnrhl2/walker_male/idle7.wav",
	"vj_lnrhl2/walker_male/idle8.wav",
	"vj_lnrhl2/walker_male/idle9.wav",
	"vj_lnrhl2/walker_male/idle10.wav",
	"vj_lnrhl2/walker_male/idle11.wav",
	"vj_lnrhl2/walker_male/idle12.wav",
	"vj_lnrhl2/walker_male/idle13.wav",
	"vj_lnrhl2/walker_male/idle14.wav",
	"vj_lnrhl2/walker_male/idle15.wav",	
	"vj_lnrhl2/walker_male/idle16.wav",
	"vj_lnrhl2/walker_male/idle17.wav",
	"vj_lnrhl2/walker_male/idle18.wav",
	"vj_lnrhl2/walker_male/idle19.wav",
	"vj_lnrhl2/walker_male/idle20.wav"
	}
    self.SoundTbl_Alert = {
	"vj_lnrhl2/walker_male/alert_sham_m_01.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_02.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_03.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_04.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_05.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_06.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_07.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_08.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_09.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_10.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_11.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_12.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_13.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_14.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_15.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_16.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_17.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_18.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_19.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_20.wav",	
	"vj_lnrhl2/walker_male/alert_sham_m_21.wav",
	"vj_lnrhl2/walker_male/alert1.wav",
	"vj_lnrhl2/walker_male/alert2.wav",
	"vj_lnrhl2/walker_male/alert3.wav",
	"vj_lnrhl2/walker_male/alert4.wav",	
	"vj_lnrhl2/walker_male/alert5.wav",
	"vj_lnrhl2/walker_male/alert6.wav",
	"vj_lnrhl2/walker_male/alert7.wav",
	"vj_lnrhl2/walker_male/alert8.wav",
	"vj_lnrhl2/walker_male/alert9.wav",	
	"vj_lnrhl2/walker_male/alert10.wav"		
	}
    self.SoundTbl_CombatIdle = {
	"vj_lnrhl2/walker_male/pursuit_sham_m_01.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_02.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_03.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_04.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_05.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_06.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_07.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_08.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_09.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_10.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_11.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_12.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_13.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_14.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_15.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_16.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_17.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_18.wav"
	}
    self.SoundTbl_BeforeMeleeAttack = {
	"vj_lnrhl2/walker_male/attack_sham_m_01.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_02.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_03.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_04.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_05.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_06.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_07.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_08.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_09.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_10.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_11.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_12.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_13.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_14.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_15.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_16.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_17.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_18.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_19.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_20.wav",	
	"vj_lnrhl2/walker_male/attack_sham_m_21.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_22.wav"	
	}
    self.SoundTbl_LeapAttackJump = {
	"vj_lnrhl2/walker_male/attack_sham_m_01.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_02.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_03.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_04.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_05.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_06.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_07.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_08.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_09.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_10.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_11.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_12.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_13.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_14.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_15.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_16.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_17.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_18.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_19.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_20.wav",	
	"vj_lnrhl2/walker_male/attack_sham_m_21.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_22.wav"
	}
    self.SoundTbl_Pain = {
	"vj_lnrhl2/walker_male/pain01.wav",
	"vj_lnrhl2/walker_male/pain02.wav",
	"vj_lnrhl2/walker_male/pain03.wav",
	"vj_lnrhl2/walker_male/pain04.wav",
	"vj_lnrhl2/walker_male/pain05.wav"
	}
    self.SoundTbl_Death = {
	"vj_lnrhl2/walker_male/die01.wav",
	"vj_lnrhl2/walker_male/die02.wav",
	"vj_lnrhl2/walker_male/die03.wav",
	"vj_lnrhl2/walker_male/die04.wav",
	"vj_lnrhl2/walker_male/die05.wav"
	}
	
	elseif self:GetClass() == "npc_vj_totu_milzomb_infected" then
		self.Model = {"models/totu/milzomb_infected.mdl"}
		self:SetSkin(1)
		
		self.SoundTbl_Idle = {
	"vj_lnrhl2/infected/zomb_runner_male1-idle-01.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-idle-02.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-idle-03.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-idle-04.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-idle-05.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-idle-06.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-idle-07.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-idle-08.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-idle-09.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-idle-10.wav"
}
    self.SoundTbl_Alert = {
	"vj_lnrhl2/infected/zomb_runner_male1-alert-01.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-02.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-03.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-04.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-05.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-06.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-07.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-08.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-09.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-10.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-11.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-12.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-13.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-14.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-alert-15.wav"
}
    self.SoundTbl_CombatIdle = {
	"vj_lnrhl2/infected/zomb_runner_male1-pursuit-01.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pursuit-02.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pursuit-03.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pursuit-04.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pursuit-05.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pursuit-06.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pursuit-07.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pursuit-08.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pursuit-09.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pursuit-10.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pursuit-11.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pursuit-12.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pursuit-13.wav"	
}
    self.SoundTbl_BeforeMeleeAttack = {
	"vj_lnrhl2/infected/zomb_runner_male1-attack01.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack02.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack03.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack04.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack05.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack06.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack07.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack08.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack09.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack10.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack11.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack12.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack13.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack14.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack15.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack16.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack17.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack18.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack19.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-attack20.wav"	
}
    self.SoundTbl_Pain = {
	"vj_lnrhl2/infected/zomb_runner_male1-pain01.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain02.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain03.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain04.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain05.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain06.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain07.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain08.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain09.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain10.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain11.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain12.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain13.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain14.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain15.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain16.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain17.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-pain18.wav"
}
    self.SoundTbl_Death = {
	"vj_lnrhl2/infected/zomb_runner_male1-death-01.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-02.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-03.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-04.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-05.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-06.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-07.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-08.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-09.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-10.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-11.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-12.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-13.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-14.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-15.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-16.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-17.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-18.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-19.wav",
	"vj_lnrhl2/infected/zomb_runner_male1-death-20.wav"
}
	end
	if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
		
		self:SetSkin(math.random(1,3))
		self.Model = {"models/totu/juggernaut.mdl"}
self.ToTU_ZombSize = 1
self.DeathAnimationChance = 1
self.HasMeleeAttackKnockBack = true
self.MeleeAttackKnockBack_Forward1 = 150
self.MeleeAttackKnockBack_Forward2 = 175
self.MeleeAttackKnockBack_Up1 = 75
self.MeleeAttackKnockBack_Up2 = 100
	self:SetModelScale(1.25)
self.HasWorldShakeOnMove = true
self.WorldShakeOnMoveAmplitude = 1
self.MeleeAttackDistance = 50
self.MeleeAttackDamageDistance = 70
-- self.MeleeAttackWorldShakeOnMiss = true -- Should it shake the world when it misses during melee attack?
-- self.MeleeAttackWorldShakeOnMissAmplitude = 16 -- How much the screen will shake | From 1 to 16, 1 = really low 16 = really high
-- self.MeleeAttackWorldShakeOnMissRadius = 2000 -- How far the screen shake goes, in world units
-- self.MeleeAttackWorldShakeOnMissDuration = 1 -- How long the screen shake will last, in seconds
-- self.MeleeAttackWorldShakeOnMissFrequency = 100 -- Just leave it to 100
	
self.VJ_IsHugeMonster = true
self.IdleSoundPitch = VJ_Set(80, 70)
self.AlertSoundPitch = VJ_Set(80, 70)
self.CombatIdleSoundPitch = VJ_Set(80, 70)
self.BeforeMeleeAttackSoundPitch = VJ_Set(80, 70)
self.LeapAttackJumpSoundPitch = VJ_Set(80, 70)
self.PainSoundPitch = VJ_Set(80, 70)
self.DeathSoundPitch = VJ_Set(80, 70)	
		
	end
	
	-- if math.random(1,4) == 1 then
	if math.random(1,4) == 1 then
		self.MilZ_HasFlakSuit = true
	end
	
	
	if math.random(1,3) == 1 then
		self.MilZ_HasGasmask = true
	

    self.SoundTbl_Idle = {
	"zombies/military/gasmask2/idle_ (1).wav",
	"zombies/military/gasmask2/idle_ (2).wav",
	"zombies/military/gasmask2/idle_ (3).wav",
	"zombies/military/gasmask2/idle_ (4).wav"
}
    self.SoundTbl_Alert = {
	"zombies/military/gasmask2/alert_ (1).wav",
	"zombies/military/gasmask2/alert_ (2).wav",
	"zombies/military/gasmask2/alert_ (3).wav",
	"zombies/military/gasmask2/alert_ (4).wav",
	"zombies/military/gasmask2/alert_ (5).wav",
	"zombies/military/gasmask2/alert_ (6).wav",
	"zombies/military/gasmask2/alert_ (7).wav"
}
    self.SoundTbl_CombatIdle = {
	"zombies/military/gasmask2/cidle_ (1).wav",
	"zombies/military/gasmask2/cidle_ (2).wav"
}
	self.SoundTbl_BeforeMeleeAttack = {
	"zombies/military/gasmask2/alert_ (1).wav",
	"zombies/military/gasmask2/alert_ (2).wav",
	"zombies/military/gasmask2/alert_ (3).wav",
	"zombies/military/gasmask2/alert_ (4).wav",
	"zombies/military/gasmask2/alert_ (5).wav",
	"zombies/military/gasmask2/alert_ (6).wav",
	"zombies/military/gasmask2/alert_ (7).wav"
}
    self.SoundTbl_Pain = {
	"zombies/military/gasmask2/pain_ (1).wav",
	"zombies/military/gasmask2/pain_ (2).wav",
	"zombies/military/gasmask2/pain_ (3).wav",
	"zombies/military/gasmask2/pain_ (4).wav"
}
    self.SoundTbl_Death = {
	"zombies/military/gasmask2/death_ (1).wav",
	"zombies/military/gasmask2/death_ (2).wav"
}
	end
	
	
end -- Mainly used for setting up models etc
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()
	local gear = math.random(1,2)
	if gear == 1 then
		self:SetBodygroup(2,math.random(0,2))
	else
		self:SetBodygroup(2,math.random(4,6))
	end
	
	if math.random(1,4) == 1 then
		self:SetBodygroup(3,1)
	end
	
	if self.MilZ_HasFlakSuit == true then
		self:SetBodygroup(2,3)
		-- self:SetMaterial( "models/vj_lnrspecials/lnr/bomber/eyeball_l" ) -- test
	end
	
	if self.MilZ_HasGasmask == true then
		self:SetBodygroup(4,0)
	end
	
	if self.MilZ_HasGasmask == false then
		self:SetBodygroup(4,math.random(1,6))
		if !self.LNR_Biter then
			self:SetBodygroup(1,math.random(0,1))
		end
	end
	
	if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
	self:SetCollisionBounds(Vector(13, 13, 70), Vector(-13, -13, 0))
	end
	
	if math.random(1,4) == 1 && !self.LNR_Crawler && !self.LNR_Biter && !self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
	-- if math.random(1,1) == 1 && !self.LNR_Crawler && !self.LNR_Biter then
		-- self.MilZ_HasKnife = true
		self:ZombieWeapons()
		-- self.MeleeAttackBleedEnemy = true -- Should the enemy bleed when attacked by melee?
		-- self.MeleeAttackBleedEnemyChance = 3 -- Chance that the enemy bleeds | 1 = always
		-- self.MeleeAttackBleedEnemyDamage = 1 -- How much damage per repetition
		-- self.MeleeAttackBleedEnemyTime = 1 -- How much time until the next repetition?
		-- self.MeleeAttackBleedEnemyReps = 4 -- How many repetitions?
	end
	
	-- timer.Simple(1,function() if IsValid(self) then
	-- if self.MilZ_HasGasmask == true && self.MilZ_HasFlakSuit == true && self:GetBodygroup(2) == 0 then
		-- self:SetBodygroup(2,3)
	-- end
	-- end
	-- end)
	
	if math.random(1,10) == 1 && !self.LNR_Crawler && !self.MilZ_HasGun && !self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
		self.HasRangeAttack = true
		self.RangeAttackEntityToSpawn = "obj_vj_totu_milzgren"
		-- self.RangeAttackEntityToSpawn = "obj_vj_grenade"
		self.RangeAttackAnimationFaceEnemy = true
		self.AnimTbl_RangeAttack = {"vjseq_throw_right"}
		self.RangeDistance = 750 
		self.RangeToMeleeDistance = 1 
		self.RangeAttackAngleRadius = 100
		self.TimeUntilRangeAttackProjectileRelease = 1.6
		self.NextRangeAttackTime = math.random(15,20)
		self.RangeUseAttachmentForPos = true 
		self.RangeUseAttachmentForPosID = "anim_attachment_RH"
		self.RangeAttackPos_Forward = 20
		self.RangeAttackPos_Up = 20
		self.MilZ_Grenades = math.random(1,3)
		if self.MilZ_HasKnife then
		self.AnimTbl_RangeAttack = {"vjseq_throw_left"}
		self.RangeUseAttachmentForPosID = "anim_attachment_LH"
		end
		
		
-- ENT.RangeDistance = 1200 
-- ENT.RangeToMeleeDistance = 350 
		
		-- if self.LNR_Crawler then
			-- self.AnimTbl_RangeAttack = {"vjseq_crawl_attack2"}
		-- end
	end
	
end -- For additional initialize options
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then // Easy
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
			self.StartHealth = 250
			self.MeleeAttackDamage = math.Rand(20,25)	
			self.LNR_LegHP = 125	
		else
			self.StartHealth = 65
			self.MeleeAttackDamage = math.Rand(5,10)	
			self.LNR_LegHP = 15	
		end
     -- if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(10,15) end		
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then // Normal
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
			self.StartHealth = 750
			self.MeleeAttackDamage = math.Rand(25,30)	
			self.LNR_LegHP = 150	
		else
        self.StartHealth = 125		
	    self.MeleeAttackDamage = math.Rand(10,15)
		end
     -- if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(15,20) end
end		
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then // Hard
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
			self.StartHealth = 1250
			self.MeleeAttackDamage = math.Rand(30,35)	
			self.LNR_LegHP = 175	
		else
        self.StartHealth = 175	
	    self.MeleeAttackDamage = math.Rand(15,20)
		self.LNR_LegHP = 35
		end
     -- if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(20,25) end
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then // Nightmare
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
			self.StartHealth = 1750
			self.MeleeAttackDamage = math.Rand(35,40)	
			self.LNR_LegHP = 200	
		else
        self.StartHealth = 225
	    self.MeleeAttackDamage = math.Rand(20,25)
		self.LNR_LegHP = 45
		end
     -- if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(25,30) end
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then // Apocalypse
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
			self.StartHealth = 2250
			self.MeleeAttackDamage = math.Rand(40,45)	
			self.LNR_LegHP = 250	
		else
        self.StartHealth = 275
	    self.MeleeAttackDamage = math.Rand(25,30) 
		self.LNR_LegHP = 55
		end
     -- if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(30,35) end		
end	
        self:SetHealth(self.StartHealth)	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRangeAttack_AfterStartTimer(seed)
	if self.MilZ_CanShuutDeGun == true then return end
	if self.MilZ_Grenades == 1 or self.MilZ_Grenades > 1 then
		self.MilZ_Grenades = self.MilZ_Grenades - 1
	end
	if self.MilZ_Grenades < 1 then
		self.HasRangeAttack = false
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RangeAttackCode_GetShootPos(projectile)
	if self.MilZ_CanShuutDeGun == true then return end
	return (self:GetEnemy():GetPos() - self:LocalToWorld(Vector(80,0,0)))*2 + self:GetUp()*120
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomRangeAttackCode()
	if self.MilZ_HasGun == false or self.MilZ_CanShuutDeGun == false then return end
    if self:GetActivity() == ACT_WALK or self:GetActivity() == ACT_RUN then
	
	if self.MilZ_GunAmmo == 18 or self.MilZ_GunAmmo > 18 then
		VJ_EmitSound(self, "vj_weapons/dryfire_pistol.wav", 70, 100)
	end

	if self.MilZ_GunAmmo > 0 and self.MilZ_GunAmmo < 18 then
	local bullet = {}
		bullet.Num = 1
		bullet.Src = self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos
		bullet.Dir = (self:GetEnemy():GetPos()+self:GetEnemy():OBBCenter()+self:GetEnemy():GetUp()*-45) -self:GetPos()
		bullet.Spread = Vector(50,40,30)
		bullet.Tracer = 1
		bullet.TracerName = "Tracer"
		bullet.Force = 5
		bullet.Damage = math.random(5,10)
		bullet.AmmoType = "SMG1"
	    self:FireBullets(bullet)
		VJ_EmitSound(self, "vj_weapons/glock_17/glock17_single.wav", 100, 100)
		
	local flash = ents.Create("env_muzzleflash")
		flash:SetPos(self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos)
		flash:SetKeyValue("scale","1")
		flash:SetKeyValue("angles",tostring(self:GetForward():Angle()))
		flash:Fire("Fire",0,0)

	local FireLight1 = ents.Create("light_dynamic")
		FireLight1:SetKeyValue("brightness", "4")
		FireLight1:SetKeyValue("distance", "120")
		FireLight1:SetPos(self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos)
		FireLight1:SetLocalAngles(self:GetAngles())
		FireLight1:Fire("Color", "255 150 60")
		FireLight1:SetParent(self)
		FireLight1:Spawn()
		FireLight1:Activate()
		FireLight1:Fire("TurnOn","",0)
		FireLight1:Fire("Kill","",0.07)
		self:DeleteOnRemove(FireLight1)
		
	local effectData = EffectData()
		-- effectData:SetOrigin(self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos)
		effectData:SetOrigin(self:GetPos())
		-- effectData:SetScale(500)
		util.Effect("ShellEject", effectData)
	self.MilZ_GunAmmo = self.MilZ_GunAmmo + 1
	end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)

	if self.MilZ_HasFlakSuit == true then
		if dmginfo:IsExplosionDamage() then
			dmginfo:ScaleDamage(0.50)
		end
	end
	
	if hitgroup == HITGROUP_HEAD then
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"player/bhit_helmet-1.wav",70) end
		self.Bleeds = false
		if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) or dmginfo:IsDamageType(DMG_SLASH) or dmginfo:IsDamageType(DMG_CLUB) then
		-- if dmginfo:IsDamageType(DMG_CLUB) then
		-- dmginfo:ScaleDamage(0.00)
			dmginfo:ScaleDamage(0.005)
			
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
	
	if hitgroup == HITGROUP_CHEST or hitgroup == HITGROUP_STOMACH then
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"player/bhit_helmet-1.wav",70) end
		-- if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"vo/k_lab/ba_pissinmeoff.wav",70) end
		self.Bleeds = true
		if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) or dmginfo:IsDamageType(DMG_SLASH) then
			if math.random(1,3) == 1 then
				dmginfo:ScaleDamage(0.15)
			
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
			
			else
				dmginfo:ScaleDamage(0.25)
			end
		end
		if dmginfo:IsDamageType(DMG_CLUB) then
			dmginfo:ScaleDamage(0.30)
		end		
	end
		
		if self.MilZ_HasFlakSuit == false then return end
		
		if hitgroup == HITGROUP_LEFTARM or hitgroup == HITGROUP_RIGHTARM then
			if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"player/kevlar"..math.random(1,5)..".wav",70) end
			self.Bleeds = true
			if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) or dmginfo:IsDamageType(DMG_SLASH) then
				if math.random(1,3) == 1 then
				dmginfo:ScaleDamage(0.25)
			
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
			else
				dmginfo:ScaleDamage(0.50)
			end	
		elseif dmginfo:IsDamageType(DMG_CLUB) then
				dmginfo:ScaleDamage(0.85)
			end	
		end
		-- end
	end
-- end
-- end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/