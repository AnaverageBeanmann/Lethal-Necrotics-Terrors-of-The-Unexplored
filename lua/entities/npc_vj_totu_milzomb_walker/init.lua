AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.HasItemDropsOnDeath = true 
-- ENT.ItemDropsOnDeathChance = 1
ENT.ItemDropsOnDeathChance = 4
ENT.MilZ_HasGasmask = false
ENT.MilZ_HasFlakSuit = false
ENT.MilZ_HasKnife = false
ENT.MilZ_CanShuutDeGun = false
ENT.MilZ_HasGun = false
ENT.MilZ_GunAmmo = 0
ENT.MilZ_HasGrenades = false
ENT.MilZ_Grenades = 0
ENT.MilZ_IsMilZ = true
ENT.MilZ_HelmetHealth = 1
ENT.MilZ_HelmetBroken = false
ENT.MilZ_Det_Faceplate_Health = 1
ENT.MilZ_Det_Faceplate_Broken = false
ENT.MilZ_Det_DeathExplosionAllowed = false
ENT.MilZ_Det_Beep_BeepT = 0
ENT.MilZ_Det_Beep_CanBeep = true
ENT.MilZ_Det_Faceplate_StartingHP = 1
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()

	self.MilZ_HelmetHealth = GetConVar("VJ_ToTU_MilZ_Helmet_Health"):GetInt()
	
	self.MilZ_Det_Faceplate_Health = GetConVar("VJ_ToTU_MilZ_Det_Faceplate_Health"):GetInt()
	self.MilZ_Det_Faceplate_StartingHP = GetConVar("VJ_ToTU_MilZ_Det_Faceplate_Health"):GetInt()
	
	if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
		self.MilZ_HelmetHealth = GetConVar("VJ_ToTU_MilZ_Helmet_Health"):GetInt() * 3
	end
	
	self.ItemDropsOnDeath_EntityList = {"item_ammo_pistol",
		"item_ammo_pistol",
		"item_ammo_357",
		"item_ammo_smg1",
		"item_ammo_ar2",
		"item_ammo_ar2",
		"item_box_buckshot",
		"weapon_frag",
		"item_healthvial",
		"item_battery"}
		
	self.SoundTbl_Breath = {"ambient/levels/prison/radio_random1.wav",
		"ambient/levels/prison/radio_random2.wav",
		"ambient/levels/prison/radio_random3.wav",
		"ambient/levels/prison/radio_random4.wav",
		"ambient/levels/prison/radio_random5.wav",
		"ambient/levels/prison/radio_random6.wav",
		"ambient/levels/prison/radio_random7.wav",
		"ambient/levels/prison/radio_random8.wav",
		"ambient/levels/prison/radio_random9.wav",
		"ambient/levels/prison/radio_random10.wav",
		"ambient/levels/prison/radio_random11.wav",
		"ambient/levels/prison/radio_random12.wav",
		"ambient/levels/prison/radio_random13.wav",
		"ambient/levels/prison/radio_random14.wav"}
		
	self.NextSoundTime_Breath = VJ_Set(7,20)
	
	
	if math.random(1,4) == 1 then
		self.SoundTbl_Breath = {"zombies/military/radio/1/radio_1.mp3",
		"zombies/military/radio/1/radio_2.mp3",
		"zombies/military/radio/1/radio_3.mp3",
		"zombies/military/radio/1/radio_4.mp3",
		"zombies/military/radio/1/radio_5.mp3",
		"zombies/military/radio/1/radio_6.mp3",
		"zombies/military/radio/1/radio_7.mp3",
		"zombies/military/radio/1/radio_8.mp3",
		"zombies/military/radio/1/radio_9.mp3"}
	end		
	
	if math.random(1,7) == 1 then
		self.SoundTbl_Breath = {"zombies/military/radio/2/beep.mp3",
		"zombies/military/radio/2/radio_1.mp3",
		"zombies/military/radio/2/radio_2.mp3",
		"zombies/military/radio/2/radio_3.mp3",
		"zombies/military/radio/2/radio_4.mp3",
		"zombies/military/radio/2/radio_5.mp3",
		"zombies/military/radio/2/radio_6.mp3",
		"zombies/military/radio/2/radio_7.mp3",
		"zombies/military/radio/2/radio_8.mp3",
		"zombies/military/radio/2/radio_9.mp3",
		"zombies/military/radio/2/radio_10.mp3",
		"zombies/military/radio/2/radio_11.mp3",
		"zombies/military/radio/2/radio_12.mp3",
		"zombies/military/radio/2/radio_13.mp3",
		"zombies/military/radio/2/radio_14.mp3",
		"zombies/military/radio/2/radio_15.mp3",
		"zombies/military/radio/2/radio_16.mp3",
		"zombies/military/radio/2/radio_17.mp3",
		"zombies/military/radio/2/radio_18.mp3",
		"zombies/military/radio/2/radio_19.mp3",
		"zombies/military/radio/2/radio_20.mp3",
		"zombies/military/radio/2/radio_21.mp3",
		"zombies/military/radio/2/radio_22.mp3",
		"zombies/military/radio/2/radio_23.mp3",
		"zombies/military/radio/2/radio_24.mp3",
		"zombies/military/radio/2/radio_25.mp3",
		"zombies/military/radio/2/radio_26.mp3",
		"zombies/military/radio/2/radio_27.mp3",
		"zombies/military/radio/2/radio_28.mp3"}
	end	
	
	if self:GetClass() == "npc_vj_totu_milzomb_walker" then
	
		self.Model = {"models/totu/milzomb_walker.mdl"}
		
	
	elseif self:GetClass() == "npc_vj_totu_milzomb_infected" then
		self.Model = {"models/totu/milzomb_infected.mdl"}
		self:SetSkin(1)
		
	end
	if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" then
		self.Model = {"models/totu/juggernaut.mdl"}
		elseif self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
		self.Model = {"models/totu/bulldozer.mdl"}
		end
		self:SetSkin(math.random(0,2))
		
self.AnimTbl_Death = {"vjseq_death_04"}
self.DeathAnimationChance = 1

self.HasMeleeAttackKnockBack = true
self.MeleeAttackKnockBack_Forward1 = 150
self.MeleeAttackKnockBack_Forward2 = 175
self.MeleeAttackKnockBack_Up1 = 75
self.MeleeAttackKnockBack_Up2 = 100
	self:SetModelScale(1.25)
self.HasWorldShakeOnMove = true
self.WorldShakeOnMoveAmplitude = 1
self.MeleeAttackDistance = 50
self.MeleeAttackDamageDistance = 70
-- self.MeleeAttackWorldShakeOnMiss = true -- Should it shake the world when it misses during melee attack?
-- self.MeleeAttackWorldShakeOnMissAmplitude = 16 -- How much the screen will shake | From 1 to 16, 1 = really low 16 = really high
-- self.MeleeAttackWorldShakeOnMissRadius = 2000 -- How far the screen shake goes, in world units
-- self.MeleeAttackWorldShakeOnMissDuration = 1 -- How long the screen shake will last, in seconds
-- self.MeleeAttackWorldShakeOnMissFrequency = 100 -- Just leave it to 100
	
self.VJ_IsHugeMonster = true
		
	end
	
	if self:GetClass() == "npc_vj_totu_milzomb_detonator" then
		self.Model = {"models/totu/detonator.mdl"}
	end
	
	-- if math.random(1,4) == 1 then
	if math.random(1,GetConVar("VJ_ToTU_MilZ_FlakArmor_Chance"):GetInt()) == 1 && GetConVar("VJ_ToTU_MilZ_FlakArmor_Allow"):GetInt() == 1 && self:GetClass() != "npc_vj_totu_milzomb_detonator" then
		self.MilZ_HasFlakSuit = true
	end
	
	
	if math.random(1,GetConVar("VJ_ToTU_MilZ_Gasmasks_Chance"):GetInt()) == 1 && self:GetClass() != "npc_vj_totu_milzomb_bulldozer" && GetConVar("VJ_ToTU_MilZ_Gasmasks_Allow"):GetInt() == 1  && self:GetClass() != "npc_vj_totu_milzomb_detonator" then
		self.MilZ_HasGasmask = true
	

	end
	
	if self:GetClass() == "npc_vj_totu_milzomb_detonator" then
	-- test
		-- VJ_EmitSound(self,{"fx/detonator_preexplode.mp3"},100,math.random(100,100))
	
			-- self.bobbomb = ents.Create("prop_physics")	
			-- self.bobbomb:SetModel("models/totu/detonator_bomb.mdl")
			-- self.bobbomb:SetLocalPos(self:GetPos())
			-- self.bobbomb:SetLocalAngles(self:GetAngles())			
			-- self.bobbomb:SetOwner(self)
			-- self.bobbomb:SetParent(self)
			-- self.bobbomb:Fire("SetParentAttachmentMaintainOffset","legs_gib")
			-- self.bobbomb:Fire("SetParentAttachment","bobomb")
			-- self.bobbomb:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
			-- self.bobbomb:Spawn()
			-- self.bobbomb:Activate()
			-- self.bobbomb:SetSolid(SOLID_NONE)
			-- self.bobbomb:AddEffects(EF_BONEMERGE)	
			
			-- /*
			
			self.bobm = ents.Create("prop_physics")	
			self.bobm:SetModel("models/totu/detonator_bomb.mdl")
			self.bobm:SetLocalPos(self:GetPos())
			self.bobm:SetLocalAngles(self:GetAngles())			
			self.bobm:SetOwner(self)
			self.bobm:SetParent(self)
			self.bobm:Fire("SetParentAttachmentMaintainOffset","bofuckingbombfuckyou")
			self.bobm:Fire("SetParentAttachment","bobomb")
			self.bobm:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
			self.bobm:Spawn()
			self.bobm:Activate()
			self.bobm:SetSolid(SOLID_NONE)
			-- self.bobm:AddEffects(EF_BONEMERGE)	

			-- */

	end
	
end -- Mainly used for setting up models etc
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()
	if self:GetClass() == "npc_vj_totu_milzomb_detonator" then return end
	local gear = math.random(1,2)
	if self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
	if gear == 1 then
		self:SetBodygroup(1,math.random(0,2))
	else
		self:SetBodygroup(1,math.random(4,6))
	end
	else
	if gear == 1 then
		self:SetBodygroup(2,math.random(0,2))
	else
		self:SetBodygroup(2,math.random(4,6))
	end
	end
	
	if math.random(1,4) == 1 then
	if self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
		self:SetBodygroup(2,1)
	else
		self:SetBodygroup(3,1)
	end
	end
	
	if self.MilZ_HasFlakSuit == true then
	if self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
		self:SetBodygroup(1,3)
	else
		self:SetBodygroup(2,3)
		-- self:SetMaterial( "models/vj_lnrspecials/lnr/bomber/eyeball_l" ) -- test
		end
	end
	
	if self.MilZ_HasGasmask == true then
		self:SetBodygroup(4,0)
	end
	
	if self.MilZ_HasGasmask == false && self:GetClass() != "npc_vj_totu_milzomb_bulldozer" then
		self:SetBodygroup(4,math.random(1,6))
		if !self.LNR_Biter then
			self:SetBodygroup(1,math.random(0,1))
		end
	end
	
	if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
	self:SetCollisionBounds(Vector(13, 13, 70), Vector(-13, -13, 0))
	end
	
	if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then return end
	
	if math.random(1,GetConVar("VJ_ToTU_MilZ_Weapons_Chance"):GetInt()) == 1 && !self.LNR_Crawler && !self.LNR_Biter then
	-- if math.random(1,1) == 1 && !self.LNR_Crawler && !self.LNR_Biter then
		-- self.MilZ_HasKnife = true
		self:ZombieWeapons()
		-- self.MeleeAttackBleedEnemy = true -- Should the enemy bleed when attacked by melee?
		-- self.MeleeAttackBleedEnemyChance = 3 -- Chance that the enemy bleeds | 1 = always
		-- self.MeleeAttackBleedEnemyDamage = 1 -- How much damage per repetition
		-- self.MeleeAttackBleedEnemyTime = 1 -- How much time until the next repetition?
		-- self.MeleeAttackBleedEnemyReps = 4 -- How many repetitions?
	end
	
	-- timer.Simple(1,function() if IsValid(self) then
	-- if self.MilZ_HasGasmask == true && self.MilZ_HasFlakSuit == true && self:GetBodygroup(2) == 0 then
		-- self:SetBodygroup(2,3)
	-- end
	-- end
	-- end)
	
	if GetConVar("VJ_ToTU_MilZ_Grenades"):GetInt() == 1 then
	
	if math.random(1,GetConVar("VJ_ToTU_MilZ_Grenades_Chance"):GetInt()) == 1 && !self.LNR_Crawler && !self.MilZ_CanShuutDeGun then
		self.HasRangeAttack = true
		self.RangeAttackEntityToSpawn = "obj_vj_totu_milzgren"
		-- self.RangeAttackEntityToSpawn = "obj_vj_grenade"
		self.RangeAttackAnimationFaceEnemy = true
		self.AnimTbl_RangeAttack = {"vjseq_throw_right"}
		self.RangeDistance = 750 
		self.RangeToMeleeDistance = 1 
		self.RangeAttackAngleRadius = 100
		self.TimeUntilRangeAttackProjectileRelease = 1.6
		self.NextRangeAttackTime = math.random(15,20)
		self.RangeUseAttachmentForPos = true 
		self.RangeUseAttachmentForPosID = "anim_attachment_RH"
		self.RangeAttackPos_Forward = 20
		self.RangeAttackPos_Up = 20
		
		if GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() == -1 then
			self.MilZ_Grenades = math.random(1,3)
		elseif GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() == 0 then
			-- i mean what did you expect?
			self.MilZ_Grenades = 0
			self.HasRangeAttack = false
		elseif GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() != -1 then
			self.MilZ_Grenades = GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt()
		end
		
		if self.MilZ_HasKnife or self.MilZ_HasGun then
		self.AnimTbl_RangeAttack = {"vjseq_throw_left"}
		self.RangeUseAttachmentForPosID = "anim_attachment_LH"
		end
		end
		
		
-- ENT.RangeDistance = 1200 
-- ENT.RangeToMeleeDistance = 350 
		
		-- if self.LNR_Crawler then
			-- self.AnimTbl_RangeAttack = {"vjseq_crawl_attack2"}
		-- end
	end
	
	
end -- For additional initialize options
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then // Easy
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
			self.StartHealth = 250
			self.MeleeAttackDamage = math.Rand(20,25)	
		if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then
			self.LNR_LegHP = 125	
		end
		else
			self.StartHealth = 65
			self.MeleeAttackDamage = math.Rand(5,10)	
		if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then
			self.LNR_LegHP = 15	
		end
		end
     -- if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(10,15) end		
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then // Normal
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
			self.StartHealth = 750
			self.MeleeAttackDamage = math.Rand(25,30)	
		if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then
			self.LNR_LegHP = 150	
		end
		else
        self.StartHealth = 125		
	    self.MeleeAttackDamage = math.Rand(10,15)
		end
     -- if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(15,20) end
end		
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then // Hard
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
			self.StartHealth = 1250
			self.MeleeAttackDamage = math.Rand(30,35)	
		if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then
			self.LNR_LegHP = 175
		end	
		else
        self.StartHealth = 175	
	    self.MeleeAttackDamage = math.Rand(15,20)
		if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then
		self.LNR_LegHP = 35
		end
		end
     -- if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(20,25) end
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then // Nightmare
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
			self.StartHealth = 1750
			self.MeleeAttackDamage = math.Rand(35,40)	
		if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then
			self.LNR_LegHP = 200
		end	
		else
        self.StartHealth = 225
	    self.MeleeAttackDamage = math.Rand(20,25)
		if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then
		self.LNR_LegHP = 45
		end
		end
     -- if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(25,30) end
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then // Apocalypse
		if self:GetClass() == "npc_vj_totu_milzomb_juggernaut" or self:GetClass() == "npc_vj_totu_milzomb_bulldozer" then
			self.StartHealth = 2250
			self.MeleeAttackDamage = math.Rand(40,45)
		if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then	
			self.LNR_LegHP = 250	
		end
		else
        self.StartHealth = 275
	    self.MeleeAttackDamage = math.Rand(25,30) 
		if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then
		self.LNR_LegHP = 55
		end
		end
     -- if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(30,35) end		
end	
        self:SetHealth(self.StartHealth)	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRangeAttack_AfterStartTimer(seed)
	if self.MilZ_CanShuutDeGun == true then return end
	if self.MilZ_Grenades == 1 or self.MilZ_Grenades > 1 then
		self.MilZ_Grenades = self.MilZ_Grenades - 1
	end
	if self.MilZ_Grenades < 1 then
		self.HasRangeAttack = false
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RangeAttackCode_GetShootPos(projectile)
	if self.MilZ_CanShuutDeGun == true then return end
	return (self:GetEnemy():GetPos() - self:LocalToWorld(Vector(80,0,0)))*2 + self:GetUp()*120
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomRangeAttackCode()
	if self.MilZ_HasGun == false or self.MilZ_CanShuutDeGun == false then return end
    if self:GetActivity() == ACT_WALK_PISTOL or self:GetActivity() == ACT_RUN_PISTOL or self:GetActivity() == ACT_RUN_AIM_PISTOL then
	
	if self.MilZ_GunAmmo == 18 or self.MilZ_GunAmmo > 18 then
		VJ_EmitSound(self, "vj_weapons/dryfire_pistol.wav", 70, 100)
	end

	if self.MilZ_GunAmmo > 0 and self.MilZ_GunAmmo < 18 then
	local bullet = {}
		bullet.Num = 1
		bullet.Src = self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos
		bullet.Dir = (self:GetEnemy():GetPos()+self:GetEnemy():OBBCenter()+self:GetEnemy():GetUp()*-45) -self:GetPos()
		bullet.Spread = Vector(50,40,30)
		bullet.Tracer = 1
		bullet.TracerName = "Tracer"
		bullet.Force = 5
		bullet.Damage = math.random(5,10)
		bullet.AmmoType = "SMG1"
	    self:FireBullets(bullet)
		VJ_EmitSound(self, "vj_weapons/glock_17/glock17_single.wav", 100, 100)
		
	local flash = ents.Create("env_muzzleflash")
		flash:SetPos(self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos)
		flash:SetKeyValue("scale","1")
		flash:SetKeyValue("angles",tostring(self:GetForward():Angle()))
		flash:Fire("Fire",0,0)

	local FireLight1 = ents.Create("light_dynamic")
		FireLight1:SetKeyValue("brightness", "4")
		FireLight1:SetKeyValue("distance", "120")
		FireLight1:SetPos(self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos)
		FireLight1:SetLocalAngles(self:GetAngles())
		FireLight1:Fire("Color", "255 150 60")
		FireLight1:SetParent(self)
		FireLight1:Spawn()
		FireLight1:Activate()
		FireLight1:Fire("TurnOn","",0)
		FireLight1:Fire("Kill","",0.07)
		self:DeleteOnRemove(FireLight1)
		
	local effectData = EffectData()
		-- effectData:SetOrigin(self:GetAttachment(self:LookupAttachment("anim_attachment_RH")).Pos)
		effectData:SetOrigin(self:GetPos())
		-- effectData:SetScale(500)
		util.Effect("ShellEject", effectData)
		if GetConVar("VJ_ToTU_MilZ_ShootableGun_Bullets_Infinite"):GetInt() == 0 then
		self.MilZ_GunAmmo = self.MilZ_GunAmmo + 1
		end
	end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)
	if GetConVar("VJ_ToTU_General_Armor_Allow"):GetInt() == 0 then	return end

	if self.MilZ_HasFlakSuit == true then
		if dmginfo:IsExplosionDamage() then
			dmginfo:ScaleDamage(0.50)
		end
	end
	
	if hitgroup == HITGROUP_GENERIC && (dmginfo:IsDamageType(DMG_CLUB) or dmginfo:IsDamageType(DMG_SLASH) or dmginfo:IsDamageType(DMG_GENERIC)) then
		-- didn't hit a bodygroup, assume they sometimes hit the armor
		-- don't run this for houndeyes and stuff
		if math.random(1,3) != 1 then
		dmginfo:ScaleDamage(0.30)
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"player/bhit_helmet-1.wav",70) end
		end
	end
	
	if hitgroup == HITGROUP_HEAD && self:GetClass() != "npc_vj_totu_milzomb_bulldozer" && !self.MilZ_HelmetBroken then
	
	if GetConVar("VJ_ToTU_MilZ_Helmet_Breakable"):GetInt() == 1 then
		self.MilZ_HelmetHealth = self.MilZ_HelmetHealth -dmginfo:GetDamage()
	
	if self.MilZ_HelmetHealth <= 0 && !self.MilZ_HelmetBroken then
		self.MilZ_HelmetBroken = true
		-- VJ_EmitSound(self,{"physics/metal/metal_box_break1.wav","physics/metal/metal_box_break2.wav"},70)
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/wood/wood_box_break1.wav","physics/wood/wood_box_break2.wav"},70) end
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/plastic/plastic_box_break1.wav","physics/plastic/plastic_box_break2.wav"},70) end
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/wood/wood_strain2.wav","physics/wood/wood_strain3.wav","physics/wood/wood_strain4.wav"},70) end
		self:RemoveAllDecals()
		
			local spark = ents.Create("env_spark")
			spark:SetKeyValue("Magnitude","1")
			spark:SetKeyValue("Spark Trail Length","1")
			spark:SetPos(dmginfo:GetDamagePosition())
			spark:SetAngles(self:GetAngles())
			spark:SetParent(self)
			spark:Spawn()
			spark:Activate()
			spark:Fire("StartSpark","",0)
			spark:Fire("StopSpark","",0.001)
			self:DeleteOnRemove(spark)
			
		if self.MilZ_HasGasmask then
			self:SetBodygroup(4,8)
		else
			self:SetBodygroup(4,7)
		end
			self.Bleeds = true
		return
	end
	end
	
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"player/bhit_helmet-1.wav",70) end
		self.Bleeds = false
		if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) or dmginfo:IsDamageType(DMG_SLASH) or dmginfo:IsDamageType(DMG_CLUB) then
		-- if dmginfo:IsDamageType(DMG_CLUB) then
		-- dmginfo:ScaleDamage(0.00)
			dmginfo:ScaleDamage(0.005)
			
			local spark = ents.Create("env_spark")
			spark:SetKeyValue("Magnitude","1")
			spark:SetKeyValue("Spark Trail Length","1")
			spark:SetPos(dmginfo:GetDamagePosition())
			spark:SetAngles(self:GetAngles())
			spark:SetParent(self)
			spark:Spawn()
			spark:Activate()
			spark:Fire("StartSpark","",0)
			spark:Fire("StopSpark","",0.001)
			self:DeleteOnRemove(spark)
		end
	end
	
	if hitgroup == HITGROUP_CHEST or hitgroup == HITGROUP_STOMACH then
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"player/bhit_helmet-1.wav",70) end
		-- if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"vo/k_lab/ba_pissinmeoff.wav",70) end
		self.Bleeds = true
		if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) or dmginfo:IsDamageType(DMG_SLASH) then
			if math.random(1,3) == 1 then
				dmginfo:ScaleDamage(0.15)
			
				local spark = ents.Create("env_spark")
				spark:SetKeyValue("Magnitude","1")
				spark:SetKeyValue("Spark Trail Length","1")
				spark:SetPos(dmginfo:GetDamagePosition())
				spark:SetAngles(self:GetAngles())
				spark:SetParent(self)
				spark:Spawn()
				spark:Activate()
				spark:Fire("StartSpark","",0)
				spark:Fire("StopSpark","",0.001)
				self:DeleteOnRemove(spark)
			
			else
				dmginfo:ScaleDamage(0.25)
			end
		end
		if dmginfo:IsDamageType(DMG_CLUB) then
			dmginfo:ScaleDamage(0.30)
		end		
	end
		
		if self.MilZ_HasFlakSuit == false then return end
		
		if hitgroup == HITGROUP_LEFTARM or hitgroup == HITGROUP_RIGHTARM or hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then
			if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"player/kevlar"..math.random(1,5)..".wav",70) end
			self.Bleeds = true
			if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) or dmginfo:IsDamageType(DMG_SLASH) then
				if math.random(1,3) == 1 then
				dmginfo:ScaleDamage(0.25)
			
				local spark = ents.Create("env_spark")
				spark:SetKeyValue("Magnitude","1")
				spark:SetKeyValue("Spark Trail Length","1")
				spark:SetPos(dmginfo:GetDamagePosition())
				spark:SetAngles(self:GetAngles())
				spark:SetParent(self)
				spark:Spawn()
				spark:Activate()
				spark:Fire("StartSpark","",0)
				spark:Fire("StopSpark","",0.001)
				self:DeleteOnRemove(spark)
			else
				dmginfo:ScaleDamage(0.50)
			end	
		elseif dmginfo:IsDamageType(DMG_CLUB) then
				dmginfo:ScaleDamage(0.85)
			end	
		end
		-- end
	end
-- end
-- end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/