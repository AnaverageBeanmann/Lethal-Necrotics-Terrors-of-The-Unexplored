AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
	-- ====== Controller Data ====== --
ENT.VJC_Data = {
	CameraMode = 2, -- Sets the default camera mode | 1 = Third Person, 2 = First Person
	ThirdP_Offset = Vector(30, 25, -50), -- The offset for the controller when the camera is in third person
	FirstP_Bone = "ValveBiped.Bip01_Head1", -- If left empty, the base will attempt to calculate a position for first person
	FirstP_Offset = Vector(0, 0, 5), -- The offset for the controller when the camera is in first person
}
-- Custom
ENT.LNR_Gib = false
ENT.LNR_Dismember = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()
	if self:GetClass() == "npc_vj_lnr_wal_ply" then
		self.Model = {
			"models/vj_lnrhl2/misc/breen_walply.mdl",
		}
    end	
end
---------------------------------------------------------------------------------------------------------------------------------------------
/*function ENT:Controller_IntMsg(ply)
	ply:ChatPrint("RELOAD: Respawn and stop playing as the zombie.")
end*/
---------------------------------------------------------------------------------------------------------------------------------------------
/*function ENT:Zombie_CustomOnThink()
      if self.ZombieCont:KeyDown(IN_RELOAD) then
           self:TakeDamage(self:Health())
    end
end*/
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/