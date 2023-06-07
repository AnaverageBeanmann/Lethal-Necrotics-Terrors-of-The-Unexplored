AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_CustomOnPreInitialize()

	self.Model = {"models/totu/thepissshitter.mdl"}

	timer.Simple(0.1,function() if IsValid(self) && !self.TOTU_LNR_Crippled  then
		self.AnimTbl_Walk = {ACT_MP_MELEE_GRENADE1_IDLE}
		if self:GetClass() == "npc_vj_totu_fon_gail" then
			self.AnimTbl_Run = {ACT_RUN_AIM}
		else
			self.AnimTbl_Run = {ACT_SPRINT}
		end
		self.AnimTbl_IdleStand = {ACT_IDLE_AIM_STIMULATED}
		if self.TOTU_LNR_UsingRelaxedIdle == true then
			self.AnimTbl_IdleStand = {ACT_IDLE}
		end
	end end)

	self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(3,10)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()

	self:SetMaterial("models/totu/bonemerge")

	if GetConVar("VJ_ToTU_Deimos_Deimos_Eyes"):GetInt() == 0 or GetConVar("vj_npc_noidleparticle"):GetInt() == 1  then return end

	for i = 1,2 do	
		local att = i == 2 && "eye1" or "eye2"		
		local EyeGlow = ents.Create("env_sprite")
		EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		EyeGlow:SetKeyValue("scale","0.035")
		EyeGlow:SetKeyValue("rendermode","5")
		EyeGlow:SetKeyValue("rendercolor","220 0 255 255")
		EyeGlow:SetKeyValue("spawnflags","1") 
		EyeGlow:SetParent(self)
		EyeGlow:Fire("SetParentAttachment",att,0)
		EyeGlow:Spawn()
		EyeGlow:Activate()
		self:DeleteOnRemove(EyeGlow)
	end

	if GetConVar("VJ_ToTU_Deimos_Deimos_Eyes"):GetInt() == 2 then
		local TrailColor = Color(220,0,255,255)
		local EyeTrail = util.SpriteTrail(self,9,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		local EyeTrail2 = util.SpriteTrail(self,10,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_GlowEyes_Give()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom_RadioCuntFuq()

	self.SoundTbl_Idle = {
		"voices/mil_gasmask/idle_1.wav",
		"voices/mil_gasmask/idle_2.wav",
		"voices/mil_gasmask/idle_3.wav",
		"voices/mil_gasmask/idle_4.wav"
	}

	self.SoundTbl_Alert = {
		"voices/mil_gasmask/alert_1.wav",
		"voices/mil_gasmask/alert_2.wav",
		"voices/mil_gasmask/alert_3.wav",
		"voices/mil_gasmask/alert_4.wav",
		"voices/mil_gasmask/alert_5.wav",
		"voices/mil_gasmask/alert_6.wav",
		"voices/mil_gasmask/alert_7.wav"
	}

	self.SoundTbl_CombatIdle = {
		"voices/mil_gasmask/cidle_1.wav",
		"voices/mil_gasmask/cidle_2.wav"
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"voices/mil_gasmask/alert_1.wav",
		"voices/mil_gasmask/alert_2.wav",
		"voices/mil_gasmask/alert_3.wav",
		"voices/mil_gasmask/alert_4.wav",
		"voices/mil_gasmask/alert_5.wav",
		"voices/mil_gasmask/alert_6.wav",
		"voices/mil_gasmask/alert_7.wav"
	}

	self.SoundTbl_Pain = {
		"voices/mil_gasmask/pain_1.wav",
		"voices/mil_gasmask/pain_2.wav",
		"voices/mil_gasmask/pain_3.wav",
		"voices/mil_gasmask/pain_4.wav"
	}

	self.SoundTbl_Death = {
		"voices/mil_gasmask/death_1.wav",
		"voices/mil_gasmask/death_2.wav"
	}

	self.ToTU_Almanac_VoiceActor = "Security Zombie (Nightmare House 2)"

	self.IdleSoundPitch = VJ_Set(90, 85)
	self.AlertSoundPitch = VJ_Set(90, 85)
	self.CombatIdleSoundPitch = VJ_Set(90, 85)
	self.BeforeMeleeAttackSoundPitch = VJ_Set(90, 85)
	self.PainSoundPitch = VJ_Set(90, 85)
	self.DeathSoundPitch = VJ_Set(90, 85)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom_MaskBoi()

	self.SoundTbl_Idle = {
		"voices/det/idle_1.mp3",
		"voices/det/idle_2.mp3",
		"voices/det/idle_3.mp3",
		"voices/det/idle_4.mp3",
		"voices/det/idle_5.mp3",
		"voices/det/idle_6.mp3",
		"voices/det/idle_7.mp3",
		"voices/det/idle_8.mp3",
		"voices/det/idle_9.mp3",
		"voices/det/idle_10.mp3",
		"voices/det/idle_11.mp3",
		"voices/det/idle_12.mp3",
		"voices/det/idle_13.mp3",
		"voices/det/idle_14.mp3",
		"voices/det/idle_15.mp3",
		"voices/det/idle_16.mp3",
		"voices/det/idle_17.mp3",
		"voices/det/idle_18.mp3",
		"voices/det/idle_19.mp3",
		"voices/det/idle_20.mp3",
		"voices/det/idle_21.mp3",
		"voices/det/idle_22.mp3",
		"voices/det/idle_23.mp3"
	}

	self.SoundTbl_Alert = {
		"voices/det/alert_1.mp3",
		"voices/det/alert_2.mp3",
		"voices/det/alert_3.mp3",
		"voices/det/alert_4.mp3",
		"voices/det/alert_5.mp3",
		"voices/det/alert_6.mp3",
		"voices/det/alert_7.mp3",
		"voices/det/alert_8.mp3",
		"voices/det/alert_9.mp3",
		"voices/det/alert_10.mp3",
		"voices/det/alert_11.mp3",
		"voices/det/alert_12.mp3",
		"voices/det/alert_13.mp3",
		"voices/det/alert_14.mp3",
		"voices/det/alert_15.mp3"
	}

	self.SoundTbl_CombatIdle = {
		"voices/det/cidle_1.mp3",
		"voices/det/cidle_2.mp3",
		"voices/det/cidle_3.mp3",
		"voices/det/cidle_4.mp3",
		"voices/det/cidle_5.mp3",
		"voices/det/cidle_6.mp3",
		"voices/det/cidle_7.mp3",
		"voices/det/cidle_8.mp3",
		"voices/det/cidle_9.mp3",
		"voices/det/cidle_10.mp3",
		"voices/det/cidle_11.mp3",
		"voices/det/cidle_12.mp3",
		"voices/det/cidle_13.mp3",
		"voices/det/cidle_14.mp3",
		"voices/det/cidle_15.mp3",
		"voices/det/cidle_16.mp3",
		"voices/det/cidle_17.mp3",
		"voices/det/cidle_18.mp3",
		"voices/det/cidle_19.mp3"
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"voices/det/attack_1.mp3",
		"voices/det/attack_2.mp3",
		"voices/det/attack_3.mp3",
		"voices/det/attack_4.mp3",
		"voices/det/attack_5.mp3",
		"voices/det/attack_6.mp3",
		"voices/det/attack_7.mp3",
		"voices/det/attack_8.mp3",
		"voices/det/attack_9.mp3",
		"voices/det/attack_10.mp3",
		"voices/det/attack_11.mp3",
		"voices/det/attack_12.mp3"
	}

	self.SoundTbl_Pain = {
		"voices/det/pain_1.mp3",
		"voices/det/pain_2.mp3",
		"voices/det/pain_3.mp3",
		"voices/det/pain_4.mp3",
		"voices/det/pain_5.mp3",
		"voices/det/pain_6.mp3"
	}

    self.SoundTbl_Death = {
		"voices/det/death_1.mp3",
		"voices/det/death_2.mp3",
		"voices/det/death_3.mp3",
		"voices/det/death_4.mp3",
		"voices/det/death_5.mp3"
	}

	self.ToTU_Almanac_VoiceActor = "Gas Tank (Dying Light 1)"

	self.IdleSoundPitch = VJ_Set(90, 85)
	self.AlertSoundPitch = VJ_Set(90, 85)
	self.CombatIdleSoundPitch = VJ_Set(90, 85)
	self.BeforeMeleeAttackSoundPitch = VJ_Set(90, 85)
	self.PainSoundPitch = VJ_Set(90, 85)
	self.DeathSoundPitch = VJ_Set(90, 85)

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/