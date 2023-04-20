AddCSLuaFile("shared.lua")
include("shared.lua")
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
ENT.Model = {"models/props_junk/GlassBottle01a.mdl"}
ENT.SoundTbl_Startup = {"ambient/fire/mtov_flame2.wav"}
ENT.SoundTbl_Idle = {"ambient/fire/fire_small1.wav"}
ENT.SoundTbl_OnCollide = {
		"weapons/molotov/molotov_detonate_1.wav",
		"weapons/molotov/molotov_detonate_2.wav",
		"weapons/molotov/molotov_detonate_3.wav",
		"weapons/molotov/molotov_detonate_4.wav"
	}
ENT.SoundTbl_OnRemove = {"ambient/fire/ignite.wav"}
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

	ParticleEffectAttach("fire_small_01", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	ParticleEffectAttach("fire_small_02", PATTACH_ABSORIGIN_FOLLOW, self, 0)

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

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	-- ParticleEffectAttach("antlion_spit", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
	local carproj = ents.Create("obj_vj_totu_molotov_flame")
	carproj:SetPos(self:LocalToWorld(Vector(0,0,0)))
	carproj:SetAngles(Angle(math.random(0,360),math.random(0,360),math.random(0,360)))
	carproj:SetOwner(self)
	carproj:Spawn()
	carproj:Activate()
end