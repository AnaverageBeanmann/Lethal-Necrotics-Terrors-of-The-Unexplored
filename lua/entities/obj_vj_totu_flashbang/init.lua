AddCSLuaFile("shared.lua")
include("shared.lua")
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
ENT.Model = {"models/totu/w_eq_flashbang_thrown.mdl"}
ENT.SoundTbl_Idle = {"fx/weapon/gren/c4_beep1.wav"}

ENT.SoundTbl_OnRemove = {"fx/weapon/gren/flashbang_explode2.wav"}
ENT.SoundTbl_OnCollide = {"fx/weapon/gren/grenade_hit1.wav"}
ENT.IdleSoundLevel = 65
ENT.RemoveOnHit = false
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

	self.IdleSoundPitch = VJ_Set(100, 100)
	self.IdleSoundLevel = 75
	self.NextSoundTime_Idle = VJ_Set(0.9, 0.9)
	timer.Simple(1.5,function() if IsValid(self) then
		self.NextSoundTime_Idle = VJ_Set(0.2, 0.2)
	end end)
	
	util.SpriteTrail(self, 0, Color(255,0,0), true, 15, 15, 0.35, 1/(6+6)*0.5, "VJ_Base/sprites/vj_trial1.vmt")

	timer.Simple(3,function() if IsValid(self) then
		
		self.Light1 = ents.Create("light_dynamic")
		self.Light1:SetKeyValue("brightness", "10")
		self.Light1:SetKeyValue("distance", "500")
		self.Light1:SetLocalPos(self:GetPos() + self:GetUp()*0 + self:GetForward()*0)
		self.Light1:SetLocalAngles(self:GetAngles())
		self.Light1:Fire("Color", "255 255 255")
		self.Light1:SetParent(self)
		self.Light1:Spawn()
		self.Light1:Activate()
		self.Light1:Fire("TurnOn", "", 0)
		self:DeleteOnRemove(self.Light1)
		
		local bombglow = ents.Create("env_sprite")
		bombglow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		bombglow:SetKeyValue("scale", "1")
		bombglow:SetKeyValue("rendermode","5")
		bombglow:SetKeyValue("rendercolor","255 255 255")
		bombglow:SetKeyValue("spawnflags","1") -- If animated
		bombglow:SetLocalPos(self:GetPos() + self:GetUp()*0 + self:GetForward()*0)
		bombglow:SetLocalAngles(self:GetAngles())
		bombglow:SetParent(self)
		bombglow:Spawn()
		bombglow:Activate()
		self:DeleteOnRemove(bombglow)

		local flashorigin = self:GetPos()
		local flashpower = 500
		local targets = ents.FindInSphere(flashorigin, flashpower)
		if not targets then return end
		for _, k in pairs(targets) do
			if k:IsPlayer() then
				local dist = k:EyePos():Distance(flashorigin)
				local dp = (k:EyePos() - flashorigin):Dot(k:EyeAngles():Forward())

				local time = Lerp( dp, 2.5, 0.25 )

				time = Lerp( dist / flashpower, time, 0 )

				/*
				if k:VisibleVec( flashorigin ) then
					k:ScreenFade( SCREENFADE.IN, Color( 255, 255, 255, 255 ), 2.5, time )
				end
				*/
				k:SetDSP( 37, false )

			elseif k:IsNPC() then
				if k.ToTU_IsToTUZombie then
					util.VJ_SphereDamage(self, self, self:GetPos(), 445, 1, DMG_BLAST, true, true)
				else
					local oldflinchchance = k.FlinchChance
					k.FlinchChance = 1
					k.NextFlinchT = 0
					util.VJ_SphereDamage(self, self, self:GetPos(), 445, 1, DMG_BLAST, true, true)
					k.FlinchChance = oldflinchchance
				end
			end
		end

		timer.Simple(0.1,function() if IsValid(self) then
			self:Remove()
		end end)

	end end)

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