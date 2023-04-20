AddCSLuaFile("shared.lua")
include("shared.lua")
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
ENT.Model = {"models/weapons/w_eq_smokegrenade_thrown.mdl"}
ENT.SoundTbl_OnCollide = {"weapons/smokegrenade/grenade_hit1.wav"}
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

	timer.Simple(2,function() if IsValid(self) then
		self.IsIgnited = true
		VJ_EmitSound(self,"weapons/smokegrenade/sg_explode.wav",80)

		/*
		-- add this when attachment is added to model
		self.bullseye = ents.Create("obj_vj_bullseye")
		self.bullseye:SetModel("models/hunter/plates/plate.mdl")
		self.bullseye:SetParent(self)
		self.bullseye:Fire("SetParentAttachment", "origin")
		self.bullseye:Spawn()
		self.bullseye:SetNoDraw(true)
		self.bullseye:DrawShadow(false)
		self.bullseye.VJ_NPC_Class = self.VJ_NPC_Class
		table.insert(self.VJ_AddCertainEntityAsFriendly, self.bullseye) -- In case relation class is changed dynamically!
		self:DeleteOnRemove(self.bullseye)
		*/		
	end end)

	timer.Simple(10,function() if IsValid(self) then
			self:Remove()
	end end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	if self.IsIgnited then
		ParticleEffectAttach("door_explosion_smoke", PATTACH_ABSORIGIN_FOLLOW, self, 0)
		ParticleEffectAttach("door_explosion_smoke", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPhysicsCollide(data, phys)
	local getVel = phys:GetVelocity()
	local curVelSpeed = getVel:Length()
	//print(curVelSpeed)
	if curVelSpeed > 500 then -- Or else it will go flying!
		phys:SetVelocity(getVel * 0.9)
	end
	if curVelSpeed > 100 then -- If the grenade is going faster than 100, then play the touch sound
		self:OnCollideSoundCode()
	end
end