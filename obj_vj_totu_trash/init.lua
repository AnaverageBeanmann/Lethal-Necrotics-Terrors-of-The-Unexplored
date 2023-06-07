AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {""}
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ENT.RemoveOnHit = false
ENT.PaintDecalOnCollide = false
ENT.CollideCodeWithoutRemoving = true
ENT.DoesDirectDamage = true
ENT.DirectDamage = math.random(5,10)
ENT.DirectDamageType = DMG_CLUB
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ENT.SoundTbl_Startup = {"npc/zombie/claw_miss1.wav",
	"npc/zombie/claw_miss2.wav"}
-- ENT.SoundTbl_Idle = {"npc/therock/cinderblock_flying.mp3"}
ENT.SoundTbl_OnCollide = {"physics/plastic/plastic_box_impact_bullet1.wav",
	"physics/plastic/plastic_box_impact_bullet2.wav",
	"physics/plastic/plastic_box_impact_bullet3.wav",
	"physics/plastic/plastic_box_impact_bullet4.wav",
	"physics/plastic/plastic_box_impact_bullet5.wav",
	"physics/plastic/plastic_box_impact_hard1.wav",
	"physics/plastic/plastic_box_impact_hard2.wav",
	"physics/plastic/plastic_box_impact_hard3.wav",
	"physics/plastic/plastic_box_impact_hard4.wav"}
ENT.SoundTbl_OnRemove = {"physics/plastic/plastic_box_break1.wav",
	"physics/plastic/plastic_barrel_impact_bullet1.wav",
	"physics/plastic/plastic_barrel_impact_bullet2.wav",
	"physics/plastic/plastic_barrel_impact_bullet3.wav"}
	
ENT.NextSoundTime_Idle = VJ_Set(0.001,0.001)

ENT.IdleSoundLevel = 70
ENT.OnRemoveSoundLevel = 75

ENT.StartupSoundPitch = VJ_Set(125, 150)

ENT.ToTU_Trash_Type = 0
-- 0 = wood
-- 1 = plastic
-- 2 = metal
-- 3 = glass
-- 4 = ceramic
-- 5 = fleshy
-- 6 = can
-- 7 = cardboard
-- 8 = concrete
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:Wake()
	phys:SetMass(1)
	phys:SetBuoyancyRatio(0)
	phys:EnableDrag(false)
	phys:AddAngleVelocity(Vector(math.random(-400,400),math.random(-400,400),math.random(-400,400)))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPreInitialize()

	local RandGarbage = math.random(1,6)
	
	if RandGarbage == 1 then
		self.ToTU_Trash_Type = 5
		self.Model = {
			"models/gibs/hgibs.mdl",
			"models/gibs/hgibs_rib.mdl",
			"models/gibs/hgibs_scapula.mdl",
			"models/gibs/hgibs_spine.mdl",
		}
	elseif RandGarbage == 2 then
		self.ToTU_Trash_Type = 2
		self.Model = {
			"models/gibs/manhack_gib01.mdl",
			"models/gibs/manhack_gib03.mdl",
			"models/gibs/manhack_gib04.mdl",
			"models/gibs/manhack_gib05.mdl",
			"models/gibs/manhack_gib06.mdl",
			"models/gibs/metal_gib1.mdl",
			"models/gibs/metal_gib2.mdl",
			"models/gibs/metal_gib3.mdl",
			"models/gibs/metal_gib4.mdl",
			"models/gibs/metal_gib5.mdl",
			"models/props_borealis/door_wheel001a.mdl",
			"models/props_c17/canisterchunk01a.mdl",
			"models/props_c17/gaspipes006a.mdl",
			"models/props_c17/grinderclamp01a.mdl",
			"models/props_c17/handrail04_cap.mdl",
			"models/props_c17/lamp_standard_off01.mdl",
			"models/props_c17/light_cagelight01_on.mdl",
			"models/props_c17/light_cagelight02_off.mdl",
			"models/props_c17/light_cagelight02_on.mdl",
			"models/props_c17/metalpot001a.mdl",
			"models/props_c17/metalpot002a.mdl",
			"models/props_c17/oildrumchunk01c.mdl",
			"models/props_c17/oildrumchunk01d.mdl",
			"models/props_c17/oildrumchunk01e.mdl",
			"models/props_c17/pipe_cap003.mdl",
			"models/props_c17/playground_teetertoter_stan.mdl",
			"models/props_c17/streetsign001c.mdl",
			"models/props_c17/streetsign002b.mdl",
			"models/props_c17/streetsign003b.mdl",
			"models/props_c17/streetsign004e.mdl",
			"models/props_c17/streetsign004f.mdl",
			"models/props_c17/streetsign005b.mdl",
			"models/props_c17/streetsign005c.mdl",
			"models/props_c17/streetsign005d.mdl",
			"models/props_c17/tools_pliers01a.mdl",
			"models/props_c17/tools_wrench01a.mdl",
			"models/props_c17/trappropeller_lever.mdl",
			"models/props_c17/tv_monitor01.mdl",
			"models/props_c17/utilityconducter001.mdl",
			"models/props_c17/utilityconnecter003.mdl",
			"models/props_c17/utilityconnecter005.mdl",
			"models/props_c17/utilityconnecter006.mdl",
			"models/props_canal/mattpipe.mdl",
			"models/props_canal/winch02d.mdl",
			"models/props_citizen_tech/firetrap_button01a.mdl",
			"models/props_citizen_tech/firetrap_buttonpad.mdl"
		}
	elseif RandGarbage == 3 then
		self.Model = {
			"models/gibs/wood_gib01c.mdl",
			"models/gibs/wood_gib01d.mdl",
			"models/gibs/furniture_gibs/furniture_vanity01a_gib01.mdl",
			"models/gibs/furniture_gibs/furnituredrawer002a_gib06.mdl",
			"models/gibs/furniture_gibs/furnituredrawer002a_gib07.mdl",
			"models/gibs/furniture_gibs/furnituretable001a_chunk02.mdl",
			"models/gibs/furniture_gibs/furnituretable001a_chunk05.mdl",
			"models/gibs/furniture_gibs/furnituretable002a_chunk01.mdl",
			"models/gibs/furniture_gibs/furnituretable002a_chunk02.mdl",
			"models/gibs/furniture_gibs/furnituretable002a_chunk03.mdl",
			"models/gibs/furniture_gibs/furnituretable002a_chunk08.mdl",
			"models/gibs/furniture_gibs/furnituretable003a_gib01.mdl",
			"models/gibs/furniture_gibs/furnituretable003a_gib05.mdl",
			"models/gibs/furniture_gibs/furniturewooddrawer003a_chunk01.mdl",
			"models/gibs/furniture_gibs/furniturewooddrawer003a_chunk02.mdl",
			"models/items/item_item_crate_chunk01.mdl",
			"models/items/item_item_crate_chunk02.mdl",
			"models/items/item_item_crate_chunk06.mdl",
			"models/items/item_item_crate_chunk08.mdl",
			"models/props_c17/frame002a.mdl",
			"models/props_c17/furniturechair001a.mdl",
			"models/props_c17/furniturechair001a_chunk01.mdl",
			"models/props_c17/furniturechair001a_chunk02.mdl",
			"models/props_c17/furnituredrawer001a_chunk02.mdl",
			"models/props_c17/furnitureshelf001b.mdl",
			"models/props_c17/playground_swingset_seat01a.mdl",
			"models/props_c17/playgroundtick-tack-toe_block01a.mdl",
		}
	elseif RandGarbage == 4 then
		self.ToTU_Trash_Type = 6
		self.Model = {
			"models/props_junk/garbage_metalcan001a.mdl",
			"models/props_junk/garbage_metalcan002a.mdl",
			"models/props_junk/PopCan01a.mdl"
		}
	elseif RandGarbage == 5 then
		self.ToTU_Trash_Type = 3
		self.Model = {
			"models/props_junk/garbage_coffeemug001a.mdl",
			"models/props_junk/garbage_glassbottle001a.mdl",
			"models/props_junk/garbage_glassbottle002a.mdl",
			"models/props_junk/garbage_glassbottle003a.mdl",
			"models/props_junk/GlassBottle01a.mdl",
			"models/props_junk/glassjug01.mdl"
		}
	elseif RandGarbage == 6 then
		self.ToTU_Trash_Type = 1
		self.Model = {
			"models/items/car_battery01.mdl",
			"models/props_c17/clock01.mdl",
			"models/props_c17/computer01_keyboard.mdl",
			"models/props_c17/doll01.mdl",
			"models/props_c17/suitcase001a.mdl",
			"models/props_c17/suitcase_passenger_physics.mdl"
		}
	elseif RandGarbage == 7 then
		self.ToTU_Trash_Type = 7
		self.Model = {
			"models/props_c17/briefcase001a.mdl",
			"models/props_c17/lampshade001a.mdl",
			"models/props_junk/garbage_glassbottle002a.mdl",
			"models/props_junk/garbage_glassbottle003a.mdl",
			"models/props_junk/GlassBottle01a.mdl",
			"models/props_junk/glassjug01.mdl"
		}
	elseif RandGarbage == 8 then
		self.ToTU_Trash_Type = 8
		self.Model = {
			"models/props_debris/concrete_cynderblock001.mdl",
			"models/props_c17/lampshade001a.mdl",
			"models/props_junk/garbage_glassbottle002a.mdl",
			"models/props_junk/garbage_glassbottle003a.mdl",
			"models/props_junk/GlassBottle01a.mdl",
			"models/props_junk/glassjug01.mdl"
		}
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()

     if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
        self.RadiusDamage = 5	 
     elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
        self.RadiusDamage = 10	 
     elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
        self.RadiusDamage = math.random(5,10)
     elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
        self.RadiusDamage = 20
     elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
        self.RadiusDamage = 25
	end

	self:SetSkin(math.random(0,99))
	if self.ToTU_Trash_Type == 0 then
		self.SoundTbl_OnCollide = {
			"physics/wood/wood_box_impact_hard1.wav",
			"physics/wood/wood_box_impact_hard2.wav",
			"physics/wood/wood_box_impact_hard3.wav"
		}
		self.SoundTbl_OnRemove = {
			"physics/wood/wood_plank_break1.wav",
			"physics/wood/wood_plank_break2.wav",
			"physics/wood/wood_plank_break3.wav",
			"physics/wood/wood_plank_break4.wav"
		}
	end
	if self.ToTU_Trash_Type == 1 then
		self.SoundTbl_OnCollide = {
			"physics/plastic/plastic_box_impact_hard1.wav",
			"physics/plastic/plastic_box_impact_hard2.wav",
			"physics/plastic/plastic_box_impact_hard3.wav",
			"physics/plastic/plastic_box_impact_hard4.wav"
		}
		self.SoundTbl_OnRemove = {
			"physics/plastic/plastic_box_break1.wav",
			"physics/plastic/plastic_barrel_impact_bullet1.wav",
			"physics/plastic/plastic_barrel_impact_bullet2.wav",
			"physics/plastic/plastic_barrel_impact_bullet3.wav"
		}
	end
	if self.ToTU_Trash_Type == 2 then
		self.SoundTbl_OnCollide = {
			"physics/metal/metal_solid_impact_hard1.wav",
			"physics/metal/metal_solid_impact_hard4.wav",
			"physics/metal/metal_solid_impact_hard5.wav"
		}
		self.SoundTbl_OnRemove = {
			"physics/metal/metal_box_break1.wav",
			"physics/metal/metal_box_break2.wav"
		}
	end
	if self.ToTU_Trash_Type == 3 then
		self.SoundTbl_OnRemove = {
			"physics/glass/glass_bottle_break1.wav",
			"physics/glass/glass_bottle_break2.wav",
			"physics/glass/glass_cup_break1.wav",
			"physics/glass/glass_cup_break2.wav"
		}
		self.RemoveOnHit = true
	end
	if self.ToTU_Trash_Type == 4 then
	end
	if self.ToTU_Trash_Type == 5 then
		self.SoundTbl_OnCollide = {
			"physics/body/body_medium_impact_hard1.wav",
			"physics/body/body_medium_impact_hard2.wav",
			"physics/body/body_medium_impact_hard3.wav",
			"physics/body/body_medium_impact_hard4.wav",
			"physics/body/body_medium_impact_hard5.wav",
			"physics/body/body_medium_impact_hard6.wav"
		}
		self.SoundTbl_OnRemove = {"physics/flesh/flesh_bloody_break.wav"}
	end
	if self.ToTU_Trash_Type == 6 then
			self.SoundTbl_OnCollide = {"physics/metal/soda_can_impact_hard1.wav",
			"physics/metal/soda_can_impact_hard2.wav",
			"physics/metal/soda_can_impact_hard3.wav"}
			self.SoundTbl_OnRemove = {"physics/metal/metal_solid_impact_soft1.wav",
			"physics/metal/metal_solid_impact_soft2.wav",
			"physics/metal/metal_solid_impact_soft2.wav"}
	end
	if self.ToTU_Trash_Type == 7 then
		self.SoundTbl_OnCollide = {
			"physics/cardboard/cardboard_box_impact_soft1.wav",
			"physics/cardboard/cardboard_box_impact_soft2.wav",
			"physics/cardboard/cardboard_box_impact_soft3.wav",
			"physics/cardboard/cardboard_box_impact_soft4.wav",
			"physics/cardboard/cardboard_box_impact_soft5.wav",
			"physics/cardboard/cardboard_box_impact_soft6.wav",
			"physics/cardboard/cardboard_box_impact_soft7.wav"
		}
		self.SoundTbl_OnRemove = {
			"physics/cardboard/cardboard_box_break1.wav",
			"physics/cardboard/cardboard_box_break2.wav",
			"physics/cardboard/cardboard_box_break3.wav"
		}
	elseif self.ToTU_Trash_Type == 8 then
		self.SoundTbl_OnCollide = {
			"physics/concrete/concrete_block_impact_hard1.wav",
			"physics/concrete/concrete_block_impact_hard2.wav",
			"physics/concrete/concrete_block_impact_hard3.wav"
		}
		self.SoundTbl_OnRemove = {
			"physics/concrete/concrete_break2.wav",
			"physics/concrete/concrete_break3.wav"
		}
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnCollideWithoutRemove(data, phys)

	self.HasIdleSounds = false
	VJ_STOPSOUND(self.CurrentIdleSound)
	self.DoesDirectDamage = false

	timer.Simple(0.5,function() if IsValid(self) then
		self:Remove()
	end end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDoDamage_Direct(data, phys, hitEnt)

	self.HasIdleSounds = false
	VJ_STOPSOUND(self.CurrentIdleSound)
	self.DoesDirectDamage = false

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/