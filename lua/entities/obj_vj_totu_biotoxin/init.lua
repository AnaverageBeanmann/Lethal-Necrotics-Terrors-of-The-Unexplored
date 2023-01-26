AddCSLuaFile("shared.lua")
include("shared.lua")
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
ENT.Model = {"models/spitball_small.mdl"}
ENT.RemoveOnHit = false
ENT.DecalTbl_DeathDecals = {"VJ_Blood_Oil"}
-- ENT.SoundTbl_Idle = {"vj_acid/acid_idle1.wav"}
ENT.LNR_VirusInfection = true
ENT.LNR_Infected = true
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
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then // Easy
        self.RadiusDamage = 5	 
     elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then // Normal
        self.RadiusDamage = 10	 
     elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then // Hard
        self.RadiusDamage = 15	
     elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then // Nightmare
        self.RadiusDamage = 20
     elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then // Apocalypse
        self.RadiusDamage = 25
end 
	-- ParticleEffectAttach("smoke_exhaust_01", PATTACH_ABSORIGIN_FOLLOW, self, 0) 
	ParticleEffectAttach("smoke_burning_engine_01", PATTACH_ABSORIGIN_FOLLOW, self, 0) 
	self:SetNoDraw(true)
		
		local bombglow = ents.Create("env_sprite")
		bombglow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		bombglow:SetKeyValue("scale", "0.25")
		bombglow:SetKeyValue("rendermode","5")
		bombglow:SetKeyValue("rendercolor","30 30 30")
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
		
	-- self:SetKeyValue("rendercolor","180 180 180 255")
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	-- ParticleEffectAttach("antlion_spit", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	util.VJ_SphereDamage(self, self, self:GetPos(), 100, 1, DMG_NERVEGAS, true, true)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DeathEffects(data,phys)
	local effectdata = EffectData()
	effectdata:SetOrigin(data.HitPos)
	effectdata:SetScale(1)
	-- ParticleEffectAttach("smoke_burning_engine_01", PATTACH_ABSORIGIN_FOLLOW, self, 0) 
	-- util.Effect("StriderBlood",effectdata)
	-- util.Effect("StriderBlood",effectdata)
	-- util.Effect("StriderBlood",effectdata)
	-- ParticleEffect("antlion_gib_02_floaters", data.HitPos, Angle(0,0,0), nil)
	-- ParticleEffect("antlion_gib_01_juice", data.HitPos, Angle(0,0,0), nil)
end