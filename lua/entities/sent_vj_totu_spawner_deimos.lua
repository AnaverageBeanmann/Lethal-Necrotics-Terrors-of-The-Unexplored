/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
AddCSLuaFile()

ENT.Base 			= "obj_vj_spawner_base"
ENT.Type 			= "anim"
ENT.PrintName 		= "Random Special Spawner"
ENT.Author 			= "Originally made by Darkborn & King of Pootis, Modified by Bean"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= "To create an outbreak!"
ENT.Instructions 	= "You've Been Infected...I'm terribly sorry.."
ENT.Category		= "Terrors of The Unexplored"

ENT.Spawnable		= false
ENT.AdminSpawnable	= false
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if !SERVER then return end

local entsList = {
	"npc_vj_totu_deimos_redead_sci:1",
	"npc_vj_totu_deimos_carcass_torso:1",
	"npc_vj_totu_deimos_redead:2",
	"npc_vj_totu_deimos_carcass:2",
	"npc_vj_totu_deimos_redead_grunt:2",
	"npc_vj_totu_deimos_cazador_torso:2",
	"npc_vj_totu_deimos_cazador:3",
	"npc_vj_totu_deimos_cyst:3",
	"npc_vj_totu_deimos_corrupt:3",
	"npc_vj_totu_deimos_cancer:3",
	"npc_vj_totu_deimos_corrupt_brute:4",
	-- "npc_vj_totu_deimos_revenant:4",
}
ENT.EntitiesToSpawn = {
	{SpawnPosition = {vForward=0, vRight=0, vUp=0}, Entities = entsList},
}
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/