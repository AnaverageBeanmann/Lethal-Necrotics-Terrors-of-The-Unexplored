AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.ToTU_Nightkin_IsKin = true
ENT.ToTU_Nightkin_Shrieker_CanSpawnHelp = false
ENT.ToTU_Nightkin_Shrieker_SpawnCoolDownT = 0
ENT.ToTU_Nightkin_Shrieker_ShriekCoolDownT = 0
ENT.ToTU_Nightkin_Shrieker_CanShriek = true
ENT.ToTU_Nightkin_Shrieker_ShriekRingT = 0
ENT.ToTU_Nightkin_Squaller_HasIronWill = false
ENT.ToTU_Nightkin_Squaller_UsingIronWill = false
ENT.ToTU_Nightkin_Squaller_IronWillDamageResistance = true
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()
		
	self.MeleeAttackBleedEnemy = true
	self.MeleeAttackBleedEnemyChance = 3
	self.MeleeAttackBleedEnemyDamage = 1
	self.MeleeAttackBleedEnemyTime = 1
	self.MeleeAttackBleedEnemyReps = 4
	self.MeleeAttackDamageType = DMG_SLASH
	
	if self:GetClass() == "npc_vj_totu_nightkin_scragg" then
		self.Model = {"models/totu/scragg.mdl"}
	elseif self:GetClass() == "npc_vj_totu_nightkin_skitter" then
		self.Model = {"models/totu/skitter.mdl"}
	elseif self:GetClass() == "npc_vj_totu_nightkin_shrieker" then
		self.Model = {"models/totu/screamer.mdl"}
	elseif self:GetClass() == "npc_vj_totu_nightkin_squaller" then
		self.Model = {"models/totu/squaller.mdl"}
	end
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()

	self:SetBodygroup(6,1)
	self:SetSkin(math.random(0,1))
	self:SetBodygroup(1,math.random(0,1))
	self:SetBodygroup(2,math.random(0,1))
	self:SetBodygroup(3,math.random(0,1))
	
	if self:GetClass() == "npc_vj_totu_nightkin_scragg" then
	
		self:SetCollisionBounds(Vector(12, 13, 68), Vector(-13, -13, 0))
		self:SetKeyValue("rendercolor","255 225 216 255")
		self:SetModelScale(1.13)
		
	elseif self:GetClass() == "npc_vj_totu_nightkin_skitter" then
	
		self:SetCollisionBounds(Vector(12, 13, 68), Vector(-13, -13, 0))
		self:SetModelScale(1.07)
		self:SetKeyValue("rendercolor","198 248 255 255")
		self.ToTU_Rusher = true
		
	elseif self:GetClass() == "npc_vj_totu_nightkin_shrieker" then
	
		self.AnimTbl_MeleeAttack = {"vjseq_nz_sonic_attack_1"}
		self:SetBodygroup(2,0)
		self:SetBodygroup(6,0)
		self:SetKeyValue("rendercolor","198 248 255 255")
		self.MeleeAttackDistance = 10000
		self:SetCollisionBounds(Vector(12, 13, 68), Vector(-13, -13, 0))
		
	elseif self:GetClass() == "npc_vj_totu_nightkin_squaller" then
	
		self:SetCollisionBounds(Vector(12, 13, 68), Vector(-13, -13, 0))
		self:SetModelScale(1.27)
		self:SetBodygroup(6,2)
		self.AnimTbl_Death = {"vjseq_nz_death_fire_1"}
		self.DeathAnimationChance = 1
		self:SetKeyValue("rendercolor","255 187 164 255")
		
		if !self.LNR_Crawler && !self.LNR_Crippled then
			self.AnimTbl_Walk = {ACT_WALK_AIM}
			self.AnimTbl_Run = {ACT_RUN_RELAXED}
			self.ToTU_Rusher = true
			if math.random(1,3) == 1 then
				self.ToTU_Nightkin_Squaller_HasIronWill = true
			end
		end

		if self.ToTU_Nightkin_Squaller_UsingIronWill then
			self.SoundTbl_Breath = {"fx/ironwill_loop.mp3"}
			self.NextSoundTime_Breath = VJ_Set(7,7)
			self.BreathSoundLevel = 65
			self.AnimTbl_Walk = {ACT_SPRINT}
			self.AnimTbl_Run = {ACT_RUN_AIM}
			self.IdleAlwaysWander = true
			self.LNR_SuperSprinter = true
			
			local IronWillLight1 = ents.Create("light_dynamic")
			IronWillLight1:SetKeyValue("brightness", "8")
			IronWillLight1:SetKeyValue("distance", "50")
			IronWillLight1:SetParent(self)
			IronWillLight1:Fire("Color", "16 0 192")
			IronWillLight1:Fire("SetParentAttachment","eyes")
			IronWillLight1:Spawn()
			IronWillLight1:Activate()
			self:DeleteOnRemove(IronWillLight1)

			local IronWillLight2 = ents.Create("light_dynamic")
			IronWillLight2:SetKeyValue("brightness", "8")
			IronWillLight2:SetKeyValue("distance", "50")
			IronWillLight2:SetParent(self)
			IronWillLight2:Fire("Color", "10 0 125")
			IronWillLight2:Fire("SetParentAttachment","chest")
			IronWillLight2:Spawn()
			IronWillLight2:Activate()
			self:DeleteOnRemove(IronWillLight2)

			timer.Simple(12,function() if IsValid(self) then
				self.ToTU_Nightkin_Squaller_IronWillDamageResistance = false
				IronWillLight1:Fire("Kill", "", 0.07)
				IronWillLight2:Fire("Kill", "", 0.07)
				local d = DamageInfo()
				d:SetDamage(self:GetMaxHealth())
				d:SetAttacker(self)
				d:SetDamageType(DMG_GENERIC) 
				self:TakeDamageInfo(d)
			end end)
		end
		
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
	
		self.StartHealth = 100
		self.MeleeAttackDamage = math.Rand(5,10)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
	
		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(10,15)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
	
		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(15,20)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
	
		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(20,25)
		
	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
	
		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(25,30)
		
	end
			
        self:SetHealth(self.StartHealth)	
		
		if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then
		
			if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then
			
				self.LNR_LegHP = 10
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then
			
				self.LNR_LegHP = 25
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then
			
				self.LNR_LegHP = 40
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then
			
				self.LNR_LegHP = 55
				
			elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then
			
				self.LNR_LegHP = 60
				
			end
			
		end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)
	if self:GetClass() == "npc_vj_totu_nightkin_squaller" && self.ToTU_Nightkin_Squaller_UsingIronWill && self.ToTU_Nightkin_Squaller_IronWillDamageResistance then
		dmginfo:ScaleDamage(0.05)
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/