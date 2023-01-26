AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
	
		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(15,20)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
	
		self.StartHealth = 500
		self.MeleeAttackDamage = math.Rand(20,25)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
	
		self.StartHealth = 750
		self.MeleeAttackDamage = math.Rand(25,30)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
	
		self.StartHealth = 1000
		self.MeleeAttackDamage = math.Rand(35,40)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
	
		self.StartHealth = 1250
		self.MeleeAttackDamage = math.Rand(40,45)
		
	end
			
        self:SetHealth(self.StartHealth)	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RangeAttackCode_GetShootPos(projectile)
	
	if self:GetSequence() == self:LookupSequence("ThrowWarning") then
	return (self:GetEnemy():GetPos() - self:LocalToWorld(Vector(80,0,0)))*2.5 + self:GetUp()*120
	end
	if self:GetSequence() == self:LookupSequence("releasecrab") then
	return (self:GetEnemy():GetPos() - self:LocalToWorld(Vector(math.random(-200,100),math.random(50,-50),math.random(-100,100)))) + self:GetUp()*120
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomRangeAttackCode_AfterProjectileSpawn(projectile)
	if GetConVar("VJ_ToTU_Weaponized_Cyst_HurtOnRanged"):GetInt() == 1 then
	local d = DamageInfo()
	d:SetDamage(math.random(25,30))
	d:SetAttacker(self)
	d:SetDamageType(DMG_GENERIC) 
	self:TakeDamageInfo(d)
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/