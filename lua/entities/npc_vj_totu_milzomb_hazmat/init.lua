AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:ZombieSounds_Custom()

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

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Detonator_BombHitExplode()

	VJ_EmitSound(self,"physics/destruction/explosivegasleak.wav",75,100)

	timer.Simple(0.5,function() if IsValid(self) && !self.Dead then

		if !self.LNR_Crippled then
			if self.LNR_Infected then
				self.AnimTbl_Walk = {ACT_SPRINT}
				self.AnimTbl_Run = {ACT_RUN_RELAXED}
			else
				self.AnimTbl_Walk = {ACT_RUN}
				self.AnimTbl_Run = {ACT_SPRINT}
			end
		end

		self.PainSoundT = 0.5
		self.SoundTbl_Pain = {
			"voices/det/pain_critical_1.mp3",
			"voices/det/pain_critical_2.mp3",
			"voices/det/pain_critical_3.mp3"
		}
		self:PlaySoundSystem("Pain")
		self.HasPainSounds = false

	end end)

	timer.Simple(2,function() if IsValid(self) && !self.Dead then
	
		self.GodMode = false
		self.MilZ_Det_DeathExplosionAllowed = true
		self.HasDeathRagdoll = false
		self.HasDeathAnimation = false
		self.HasGibOnDeath = true
		self.GibOnDeathDamagesTable = {"All"}
		self.HasDeathSounds = false

		if GetConVar("VJ_ToTU_MilZ_Det_Infection"):GetInt() == 0 then
			self.LNR_VirusInfection = false
		end

		local d = DamageInfo()
		d:SetDamage(self:GetMaxHealth())
		d:SetAttacker(self)
		d:SetDamageType(DMG_GENERIC) 
		self:TakeDamageInfo(d)

	end end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)

	if hitgroup == HITGROUP_GEAR then

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

		if GetConVar("VJ_ToTU_MilZ_Det_Bomb_Bustable"):GetInt() == 1 then

			self.MilZ_Hazmat_TankHealth = self.MilZ_Hazmat_TankHealth -dmginfo:GetDamage()

			if self.MilZ_Hazmat_TankHealth <= 0 && !self.MilZ_Hazmat_TankHit then

				self.MilZ_Hazmat_TankHit = true
				self:ToTU_Detonator_BombHitExplode()

			end
		
		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnKilled(dmginfo,hitgroup)

	if self.MilZ_Det_DeathExplosionAllowed == true then

		local effectdata = EffectData()
		effectdata:SetOrigin(self:GetPos())
		effectdata:SetScale( 500 )
		util.Effect( "HelicopterMegaBomb", effectdata )
		util.Effect( "ThumperDust", effectdata )
		util.Effect( "Explosion", effectdata )
		util.Effect( "VJ_Small_Explosion1", effectdata )

		VJ_EmitSound(self,"fx/funny.mp3",85)
		ParticleEffect("vj_explosion2",self:GetPos() + self:GetUp()*48 + self:GetForward()*1,Angle(0,0,0),nil) 
		ParticleEffect("vj_explosion1",self:GetPos() + self:GetUp()*15,Angle(0,0,0),nil)
		ParticleEffect("vj_explosionfire2",self:GetPos() + self:GetUp()*20,Angle(0,0,0),nil)
		ParticleEffect("vj_explosionfire1",self:GetPos() + self:GetUp()*20,Angle(0,0,0),nil)

		if GetConVar("VJ_ToTU_MilZ_Det_ExplosionSetup"):GetInt() == true then
			util.VJ_SphereDamage(self, self, self:GetPos(), 40, 25, DMG_BLAST, true, true, {Force=70})
			util.VJ_SphereDamage(self, self, self:GetPos(), 80, 25, DMG_BLAST, true, true, {Force=70})
			util.VJ_SphereDamage(self, self, self:GetPos(), 120, 25, DMG_BLAST, true, true, {Force=70})
			util.VJ_SphereDamage(self, self, self:GetPos(), 160, 25, DMG_BLAST, true, true, {Force=70})
			util.VJ_SphereDamage(self, self, self:GetPos(), 200, 25, DMG_BLAST, true, true, {Force=70})
		else
			util.VJ_SphereDamage(self, self, self:GetPos(), 200, 125, DMG_BLAST, true, true, {Force=70})
		end
		util.ScreenShake(self:GetPos(), 300, 500, 1.6, 1200)

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetUpGibesOnDeath(dmginfo,hitgroup)

	if !self.MilZ_Det_DeathExplosionAllowed then return end

	if self.HasGibDeathParticles == true then

		local effectBlood = EffectData()
		effectBlood:SetOrigin(self:GetPos() + self:OBBCenter())
		effectBlood:SetColor(VJ_Color2Byte(Color(127,0,0)))
		effectBlood:SetScale(120)
		util.Effect("VJ_Blood1",effectBlood)

		local bloodspray = EffectData()
		bloodspray:SetOrigin(self:GetPos())
		bloodspray:SetScale(8)
		bloodspray:SetFlags(3)
		bloodspray:SetColor(0)	
		util.Effect("bloodspray",bloodspray)
		util.Effect("bloodspray",bloodspray)

	end

	if GetConVar("VJ_LNR_Gib"):GetInt() == 1 then

		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,35))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,35))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,35))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,35))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,35))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,30))})

		return true,{DeathAnim=false,AllowCorpse=true}

	end

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/