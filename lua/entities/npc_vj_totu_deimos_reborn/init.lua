AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_GlowEyes_Give()

	if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 0 or GetConVar("vj_npc_noidleparticle"):GetInt() == 1  then return end

	for i = 1,2 do	
		local att = i == 2 && "eyeglow1" or "eyeglow2"		
		local EyeGlow = ents.Create("env_sprite")
		EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		EyeGlow:SetKeyValue("scale","0.02")
		EyeGlow:SetKeyValue("rendermode","5")
		EyeGlow:SetKeyValue("rendercolor","220 0 255 255")
		EyeGlow:SetKeyValue("spawnflags","1") 
		EyeGlow:SetParent(self)
		EyeGlow:Fire("SetParentAttachment",att,0)
		EyeGlow:Spawn()
		EyeGlow:Activate()
		self:DeleteOnRemove(EyeGlow)
	end

	if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
		local TrailColor = Color(220,0,255,255)
		local EyeTrail = util.SpriteTrail(self,8,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		local EyeTrail2 = util.SpriteTrail(self,9,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Pain = {
		"voices/bmzombs/pain1.wav",
		"voices/bmzombs/pain2.wav",
		"voices/bmzombs/pain3.wav",
		"voices/bmzombs/pain4.wav",
		"voices/bmzombs/pain5.wav",
		"voices/bmzombs/pain6.wav",
		"voices/bmzombs/pain7.wav",
		"voices/bmzombs/pain8.wav",
		"voices/bmzombs/pain9.wav",
		"voices/bmzombs/pain10.wav"
	}

	self.SoundTbl_Idle = {
		"voices/bmzombs/idle1.wav",
		"voices/bmzombs/idle2.wav",
		"voices/bmzombs/idle3.wav",
		"voices/bmzombs/idle4.wav",
		"voices/bmzombs/idle5.wav",
		"voices/bmzombs/idle6.wav",
	}
		
	self.SoundTbl_Alert = {
		"voices/bmzombs/alert1.wav",
		"voices/bmzombs/alert2.wav",
		"voices/bmzombs/alert3.wav",
		"voices/bmzombs/alert4.wav",
		"voices/bmzombs/alert5.wav",
		"voices/bmzombs/alert6.wav",
	}
	
	self.SoundTbl_CombatIdle = {
		"voices/bmzombs/idle1.wav",
		"voices/bmzombs/idle2.wav",
		"voices/bmzombs/idle3.wav",
		"voices/bmzombs/idle4.wav",
		"voices/bmzombs/idle5.wav",
		"voices/bmzombs/idle6.wav",
	}
	
	self.SoundTbl_BeforeMeleeAttack = {
		"voices/bmzombs/attack01.wav",
		"voices/bmzombs/attack02.wav",
		"voices/bmzombs/attack03.wav",
		"voices/bmzombs/attack04.wav",
		"voices/bmzombs/attack05.wav",
		"voices/bmzombs/attack06.wav",
	}
	
	self.SoundTbl_Death = {
		"voices/bmzombs/die1.wav",
		"voices/bmzombs/die2.wav",
		"voices/bmzombs/die3.wav",
		"voices/bmzombs/die4.wav",
		"voices/bmzombs/die5.wav",
	}
	
	-- self.IdleSoundChance = 5
	-- self.CombatIdleSoundChance = 4
	-- self.IdleSoundLevel = 60
	-- self.CombatIdleSoundLevel = 60
	
	self.ToTU_Almanac_VoiceActor = "Headcrab Zombie (Black Mesa)"

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		-- I'm Too Young To Die
		self.StartHealth = 35
		self.MeleeAttackDamage = math.Rand(1,5)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		-- Hey, Not Too Rough
		self.StartHealth = 75
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		-- Hurt Me Plenty
		self.StartHealth = 75
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		-- Ultra Violence
		self.StartHealth = 275
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		-- NIGHTMARE!
		self.StartHealth = 600
		self.MeleeAttackDamage = math.Rand(25,30)

	else

		-- HMP failsafe incase the convar is set to an unsupported number
		self.StartHealth = 75
		self.MeleeAttackDamage = math.Rand(10,15)

	end

	self:SetHealth(self.StartHealth)	

	self.LNR_LegHP = self.StartHealth * 0.20

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/