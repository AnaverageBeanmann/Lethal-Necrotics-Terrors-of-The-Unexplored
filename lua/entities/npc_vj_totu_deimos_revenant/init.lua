AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_CustomOnPreInitialize()

	self.Model = {"models/totu/revenant.mdl"}

	timer.Simple(0.1,function() if IsValid(self) && !self.LNR_Crippled then
		self.AnimTbl_Walk = {ACT_MP_MELEE_GRENADE1_IDLE}
		self.AnimTbl_Run = {ACT_RUN}
		self.AnimTbl_IdleStand = {ACT_IDLE_AIM_STIMULATED}
		if self.LNR_UsingRelaxedIdle == true then
			self.AnimTbl_IdleStand = {ACT_IDLE}
		end
	end end)

	self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(3,10)	

	self.CanEat = false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()

	self:SetBodygroup(1,math.random(2,12))
	self:SetBodygroup(2,math.random(0,2))

	if self.DisableFindEnemy == true then
		timer.Simple(1.4,function() if IsValid(self) then
			self:Zombie_GlowEyes_Give()
		end end)
	else
		self:Zombie_GlowEyes_Give()
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_GlowEyes_Give()

	if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 0 or GetConVar("vj_npc_noidleparticle"):GetInt() == 1 then return end

	local TrailColor = Color(220,0,255,255)

	if self:GetBodygroup(1) == 2 or self:GetBodygroup(1) == 3 then
		for i = 1,2 do	
			local att = i == 2 && "eyeglow_van1" or "eyeglow_van2"		
			local EyeGlow = ents.Create("env_sprite")
			EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
			EyeGlow:SetKeyValue("scale","0.02")
			EyeGlow:SetKeyValue("rendermode","5")
			EyeGlow:SetKeyValue("rendercolor","220 0 255 255")
			EyeGlow:SetKeyValue("spawnflags","1") 
			EyeGlow:SetParent(self)
			EyeGlow:Fire("SetParentAttachment",att,0)
			EyeGlow:Spawn()
			EyeGlow:Activate()
			self:DeleteOnRemove(EyeGlow)
		end

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local EyeTrail = util.SpriteTrail(self,8,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,9,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

	if self:GetBodygroup(1) == 4 or self:GetBodygroup(1) == 10 then
		for i = 1,2 do	
			local att = i == 2 && "eyeglow_eric1" or "eyeglow_eric2"		
			local EyeGlow = ents.Create("env_sprite")
			EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
			EyeGlow:SetKeyValue("scale","0.02")
			EyeGlow:SetKeyValue("rendermode","5")
			EyeGlow:SetKeyValue("rendercolor","220 0 255 255")
			EyeGlow:SetKeyValue("spawnflags","1") 
			EyeGlow:SetParent(self)
			EyeGlow:Fire("SetParentAttachment",att,0)
			EyeGlow:Spawn()
			EyeGlow:Activate()
			self:DeleteOnRemove(EyeGlow)
		end

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local EyeTrail = util.SpriteTrail(self,10,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,11,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

	if self:GetBodygroup(1) == 5 or self:GetBodygroup(1) == 11 then
		for i = 1,2 do	
			local att = i == 2 && "eyeglow_art1" or "eyeglow_art2"		
			local EyeGlow = ents.Create("env_sprite")
			EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
			EyeGlow:SetKeyValue("scale","0.02")
			EyeGlow:SetKeyValue("rendermode","5")
			EyeGlow:SetKeyValue("rendercolor","220 0 255 255")
			EyeGlow:SetKeyValue("spawnflags","1") 
			EyeGlow:SetParent(self)
			EyeGlow:Fire("SetParentAttachment",att,0)
			EyeGlow:Spawn()
			EyeGlow:Activate()
			self:DeleteOnRemove(EyeGlow)
		end

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local EyeTrail = util.SpriteTrail(self,12,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,13,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

	if self:GetBodygroup(1) == 6 or self:GetBodygroup(1) == 12 then
	
		local EyeGlow = ents.Create("env_sprite")
		EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		EyeGlow:SetKeyValue("scale","0.02")
		EyeGlow:SetKeyValue("rendermode","5")
		EyeGlow:SetKeyValue("rendercolor","220 0 255 255")
		EyeGlow:SetKeyValue("spawnflags","1") 
		EyeGlow:SetParent(self)
		EyeGlow:Fire("SetParentAttachment","eyeglow_ted",0)
		EyeGlow:Spawn()
		EyeGlow:Activate()
		self:DeleteOnRemove(EyeGlow)

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local EyeTrail = util.SpriteTrail(self,14,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

	if self:GetBodygroup(1) == 7 then
		for i = 1,2 do	
			local att = i == 2 && "eyeglow_mike1" or "eyeglow_mike2"		
			local EyeGlow = ents.Create("env_sprite")
			EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
			EyeGlow:SetKeyValue("scale","0.02")
			EyeGlow:SetKeyValue("rendermode","5")
			EyeGlow:SetKeyValue("rendercolor","220 0 255 255")
			EyeGlow:SetKeyValue("spawnflags","1") 
			EyeGlow:SetParent(self)
			EyeGlow:Fire("SetParentAttachment",att,0)
			EyeGlow:Spawn()
			EyeGlow:Activate()
			self:DeleteOnRemove(EyeGlow)
		end

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local EyeTrail = util.SpriteTrail(self,15,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,16,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

	if self:GetBodygroup(1) == 8 then
		for i = 1,2 do	
			local att = i == 2 && "eyeglow_vance1" or "eyeglow_vance2"		
			local EyeGlow = ents.Create("env_sprite")
			EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
			EyeGlow:SetKeyValue("scale","0.02")
			EyeGlow:SetKeyValue("rendermode","5")
			EyeGlow:SetKeyValue("rendercolor","220 0 255 255")
			EyeGlow:SetKeyValue("spawnflags","1") 
			EyeGlow:SetParent(self)
			EyeGlow:Fire("SetParentAttachment",att,0)
			EyeGlow:Spawn()
			EyeGlow:Activate()
			self:DeleteOnRemove(EyeGlow)
		end

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local EyeTrail = util.SpriteTrail(self,17,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
			local EyeTrail2 = util.SpriteTrail(self,18,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

	if self:GetBodygroup(1) == 9 then
	
		local EyeGlow = ents.Create("env_sprite")
		EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		EyeGlow:SetKeyValue("scale","0.02")
		EyeGlow:SetKeyValue("rendermode","5")
		EyeGlow:SetKeyValue("rendercolor","220 0 255 255")
		EyeGlow:SetKeyValue("spawnflags","1") 
		EyeGlow:SetParent(self)
		EyeGlow:Fire("SetParentAttachment","eyeglow_erdim",0)
		EyeGlow:Spawn()
		EyeGlow:Activate()
		self:DeleteOnRemove(EyeGlow)

		if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
			local EyeTrail = util.SpriteTrail(self,19,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		end
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 350
		self.MeleeAttackDamage = math.Rand(25,30)

	else

		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(10,15)

	end

	self:SetHealth(self.StartHealth)

	self.LNR_LegHP = self.StartHealth * 0.20

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/