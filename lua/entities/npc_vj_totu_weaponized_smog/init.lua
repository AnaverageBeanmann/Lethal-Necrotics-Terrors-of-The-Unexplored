AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.DeathSoundPitch = VJ_Set(70, 75)

ENT.ToTU_Weaponized_Smog_Faceplate_Health = 500
ENT.ToTU_Weaponized_Smog_Faceplate_Broken = false
ENT.ToTU_Weaponized_Smog_Tank_Health = 35
ENT.ToTU_Weaponized_Smog_Tank_Broken = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()
	self.Model = {"models/totu/smog.mdl"}
self.RangeAttackSoundLevel = 85
	self:SetModelScale(1.25)
		self.HasWorldShakeOnMove = true
		self.WorldShakeOnMoveAmplitude = 1
		self.MeleeAttackDistance = 50
		self.MeleeAttackDamageDistance = 70
		self.HasMeleeAttackKnockBack = true
		
		self.MeleeAttackKnockBack_Forward1 = 150
		self.MeleeAttackKnockBack_Forward2 = 175
		self.MeleeAttackKnockBack_Up1 = 75
		self.MeleeAttackKnockBack_Up2 = 100
		self.AnimTbl_Death = {"vjseq_death_04"}
		self.DeathAnimationChance = 1
		
		self.HasRangeAttack = true
		self.RangeAttackEntityToSpawn = "obj_vj_totu_biotoxin"
		self.AnimTbl_RangeAttack = {"vjseq_nz_sonic_attack_1"}
		self.RangeDistance = 1200 
		self.RangeToMeleeDistance = 0
		self.RangeAttackAngleRadius = 100
		self.TimeUntilRangeAttackProjectileRelease = 0.6
		self.NextRangeAttackTime = 12
		self.NextAnyAttackTime_Range = 2
		self.RangeUseAttachmentForPos = true 
		self.RangeUseAttachmentForPosID = "mouth"
		self.RangeAttackExtraTimers = {0.7,0.8,0.9,1,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2,2.1,2.2,2.3,2.4}
		self.RangeAttackPos_Forward = 20
		self.RangeAttackPos_Up = 20
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()
		self:SetCollisionBounds(Vector(13, 13, 65), Vector(-13, -13, 0))
		self.AnimTbl_Walk = {ACT_WALK_AIM}
					-- self.AnimTbl_Run = {ACT_RUN_RELAXED}
					-- self.ToTU_Rusher = true
					-- self.HasRangeAttack = false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
	
		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(20,25)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
	
		self.StartHealth = 750
		self.MeleeAttackDamage = math.Rand(25,30)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
	
		self.StartHealth = 1250
		self.MeleeAttackDamage = math.Rand(30,35)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
	
		self.StartHealth = 1750
		self.MeleeAttackDamage = math.Rand(35,40)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
	
		self.StartHealth = 2250
		self.MeleeAttackDamage = math.Rand(40,45)
		
	end
			
        self:SetHealth(self.StartHealth)	
		
		if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then
		
			if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
			
				self.LNR_LegHP = 105
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
			
				self.LNR_LegHP = 150
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
			
				self.LNR_LegHP = 195
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
			
				self.LNR_LegHP = 240
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
			
				self.LNR_LegHP = 285
				
			end
			
		end
end 
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()
	if self.ToTU_Weaponized_Smog_Tank_Broken then
		util.VJ_SphereDamage(self, self, self:GetPos(), 100, 1, DMG_NERVEGAS, true, true)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RangeAttackCode_GetShootPos(projectile)
	return (self:GetEnemy():GetPos() - self:LocalToWorld(Vector(10,math.random(-75,75),math.random(-25,75)))) *0.5
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)
	if hitgroup == HITGROUP_GEAR then
		self.Bleeds = false
		-- dmginfo:ScaleDamage(0.1)
		if !self.ToTU_Weaponized_Smog_Tank_Broken then
			self.ToTU_Weaponized_Smog_Tank_Health = self.ToTU_Weaponized_Smog_Tank_Health -dmginfo:GetDamage()
			
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
			if self.ToTU_Weaponized_Smog_Tank_Health <= 0 then
				-- if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"test/laughnow.mp3",0) end
			VJ_EmitSound(self,{"zombies/weaponized/smog/gas_can_explode.wav"},75,math.random(100,100))
				ParticleEffectAttach("smoke_exhaust_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("smog_gasleak"))
				ParticleEffectAttach("smoke_exhaust_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("smog_gasleak"))
				ParticleEffectAttach("smoke_exhaust_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("smog_gasleak"))
				self.ToTU_Weaponized_Smog_Tank_Broken = true
				self.HasRangeAttack = false
			end
		end
	elseif hitgroup == HITGROUP_HEAD then
		if !self.ToTU_Weaponized_Smog_Faceplate_Broken then
			self.ToTU_Weaponized_Smog_Faceplate_Health = self.ToTU_Weaponized_Smog_Faceplate_Health -dmginfo:GetDamage()
			if self.ToTU_Weaponized_Smog_Faceplate_Health <= 0 then
				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/glass/glass_sheet_break"..math.random(1,3)..".wav"},70) end
				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/glass/glass_pottery_break"..math.random(1,3)..".wav"},70) end
				local effectData = EffectData()
				effectData:SetOrigin(dmginfo:GetDamagePosition())
				effectData:SetScale(1)
				util.Effect("GlassImpact", effectData)
				self:SetSkin(1)
				self.ToTU_Weaponized_Smog_Faceplate_Broken = true
				self.Bleeds = false
			else
				dmginfo:ScaleDamage(0)
				self.Bleeds = false
				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"physics/glass/glass_impact_bullet"..math.random(1,4)..".wav",70) end
			end
		end
	else
		self.Bleeds = true
		-- dmginfo:ScaleDamage(1)
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/