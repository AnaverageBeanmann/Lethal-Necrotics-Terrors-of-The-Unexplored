AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
-- ENT.GeneralSoundPitch1 = 65
-- ENT.GeneralSoundPitch2 = 60
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()
	self.Model = {"models/totu/corrupt.mdl"}
	self.AnimTbl_Walk = {ACT_WALK}
	self.AnimTbl_Run = {ACT_RUN}
	self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(3,10)	
	
	timer.Simple(0.1,function() if IsValid(self) then
	self.AnimTbl_Walk = {ACT_WALK}
	self.AnimTbl_Run = {ACT_WALK}
	end end)
	
	
	self.SoundTbl_MeleeAttackExtra = {
		"vj_lnrhl2/shared/melee/zombie_slice_1.wav",
		"vj_lnrhl2/shared/melee/zombie_slice_2.wav",
		"vj_lnrhl2/shared/melee/zombie_slice_3.wav",
		"vj_lnrhl2/shared/melee/zombie_slice_4.wav",
		"vj_lnrhl2/shared/melee/zombie_slice_5.wav",
		"vj_lnrhl2/shared/melee/zombie_slice_6.wav"
	}
	self.SoundTbl_MeleeAttack = {""}
		self.AnimTbl_Flinch = {""}
		self.CanFlinch = 0
	self.CanEat = false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()

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

	local TrailColor = Color(220,0,255,255)
	local EyeTrail = util.SpriteTrail(self,1,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
	local EyeTrail2 = util.SpriteTrail(self,2,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")

	self:SetModelScale(1.13)
	self.AnimTbl_Flinch = {}

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

	/*
	new voice ideas
	dying light 2 snatcher/spitter
	dead space puker
	*/
		self.SoundTbl_Idle = {
			"voices/deimos/corrupt/idle1.mp3",
			"voices/deimos/corrupt/idle2.mp3",
			"voices/deimos/corrupt/idle3.mp3",
			"voices/deimos/corrupt/idle4.mp3",
			"voices/deimos/corrupt/idle5.mp3",
			"voices/deimos/corrupt/idle6.mp3"
		}

		self.SoundTbl_Alert = {
			"voices/deimos/corrupt/alert1.mp3",
			"voices/deimos/corrupt/alert2.mp3",
			"voices/deimos/corrupt/alert3.mp3",
			"voices/deimos/corrupt/alert4.mp3",
			"voices/deimos/corrupt/super_puker_70.mp3"
		}

		self.SoundTbl_CombatIdle = {
			"voices/deimos/corrupt/idle1.mp3",
			"voices/deimos/corrupt/idle2.mp3",
			"voices/deimos/corrupt/idle3.mp3",
			"voices/deimos/corrupt/idle4.mp3",
			"voices/deimos/corrupt/idle5.mp3",
			"voices/deimos/corrupt/idle6.mp3"
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"voices/deimos/corrupt/alert1.mp3",
			"voices/deimos/corrupt/alert2.mp3",
			"voices/deimos/corrupt/alert3.mp3",
			"voices/deimos/corrupt/alert4.mp3",
			"voices/deimos/corrupt/super_puker_70.mp3"
		}

		self.SoundTbl_Pain = {
			"voices/deimos/corrupt/pain1.mp3",
			"voices/deimos/corrupt/pain2.mp3",
			"voices/deimos/corrupt/pain3.mp3",
			"voices/deimos/corrupt/pain4.mp3",
			"voices/deimos/corrupt/pain5.mp3"
		}

    	self.SoundTbl_Death = {
			"voices/deimos/corrupt/death1.mp3",
			"voices/deimos/corrupt/death2.mp3",
			"voices/deimos/corrupt/death3.mp3",
			"voices/deimos/corrupt/death4.mp3",
			"voices/deimos/corrupt/death5.mp3"
		}
		
	self.ToTU_Almanac_VoiceActor = "Puker (Dead Space 2)"
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	self.HasHealthRegeneration = true
	self.HealthRegenerationDelay = VJ_Set(2, 2)
	self.HealthRegenerationResetOnDmg = false

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 400
		self.MeleeAttackDamage = math.Rand(15,20)
		self.HealthRegenerationAmount = 2

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 500
		self.MeleeAttackDamage = math.Rand(20,25)
		self.HealthRegenerationAmount = 4

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 600
		self.MeleeAttackDamage = math.Rand(25,30)
		self.HealthRegenerationAmount = 6

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 700
		self.MeleeAttackDamage = math.Rand(30,35)
		self.HealthRegenerationAmount = 8

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 800
		self.MeleeAttackDamage = math.Rand(35,40)
		self.HealthRegenerationAmount = 10

	else

		self.StartHealth = 500
		self.MeleeAttackDamage = math.Rand(20,25)
		self.HealthRegenerationAmount = 4

	end

	self:SetHealth(self.StartHealth)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RiseFromGround()

	timer.Simple(0.1,function() if IsValid(self) then
		if GetConVar("VJ_ToTU_Spawn_AlertSound"):GetInt() == 1 then
			VJ_CreateSound(self,self.SoundTbl_Alert,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.AlertSoundPitch.a, self.AlertSoundPitch.b))
		end
	end end)

	VJ_EmitSound(self,"vj_lnrhl2/shared/dirtintro"..math.random(1,2)..".wav",75,100)
	ParticleEffect("advisor_plat_break",self:GetPos(),self:GetAngles(),self)
	ParticleEffect("strider_impale_ground",self:GetPos(),self:GetAngles(),self)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GetSightDirection()
	return self:GetForward()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()

	if
		self.ToTU_Weaponized_Redead_NextRunT < CurTime() &&
		!self.ToTU_Weaponized_Redead_Running &&
		self:GetEnemy() != nil &&
		!self:IsBusy()
	then

		VJ_EmitSound(self,self.SoundTbl_BeforeMeleeAttack,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))

		self.ToTU_Weaponized_Redead_Running = true
		self.ToTU_Weaponized_Redead_RunT = CurTime() + math.random(3,7)

		self.AnimTbl_Walk = {ACT_WALK}
		self.AnimTbl_Run = {ACT_RUN}

	end

	if
		self.ToTU_Weaponized_Redead_Running &&
		self.ToTU_Weaponized_Redead_RunT < CurTime() &&
		!self.LNR_Crippled
	then

		self.ToTU_Weaponized_Redead_Running = false
		self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(6,12)

		self.AnimTbl_Walk = {ACT_WALK}
		self.AnimTbl_Run = {ACT_WALK}

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnMeleeAttack_BeforeStartTimer(seed)

	if self:IsMoving() && self.ToTU_Weaponized_Redead_Running then
		self.AnimTbl_MeleeAttack = {"vjseq_attack_run"}
	else
		self.AnimTbl_MeleeAttack = {
			"vjseq_attack1",
			"vjseq_attack2",
		}
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
			self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,1.6)
			self.LNR_NextShoveT = CurTime() + 3.5
		end
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/