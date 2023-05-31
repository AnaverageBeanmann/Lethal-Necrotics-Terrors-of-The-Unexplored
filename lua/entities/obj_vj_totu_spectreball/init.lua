AddCSLuaFile("shared.lua")
include("shared.lua")
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
ENT.Model = {"models/spitball_large.mdl"}
ENT.DoesRadiusDamage = true
ENT.RadiusDamageRadius = 75
ENT.RadiusDamageUseRealisticRadius = false
ENT.RadiusDamage = 0
ENT.RadiusDamageType = DMG_DISSOLVE
ENT.RadiusDamageForce = -150
ENT.RadiusDamageForce_Up = 0
ENT.DoesDirectDamage = true
ENT.DirectDamage = 100
ENT.DirectDamageType = DMG_DISSOLVE
ENT.SoundTbl_Startup = {"ambient/levels/citadel/portal_beam_shoot5.wav"}
ENT.SoundTbl_Idle = {
	"ambient/levels/citadel/strange_talk1.wav",
	"ambient/levels/citadel/strange_talk10.wav",
	"ambient/levels/citadel/strange_talk11.wav",
	"ambient/levels/citadel/strange_talk3.wav",
	"ambient/levels/citadel/strange_talk4.wav",
	"ambient/levels/citadel/strange_talk5.wav",
	"ambient/levels/citadel/strange_talk6.wav",
	"ambient/levels/citadel/strange_talk7.wav",
	"ambient/levels/citadel/strange_talk8.wav",
	"ambient/levels/citadel/strange_talk9.wav",
}
ENT.SoundTbl_OnRemove = {"ambient/levels/labs/teleport_postblast_thunder1.wav"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:Wake()
	phys:SetMass(1)
	phys:SetBuoyancyRatio(0)
	phys:EnableDrag(true)
	phys:EnableGravity(false)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetNoDraw(true)
		
		local spawnglow = ents.Create("env_sprite")
		spawnglow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		spawnglow:SetKeyValue("scale", "1.25")
		spawnglow:SetKeyValue("rendermode","5")
		spawnglow:SetKeyValue("rendercolor","110 77 127")
		spawnglow:SetKeyValue("spawnflags","1") -- If animated
		spawnglow:SetLocalPos(self:GetPos() + self:GetUp()*0 + self:GetForward()*0)
		spawnglow:SetLocalAngles(self:GetAngles())
		spawnglow:SetParent(self)
		spawnglow:Spawn()
		spawnglow:Activate()
		spawnglow:Fire("Kill", "", 0.5)
		self:DeleteOnRemove(spawnglow)
		
		local bombglow = ents.Create("env_sprite")
		bombglow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		bombglow:SetKeyValue("scale", "0.3")
		bombglow:SetKeyValue("rendermode","5")
		bombglow:SetKeyValue("rendercolor","200 200 200")
		bombglow:SetKeyValue("spawnflags","1") -- If animated
		bombglow:SetLocalPos(self:GetPos() + self:GetUp()*0 + self:GetForward()*0)
		bombglow:SetLocalAngles(self:GetAngles())
		bombglow:SetParent(self)
		bombglow:Spawn()
		bombglow:Activate()
		self:DeleteOnRemove(bombglow)
		
		local bombglow2 = ents.Create("env_sprite")
		bombglow2:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		bombglow2:SetKeyValue("scale", "0.65")
		bombglow2:SetKeyValue("rendermode","5")
		bombglow2:SetKeyValue("rendercolor","5 62 103")
		bombglow2:SetKeyValue("spawnflags","1") -- If animated
		bombglow2:SetLocalPos(self:GetPos() + self:GetUp()*0 + self:GetForward()*0)
		bombglow2:SetLocalAngles(self:GetAngles())
		bombglow2:SetParent(self)
		bombglow2:Spawn()
		bombglow2:Activate()
		self:DeleteOnRemove(bombglow2)
	
	
	self.Light1 = ents.Create("light_dynamic")
	self.Light1:SetKeyValue("brightness", "5")
	self.Light1:SetKeyValue("distance", "200")
	self.Light1:SetLocalPos(self:GetPos() + self:GetUp()*0 + self:GetForward()*0)
	self.Light1:SetLocalAngles(self:GetAngles())
	self.Light1:Fire("Color", "0 111 196")
	self.Light1:SetParent(self)
	self.Light1:Spawn()
	self.Light1:Activate()
	-- self.Light1:Fire("SetParentAttachment","eyes")
	self.Light1:Fire("TurnOn", "", 0)
	self:DeleteOnRemove(self.Light1)
	
	
		timer.Simple(10,function() if IsValid(self) then
				self:Remove()
		end end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	util.VJ_SphereDamage(self, self, self:GetPos(), 75, 1, DMG_DISSOLVE, true, true)
			ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
			ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
			ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DeathEffects(data,phys)
	local bomblight = ents.Create("light_dynamic")
	bomblight:SetKeyValue("brightness", "7")
	bomblight:SetKeyValue("distance", "75")
	bomblight:SetParent(self)
	bomblight:Fire("Color", "0 69 125")
	bomblight:Fire("SetParentAttachment","legs_gib")
	bomblight:Spawn()
	bomblight:Activate()
	bomblight:Fire("Kill", "", 0.4)
	self:DeleteOnRemove(bomblight)
			ParticleEffectAttach("electrical_arc_01_system",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
			ParticleEffectAttach("electrical_arc_01_system",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
			ParticleEffectAttach("electrical_arc_01_system",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
			ParticleEffectAttach("electrical_arc_01_system",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
			ParticleEffectAttach("electrical_arc_01_system",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("origin"))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
	effects.BeamRingPoint(self:GetPos(), 0.25, 2, 150, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*15, 0.25, 2, 115, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*30, 0.25, 2, 80, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*45, 0.25, 2, 45, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*60, 0.25, 2, 10, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	
	effects.BeamRingPoint(self:GetPos(), 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*15, 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*30, 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*45, 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*60, 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	
	util.VJ_SphereDamage(self, self, self:GetPos(), 75, 100, DMG_DISSOLVE, true, true)
	
end
---------------------------------------------------------------------------------------------------------------------------------------------