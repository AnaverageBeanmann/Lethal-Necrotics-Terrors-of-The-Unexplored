AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 350
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 400
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 450
		self.MeleeAttackDamage = math.Rand(25,30)

	else

		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(10,15)

	end

	self:SetHealth(self.StartHealth)	

	self.LNR_LegHP = self.StartHealth * 0.20

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Idle = {
		"ambient/levels/citadel/strange_talk5.wav",
		"ambient/levels/citadel/strange_talk6.wav",
		"ambient/levels/citadel/strange_talk7.wav",
		"ambient/levels/citadel/strange_talk8.wav",
	}

	self.SoundTbl_Alert = {
		"ambient/levels/citadel/strange_talk1.wav",
		"ambient/levels/citadel/strange_talk3.wav",
		"ambient/levels/citadel/strange_talk9.wav",
		"ambient/levels/streetwar/gunship_distant2.wav",
	}

	self.SoundTbl_CombatIdle = {
		"ambient/levels/citadel/strange_talk10.wav",
		"ambient/levels/citadel/strange_talk11.wav",
		"ambient/levels/citadel/strange_talk4.wav",
	}

	self.SoundTbl_BeforeMeleeAttack = {""}

	self.SoundTbl_BeforeRangeAttack = {
		"voices/nightkin/spectre/flesher_see_shriek_01.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_02.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_03.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_04.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_05.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_06.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_07.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_08.mp3"
	}

	self.SoundTbl_RangeAttack = {
		"ambient/levels/citadel/portal_beam_shoot1.wav",
		"ambient/levels/citadel/portal_beam_shoot2.wav",
		"ambient/levels/citadel/portal_beam_shoot3.wav",
		"ambient/levels/citadel/portal_beam_shoot4.wav",
		"ambient/levels/citadel/portal_beam_shoot5.wav",
		"ambient/levels/citadel/portal_beam_shoot6.wav",
	}

	self.SoundTbl_Pain = {""}

    self.SoundTbl_Death = {""}

	self.ToTU_Almanac_VoiceActor = "Flesher (SOMA), Citadel Ambience (Half-Life 2)"

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()

	if self.ToTU_Nightkin_Spectre_HideT < CurTime() then

		if self.ToTU_Nightkin_Spectre_IsRevealed && !self.Dead then

			self:ToTU_Spectre_Hide()
			self.ToTU_Nightkin_Spectre_IsRevealed = false

		else

			self:ToTU_Spectre_RevealSelfJumpscare()
			self.ToTU_Nightkin_Spectre_IsRevealed = true
		
		end

		self.ToTU_Nightkin_Spectre_HideT = CurTime() + math.random(3,10)

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Spectre_RevealSelfJumpscare()

	self.VJ_NoTarget = false
	self:RemoveFlags(FL_NOTARGET)
    self:SetSolid(SOLID_BBOX)
	self.HasMeleeAttack = true
	self.MeleeAttackDamageDistance = 60
	self.HasRangeAttack = true
	self.ToTU_Nightkin_Spectre_HideT = CurTime() + math.random(1,10)

	self:SetMaterial("")
	self:DrawShadow(true)
	self:SetColor(Color(74,117,150,29))
	self:SetRenderMode( RENDERMODE_NORMAL )

	self:ToTU_Spectre_DoWarpEffects()

	self.IdleSoundLevel = 75
	self.AlertSoundLevel = 80
	self.CombatIdleSoundLevel = 80

	self.FootStepSoundLevel = 70
	
	self.LNR_VirusInfection = false
	util.VJ_SphereDamage(self, self, self:GetPos(), 5, 9999, DMG_DISSOLVE, true, true, {Force=100})
	util.VJ_SphereDamage(self, self, self:GetPos()+self:GetUp()*90, 5, 9999, DMG_DISSOLVE, true, true, {Force=100})
	self.LNR_VirusInfection = true

	self.SoundTbl_Idle = {
		"voices/nightkin/spectre/flesher_bark_generic_01.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_02.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_03.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_04.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_05.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_06.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_07.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_08.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_09.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_10.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_11.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_12.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_13.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_14.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_15.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_16.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_21.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_22.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_23.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_25.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_28.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_29.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_30.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_30.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_32.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_33.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_34.mp3"
	}

	self.SoundTbl_Alert = {
		"voices/nightkin/spectre/flesher_see_shriek_01.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_02.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_03.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_04.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_05.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_06.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_07.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_08.mp3"
	}

	self.SoundTbl_CombatIdle = {
		"voices/nightkin/spectre/flesher_searching_01.mp3",
		"voices/nightkin/spectre/flesher_searching_02.mp3",
		"voices/nightkin/spectre/flesher_searching_03.mp3",
		"voices/nightkin/spectre/flesher_searching_04.mp3",
		"voices/nightkin/spectre/flesher_searching_05.mp3",
		"voices/nightkin/spectre/flesher_searching_06.mp3",
		"voices/nightkin/spectre/flesher_searching_07.mp3",
		"voices/nightkin/spectre/flesher_searching_08.mp3",
		"voices/nightkin/spectre/flesher_searching_09.mp3",
		"voices/nightkin/spectre/flesher_searching_10.mp3",
		"voices/nightkin/spectre/flesher_searching_11.mp3"
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"voices/nightkin/spectre/flesher_see_shriek_01.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_02.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_03.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_04.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_05.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_06.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_07.mp3",
		"voices/nightkin/spectre/flesher_see_shriek_08.mp3"
	}

	self.SoundTbl_Pain = {
		"voices/nightkin/spectre/flesher_bark_generic_17.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_18.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_19.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_26.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_27.mp3"
	}

    self.SoundTbl_Death = {
		"voices/nightkin/spectre/flesher_bark_generic_20.mp3",
		"voices/nightkin/spectre/flesher_bark_generic_24.mp3"
	}

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Spectre_Hide()


    self:AddFlags(FL_NOTARGET)
	self.VJ_NoTarget = true
    self:SetSolid(SOLID_NONE)
	self.HasMeleeAttack = false
	self.MeleeAttackDamageDistance = 1
	self.HasRangeAttack = false

	self:SetMaterial("models/shiny")
	self:SetColor(Color(9,10,13,5))
	self:SetRenderMode( RENDERMODE_TRANSCOLOR )
	self:RemoveAllDecals()

	self:ToTU_Spectre_DoWarpEffects()

	self.IdleSoundLevel = 50
	self.AlertSoundLevel = 55
	self.CombatIdleSoundLevel = 55

	self.FootStepSoundLevel = 45

	self.SoundTbl_Idle = {
		"ambient/levels/citadel/strange_talk5.wav",
		"ambient/levels/citadel/strange_talk6.wav",
		"ambient/levels/citadel/strange_talk7.wav",
		"ambient/levels/citadel/strange_talk8.wav",
	}

	self.SoundTbl_Alert = {
		"ambient/levels/citadel/strange_talk1.wav",
		"ambient/levels/citadel/strange_talk3.wav",
		"ambient/levels/citadel/strange_talk9.wav",
		"ambient/levels/streetwar/gunship_distant2.wav",
	}

	self.SoundTbl_CombatIdle = {
		"ambient/levels/citadel/strange_talk10.wav",
		"ambient/levels/citadel/strange_talk11.wav",
		"ambient/levels/citadel/strange_talk4.wav",
	}

	self.SoundTbl_BeforeMeleeAttack = {
		""
	}

	self.SoundTbl_Pain = {
		""
	}

    self.SoundTbl_Death = {
		""
	}

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Spectre_DoWarpEffects()

	effects.BeamRingPoint(self:GetPos(), 0.25, 2, 150, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*15, 0.25, 2, 115, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*30, 0.25, 2, 80, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*45, 0.25, 2, 45, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*60, 0.25, 2, 10, 10, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	
	effects.BeamRingPoint(self:GetPos(), 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*15, 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*30, 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*45, 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})
	effects.BeamRingPoint(self:GetPos()+self:GetUp()*60, 1.03, 2, 50, 35, 0, Color(0, 69, 255), {material="sprites/physgbeamb", framerate=20})

	local bomblight = ents.Create("light_dynamic")
	bomblight:SetKeyValue("brightness", "7")
	bomblight:SetKeyValue("distance", "75")
	bomblight:SetParent(self)
	bomblight:Fire("Color", "0 69 125")
	bomblight:Fire("SetParentAttachment","legs_gib")
	bomblight:Spawn()
	bomblight:Activate()
	bomblight:Fire("Kill", "", 0.4)
	self:DeleteOnRemove(bomblight)

	local bombglow = ents.Create("env_sprite")
	bombglow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
	bombglow:SetKeyValue("scale", "0.75")
	bombglow:SetKeyValue("rendermode","5")
	bombglow:SetKeyValue("rendercolor","0 69 125")
	bombglow:SetKeyValue("spawnflags","1") -- If animated
	bombglow:SetParent(self)
	bombglow:Fire("SetParentAttachment", "legs_gib")
	bombglow:Spawn()
	bombglow:Activate()
	bombglow:Fire("Kill", "", 0.35)
	self:DeleteOnRemove(bombglow)

	VJ_EmitSound(self,"voices/nightkin/spectre/time_glitch_hit_0"..math.random(1,4)..".mp3",80,math.random(100,95))
	self:StopAllCommonSounds()

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomRangeAttackCode_AfterProjectileSpawn(projectile)

	local bomblight = ents.Create("light_dynamic")
	bomblight:SetKeyValue("brightness", "7")
	bomblight:SetKeyValue("distance", "75")
	bomblight:SetParent(self)
	bomblight:Fire("Color", "60 111 146")
	bomblight:Fire("SetParentAttachment","chest")
	bomblight:Spawn()
	bomblight:Activate()
	bomblight:Fire("Kill", "", 0.4)
	self:DeleteOnRemove(bomblight)
	
	local bombglow = ents.Create("env_sprite")
	bombglow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
	bombglow:SetKeyValue("scale", "0.75")
	bombglow:SetKeyValue("rendermode","5")
	bombglow:SetKeyValue("rendercolor","123 173 211")
	bombglow:SetKeyValue("spawnflags","1") -- If animated
	bombglow:SetParent(self)
	bombglow:Fire("SetParentAttachment", "chest")
	bombglow:Spawn()
	bombglow:Activate()
	bombglow:Fire("Kill", "", 0.35)
	self:DeleteOnRemove(bombglow)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)
	if !self.ToTU_Nightkin_Spectre_IsRevealed then
		dmginfo:ScaleDamage(0)
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/