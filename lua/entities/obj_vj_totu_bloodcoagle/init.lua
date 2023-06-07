AddCSLuaFile("shared.lua")
include("shared.lua")
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
ENT.Model = {"models/spitball_small.mdl"}
ENT.DecalTbl_DeathDecals = {"VJ_Blood_Red"}
ENT.SoundTbl_Idle = {"vj_acid/acid_idle1.wav"}
ENT.SoundTbl_OnCollide = {"vj_acid/acid_blood.wav"}
ENT.DoesRadiusDamage = true 
ENT.RadiusDamageRadius = 75
ENT.RadiusDamageUseRealisticRadius = true
ENT.RadiusDamageType = DMG_ACID
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:Wake()
	phys:SetMass(1)
	phys:EnableGravity(true)
	phys:EnableDrag(false)
	phys:SetBuoyancyRatio(0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()

     if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
        self.RadiusDamage = 5	 
     elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
        self.RadiusDamage = 10	 
     elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
        self.RadiusDamage = math.random(10,15)
     elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
        self.RadiusDamage = 20
     elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
        self.RadiusDamage = 25
	end

	ParticleEffectAttach("antlion_spit_trail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	self:SetNoDraw(true)
	-- self:SetKeyValue("rendercolor","180 180 180 255")
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	ParticleEffectAttach("blood_impact_red_01", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DeathEffects(data,phys)
	local effectdata = EffectData()
	effectdata:SetOrigin(data.HitPos)
	effectdata:SetScale(1)
	util.Effect("StriderBlood",effectdata)
	util.Effect("StriderBlood",effectdata)
	util.Effect("StriderBlood",effectdata)
	
			local effectData = EffectData()
			effectData:SetOrigin(self:GetPos())
			effectData:SetScale(1)
			util.Effect("BloodImpact", effectData)
	ParticleEffectAttach("blood_impact_red_01", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	-- ParticleEffect("antlion_gib_02_floaters", data.HitPos, Angle(0,0,0), nil)
	-- ParticleEffect("antlion_gib_01_juice", data.HitPos, Angle(0,0,0), nil)
end