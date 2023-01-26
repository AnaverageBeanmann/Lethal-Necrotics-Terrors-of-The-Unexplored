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
-- function ENT:RangeAttackCode_GetShootPos(projectile)
	-- return (self:GetEnemy():GetPos() - self:LocalToWorld(Vector(80,0,0)))*3.5 + self:GetUp()*40
-- end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/