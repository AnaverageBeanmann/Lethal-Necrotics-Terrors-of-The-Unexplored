AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Idle = {
		"voices/deimos/cyst/idle_1.mp3",
		"voices/deimos/cyst/idle_2.mp3",
		"voices/deimos/cyst/idle_3.mp3",
		"voices/deimos/cyst/idle_4.mp3",
		"voices/deimos/cyst/idle_5.mp3",
		"voices/deimos/cyst/idle_6.mp3",
		"voices/deimos/cyst/idle_7.mp3",
	}
		
	self.SoundTbl_Alert = {
		"voices/deimos/cyst/alert_1.mp3",
		"voices/deimos/cyst/alert_2.mp3",
		"voices/deimos/cyst/alert_3.mp3",
		"voices/deimos/cyst/alert_4.mp3",
		"voices/deimos/cyst/alert_5.mp3",
		"voices/deimos/cyst/alert_6.mp3",
		"voices/deimos/cyst/alert_7.mp3",
		"voices/deimos/cyst/alert_8.mp3",
		"voices/deimos/cyst/alert_9.mp3",
		"voices/deimos/cyst/alert_10.mp3",
	}
	
	self.SoundTbl_CombatIdle = {
	self.SoundTbl_Idle
	}
	
	self.SoundTbl_BeforeMeleeAttack = {
		"voices/deimos/cyst/alert_1.mp3",
		"voices/deimos/cyst/alert_2.mp3",
		"voices/deimos/cyst/alert_3.mp3",
		"voices/deimos/cyst/alert_4.mp3",
		"voices/deimos/cyst/alert_5.mp3",
		"voices/deimos/cyst/alert_6.mp3",
		"voices/deimos/cyst/alert_7.mp3",
		"voices/deimos/cyst/alert_8.mp3",
		"voices/deimos/cyst/alert_9.mp3",
		"voices/deimos/cyst/alert_10.mp3",
	}
	
	self.SoundTbl_BeforeRangeAttack = {
		"npc/barnacle/barnacle_tongue_pull1.wav",
		"npc/barnacle/barnacle_tongue_pull2.wav",
		"npc/barnacle/barnacle_tongue_pull3.wav",
	}
	
	self.SoundTbl_Pain = {
		"voices/deimos/cyst/pain_1.mp3",
		"voices/deimos/cyst/pain_2.mp3",
		"voices/deimos/cyst/pain_3.mp3",
		"voices/deimos/cyst/pain_4.mp3",
		"voices/deimos/cyst/pain_5.mp3",
		"voices/deimos/cyst/pain_6.mp3",
		"voices/deimos/cyst/pain_7.mp3",
		"voices/deimos/cyst/pain_8.mp3",
	}
	
	self.SoundTbl_Death = {
		"voices/deimos/cyst/death_1.mp3",
		"voices/deimos/cyst/death_2.mp3",
		"voices/deimos/cyst/death_3.mp3",
		"voices/deimos/cyst/death_4.mp3",
	}
	
	self.ToTU_Almanac_VoiceActor = "Fat Molded (Resident Evil 7)"

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 400
		self.MeleeAttackDamage = math.Rand(25,30)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 500
		self.MeleeAttackDamage = math.Rand(35,40)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 600
		self.MeleeAttackDamage = math.Rand(40,45)

	else

		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(20,25)

	end

	self:SetHealth(self.StartHealth)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RangeAttackCode_GetShootPos(projectile)

	if self:GetSequence() == self:LookupSequence("ThrowWarning") then
		return (self:GetEnemy():GetPos() - self:LocalToWorld(Vector(80,0,0)))*2.5 + self:GetUp()*120
	end

	if self:GetSequence() == self:LookupSequence("releasecrab") then
		return (self:GetEnemy():GetPos() - self:LocalToWorld(Vector(math.random(-200,100),math.random(50,-50),math.random(-100,100)))) + self:GetUp()*120
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomRangeAttackCode_AfterProjectileSpawn(projectile)
	if GetConVar("VJ_ToTU_Weaponized_Cyst_HurtOnRanged"):GetInt() == 1 then
		local d = DamageInfo()
		d:SetDamage(math.random(25,30))
		d:SetAttacker(self)
		d:SetDamageType(DMG_GENERIC) 
		self:TakeDamageInfo(d)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if
		dmginfo:IsDamageType(DMG_CLUB) or
		dmginfo:IsDamageType(DMG_SLASH) or
		dmginfo:IsDamageType(DMG_GENERIC) or
		dmginfo:IsDamageType(DMG_SONIC) or
		dmginfo:IsDamageType(DMG_VEHICLE) or
		dmginfo:IsDamageType(DMG_DIRECT) or
		dmginfo:IsDamageType(DMG_NEVERGIB) or
		dmginfo:IsDamageType(DMG_PHYSGUN) or
		dmginfo:IsDamageType(DMG_CRUSH)
	then	
		if self.LNR_NextShoveT < CurTime() then
			self:VJ_ACT_PLAYACTIVITY(ACT_FLINCH_PHYSICS,true,0.6)
			self.LNR_NextShoveT = CurTime() + 3.5
		end
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/