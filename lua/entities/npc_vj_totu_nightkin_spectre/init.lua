AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 75
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 125
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 175
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 225
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 275
		self.MeleeAttackDamage = math.Rand(25,30)

	else

		self.StartHealth = 125
		self.MeleeAttackDamage = math.Rand(10,15)

	end

	self:SetHealth(self.StartHealth)	

	if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then

		if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

			self.LNR_LegHP = 15

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

			self.LNR_LegHP = 25

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

			self.LNR_LegHP = 35

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

			self.LNR_LegHP = 45

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

			self.LNR_LegHP = 55

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()

	if self.ToTU_Nightkin_Spectre_HideT < CurTime() then
		if self.ToTU_Nightkin_Spectre_IsRevealed then
		self.ToTU_Nightkin_Spectre_IsRevealed = false
		self:ToTU_Spectre_Hide()
		else
		self:ToTU_Spectre_RevealSelfJumpscare()
		self.ToTU_Nightkin_Spectre_IsRevealed = true
		
		end
		self.ToTU_Nightkin_Spectre_HideT = CurTime() + math.random(3,10)
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Spectre_RevealSelfJumpscare()

	self.ToTU_Nightkin_Spectre_IsRevealed = true
	self:SetMaterial("")
	self:DrawShadow(true)
	self.VJ_NoTarget = false
	self:RemoveFlags(FL_NOTARGET)
    self:SetSolid(SOLID_BBOX)
	self.HasMeleeAttack = true
	self:SetColor(Color(74,117,150,29))
	self:SetRenderMode( RENDERMODE_NORMAL )
	self.ToTU_Nightkin_Spectre_HideT = CurTime() + math.random(1,10)

	VJ_EmitSound(self,"voices/nightkin/spectre/time_glitch_hit_0"..math.random(1,4)..".mp3",80,math.random(100,95))

	effects.BeamRingPoint(self:GetPos(), 1.03, 2, 200, 1000, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*15, 1.02, 2, 200, 15, 0, Color(0, 69, 125), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*30, 0.9, 2, 200, 15, 0, Color(0, 69, 125), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*45, 0.6, 2, 200, 15, 0, Color(0, 69, 125), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*60, 0.5, 2, 200, 15, 0, Color(0, 69, 125), {material="sprites/physgbeamb", framerate=20})

	self.IdleSoundLevel = 75
	self.BeforeMeleeAttackSoundLevel = 75
	self.AlertSoundLevel = 80
	self.CombatIdleSoundLevel = 80
	self.DeathSoundLevel = 80
	self.PainSoundLevel = 80

	self.FootStepSoundLevel = 70
	
	util.VJ_SphereDamage(self, self, self:GetPos(), 5, 9999, DMG_SONIC, true, true, {Force=100})
	-- util.VJ_SphereDamage(self, self, self:GetPos()+self:GetUp()*15, 5, 9999, DMG_SONIC, true, true, {Force=100})
	-- util.VJ_SphereDamage(self, self, self:GetPos()+self:GetUp()*30, 5, 9999, DMG_SONIC, true, true, {Force=100})
	util.VJ_SphereDamage(self, self, self:GetPos()+self:GetUp()*90, 5, 9999, DMG_SONIC, true, true, {Force=100})
				self.MeleeAttackDamageDistance = 60

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Spectre_Hide()

	effects.BeamRingPoint(self:GetPos(), 1.03, 2, 200, 1000, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*15, 1.02, 2, 200, 15, 0, Color(0, 69, 125), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*30, 0.9, 2, 200, 15, 0, Color(0, 69, 125), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*45, 0.6, 2, 200, 15, 0, Color(0, 69, 125), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*60, 0.5, 2, 200, 15, 0, Color(0, 69, 125), {material="sprites/physgbeamb", framerate=20})

	VJ_EmitSound(self,"voices/nightkin/spectre/time_glitch_hit_0"..math.random(1,4)..".mp3",80,math.random(100,95))
self:StopAllCommonSounds()
	self.IdleSoundLevel = 45
	self.BeforeMeleeAttackSoundLevel = 45
	self.AlertSoundLevel = 50
	self.CombatIdleSoundLevel = 50
	self.DeathSoundLevel = 50
	self.PainSoundLevel = 50

	self.FootStepSoundLevel = 45
	self:SetMaterial("models/shiny")
	self:SetColor(Color(9,10,13,5))
	self:SetRenderMode( RENDERMODE_TRANSCOLOR )

    self:SetSolid(SOLID_NONE)
    self:AddFlags(FL_NOTARGET)
	self.HasMeleeAttack = false
			self:RemoveAllDecals()
			self.MeleeAttackDamageDistance = 1
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnMeleeAttack_BeforeStartTimer(seed)
	if !self.ToTU_Nightkin_Spectre_IsRevealed then
		-- self:ToTU_Spectre_RevealSelfJumpscare()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)
	if !self.ToTU_Nightkin_Spectre_IsRevealed then
		dmginfo:ScaleDamage(0)
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/