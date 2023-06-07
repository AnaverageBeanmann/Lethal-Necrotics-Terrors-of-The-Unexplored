AddCSLuaFile("shared.lua")
include("shared.lua")
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
ENT.FussTime = 4
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:Wake()
	phys:SetMass(1)
	phys:SetBuoyancyRatio(0)
	phys:EnableDrag(false)
	phys:AddAngleVelocity(Vector(0,math.random(300,400),0))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()

	timer.Simple(self.FussTime,function() if IsValid(self) then self:DeathEffects() end end)

	self.SoundTbl_Idle = {"weapons/grenade/tick1.wav"}
	self.IdleSoundPitch = VJ_Set(100, 100)
	self.IdleSoundLevel = 75

	self.NextSoundTime_Idle = VJ_Set(0.9, 0.9)
	timer.Simple(1.5,function() if IsValid(self) then
		self.NextSoundTime_Idle = VJ_Set(0.2, 0.2)
	end end)
	
	util.SpriteTrail(self, 0, Color(255,0,0), true, 15, 15, 0.35, 1/(6+6)*0.5, "VJ_Base/sprites/vj_trial1.vmt")

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
        self.RadiusDamage = 5	 
	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
        self.RadiusDamage = 10	 
	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
        self.RadiusDamage = math.random(75,80)
	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
        self.RadiusDamage = 20
	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
		self.RadiusDamage = 25
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
local defAngle = Angle(0, 0, 0)
local vecZ4 = Vector(0, 0, 4)
local vezZ100 = Vector(0, 0, 100)
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DeathEffects()
	local selfPos = self:GetPos()
	
	ParticleEffect("vj_explosion1", self:GetPos(), defAngle, nil)
	
	local effectData = EffectData()
	effectData:SetOrigin(self:GetPos())
	util.Effect("Explosion", effectData)

	util.ScreenShake(self:GetPos(), 100, 200, 1, 2500)

	self:SetLocalPos(selfPos + vecZ4) -- Because the entity is too close to the ground
	local tr = util.TraceLine({
		start = self:GetPos(),
		endpos = self:GetPos() - vezZ100,
		filter = self
	})
	util.Decal(VJ_PICK(self.DecalTbl_DeathDecals), tr.HitPos + tr.HitNormal, tr.HitPos - tr.HitNormal)
	
	self:DoDamageCode()
	self:SetDeathVariablesTrue(nil, nil, false)
	self:Remove()
end