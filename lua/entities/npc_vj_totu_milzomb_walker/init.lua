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
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()
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

	self.SoundTbl_Idle = {
	"vj_lnrhl2/walker_male/idle1.wav",
	"vj_lnrhl2/walker_male/idle2.wav",
	"vj_lnrhl2/walker_male/idle3.wav",
	"vj_lnrhl2/walker_male/idle4.wav",
	"vj_lnrhl2/walker_male/idle5.wav",
	"vj_lnrhl2/walker_male/idle6.wav",
	"vj_lnrhl2/walker_male/idle7.wav",
	"vj_lnrhl2/walker_male/idle8.wav",
	"vj_lnrhl2/walker_male/idle9.wav",
	"vj_lnrhl2/walker_male/idle10.wav",
	"vj_lnrhl2/walker_male/idle11.wav",
	"vj_lnrhl2/walker_male/idle12.wav",
	"vj_lnrhl2/walker_male/idle13.wav",
	"vj_lnrhl2/walker_male/idle14.wav",
	"vj_lnrhl2/walker_male/idle15.wav",	
	"vj_lnrhl2/walker_male/idle16.wav",
	"vj_lnrhl2/walker_male/idle17.wav",
	"vj_lnrhl2/walker_male/idle18.wav",
	"vj_lnrhl2/walker_male/idle19.wav",
	"vj_lnrhl2/walker_male/idle20.wav"
	}
    self.SoundTbl_Alert = {
	"vj_lnrhl2/walker_male/alert_sham_m_01.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_02.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_03.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_04.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_05.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_06.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_07.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_08.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_09.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_10.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_11.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_12.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_13.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_14.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_15.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_16.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_17.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_18.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_19.wav",
	"vj_lnrhl2/walker_male/alert_sham_m_20.wav",	
	"vj_lnrhl2/walker_male/alert_sham_m_21.wav",
	"vj_lnrhl2/walker_male/alert1.wav",
	"vj_lnrhl2/walker_male/alert2.wav",
	"vj_lnrhl2/walker_male/alert3.wav",
	"vj_lnrhl2/walker_male/alert4.wav",	
	"vj_lnrhl2/walker_male/alert5.wav",
	"vj_lnrhl2/walker_male/alert6.wav",
	"vj_lnrhl2/walker_male/alert7.wav",
	"vj_lnrhl2/walker_male/alert8.wav",
	"vj_lnrhl2/walker_male/alert9.wav",	
	"vj_lnrhl2/walker_male/alert10.wav"		
	}
    self.SoundTbl_CombatIdle = {
	"vj_lnrhl2/walker_male/pursuit_sham_m_01.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_02.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_03.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_04.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_05.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_06.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_07.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_08.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_09.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_10.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_11.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_12.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_13.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_14.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_15.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_16.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_17.wav",
	"vj_lnrhl2/walker_male/pursuit_sham_m_18.wav"
	}
    self.SoundTbl_BeforeMeleeAttack = {
	"vj_lnrhl2/walker_male/attack_sham_m_01.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_02.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_03.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_04.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_05.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_06.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_07.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_08.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_09.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_10.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_11.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_12.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_13.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_14.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_15.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_16.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_17.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_18.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_19.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_20.wav",	
	"vj_lnrhl2/walker_male/attack_sham_m_21.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_22.wav"	
	}
    self.SoundTbl_LeapAttackJump = {
	"vj_lnrhl2/walker_male/attack_sham_m_01.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_02.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_03.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_04.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_05.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_06.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_07.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_08.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_09.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_10.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_11.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_12.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_13.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_14.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_15.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_16.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_17.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_18.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_19.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_20.wav",	
	"vj_lnrhl2/walker_male/attack_sham_m_21.wav",
	"vj_lnrhl2/walker_male/attack_sham_m_22.wav"
	}
    self.SoundTbl_Pain = {
	"vj_lnrhl2/walker_male/pain01.wav",
	"vj_lnrhl2/walker_male/pain02.wav",
	"vj_lnrhl2/walker_male/pain03.wav",
	"vj_lnrhl2/walker_male/pain04.wav",
	"vj_lnrhl2/walker_male/pain05.wav"
	}
    self.SoundTbl_Death = {
	"vj_lnrhl2/walker_male/die01.wav",
	"vj_lnrhl2/walker_male/die02.wav",
	"vj_lnrhl2/walker_male/die03.wav",
	"vj_lnrhl2/walker_male/die04.wav",
	"vj_lnrhl2/walker_male/die05.wav"
	}
	
	self.Model = {"models/totu/milzomb_walker.mdl"}
	
	-- if math.random(1,4) == 1 then
	if math.random(1,4) == 1 then
		self.MilZ_HasFlakSuit = true
	end
	
	
	if math.random(1,3) == 1 then
	-- if math.random(1,1) == 1 then
	-- if math.random(1,1) == 2 then
		self.MilZ_HasGasmask = true
		self:SetBodygroup(4,0)
	
	
    self.SoundTbl_Idle = {
	"vj_lnrhl2/zombine/zombine_idle1.wav",
	"vj_lnrhl2/zombine/zombine_idle2.wav",
	"vj_lnrhl2/zombine/zombine_idle3.wav",
	"vj_lnrhl2/zombine/zombine_idle4.wav"
}
    self.SoundTbl_Alert = {
	"vj_lnrhl2/zombine/zombine_alert1.wav",
	"vj_lnrhl2/zombine/zombine_alert2.wav",
	"vj_lnrhl2/zombine/zombine_alert3.wav",
	"vj_lnrhl2/zombine/zombine_alert4.wav",
	"vj_lnrhl2/zombine/zombine_alert5.wav",
	"vj_lnrhl2/zombine/zombine_alert6.wav",
	"vj_lnrhl2/zombine/zombine_alert7.wav"
}
    self.SoundTbl_CombatIdle = {
	"vj_lnrhl2/zombine/zombine_idle1.wav",
	"vj_lnrhl2/zombine/zombine_idle2.wav",
	"vj_lnrhl2/zombine/zombine_idle3.wav",
	"vj_lnrhl2/zombine/zombine_idle4.wav"
}
	self.SoundTbl_BeforeMeleeAttack = {
	"vj_lnrhl2/zombine/zombine_charge1.wav",
	"vj_lnrhl2/zombine/zombine_charge2.wav"
}
    self.SoundTbl_Pain = {
	"vj_lnrhl2/zombine/zombine_pain1.wav",
	"vj_lnrhl2/zombine/zombine_pain2.wav",
	"vj_lnrhl2/zombine/zombine_pain3.wav",
	"vj_lnrhl2/zombine/zombine_pain4.wav"
}
    self.SoundTbl_Death = {
	"vj_lnrhl2/zombine/zombine_die1.wav",
	"vj_lnrhl2/zombine/zombine_die2.wav"
}
	end
	
	
end -- Mainly used for setting up models etc
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()
	local gear = math.random(1,2)
	if gear == 1 then
		self:SetBodygroup(2,math.random(0,2))
	else
		self:SetBodygroup(2,math.random(4,6))
	end
	
	if self.MilZ_HasFlakSuit == true then
		self:SetBodygroup(2,3)
		-- self:SetMaterial( "models/vj_lnrspecials/lnr/bomber/eyeball_l" ) -- test
	end
	
	if self.MilZ_HasGasmask == true then
		self:SetBodygroup(4,0)
	end
	
	if self.MilZ_HasGasmask == false then
		self:SetBodygroup(4,math.random(1,6))
		if !self.LNR_Biter then
			self:SetBodygroup(1,math.random(0,1))
		end
	end
	
	
	if math.random(1,4) == 1 && !self.LNR_Crawler && !self.LNR_Biter then
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
	
	if math.random(1,10) == 1 && !self.LNR_Crawler && !self.WeHaveAWeapon then
		self.HasRangeAttack = true
		self.RangeAttackEntityToSpawn = "obj_vj_totu_milzgren"
		-- self.RangeAttackEntityToSpawn = "obj_vj_grenade"
		self.RangeAttackAnimationFaceEnemy = true
		self.AnimTbl_RangeAttack = {"vjseq_range_throw"}
		self.RangeDistance = 750 
		self.RangeToMeleeDistance = 1 
		self.RangeAttackAngleRadius = 100
		self.TimeUntilRangeAttackProjectileRelease = 1.6
		self.NextRangeAttackTime = math.random(15,20)
		self.RangeUseAttachmentForPos = true 
		self.RangeUseAttachmentForPosID = "anim_attachment_RH"
		self.RangeAttackPos_Forward = 20
		self.RangeAttackPos_Up = 20
		self.MilZ_Grenades = math.random(1,3)
		
		
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
        self.StartHealth = 65
	    self.MeleeAttackDamage = math.Rand(5,10)	
		self.LNR_LegHP = 15	
     if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(10,15) end		
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then // Normal
        self.StartHealth = 125		
	    self.MeleeAttackDamage = math.Rand(10,15)
     if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(15,20) end
end		
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then // Hard
        self.StartHealth = 175	
	    self.MeleeAttackDamage = math.Rand(15,20)
		self.LNR_LegHP = 35
     if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(20,25) end
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then // Nightmare
        self.StartHealth = 225
	    self.MeleeAttackDamage = math.Rand(20,25)
		self.LNR_LegHP = 45
     if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(25,30) end
end
     if GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then // Apocalypse
        self.StartHealth = 275
	    self.MeleeAttackDamage = math.Rand(25,30) 
		self.LNR_LegHP = 55
     if self.LNR_CanUseWeapon then self.MeleeAttackDamage = math.Rand(30,35) end		
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
    if self:GetActivity() == ACT_WALK or self:GetActivity() == ACT_RUN then
	
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
	self.MilZ_GunAmmo = self.MilZ_GunAmmo + 1
	end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)

	if self.MilZ_HasFlakSuit == true then
		if dmginfo:IsExplosionDamage() then
			dmginfo:ScaleDamage(0.50)
		end
	end
	
	if hitgroup == HITGROUP_HEAD then
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
		
		if hitgroup == HITGROUP_LEFTARM or hitgroup == HITGROUP_RIGHTARM then
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