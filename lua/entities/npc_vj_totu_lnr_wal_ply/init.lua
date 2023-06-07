AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_CustomOnPreInitialize()
	self.Model = {"models/totu/theshootpitter.mdl"}
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		-- I'm Too Young To Die
		self.StartHealth = 70
		self.MeleeAttackDamage = math.Rand(1,5)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		-- Hey, Not Too Rough
		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		-- Hurt Me Plenty
		self.StartHealth = 400
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		-- Ultra Violence
		self.StartHealth = 550
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		-- NIGHTMARE!
		self.StartHealth = 1200
		self.MeleeAttackDamage = math.Rand(25,30)

	else

		-- HMP failsafe incase the convar is set to an unsupported number
		self.StartHealth = 400
		self.MeleeAttackDamage = math.Rand(10,15)

	end

	self:SetHealth(self.StartHealth)

	self.TOTU_LNR_LegHP = self.StartHealth * 0.20

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/