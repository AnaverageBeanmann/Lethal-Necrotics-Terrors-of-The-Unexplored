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
	//if self:GetOwner():IsValid() && (self:GetOwner().GrenadeAttackFussTime) then
	//timer.Simple(self:GetOwner().GrenadeAttackFussTime,function() if IsValid(self) then self:DeathEffects() end end) else
	timer.Simple(self.FussTime,function() if IsValid(self) then self:DeathEffects() end end)
	//end
	self:SetSkin(1)
	
	self.SoundTbl_Idle = {"weapons/grenade/tick1.wav"}
	-- self.SoundTbl_Idle = {"weapons/hegrenade/beep.wav"}
	self.IdleSoundPitch = VJ_Set(100, 100)
	self.IdleSoundLevel = 70
	
	self.NextSoundTime_Idle = VJ_Set(0.9, 0.9)
	timer.Simple(1.5,function() if IsValid(self) then
		self.NextSoundTime_Idle = VJ_Set(0.2, 0.2)
	end end)
	
	-- self.NextSoundTime_Idle = VJ_Set(0.2, 0.2)
	-- timer.Simple(1.5,function() if IsValid(self) then
		-- self.NextSoundTime_Idle = VJ_Set(0.1, 0.1)
	-- end end)
	
	local redGlow = ents.Create("env_sprite")
	redGlow:SetKeyValue("model", "vj_base/sprites/vj_glow1.vmt")
	redGlow:SetKeyValue("scale", "0.07")
	redGlow:SetKeyValue("rendermode", "5")
	redGlow:SetKeyValue("rendercolor", "150 0 0")
	redGlow:SetKeyValue("spawnflags", "1") -- If animated
	redGlow:SetParent(self)
	-- redGlow:Fire("SetParentAttachment", "fuse", 0)
	redGlow:Spawn()
	redGlow:Activate()
	self:DeleteOnRemove(redGlow)
	util.SpriteTrail(self, 1, Color(255,0,0), true, 15, 15, 0.35, 1/(6+6)*0.5, "VJ_Base/sprites/vj_trial1.vmt")
	
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
	//effectData:SetScale(500)
	//util.Effect("HelicopterMegaBomb", effectData)
	//util.Effect("ThumperDust", effectData)
	util.Effect("Explosion", effectData)
	//util.Effect("VJ_Small_Explosion1", effectData)

	local expLight = ents.Create("light_dynamic")
	expLight:SetKeyValue("brightness", "4")
	expLight:SetKeyValue("distance", "300")
	expLight:SetLocalPos(selfPos)
	expLight:SetLocalAngles(self:GetAngles())
	expLight:Fire("Color", "255 150 0")
	expLight:SetParent(self)
	expLight:Spawn()
	expLight:Activate()
	expLight:Fire("TurnOn", "", 0)
	self:DeleteOnRemove(expLight)
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