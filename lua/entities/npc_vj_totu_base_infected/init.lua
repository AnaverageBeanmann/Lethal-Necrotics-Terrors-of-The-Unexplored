AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.AnimTbl_Walk = {ACT_RUN}
ENT.AnimTbl_Run = {ACT_SPRINT}
---------------------------------------------------------------------------------------------------------------------------------------------
--custom
ENT.LNR_Walker = false
ENT.LNR_Infected = true
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()
	self.Model = {"models/totu/testmonkinf.mdl"}
	
	self.SoundTbl_Idle = {""}
	self.SoundTbl_Alert = {"test/flower_1.mp3"}
	self.SoundTbl_CombatIdle = {""}
	self.SoundTbl_Pain = {"test/flower_2.mp3",
		"test/flower_4.mp3"}
	self.SoundTbl_Death = {"test/flower_3.mp3",
		"test/flower_5.mp3"}
	self.SoundTbl_BeforeMeleeAttack = {""}
end -- Mainly used for setting up models etc
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
     if math.random(1,3) == 1 && !self.LNR_Crawler then 
        self.LNR_UsingRelaxedIdle = true
		self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
end
  if GetConVar("VJ_LNR_SuperSprinter"):GetInt() == 1 then 
     if math.random(1,3) == 1 && !self.LNR_Crawler then 
        self.LNR_SuperSprinter = true
		self.AnimTbl_Walk = {ACT_RUN_AIM}
		self.AnimTbl_Run = {ACT_RUN_AIM}
	end
end
  if GetConVar("VJ_LNR_Crawl"):GetInt() == 1 then
     if math.random(1,5) == 1 && self:GetClass() != "npc_vj_lnr_wal" && self:GetClass() != "npc_vj_lnr_wal_ply" && self:GetClass() != "npc_vj_lnr_corpse_zombie" && self:GetClass() != "npc_vj_lnr_cris" then 
		self.LNR_Crawler = true
		self:Cripple()	
    end	
end	
  if GetConVar("VJ_LNR_GroundRise"):GetInt() == 1 && self:IsDirtGround(self:GetPos()) then
     if math.random(1,5) == 1 && !self.LNR_Crawler && self:GetClass() != "npc_vj_lnr_wal_pm" && self:GetClass() != "npc_vj_lnr_wal" && self:GetClass() != "npc_vj_lnr_wal_ply" && self:GetClass() != "npc_vj_lnr_corpse_zombie" && self:GetClass() != "npc_vj_lnr_cris" then
        self:RiseFromGround()
    end		
end
	 self:Zombie_Difficulty()	
	self:Zombie_CustomOnInitialize()	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize() end -- For additional initialize options
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup) end -- For SNPCs that have armor
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/