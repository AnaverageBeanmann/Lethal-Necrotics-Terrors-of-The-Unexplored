AddCSLuaFile("shared.lua")
include("shared.lua")
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
ENT.Model = {"models/totu/w_eq_smokegrenade_thrown.mdl"}
ENT.SoundTbl_OnCollide = {"fx/weapon/gren/grenade_hit1.wav"}
ENT.IdleSoundLevel = 65
ENT.RemoveOnHit = false
ENT.IsIgnited = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:Wake()
	phys:SetMass(1)
	phys:EnableGravity(true)
	phys:EnableDrag(false)
	phys:SetBuoyancyRatio(0)
	phys:AddAngleVelocity(Vector(math.random(-400,400),math.random(-400,400),math.random(-400,400)))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()

	timer.Simple(2,function() if IsValid(self) then

		self.IsIgnited = true
		VJ_EmitSound(self,"fx/weapon/gren/sg_explode.wav",80)

		self.bullseye = ents.Create("obj_vj_bullseye")
		self.bullseye:SetModel("models/hunter/plates/plate.mdl")
		self.bullseye:SetParent(self)
		self.bullseye:Fire("SetParentAttachment", "bullseye")
		self.bullseye:Spawn()
		self.bullseye:SetNoDraw(true)
		self.bullseye:DrawShadow(false)
		
		if GetConVar("VJ_ToTU_General_NotZombieAllied"):GetInt() == 1 then
			self.bullseye.VJ_NPC_Class = {"CLASS_TOTU"}
		else
			self.bullseye.VJ_NPC_Class = {"CLASS_ZOMBIE"}
		end
		self:DeleteOnRemove(self.bullseye)

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