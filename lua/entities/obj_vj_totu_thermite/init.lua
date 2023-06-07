AddCSLuaFile("shared.lua")
include("shared.lua")
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
ENT.Model = {"models/totu/w_eq_thermitegrenade_thrown.mdl"}
ENT.SoundTbl_Idle = {"weapons/flaregun/burn.wav"}

ENT.IdleSoundLevel = 65
ENT.RemoveOnHit = false
ENT.IsIgnited = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)

	phys:Wake()
	phys:EnableGravity(true)
	phys:EnableDrag(false)
	phys:SetBuoyancyRatio(0)
	phys:AddAngleVelocity(Vector(math.random(-400,400),math.random(-400,400),math.random(-400,400)))

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()

	ParticleEffectAttach("embers_small_01", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	ParticleEffectAttach("smoke_gib_01", PATTACH_ABSORIGIN_FOLLOW, self, 0)

	timer.Simple(2,function() if IsValid(self) then

		self.IsIgnited = true
		ParticleEffectAttach("fire_medium_01", PATTACH_ABSORIGIN_FOLLOW, self, 0)
		VJ_EmitSound(self,"weapons/flaregun/fire.wav",80)
		self.IdleSoundLevel = 75

		self.Light1 = ents.Create("light_dynamic")
		self.Light1:SetKeyValue("brightness", "5")
		self.Light1:SetKeyValue("distance", "95")
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

	end end)

	timer.Simple(10,function() if IsValid(self) then
		self:Remove()
	end end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	if self.IsIgnited then
		for _,v in ipairs(ents.FindInSphere(self:GetPos(),75)) do
			if !v:IsOnFire() then
				v:Ignite(4)
			end
		end
	end
end