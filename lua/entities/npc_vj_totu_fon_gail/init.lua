AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_GlowEyes_Give()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 100
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 4500
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(25,30)

	else

		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(10,15)

	end

	self:SetHealth(self.StartHealth)

	self.LNR_LegHP = self.StartHealth * 0.20
	self.ToTU_Weaponized_Gail_DamageTillHeal = self.StartHealth * 0.10

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)
	if self.ToTU_Weaponized_Gail_DamageTillHeal >= 0 && !self.ToTU_Weaponized_Gail_CanHeal then
		self.ToTU_Weaponized_Gail_DamageTillHeal = self.ToTU_Weaponized_Gail_DamageTillHeal -dmginfo:GetDamage()
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/