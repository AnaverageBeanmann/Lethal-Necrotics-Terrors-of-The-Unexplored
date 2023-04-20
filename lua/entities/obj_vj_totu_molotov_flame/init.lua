AddCSLuaFile("shared.lua")
include("shared.lua")
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
ENT.Model = {"models/spitball_small.mdl"}
ENT.SoundTbl_Idle = {"weapons/molotov/fire_loop_1.wav"}
ENT.SoundTbl_OnRemove = {"weapons/molotov/fire_loop_fadeout_01.wav"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)

	phys:Wake()
	phys:EnableGravity(false)
	phys:EnableDrag(false)
	phys:SetBuoyancyRatio(0)
	phys:EnableMotion(false)

	self:SetCollisionGroup(20)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()

	ParticleEffectAttach("fire_large_01", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	ParticleEffectAttach("antlion_spit_trail", PATTACH_ABSORIGIN_FOLLOW, self, 0)

	self:SetNoDraw(true)
	
	self.Light1 = ents.Create("light_dynamic")
	self.Light1:SetKeyValue("brightness", "5")
	self.Light1:SetKeyValue("distance", "150")
	self.Light1:SetLocalPos(self:GetPos() + self:GetUp()*0 + self:GetForward()*0)
	self.Light1:SetLocalAngles(self:GetAngles())
	self.Light1:Fire("Color", "255 174 0")
	self.Light1:SetParent(self)
	self.Light1:Spawn()
	self.Light1:Activate()
	self.Light1:Fire("TurnOn", "", 0)
	self:DeleteOnRemove(self.Light1)
		
	local bombglow = ents.Create("env_sprite")
	bombglow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
	bombglow:SetKeyValue("scale", "0.25")
	bombglow:SetKeyValue("rendermode","5")
	bombglow:SetKeyValue("rendercolor","255 174 0")
	bombglow:SetKeyValue("spawnflags","1") -- If animated
	bombglow:SetLocalPos(self:GetPos() + self:GetUp()*0 + self:GetForward()*0)
	bombglow:SetLocalAngles(self:GetAngles())
	bombglow:SetParent(self)
	bombglow:Spawn()
	bombglow:Activate()
	self:DeleteOnRemove(bombglow)

	timer.Simple(10,function() if IsValid(self) then
			self:Remove()
	end end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	util.VJ_SphereDamage(self, self, self:GetPos(), 160, 5, DMG_BURN, true, true)	
end