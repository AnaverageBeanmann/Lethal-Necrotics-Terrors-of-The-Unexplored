AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.ToTU_Nightkin_IsKin = true
ENT.ToTU_Nightkin_Shrieker_CanSpawnHelp = false
ENT.ToTU_Nightkin_Shrieker_SpawnCoolDownT = 0
ENT.ToTU_Nightkin_Shrieker_ShriekCoolDownT = 0
ENT.ToTU_Nightkin_Shrieker_CanShriek = true
ENT.ToTU_Nightkin_Shrieker_ShriekRingT = 0
ENT.ToTU_Nightkin_Shrieker_OriginalBehavior = false
ENT.ToTU_Nightkin_Squaller_HasIronWill = false
ENT.ToTU_Nightkin_Squaller_UsingIronWill = false
ENT.ToTU_Nightkin_Squaller_IronWillDamageResistance = true
ENT.ToTU_Nightkin_Skitter_PlayChangeStateAnim = 1
ENT.ToTU_Nightkin_Skitter_PlayChangeStateAnimT = CurTime()
ENT.ToTU_Nightkin_Spectre_IsRevealed = false
ENT.ToTU_Nightkin_Spectre_HideT = 0
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()

	if GetConVar("VJ_ToTU_Nightkin_General_Bleed"):GetInt() == 1 then
		self.MeleeAttackBleedEnemy = true
		self.MeleeAttackBleedEnemyChance = 3
		self.MeleeAttackBleedEnemyDamage = 1
		self.MeleeAttackBleedEnemyTime = 1
		self.MeleeAttackBleedEnemyReps = 4
		self.MeleeAttackDamageType = DMG_SLASH
	end

	if self:GetClass() == "npc_vj_totu_nightkin_scragg" then
		self.Model = {"models/totu/scragg.mdl"}
	elseif self:GetClass() == "npc_vj_totu_nightkin_skitter" then
		self.Model = {"models/totu/skitter.mdl"}
	elseif self:GetClass() == "npc_vj_totu_nightkin_shrieker" then
		self.Model = {"models/totu/shrieker.mdl"}
		if GetConVar("VJ_ToTU_Nightkin_Shrieker_OriginalBehavior"):GetInt() == 1 then
			self.ToTU_Nightkin_Shrieker_OriginalBehavior = true
			self.MeleeAttackDistance = 185
		end
	elseif self:GetClass() == "npc_vj_totu_nightkin_squaller" then
		self.Model = {"models/totu/squaller.mdl"}
	elseif self:GetClass() == "npc_vj_totu_nightkin_spitballer" then
		self.Model = {"models/totu/scourge.mdl"}
	elseif self:GetClass() == "npc_vj_totu_nightkin_scylla" then
		self.Model = {"models/totu/scylla.mdl"}
	elseif self:GetClass() == "npc_vj_totu_nightkin_spectre" then
		self.Model = {"models/totu/spectre.mdl"}
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()

	self:SetBodygroup(6,1)
	self:SetSkin(math.random(0,3))
	self:SetBodygroup(1,math.random(0,1))
	self:SetBodygroup(2,math.random(0,1))
	self:SetBodygroup(3,math.random(0,1))

	if self:GetClass() == "npc_vj_totu_nightkin_scragg" then

		self:SetCollisionBounds(Vector(12, 13, 68), Vector(-13, -13, 0))
		self:SetKeyValue("rendercolor","255 225 216 255")
		self:SetModelScale(1.13)

	elseif self:GetClass() == "npc_vj_totu_nightkin_skitter" then

		self:SetCollisionBounds(Vector(12, 13, 68), Vector(-13, -13, 0))
		self:SetModelScale(1.07)
		self:SetKeyValue("rendercolor","198 248 255 255")
		self.ToTU_Rusher = true

	elseif self:GetClass() == "npc_vj_totu_nightkin_shrieker" then

		self.AnimTbl_MeleeAttack = {"vjseq_nz_sonic_attack_1"}
		self:SetBodygroup(2,0)
		self:SetBodygroup(6,0)
		self:SetKeyValue("rendercolor","198 248 255 255")
		if !self.ToTU_Nightkin_Shrieker_OriginalBehavior then
			self.MeleeAttackDistance = 10000
		else
			self.MeleeAttackDistance = 21
		end
		self:SetCollisionBounds(Vector(12, 13, 68), Vector(-13, -13, 0))

	elseif self:GetClass() == "npc_vj_totu_nightkin_squaller" then

		self:SetCollisionBounds(Vector(12, 13, 68), Vector(-13, -13, 0))
		self:SetModelScale(1.27)
		self:SetBodygroup(6,2)
		self.AnimTbl_Death = {"vjseq_nz_death_fire_1"}
		self.DeathAnimationChance = 1
		self:SetKeyValue("rendercolor","255 187 164 255")

		if !self.LNR_Crippled then
			self.AnimTbl_Walk = {ACT_WALK_AIM}
			self.AnimTbl_Run = {ACT_RUN_RELAXED}
			self.ToTU_Rusher = true
			if
				GetConVar("VJ_ToTU_Nightkin_Squaller_IronWill"):GetInt() == 1 &&
				math.random(1,GetConVar("VJ_ToTU_Nightkin_Squaller_IronWill_Chance"):GetInt()) == 1
			then
				self.ToTU_Nightkin_Squaller_HasIronWill = true
			end
		end

		if self.ToTU_Nightkin_Squaller_UsingIronWill then

			self.SoundTbl_Breath = {"fx/ironwill_loop.mp3"}
			self.NextSoundTime_Breath = VJ_Set(7,7)
			self.BreathSoundLevel = 65
			self.AnimTbl_Walk = {ACT_SPRINT}
			self.AnimTbl_Run = {ACT_RUN_AIM}
			self.IdleAlwaysWander = true
			self.LNR_SuperSprinter = true

			local IronWillLight1 = ents.Create("light_dynamic")
			IronWillLight1:SetKeyValue("brightness", "8")
			IronWillLight1:SetKeyValue("distance", "50")
			IronWillLight1:SetParent(self)
			IronWillLight1:Fire("Color", "16 0 192")
			IronWillLight1:Fire("SetParentAttachment","eyes")
			IronWillLight1:Spawn()
			IronWillLight1:Activate()
			self:DeleteOnRemove(IronWillLight1)

			local IronWillLight2 = ents.Create("light_dynamic")
			IronWillLight2:SetKeyValue("brightness", "8")
			IronWillLight2:SetKeyValue("distance", "50")
			IronWillLight2:SetParent(self)
			IronWillLight2:Fire("Color", "10 0 125")
			IronWillLight2:Fire("SetParentAttachment","chest")
			IronWillLight2:Spawn()
			IronWillLight2:Activate()
			self:DeleteOnRemove(IronWillLight2)

			-- increase this time?
			timer.Simple(16,function() if IsValid(self) then
				self.ToTU_Nightkin_Squaller_IronWillDamageResistance = false
				IronWillLight1:Fire("Kill", "", 0.07)
				IronWillLight2:Fire("Kill", "", 0.07)
				local d = DamageInfo()
				d:SetDamage(self:GetMaxHealth())
				d:SetAttacker(self)
				d:SetDamageType(DMG_GENERIC) 
				self:TakeDamageInfo(d)
			end end)

		end

	elseif self:GetClass() == "npc_vj_totu_nightkin_spitballer" then

		self:SetKeyValue("rendercolor","129 109 171 255")
		self:SetModelScale(1.07)

		local LightGlow = ents.Create("light_dynamic")
		LightGlow:SetKeyValue("brightness", "10")
		LightGlow:SetKeyValue("distance", "30")
		LightGlow:SetLocalPos(self:GetPos() +self:OBBCenter())
		LightGlow:SetLocalAngles(self:GetAngles())
		LightGlow:Fire("Color", "93 0 255 255")
		LightGlow:SetParent(self)
		LightGlow:Spawn()
		LightGlow:Activate()
		LightGlow:Fire("SetParentAttachment","legs_gib")
		LightGlow:Fire("TurnOn", "", 0)
		self:DeleteOnRemove(LightGlow)
		self.LightGlow = LightGlow

		local LightGlow = ents.Create("light_dynamic")
		LightGlow:SetKeyValue("brightness", "5")
		LightGlow:SetKeyValue("distance", "30")
		LightGlow:SetLocalPos(self:GetPos() +self:OBBCenter())
		LightGlow:SetLocalAngles(self:GetAngles())
		LightGlow:Fire("Color", "93 0 255 255")
		LightGlow:SetParent(self)
		LightGlow:Spawn()
		LightGlow:Activate()
		LightGlow:Fire("SetParentAttachment","chest")
		LightGlow:Fire("TurnOn", "", 0)
		self:DeleteOnRemove(LightGlow)
		self.LightGlow = LightGlow

		if !self.LNR_Crippled then
			self.HasRangeAttack = true
			self.RangeAttackEntityToSpawn = "obj_vj_totu_biolum"
			self.AnimTbl_RangeAttack = {"vjseq_nz_taunt_7"}
			self.RangeDistance = 1200 
			self.RangeToMeleeDistance = 0
			self.RangeAttackAngleRadius = 100
			self.TimeUntilRangeAttackProjectileRelease = 0.6
			self.NextRangeAttackTime = 6
			self.NextAnyAttackTime_Range = 2
			self.RangeUseAttachmentForPos = true 
			self.RangeUseAttachmentForPosID = "mouth"
			self.RangeAttackExtraTimers = nil
			self.RangeAttackPos_Forward = 20
			self.RangeAttackPos_Up = 20
		end

	elseif self:GetClass() == "npc_vj_totu_nightkin_scylla" then

		self:SetModelScale(1.60)
		self:SetBodygroup(6,2)
		self:SetKeyValue("rendercolor","122 62 53 255")

		self:SetCollisionBounds(Vector(12, 13, 68), Vector(-13, -13, 0))
		self.HasWorldShakeOnMove = true
		self.WorldShakeOnMoveAmplitude = 1

		self.AnimTbl_Death = {"vjseq_death_04"}
		self.DeathAnimationChance = 1

		if !self.LNR_Crippled then
			self.MeleeAttackDistance = 50
			self.MeleeAttackDamageDistance = 70
			self.HasMeleeAttackKnockBack = true
			self.MeleeAttackKnockBack_Forward1 = 300
			self.MeleeAttackKnockBack_Forward2 = 325
			self.MeleeAttackKnockBack_Up1 = 175
			self.MeleeAttackKnockBack_Up2 = 200
		end

		self.ExtraMeleeSoundPitch = VJ_Set(80, 90)

	elseif self:GetClass() == "npc_vj_totu_nightkin_spectre" then

		self:SetModelScale(1.13)
		self:SetMaterial("models/shiny")
		self:SetColor(Color(9,10,13,5))
		self:SetRenderMode( RENDERMODE_TRANSCOLOR )
		self:SetBodygroup(1,0)
		self:SetBodygroup(2,0)
		self:SetBodygroup(6,2)

		self:SetSolid(SOLID_NONE)
		self:AddFlags(FL_NOTARGET)
		self.HasMeleeAttack = false
		self.FootStepSoundLevel = 45
		self.ToTU_Nightkin_Spectre_HideT = CurTime() + math.random(3,10)

		self.IdleSoundLevel = 70
		self.AlertSoundLevel = 75
		self.CombatIdleSoundLevel = 75

		if !self.LNR_Crippled && GetConVar("VJ_ToTU_Nightkin_Spectre_RangeAttack"):GetInt() == 1 then
			self.RangeAttackEntityToSpawn = "obj_vj_totu_spectreball"
			self.RangeAttackAnimationFaceEnemy = true
			self.AnimTbl_RangeAttack = {"vjseq_nz_sonic_attack_2"}
			self.RangeToMeleeDistance = 1 
			self.RangeAttackAngleRadius = 100
			self.TimeUntilRangeAttackProjectileRelease = 1
			self.NextRangeAttackTime = math.random(15,20)
			self.RangeUseAttachmentForPos = true 
			self.RangeUseAttachmentForPosID = "chest"
			self.RangeAttackPos_Forward = 20
			self.RangeAttackPos_Up = 20
			self.RangeAttackSoundLevel = 80
		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 100
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(25,30)

	else

		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(10,15)

	end

	self:SetHealth(self.StartHealth)	

	self.LNR_LegHP = self.StartHealth * 0.20

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Idle = {
		"voices/amnesia/grunt/amb_idle01.wav",
		"voices/amnesia/grunt/amb_idle02.wav",
		"voices/amnesia/grunt/amb_idle03.wav",
		"voices/amnesia/grunt/amb_idle04.wav",
		"voices/amnesia/grunt/amb_idle05.wav",
		"voices/amnesia/grunt/amb_alert01.wav",
		"voices/amnesia/grunt/amb_alert02.wav",
		"voices/amnesia/grunt/amb_alert03.wav",
	}

	self.SoundTbl_Alert = {
		"voices/amnesia/grunt/enabled01.wav",
		"voices/amnesia/grunt/enabled02.wav",
		"voices/amnesia/grunt/enabled03.wav",
		"voices/amnesia/grunt/notice01.wav",
		"voices/amnesia/grunt/notice02.wav",
		"voices/amnesia/grunt/notice03.wav",
		"voices/amnesia/grunt/notice04.wav",
		"voices/amnesia/grunt/notice_long01.wav",
		"voices/amnesia/grunt/notice_long02.wav",
		"voices/amnesia/grunt/notice_long03.wav",
	}

	self.SoundTbl_CombatIdle = {
		"voices/amnesia/grunt/amb_hunt01.wav",
		"voices/amnesia/grunt/amb_hunt02.wav",
		"voices/amnesia/grunt/amb_hunt03.wav",
		"voices/amnesia/grunt/amb_hunt04.wav",
		"voices/amnesia/grunt/amb_idle_scratch01.wav",
		"voices/amnesia/grunt/amb_idle_scratch02.wav",
		"voices/amnesia/grunt/amb_idle_scratch03.wav",
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"voices/amnesia/grunt/attack_claw01.wav",
		"voices/amnesia/grunt/attack_claw02.wav",
		"voices/amnesia/grunt/attack_claw03.wav",
	}

	self.SoundTbl_Pain = {
		"voices/amnesia/grunt/attack_launch01.wav",
		"voices/amnesia/grunt/attack_launch02.wav",
		"voices/amnesia/grunt/attack_launch03.wav",
	}

	self.SoundTbl_Death = {
		"voices/amnesia/grunt/amb_idle_whimp01.wav",
		"voices/amnesia/grunt/amb_idle_whimp02.wav",
	}

	self.ToTU_Almanac_VoiceActor = "Servant Grunt (Amnesia: The Dark Descent)"

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)
	if
		self:GetClass() == "npc_vj_totu_nightkin_squaller" &&
		self.ToTU_Nightkin_Squaller_UsingIronWill &&
		self.ToTU_Nightkin_Squaller_IronWillDamageResistance
	then
		dmginfo:ScaleDamage(0.05)
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/