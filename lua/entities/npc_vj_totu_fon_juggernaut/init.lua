AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
	
		self.StartHealth = 4000
		self.MeleeAttackDamage = math.Rand(30,35)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
	
		self.StartHealth = 5000
		self.MeleeAttackDamage = math.Rand(35,40)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
	
		self.StartHealth = 6000
		self.MeleeAttackDamage = math.Rand(40,45)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
	
		self.StartHealth = 7000
		self.MeleeAttackDamage = math.Rand(45,50)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
	
		self.StartHealth = 8000
		self.MeleeAttackDamage = math.Rand(50,55)
		
	end
			
        self:SetHealth(self.StartHealth)	
		
		-- if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then
		
			-- if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
			
				-- self.LNR_LegHP = 100
				
			-- elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
			
				-- self.LNR_LegHP = 150
				
			-- elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
			
				-- self.LNR_LegHP = 200
				
			-- elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
			
				-- self.LNR_LegHP = 250
				
			-- elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
			
				-- self.LNR_LegHP = 300
				
			-- end
			
		-- end
end 
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/