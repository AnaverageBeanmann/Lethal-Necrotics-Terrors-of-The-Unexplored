AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.LNR_Walker = true
ENT.LNR_Infected = false
ENT.AnimTbl_Walk = {ACT_WALK}
ENT.AnimTbl_Run = {ACT_WALK_CROUCH_AIM}
ENT.LNR_Runner = true
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Ghille_Walker_StartCrawling()

	self.CanTurnWhileStationary = false
	
	if self.LNR_Walker then
		self.AnimTbl_IdleStand = {ACT_CROUCHIDLE}
		self.AnimTbl_Walk = {ACT_WALK_CROUCH_AIM}
		self.AnimTbl_Run = {ACT_WALK_CROUCH_AIM}
	end
	
	-- self:SetCollisionBounds(Vector(13,13,26),Vector(-13,-11,0))
	
	self.VJC_Data = {
	CameraMode = 1, 
	ThirdP_Offset = Vector(30, 25, -20), 
	FirstP_Bone = "ValveBiped.Bip01_Head1", 
	FirstP_Offset = Vector(5, 0, -1), 
}	

	self:CapabilitiesRemove(bit.bor(CAP_MOVE_JUMP))
	self:CapabilitiesRemove(bit.bor(CAP_MOVE_CLIMB))
	self.HasDeathAnimation = false
	self.MilZ_Ghille_Walker_PlayChangeStateAnim = 2
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Ghille_Walker_GetTheUp()

	self.CanTurnWhileStationary = true
	
	if self.LNR_Walker then	 
		self.AnimTbl_IdleStand = {ACT_IDLE}
		if self.LNR_UsingRelaxedIdle == true then
			self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
		end
		self.AnimTbl_Walk = {ACT_WALK}
		self.AnimTbl_Run = {ACT_WALK}
		if self.LNR_Runner == true then
			self.AnimTbl_Run = {ACT_RUN}
		end
	end

	-- self:SetCollisionBounds(Vector(13, 13, 70), Vector(-13, -13, 0))
	
	self.VJC_Data = {
	CameraMode = 1,
	ThirdP_Offset = Vector(40, 20, -50),
	FirstP_Bone = "ValveBiped.Bip01_Head1",
	FirstP_Offset = Vector(0, 0, 5),
}

	self.HasDeathAnimation = true
	self.MilZ_Ghille_Walker_PlayChangeStateAnim = 1
	
	if GetConVar("VJ_LNR_JumpClimb"):GetInt() == 0 or self.LNR_Crawler or self.LNR_Crippled then return end
	
	self:CapabilitiesAdd(bit.bor(CAP_MOVE_JUMP))
	self:CapabilitiesAdd(bit.bor(CAP_MOVE_CLIMB))
	
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/