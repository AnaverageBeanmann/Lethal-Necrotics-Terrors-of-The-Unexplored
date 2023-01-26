AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 50
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 100
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(25,30)

	end

	self:SetHealth(self.StartHealth)	

	if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then

		if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

			self.LNR_LegHP = 10

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

			self.LNR_LegHP = 20

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

			self.LNR_LegHP = 30

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

			self.LNR_LegHP = 40

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

			self.LNR_LegHP = 50

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnMeleeAttack_BeforeStartTimer()

	if self.ToTU_Nightkin_Shrieker_CanShriek && !self.LNR_Crippled then

		self.AnimTbl_MeleeAttack = {"vjseq_nz_sonic_attack_1"}
		self.NextMeleeAttackTime = 5
		VJ_EmitSound(self,{"voices/nightkin/shrieker/helpmeambiencebutstereo.mp3"},125,100)
		VJ_EmitSound(self,"voices/nightkin/shrieker/helpme"..math.random(1,2)..".mp3",90,100)

		timer.Simple(5,function() if IsValid(self) && !self.Dead then
			self.MeleeAttackDistance = 40
			self.NextMeleeAttackTime = 0
			self.ToTU_Nightkin_Shrieker_CanShriek = false
			self.ToTU_Nightkin_Shrieker_ShriekCoolDownT = CurTime() + math.random(5,10)
			self.ToTU_Nightkin_Shrieker_CanSpawnHelp = false
		end end)

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()

	if self.MeleeAttacking && self.ToTU_Nightkin_Shrieker_CanShriek then

		if self.ToTU_Nightkin_Shrieker_ShriekRingT < CurTime() && IsValid(self) && !self.Dead then

			effects.BeamRingPoint(self:GetPos(), 0.3, 2, 100, 15, 0, Color(255, 255, 255), {material="sprites/physbeama", framerate=20})
			effects.BeamRingPoint(self:GetPos(), 0.3, 2, 300, 10, 0, Color(255, 255, 255), {material="sprites/physbeama", framerate=20})
			effects.BeamRingPoint(self:GetPos(), 0.3, 2, 500, 5, 0, Color(255, 255, 255), {material="sprites/physbeama", framerate=20})

			local effectData = EffectData()
			effectData:SetOrigin(self:GetPos())
			effectData:SetScale(500)
			util.Effect("ThumperDust", effectData)
			self.ToTU_Nightkin_Shrieker_ShriekRingT = CurTime() + 0.5
			util.VJ_SphereDamage(self, self, pos, 50, 5, DMG_SONIC, true, true, {DisableVisibilityCheck=true, Force=5})
			util.VJ_SphereDamage(self, self, pos, 90, 5, DMG_SONIC, true, true, {DisableVisibilityCheck=true, Force=5})
			util.VJ_SphereDamage(self, self, pos, 150, 5, DMG_SONIC, true, true, {DisableVisibilityCheck=true, Force=5})

		end

		self.ToTU_Nightkin_Shrieker_CanSpawnHelp = true

	else

		self.ToTU_Nightkin_Shrieker_CanSpawnHelp = false

	end

	if self.ToTU_Nightkin_Shrieker_CanSpawnHelp && self.ToTU_Nightkin_Shrieker_SpawnCoolDownT < CurTime() then

		self:ToTU_Nightkin_Shrieker_SummonHelp_Spawn()

	end

	if self.ToTU_Nightkin_Shrieker_ShriekCoolDownT < CurTime() && !self.ToTU_Nightkin_Shrieker_CanShriek && !self.LNR_Crippled then

		self.ToTU_Nightkin_Shrieker_CanShriek = true
		self.MeleeAttackDistance = 10000

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Nightkin_Shrieker_SummonHelp_Spawn()
	if !IsValid(self.KinHelp1) then
		self.KinHelp1 = self:ToTU_Nightkin_Shrieker_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp2) then
		self.KinHelp2 = self:ToTU_Nightkin_Shrieker_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp3) then
		self.KinHelp3 = self:ToTU_Nightkin_Shrieker_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp4) then
		self.KinHelp4 = self:ToTU_Nightkin_Shrieker_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp5) then
		self.KinHelp5 = self:ToTU_Nightkin_Shrieker_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp6) then
		self.KinHelp6 = self:ToTU_Nightkin_Shrieker_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp7) then
		self.KinHelp7 = self:ToTU_Nightkin_Shrieker_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp8) then
		self.KinHelp8 = self:ToTU_Nightkin_Shrieker_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp9) then
		self.KinHelp9 = self:ToTU_Nightkin_Shrieker_SummonHelp()
		return 15
	elseif !IsValid(self.KinHelp10) then
		self.KinHelp10 = self:ToTU_Nightkin_Shrieker_SummonHelp()
		return 15
	
	end
	return 8
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Nightkin_Shrieker_SummonHelp()

	local randnest = math.random(1,100)
	if randnest == 1 then
		self.KinT = "npc_vj_totu_nightkin_shrieker"
	elseif randnest >= 2 && randnest <= 5 then
		self.KinT = "npc_vj_totu_nightkin_scylla"
	elseif randnest >= 6 && randnest <= 15 then
		self.KinT = "npc_vj_totu_nightkin_squaller"
	elseif randnest >= 16 && randnest <= 30 then
		if math.random (1,2) == 1 then
			self.KinT = "npc_vj_totu_nightkin_spitballer"
		else
			self.KinT = "npc_vj_totu_nightkin_skitter"
		end
	else
		self.KinT = "npc_vj_totu_nightkin_scragg"
	end

	local tr = util.TraceLine({
		start = self:GetPos(),
		endpos = self:GetPos() + self:GetForward() * math.Rand(-700, -400) + self:GetRight() * math.Rand(-700, 700) + self:GetUp() * 60,
		filter = {self},
		mask = MASK_ALL,
	})
	local spawnpos = tr.HitPos + tr.HitNormal*300
	local ally = ents.Create(self.KinT)
	ally:SetPos(spawnpos)
	ally:SetAngles(self:GetAngles())
	ally:Spawn()
	ally:Activate()
	ally.VJ_NPC_Class = self.VJ_NPC_Class
	ally:RiseFromGround_Instant()
	self.ToTU_Nightkin_Shrieker_SpawnCoolDownT = CurTime() + 1
	return ally
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/