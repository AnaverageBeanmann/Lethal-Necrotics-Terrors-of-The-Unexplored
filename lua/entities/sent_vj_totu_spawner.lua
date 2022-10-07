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
	"npc_vj_totu_base_walker:1",
	"npc_vj_totu_base_infected:2",
	"npc_vj_totu_milzomb_walker:2",
	"npc_vj_totu_milzomb_infected:3",
	"npc_vj_totu_milzomb_juggernaut:5",
	"npc_vj_totu_milzomb_bulldozer:9",
	"npc_vj_totu_milzomb_detonator:5",
}
ENT.EntitiesToSpawn = {
	{SpawnPosition = {vForward=20, vRight=0, vUp=0}, Entities = entsList},
	{SpawnPosition = {vForward=0, vRight=50, vUp=0}, Entities = entsList},
	{SpawnPosition = {vForward=50, vRight=50, vUp=0}, Entities = entsList},
	{SpawnPosition = {vForward=50, vRight=-50, vUp=0}, Entities = entsList},
	{SpawnPosition = {vForward=0, vRight=-50, vUp=0}, Entities = entsList},
}
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/