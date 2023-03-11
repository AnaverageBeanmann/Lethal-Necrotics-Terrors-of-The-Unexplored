AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.ToTU_Weaponized_Redead_Infectee = false
ENT.ToTU_Weaponized_Redead_NextRunT = 0
ENT.ToTU_Weaponized_Redead_RunT = 0
ENT.ToTU_Weaponized_Redead_Running = false
ENT.MilZ_HasGasmask = false
ENT.MilZ_HasFlakSuit = false
ENT.MilZ_IsMilZ = false
ENT.MilZ_HelmetHealth = 1
ENT.MilZ_HelmetBroken = false
ENT.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyeglow = true
ENT.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyetrail = true
ENT.ToTU_Weaponized_Cancer_FireDeath = false
ENT.ToTU_Weaponized_Revenant_Reviving = false
ENT.ToTU_Weaponized_Revenant_CanDoReviveEffects = true
ENT.ToTU_Weaponized_NextHealTime = 0
ENT.ToTU_Weaponized_Redead_Grunt_IsCaretaker = false
ENT.ToTU_Weaponized_Revenant_NextBuffTime = 0
ENT.ToTU_Weaponized_PoopShitter = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()

	self.Model = {"models/totu/redead.mdl"}

	if self.ToTU_Weaponized_PoopShitter then
		self.Model = {"models/totu/thepoopshitter.mdl"}
	end

	timer.Simple(0.1,function() if IsValid(self) && !self.LNR_Crippled  then
		self.AnimTbl_Walk = {ACT_WALK}
		self.AnimTbl_Run = {ACT_RUN}
	end end)

	self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(3,10)	

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()

	if self.DisableFindEnemy == true then
		timer.Simple(1.4,function() if IsValid(self) then
			self:Zombie_GlowEyes_Give()
		end end)
	else
		self:Zombie_GlowEyes_Give()
	end

	if self:GetClass() == "npc_vj_totu_weaponized_cancer" then	
		self:SetModelScale(1.13)
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_GlowEyes_Give()

	if self.ToTU_Weaponized_Redead_Infectee or GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 0 or GetConVar("vj_npc_noidleparticle"):GetInt() == 1 then return end

	for i = 1,2 do	
		local att = i == 2 && "eyeglow1" or "eyeglow2"		
		local EyeGlow = ents.Create("env_sprite")
		EyeGlow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		EyeGlow:SetKeyValue("scale","0.02")
		EyeGlow:SetKeyValue("rendermode","5")
		EyeGlow:SetKeyValue("rendercolor","220 0 255 255")
		EyeGlow:SetKeyValue("spawnflags","1") 
		EyeGlow:SetParent(self)
		EyeGlow:Fire("SetParentAttachment",att,0)
		EyeGlow:Spawn()
		EyeGlow:Activate()
		self:DeleteOnRemove(EyeGlow)
	end

	if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
		local TrailColor = Color(220,0,255,255)
		local EyeTrail = util.SpriteTrail(self,8,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		local EyeTrail2 = util.SpriteTrail(self,9,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Idle = {
		"voices/deimos/redead/idle_1.mp3",
		"voices/deimos/redead/idle_2.mp3",
		"voices/deimos/redead/idle_3.mp3"
	}

	self.SoundTbl_Alert = {
		"voices/deimos/redead/spawn_1.mp3",
		"voices/deimos/redead/spawn_2.mp3",
		"voices/deimos/redead/spawn_3.mp3"
	}

	self.SoundTbl_CombatIdle = {
		"voices/deimos/redead/idle_1.mp3",
		"voices/deimos/redead/idle_2.mp3",
		"voices/deimos/redead/idle_3.mp3"
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"voices/deimos/redead/attack_1.mp3",
		"voices/deimos/redead/attack_2.mp3",
		"voices/deimos/redead/attack_3.mp3"
	}

	self.SoundTbl_Pain = {
		"voices/deimos/redead/pain_1.mp3",
		"voices/deimos/redead/pain_2.mp3",
		"voices/deimos/redead/pain_3.mp3"
	}

	self.SoundTbl_Death = {
		"voices/deimos/redead/death_1.mp3",
		"voices/deimos/redead/death_2.mp3",
		"voices/deimos/redead/death_3.mp3"
	}
	
	self.ToTU_Almanac_VoiceActor = "Possessed (Doom 2016)"

	if GetConVar("VJ_ToTU_General_TF2Mode"):GetInt() == 1 then
		if self:GetClass() == "npc_vj_totu_weaponized_redead" then
			self.SoundTbl_Idle = {
				"vo/taunts/engy/eng_guzzle_04_burp.mp3",
				"ambient/voices/cough1.wav",
				"ambient/voices/cough2.wav",
				"ambient/voices/cough3.wav",
				"ambient/voices/cough4.wav",
				"vo/engineer_laughshort01.mp3",
				"vo/engineer_laughshort02.mp3",
				"vo/engineer_laughshort03.mp3",
				"vo/engineer_laughshort04.mp3",
				"vo/engineer_laughevil01.mp3",
				"vo/engineer_laughevil02.mp3",
				"vo/engineer_laughevil03.mp3",
				"vo/engineer_laughevil04.mp3",
				"vo/engineer_laughevil05.mp3",
				"vo/engineer_laughevil06.mp3",
			}

			self.SoundTbl_Alert = {
				"vo/engineer_battlecry03.mp3",
				"vo/engineer_battlecry04.mp3",
				"vo/engineer_battlecry05.mp3",
				"vo/engineer_dominationengineer05.mp3",
				"vo/engineer_dominationengineer06.mp3",
				"vo/engineer_incoming01.mp3",
				"vo/engineer_incoming02.mp3",
				"vo/engineer_incoming03.mp3",
				"vo/engineer_meleedare01.mp3",
				"vo/engineer_meleedare02.mp3",
				"vo/engineer_meleedare03.mp3",
				"vo/taunts/engineer_taunts01.mp3",
				"vo/taunts/engineer_taunts03.mp3",
				"vo/taunts/engineer_taunts04.mp3",
				"vo/taunts/engineer_taunts05.mp3",
				"vo/taunts/engineer_taunts06.mp3",
				"vo/taunts/engineer_taunts08.mp3",
				"vo/taunts/engineer_taunts10.mp3",
				"vo/taunts/engineer_taunts12.mp3"
			}

			self.SoundTbl_CallForHelp = {
				"vo/engineer_go01.mp3",
				"vo/engineer_go02.mp3",
				"vo/engineer_go03.mp3",
				"vo/engineer_helpme01.mp3",
				"vo/engineer_helpme02.mp3",
				"vo/engineer_helpme03.mp3",
			}

			self.SoundTbl_CombatIdle = {
				"vo/engineer_battlecry01.mp3",
				"vo/engineer_battlecry06.mp3",
				"vo/engineer_battlecry07.mp3",
				"vo/engineer_cheers01.mp3",
				"vo/engineer_cheers02.mp3",
				"vo/engineer_cheers07.mp3",
				"vo/engineer_gunslingertriplepunchfinal01.mp3",
				"vo/engineer_laughevil01.mp3",
				"vo/engineer_laughevil02.mp3",
				"vo/engineer_laughevil03.mp3",
				"vo/engineer_laughevil04.mp3",
				"vo/engineer_laughevil05.mp3",
				"vo/engineer_laughevil06.mp3",
				"vo/engineer_laughhappy01.mp3",
				"vo/engineer_laughhappy02.mp3",
				"vo/engineer_laughhappy03.mp3",
				"vo/engineer_laughlong01.mp3",
				"vo/engineer_laughlong02.mp3",
				"vo/engineer_laughshort01.mp3",
				"vo/engineer_laughshort02.mp3",
				"vo/engineer_laughshort03.mp3",
				"vo/engineer_laughshort04.mp3",
				"vo/engineer_sentrymoving02.mp3"
			}

			self.SoundTbl_BeforeMeleeAttack = {
				"vo/engineer_gunslingerpunch01.mp3",
				"vo/engineer_gunslingerpunch02.mp3",
				"vo/engineer_gunslingerpunch03.mp3",
				"vo/engineer_gunslingertriplepunchfinal02.mp3",
				"vo/engineer_gunslingertriplepunchfinal03.mp3"
			}

			self.SoundTbl_OnKilledEnemy = {
				"vo/engineer_autocappedcontrolpoint01.mp3",
				"vo/engineer_autocappedcontrolpoint02.mp3",
				"vo/engineer_autocappedintelligence01.mp3",
				"vo/engineer_autocappedintelligence02.mp3",
				"vo/engineer_autocappedintelligence03.mp3",
				"vo/engineer_cheers03.mp3",
				"vo/engineer_cheers04.mp3",
				"vo/engineer_cheers05.mp3",
				"vo/engineer_cheers06.mp3",
				"vo/engineer_dominationdemoman01.mp3",
				"vo/engineer_dominationdemoman04.mp3",
				"vo/engineer_dominationengineer01.mp3",
				"vo/engineer_dominationengineer03.mp3",
				"vo/engineer_dominationengineer07.mp3",
				"vo/engineer_dominationengineer09.mp3",
				"vo/engineer_dominationheavy02.mp3",
				"vo/engineer_dominationheavy03.mp3",
				"vo/engineer_dominationheavy04.mp3",
				"vo/engineer_dominationheavy05.mp3",
				"vo/engineer_dominationheavy06.mp3",
				"vo/engineer_dominationheavy07.mp3",
				"vo/engineer_dominationheavy08.mp3",
				"vo/engineer_dominationheavy09.mp3",
				"vo/engineer_dominationheavy10.mp3",
				"vo/engineer_dominationheavy11.mp3",
				"vo/engineer_dominationheavy12.mp3",
				"vo/engineer_dominationheavy14.mp3",
				"vo/engineer_dominationpyro01.mp3",
				"vo/engineer_dominationpyro02.mp3",
				"vo/engineer_dominationpyro06.mp3",
				"vo/engineer_dominationscout01.mp3",
				"vo/engineer_dominationscout03.mp3",
				"vo/engineer_dominationscout06.mp3",
				"vo/engineer_dominationscout07.mp3",
				"vo/engineer_dominationscout11.mp3",
				"vo/engineer_dominationsoldier02.mp3",
				"vo/engineer_dominationsoldier03.mp3",
				"vo/engineer_dominationsoldier08.mp3",
				"vo/engineer_dominationspy07.mp3",
				"vo/engineer_dominationspy08.mp3",
				"vo/engineer_dominationspy11.mp3",
				"vo/engineer_dominationspy13.mp3",
				"vo/engineer_mvm_close_call01.mp3",
				"vo/engineer_mvm_get_upgrade01.mp3",
				"vo/engineer_positivevocalization01.mp3",
				"vo/engineer_revenge01.mp3",
				"vo/engineer_revenge02.mp3",
				"vo/engineer_sf13_influx_big01.mp3",
				"vo/engineer_specialcompleted01.mp3",
				"vo/engineer_specialcompleted02.mp3",
				"vo/engineer_specialcompleted03.mp3",
				"vo/engineer_specialcompleted04.mp3",
				"vo/engineer_specialcompleted05.mp3",
				"vo/engineer_specialcompleted10.mp3",
				"vo/engineer_specialcompleted11.mp3"
			}

			self.SoundTbl_AllyDeath = {
				"vo/engineer_autodejectedtie01.mp3",
				"vo/engineer_autodejectedtie02.mp3",
				"vo/engineer_autodejectedtie03.mp3",
				"vo/engineer_jeers01.mp3",
				"vo/engineer_jeers02.mp3",
				"vo/engineer_jeers03.mp3",
				"vo/engineer_jeers04.mp3",
				"vo/engineer_negativevocalization01.mp3",
				"vo/engineer_negativevocalization02.mp3",
				"vo/engineer_negativevocalization03.mp3",
				"vo/engineer_negativevocalization04.mp3",
				"vo/engineer_negativevocalization05.mp3",
				"vo/engineer_negativevocalization06.mp3",
				"vo/engineer_negativevocalization07.mp3",
				"vo/engineer_negativevocalization08.mp3",
				"vo/engineer_negativevocalization09.mp3",
				"vo/engineer_negativevocalization10.mp3",
				"vo/engineer_negativevocalization11.mp3",
				"vo/engineer_negativevocalization12.mp3"
			}

			self.SoundTbl_Pain = {
				"vo/engineer_medic01.mp3",
				"vo/engineer_medic02.mp3",
				"vo/engineer_medic03.mp3",
				"vo/engineer_painsevere01.mp3",
				"vo/engineer_painsevere02.mp3",
				"vo/engineer_painsevere03.mp3",
				"vo/engineer_painsevere04.mp3",
				"vo/engineer_painsevere05.mp3",
				"vo/engineer_painsevere06.mp3",
				"vo/engineer_painsevere07.mp3",
				"vo/engineer_painsharp01.mp3",
				"vo/engineer_painsharp02.mp3",
				"vo/engineer_painsharp03.mp3",
				"vo/engineer_painsharp04.mp3",
				"vo/engineer_painsharp05.mp3",
				"vo/engineer_painsharp06.mp3",
				"vo/engineer_painsharp07.mp3",
				"vo/engineer_painsharp08.mp3",
			}

			self.SoundTbl_Death = {
				"vo/engineer_paincrticialdeath01.mp3",
				"vo/engineer_paincrticialdeath02.mp3",
				"vo/engineer_paincrticialdeath03.mp3",
				"vo/engineer_paincrticialdeath04.mp3",
				"vo/engineer_paincrticialdeath05.mp3",
				"vo/engineer_paincrticialdeath06.mp3"
			}
			
			self.ToTU_Almanac_VoiceActor = "Engineer (Team Fortress 2)"
		end
		
		if self:GetClass() == "npc_vj_totu_weaponized_redead_grunt" then
			self.SoundTbl_Idle = {
				"ambient/voices/cough1.wav",
				"ambient/voices/cough2.wav",
				"ambient/voices/cough3.wav",
				"ambient/voices/cough4.wav",
				"vo/soldier_laughevil01.mp3",
				"vo/soldier_laughevil02.mp3",
				"vo/soldier_laughevil03.mp3",
				"vo/soldier_laughshort01.mp3",
				"vo/soldier_laughshort02.mp3",
				"vo/soldier_laughshort03.mp3",
				"vo/soldier_laughshort04.mp3"
			}

			self.SoundTbl_Alert = {
				"vo/soldier_battlecry04.mp3",
				"vo/soldier_battlecry05.mp3",
				"vo/soldier_battlecry01.mp3",
				"vo/soldier_battlecry01.mp3",
				"vo/soldier_battlecry01.mp3",
				"vo/soldier_dominationengineer04.mp3",
				"vo/soldier_dominationscout04.mp3",
				"vo/soldier_incoming01.mp3",
				"vo/soldier_pickaxetaunt01.mp3",
				"vo/soldier_pickaxetaunt02.mp3",
				"vo/soldier_pickaxetaunt03.mp3",
				"vo/soldier_pickaxetaunt04.mp3",
				"vo/soldier_pickaxetaunt05.mp3",
				"vo/soldier_pickaxetaunt06.mp3",
				"vo/soldier_pickaxetaunt01.mp3",
				"vo/soldier_sf12_zombie01.mp3",
				"vo/soldier_specialcompleted04.mp3",
				"vo/taunts/soldier_taunts02.mp3",
				"vo/taunts/soldier_taunts03.mp3",
				"vo/taunts/soldier_taunts05.mp3",
				"vo/taunts/soldier_taunts06.mp3",
				"vo/taunts/soldier_taunts07.mp3",
				"vo/taunts/soldier_taunts08.mp3",
				"vo/taunts/soldier_taunts11.mp3",
				"vo/taunts/soldier_taunts12.mp3",
				"vo/taunts/soldier_taunts14.mp3",
				"vo/taunts/soldier_taunts15.mp3",
				"vo/taunts/soldier_taunts16.mp3",
				"vo/taunts/soldier_taunts17.mp3",
				"vo/taunts/soldier_taunts20.mp3"
			}

			self.SoundTbl_CallForHelp = {
				"vo/soldier_battlecry01.mp3",
				"vo/soldier_battlecry02.mp3",
				"vo/soldier_battlecry03.mp3",
				"vo/soldier_go01.mp3",
				"vo/soldier_go02.mp3",
				"vo/soldier_go03.mp3",
				"vo/soldier_helpme01.mp3",
				"vo/soldier_helpme02.mp3",
				"vo/soldier_helpme03.mp3",
				"vo/soldier_moveup01.mp3",
				"vo/soldier_moveup03.mp3"
			}

			self.SoundTbl_CombatIdle = {
				"vo/soldier_battlecry06.mp3",
				"vo/soldier_laughevil01.mp3",
				"vo/soldier_laughevil02.mp3",
				"vo/soldier_laughevil03.mp3",
				"vo/soldier_laughhappy01.mp3",
				"vo/soldier_laughhappy02.mp3",
				"vo/soldier_laughhappy03.mp3",
				"vo/soldier_laughlong01.mp3",
				"vo/soldier_laughlong02.mp3",
				"vo/soldier_laughlong03.mp3",
				"vo/soldier_laughshort01.mp3",
				"vo/soldier_laughshort02.mp3",
				"vo/soldier_laughshort03.mp3",
				"vo/soldier_laughshort04.mp3",
				"vo/soldier_laughshort01.mp3",
				"vo/soldier_sf12_zombie02.mp3",
				"vo/soldier_sf12_zombie03.mp3",
				"vo/soldier_sf12_zombie04.mp3"
			}

			self.SoundTbl_BeforeMeleeAttack = {
				"vo/soldier_directhittaunt01.mp3",
				"vo/soldier_directhittaunt02.mp3",
				"vo/soldier_directhittaunt03.mp3",
				"vo/soldier_directhittaunt04.mp3",
				"vo/soldier_kaboomalts01.mp3",
				"vo/soldier_kaboomalts02.mp3",
				"vo/soldier_kaboomalts03.mp3",
				"vo/soldier_specialcompleted05.mp3",
				"vo/taunts/soldier_taunts01.mp3"
			}

			self.SoundTbl_OnKilledEnemy = {
				"vo/soldier_cheers01.mp3",
				"vo/soldier_cheers02.mp3",
				"vo/soldier_cheers03.mp3",
				"vo/soldier_cheers04.mp3",
				"vo/soldier_cheers05.mp3",
				"vo/soldier_cheers06.mp3",
				"vo/soldier_autocappedintelligence02.mp3",
				"vo/soldier_dominationmedic03.mp3",
				"vo/soldier_dominationpyro07.mp3",
				"vo/soldier_dominationpyro09.mp3",
				"vo/soldier_dominationscout03.mp3",
				"vo/soldier_dominationscout04.mp3",
				"vo/soldier_dominationscout08.mp3",
				"vo/soldier_dominationscout09.mp3",
				"vo/soldier_dominationscout10.mp3",
				"vo/soldier_dominationsniper12.mp3",
				"vo/soldier_dominationsniper13.mp3",
				"vo/soldier_dominationsoldier01.mp3",
				"vo/soldier_dominationsoldier02.mp3",
				"vo/soldier_dominationsoldier03.mp3",
				"vo/soldier_dominationsoldier04.mp3",
				"vo/soldier_dominationsoldier05.mp3",
				"vo/soldier_dominationsoldier06.mp3",
				"vo/soldier_dominationsoldier01.mp3",
				"vo/soldier_hatoverhearttaunt01.mp3",
				"vo/soldier_hatoverhearttaunt02.mp3",
				"vo/soldier_hatoverhearttaunt03.mp3",
				"vo/soldier_hatoverhearttaunt04.mp3",
				"vo/soldier_hatoverhearttaunt05.mp3",
				"vo/soldier_hatoverhearttaunt06.mp3",
				"vo/soldier_hatoverhearttaunt07.mp3",
				"vo/soldier_hatoverhearttaunt01.mp3",
				"vo/soldier_item_wizard_domination02.mp3",
				"vo/soldier_positivevocalization01.mp3",
				"vo/soldier_positivevocalization02.mp3",
				"vo/soldier_positivevocalization03.mp3",
				"vo/soldier_positivevocalization04.mp3",
				"vo/soldier_positivevocalization05.mp3",
				"vo/soldier_positivevocalization01.mp3",
				"vo/soldier_sf12_taunts12.mp3",
				"vo/soldier_sf12_taunts13.mp3",
				"vo/soldier_sf12_taunts14.mp3",
				"vo/soldier_sf12_taunts17.mp3",
				"vo/soldier_specialcompleted01.mp3",
				"vo/soldier_specialcompleted03.mp3",
				"vo/taunts/soldier_taunts04.mp3",
				"vo/taunts/soldier_taunts09.mp3",
				"vo/taunts/soldier_taunts10.mp3",
				"vo/taunts/soldier_taunts13.mp3",
				"vo/taunts/soldier_taunts18.mp3",
				"vo/taunts/soldier_taunts19.mp3",
				"vo/taunts/soldier_taunts21.mp3"
			}

			self.SoundTbl_AllyDeath = {
				"vo/soldier_autodejectedtie01.mp3",
				"vo/soldier_autodejectedtie02.mp3",
				"vo/soldier_autodejectedtie03.mp3",
				"vo/soldier_jeers01.mp3",
				"vo/soldier_jeers02.mp3",
				"vo/soldier_jeers03.mp3",
				"vo/soldier_jeers04.mp3",
				"vo/soldier_jeers05.mp3",
				"vo/soldier_jeers06.mp3",
				"vo/soldier_jeers07.mp3",
				"vo/soldier_jeers08.mp3",
				"vo/soldier_jeers09.mp3",
				"vo/soldier_jeers10.mp3",
				"vo/soldier_jeers11.mp3",
				"vo/soldier_jeers12.mp3",
			}

			self.SoundTbl_Pain = {
				"vo/soldier_medic01.mp3",
				"vo/soldier_medic02.mp3",
				"vo/soldier_medic03.mp3",
				"vo/soldier_painsevere01.mp3",
				"vo/soldier_painsevere02.mp3",
				"vo/soldier_painsevere03.mp3",
				"vo/soldier_painsevere04.mp3",
				"vo/soldier_painsevere05.mp3",
				"vo/soldier_painsevere06.mp3",
				"vo/soldier_painsharp01.mp3",
				"vo/soldier_painsharp02.mp3",
				"vo/soldier_painsharp03.mp3",
				"vo/soldier_painsharp04.mp3",
				"vo/soldier_painsharp05.mp3",
				"vo/soldier_painsharp06.mp3",
				"vo/soldier_painsharp07.mp3",
				"vo/soldier_painsharp08.mp3",
				"vo/soldier_painsharp09.mp3"
			}

			self.SoundTbl_Death = {
				"vo/soldier_paincrticialdeath01.mp3",
				"vo/soldier_paincrticialdeath02.mp3",
				"vo/soldier_paincrticialdeath03.mp3",
				"vo/soldier_paincrticialdeath04.mp3"
			}
			
			self.ToTU_Almanac_VoiceActor = "Soldier (Team Fortress 2)"
		end
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 100
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 250
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

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
function ENT:Zombie_CustomOnThink_AIEnabled()

	if
		self.ToTU_Weaponized_Redead_NextRunT < CurTime() &&
		!self.ToTU_Weaponized_Redead_Running &&
		self:GetEnemy() != nil &&
		!self.LNR_Crippled &&
		!self.Dead &&
		!self:IsBusy()
	then

		VJ_EmitSound(self,self.SoundTbl_BeforeMeleeAttack,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.BeforeMeleeAttackSoundPitch.a,self.BeforeMeleeAttackSoundPitch.b))

		self.ToTU_Weaponized_Redead_Running = true
		self.ToTU_Weaponized_Redead_RunT = CurTime() + math.random(3,7)

		self.AnimTbl_Walk = {ACT_RUN}
		self.AnimTbl_Run = {ACT_RUN_AIM}

	end

	if
		self.ToTU_Weaponized_Redead_Running &&
		self.ToTU_Weaponized_Redead_RunT < CurTime() &&
		!self.Dead &&
		!self.LNR_Crippled
	then

		self.ToTU_Weaponized_Redead_Running = false
		self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(6,12)

		if self:GetClass() == "npc_vj_totu_weaponized_cancer" then
			self.AnimTbl_Walk = {ACT_WALK_RELAXED}
			self.AnimTbl_Run = {ACT_WALK_AIM}
		else
			self.AnimTbl_Walk = {ACT_WALK}
			self.AnimTbl_Run = {ACT_RUN}
		end

		if self:IsMoving() then

			if math.random(1,2) == 1 then
				self:VJ_ACT_PLAYACTIVITY("vjseq_Running_to_Standing",true,false,false)
			else
				self:VJ_ACT_PLAYACTIVITY("vjseq_Running_to_Standing_02",true,false,false)
			end

		end

	end

	if self:GetClass() == "npc_vj_totu_weaponized_revenant" && !self.Dead && !self.LNR_Crippled && !self.VJ_IsBeingControlled then

		if !self:IsBusy() && !self.ToTU_Weaponized_Revenant_Reviving then
			for _,v in ipairs(ents.FindInSphere(self:GetPos(),2600)) do
				if
					IsValid(v) &&
					v:GetClass() == "prop_ragdoll" &&
					v:GetClass() != "prop_physics" &&
					(GetConVar("VJ_ToTU_Weaponized_Revenant_ReviveBlacklist"):GetInt() == 1 &&
					v:GetModel() != "models/antlion.mdl" &&
					v:GetModel() != "models/antlion_guard.mdl" &&
					v:GetModel() != "models/combine_dropship.mdl" &&
					v:GetModel() != "models/combine_gate_citizen.mdl" &&
					v:GetModel() != "models/combine_gate_vehicle.mdl" &&
					v:GetModel() != "models/combine_scanner.mdl" &&
					v:GetModel() != "models/combine_strider.mdl" &&
					v:GetModel() != "models/crow.mdl" &&
					v:GetModel() != "models/dog.mdl" &&
					v:GetModel() != "models/gunship.mdl" &&
					v:GetModel() != "models/headcrab.mdl" &&
					v:GetModel() != "models/headcrabblack.mdl" &&
					v:GetModel() != "models/headcrabclassic.mdl" &&
					v:GetModel() != "models/lamarr.mdl" &&
					v:GetModel() != "models/manhack.mdl" &&
					v:GetModel() != "models/pigeon.mdl" &&
					v:GetModel() != "models/seagull.mdl" &&
					v:GetModel() != "models/shield_scanner.mdl" &&
					v:GetModel() != "models/cranes/crane_docks.mdl" &&
					v:GetModel() != "models/gibs/fast_zombie_legs.mdl" &&
					v:GetModel() != "models/gibs/fast_zombie_torso.mdl" &&
					v:GetModel() != "models/gibs/strider_head.mdl" &&
					v:GetModel() != "models/gibs/strider_left_leg.mdl" &&
					v:GetModel() != "models/gibs/strider_right_leg.mdl" &&
					v:GetModel() != "models/gibs/strider_weapon.mdl" &&
					v:GetModel() != "models/humans/charple01.mdl" &&
					v:GetModel() != "models/humans/charple02.mdl" &&
					v:GetModel() != "models/humans/charple03.mdl" &&
					v:GetModel() != "models/humans/charple04.mdl" &&
					v:GetModel() != "models/props_vehicles/car001a_phy.mdl" &&
					v:GetModel() != "models/props_vehicles/car001b_phy.mdl" &&
					v:GetModel() != "models/props_vehicles/wagon001a_phy.mdl" &&
					v:GetModel() != "models/zombie/classic.mdl" &&
					v:GetModel() != "models/zombie/classic_legs.mdl" &&
					v:GetModel() != "models/zombie/classic_torso.mdl" &&
					v:GetModel() != "models/zombie/fast.mdl" &&
					v:GetModel() != "models/zombie/poison.mdl" &&
					v:GetModel() != "models/skeleton/skeleton_leg.mdl" &&
					v:GetModel() != "models/skeleton/skeleton_leg_l.mdl" &&
					v:GetModel() != "models/skeleton/skeleton_arm_l.mdl" &&
					v:GetModel() != "models/skeleton/skeleton_arm.mdl" &&
					v:GetModel() != "models/totu/carcass.mdl" &&
					v:GetModel() != "models/totu/carcass_legs.mdl" &&
					v:GetModel() != "models/totu/carcass_torso.mdl" &&
					v:GetModel() != "models/totu/cazador.mdl" &&
					v:GetModel() != "models/totu/cazador_torso.mdl" &&
					v:GetModel() != "models/totu/cazador_legs.mdl" &&
					v:GetModel() != "models/totu/cyst.mdl"
					or
					GetConVar("VJ_ToTU_Weaponized_Revenant_ReviveBlacklist"):GetInt() == 0)
				then
					self:SetTarget(v)
					self:VJ_TASK_GOTO_TARGET("TASK_RUN_PATH")
				end

				for _,v in ipairs(ents.FindInSphere(self:GetPos(),20)) do
					if
						IsValid(v) &&
						v:GetClass() == "prop_ragdoll" &&
						v:GetClass() != "prop_physics" &&
						(GetConVar("VJ_ToTU_Weaponized_Revenant_ReviveBlacklist"):GetInt() == 1 &&
						v:GetModel() != "models/antlion.mdl" &&
						v:GetModel() != "models/antlion_guard.mdl" &&
						v:GetModel() != "models/combine_dropship.mdl" &&
						v:GetModel() != "models/combine_gate_citizen.mdl" &&
						v:GetModel() != "models/combine_gate_vehicle.mdl" &&
						v:GetModel() != "models/combine_scanner.mdl" &&
						v:GetModel() != "models/combine_strider.mdl" &&
						v:GetModel() != "models/crow.mdl" &&
						v:GetModel() != "models/dog.mdl" &&
						v:GetModel() != "models/gunship.mdl" &&
						v:GetModel() != "models/headcrab.mdl" &&
						v:GetModel() != "models/headcrabblack.mdl" &&
						v:GetModel() != "models/headcrabclassic.mdl" &&
						v:GetModel() != "models/lamarr.mdl" &&
						v:GetModel() != "models/manhack.mdl" &&
						v:GetModel() != "models/pigeon.mdl" &&
						v:GetModel() != "models/seagull.mdl" &&
						v:GetModel() != "models/shield_scanner.mdl" &&
						v:GetModel() != "models/cranes/crane_docks.mdl" &&
						v:GetModel() != "models/gibs/fast_zombie_legs.mdl" &&
						v:GetModel() != "models/gibs/fast_zombie_torso.mdl" &&
						v:GetModel() != "models/gibs/strider_head.mdl" &&
						v:GetModel() != "models/gibs/strider_left_leg.mdl" &&
						v:GetModel() != "models/gibs/strider_right_leg.mdl" &&
						v:GetModel() != "models/gibs/strider_weapon.mdl" &&
						v:GetModel() != "models/humans/charple01.mdl" &&
						v:GetModel() != "models/humans/charple02.mdl" &&
						v:GetModel() != "models/humans/charple03.mdl" &&
						v:GetModel() != "models/humans/charple04.mdl" &&
						v:GetModel() != "models/props_vehicles/car001a_phy.mdl" &&
						v:GetModel() != "models/props_vehicles/car001b_phy.mdl" &&
						v:GetModel() != "models/props_vehicles/wagon001a_phy.mdl" &&
						v:GetModel() != "models/zombie/classic.mdl" &&
						v:GetModel() != "models/zombie/classic_legs.mdl" &&
						v:GetModel() != "models/zombie/classic_torso.mdl" &&
						v:GetModel() != "models/zombie/fast.mdl" &&
						v:GetModel() != "models/zombie/poison.mdl" &&
						v:GetModel() != "models/skeleton/skeleton_leg.mdl" &&
						v:GetModel() != "models/skeleton/skeleton_leg_l.mdl" &&
						v:GetModel() != "models/skeleton/skeleton_arm_l.mdl" &&
						v:GetModel() != "models/skeleton/skeleton_arm.mdl" &&
						v:GetModel() != "models/totu/carcass.mdl" &&
						v:GetModel() != "models/totu/carcass_legs.mdl" &&
						v:GetModel() != "models/totu/carcass_torso.mdl" &&
						v:GetModel() != "models/totu/cazador.mdl" &&
						v:GetModel() != "models/totu/cazador_torso.mdl" &&
						v:GetModel() != "models/totu/cazador_legs.mdl" &&
						v:GetModel() != "models/totu/cyst.mdl"
						or
						GetConVar("VJ_ToTU_Weaponized_Revenant_ReviveBlacklist"):GetInt() == 0)
					then
						local eattime = 4.5 -- How long it should sleep
						if !self.ToTU_Weaponized_Revenant_Reviving then
							local anim = {"vjseq_Stand_to_crouch"}
							self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
							self.ToTU_Weaponized_Revenant_Reviving = true
						end
						self.ToTU_Weaponized_Revenant_Reviving = true
						self.AnimTbl_IdleStand = {ACT_VM_DEPLOYED_DRYFIRE}
						self.ToTU_CanStumble = false
						self:FaceCertainEntity(v)
						self.DisableWandering = true -- Disables wandering when the SNPC is idle
						self.CanTurnWhileStationary = false
						self.MovementType = VJ_MOVETYPE_STATIONARY
						self.CanFlinch = false
						self.HasDeathAnimation = false
						self.HasMeleeAttack = false

						v:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

						timer.Simple(1,function() if IsValid(self) && self.ToTU_Weaponized_Revenant_CanDoReviveEffects then
							self.ToTU_Weaponized_Revenant_CanDoReviveEffects = false
							if IsValid(v) then
								VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(100,95))
								ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
								ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
							end
							timer.Simple(1,function() if IsValid(self) && IsValid(v)  then
								VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(100,95))
								VJ_EmitSound(self,"items/smallmedkit1.wav",80,math.random(70,65))
								ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
								ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
							end end)
							timer.Simple(2,function() if IsValid(self) && IsValid(v) then
								VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(100,95))
								ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
								ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
							end end)
							timer.Simple(3,function() if IsValid(self) && IsValid(v)  then
								VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(100,95))
								ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
								ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
							end end)
							timer.Simple(5,function() if IsValid(self) then
								self.ToTU_Weaponized_Revenant_CanDoReviveEffects = true
							end end)
						end end)

						timer.Simple(eattime, function() -- Reset after eattime seconds
							if IsValid(self) && self.ToTU_Weaponized_Revenant_Reviving == true then
								self.ToTU_Weaponized_Revenant_Reviving = false
								local anim = {"vjseq_Crouch_to_stand"}				
								self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
						
								if self.LNR_UsingRelaxedIdle then
									self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
								else	
									self.AnimTbl_IdleStand = {ACT_IDLE}
								end
								self.ToTU_CanStumble = true
								self.MovementType = VJ_MOVETYPE_GROUND
								self.CanFlinch = true
								self.HasDeathAnimation = true
								self.HasMeleeAttack = true
								if GetConVar("vj_npc_nowandering"):GetInt() == 0 then
									self.DisableWandering = false -- Disables wandering when the SNPC is idle
								end
								self.CanTurnWhileStationary = true
								self.ToTU_NextEatTime = CurTime() + math.Rand(15, 45)

							
								timer.Simple(0.5,function() if IsValid(self) then

									if IsValid(v) then
							
										if IsValid(v) then
									
											local anim = {"vjseq_ShoveReact"}
											self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)

											local AnimTime = VJ_GetSequenceDuration(self,"vjseq_infectionrise2")
											local AnimTime2 = VJ_GetSequenceDuration(self,"vjseq_Lying_to_Standing_Alert03d")
											local RevSqSpawnH = self.StartHealth * 0.5

											local RandRevive = math.random(1,3)

											if RandRevive == 1 then
												local RevivedSquall = ents.Create("npc_vj_totu_weaponized_carcass")
												RevivedSquall.CanFlinch = 0
												RevivedSquall.CanInvestigate = false
												RevivedSquall.HasDeathAnimation = false
												RevivedSquall.CanTurnWhileStationary = false
												
												RevivedSquall:SetPos(v:GetPos())
												RevivedSquall:SetAngles(v:GetAngles())
												RevivedSquall:Spawn()
												RevivedSquall:Activate()
												-- undo.Create(self:GetName().." Minion")
												-- undo.ReplaceEntity(self,RevivedSquall)

												timer.Simple(0.01,function() if IsValid(RevivedSquall) then
													if math.random(1,2) == 1 then
														if math.random(1,3) == 1 then
															RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_a",true,false,false)
														else
															RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_a2",true,false,false)
														end
													else
														RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_b",true,false,false)
													end

													RevivedSquall:SetPos(RevivedSquall:GetPos() + RevivedSquall:GetUp()*6)

													timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
														RevivedSquall.CanFlinch = 1
														RevivedSquall.HasDeathAnimation = true
														RevivedSquall.CanInvestigate = true
														RevivedSquall.CanTurnWhileStationary = true
													end end)

												end end)

											elseif RandRevive == 2 then

												local RevivedSquall = ents.Create("npc_vj_totu_weaponized_cazador")
												RevivedSquall.CanFlinch = 0
												RevivedSquall.CanInvestigate = false
												RevivedSquall.HasDeathAnimation = false
												RevivedSquall.CanTurnWhileStationary = false
												
												RevivedSquall:SetPos(v:GetPos())
												RevivedSquall:SetAngles(v:GetAngles())
												RevivedSquall:Spawn()
												RevivedSquall:Activate()
												-- undo.Create(self:GetName().." Minion")
												-- undo.ReplaceEntity(self,RevivedSquall)

												timer.Simple(0.01,function() if IsValid(RevivedSquall) then
														
													local RandCazRevAnims = math.random(1,3)
													if RandCazRevAnims == 1 then
														RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_b",true,false,false)
													elseif RandCazRevAnims == 1 then
														RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_c",true,false,false)
													else
														RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_a",true,false,false)
													end

													RevivedSquall:SetPos(RevivedSquall:GetPos() + RevivedSquall:GetUp()*6)

													timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
														RevivedSquall.CanFlinch = 1
														RevivedSquall.HasDeathAnimation = true
														RevivedSquall.CanInvestigate = true
														RevivedSquall.CanTurnWhileStationary = true
														
													end end)

												end end)

											elseif RandRevive == 3 then

												local RevivedSquall = ents.Create("npc_vj_totu_weaponized_cyst")
												RevivedSquall.CanFlinch = 0
												RevivedSquall.CanInvestigate = false
												RevivedSquall.HasDeathAnimation = false
												RevivedSquall.CanTurnWhileStationary = false
												
												RevivedSquall:SetPos(v:GetPos())
												RevivedSquall:SetAngles(v:GetAngles())
												RevivedSquall:Spawn()
												RevivedSquall:Activate()
												-- undo.Create(self:GetName().." Minion")
												-- undo.ReplaceEntity(self,RevivedSquall)

												timer.Simple(0.01,function() if IsValid(RevivedSquall) then

												RevivedSquall:VJ_ACT_PLAYACTIVITY("vjseq_slumprise_a",true,false,false)

													RevivedSquall:SetPos(RevivedSquall:GetPos() + RevivedSquall:GetUp()*6)

													timer.Simple(AnimTime,function() if IsValid(RevivedSquall) then
														RevivedSquall.CanFlinch = 1
														RevivedSquall.HasDeathAnimation = true
														RevivedSquall.CanInvestigate = true
														RevivedSquall.CanTurnWhileStationary = true
														
													end end)

												end end)

											end

											if IsValid(v) then

												v:EmitSound(Sound("zombies/anywhere/ghoul/hit_"..math.random(1,3)..".mp3",80,math.random(100,90)))
												local bloodspray = EffectData()
												bloodspray:SetOrigin(v:GetPos())
												bloodspray:SetScale(10)
												bloodspray:SetFlags(3)
												bloodspray:SetColor(0)
												util.Effect("bloodspray",bloodspray)
												util.Effect("bloodspray",bloodspray)
												
												local bloodeffect = EffectData()
												bloodeffect:SetOrigin(v:GetPos())
												bloodeffect:SetColor(VJ_Color2Byte(Color(17,6,6,255)))
												bloodeffect:SetScale(125)
												util.Effect("VJ_Blood1",bloodeffect)

												v:Remove()
											end
										end
					
									end
									end end)
								
							end
						end)
					end
				end
			end
		end
	end

	if self:GetClass() == "npc_vj_totu_weaponized_revenant" && !self.Dead then
		for _,v in ipairs(ents.FindInSphere(self:GetPos(),150)) do

			if v:IsNPC() && !v.Dead && v.Alerted && !self.Dead && v:Disposition(self) == D_LI && CurTime() > self.ToTU_Weaponized_Revenant_NextBuffTime && v:GetClass() != "npc_vj_totu_weaponized_cazador" && v:GetClass() != "npc_vj_totu_weaponized_cazador_torso" then

				if v.ToTU_Deimos then

					effects.BeamRingPoint(self:GetPos(), 0.3, 2, 400, 16, 0, Color(255, 0, 0, 255), {material="sprites/orangelight1", framerate=20})
					effects.BeamRingPoint(self:GetPos(), 0.3, 2, 200, 16, 0, Color(255, 0, 0, 255), {material="sprites/orangelight1", framerate=20})
					-- VJ_EmitSound(self,{"ambient/machines/thumper_hit.wav"},100,math.random(100,95))
					-- VJ_EmitSound(self,{"ambient/machines/thumper_dust.wav"},100,math.random(100,95))
					VJ_EmitSound(self,{"items/battery_pickup.wav"},100,math.random(100,95))

					if v.ToTU_Weaponized_IsHL2Zomb then
						if v.ToTU_Weaponized_Carcass_ZombineRunning then
							v.ToTU_Weaponized_Carcass_ZombineRunT = CurTime() + math.random(5,10)
						else
							v.ToTU_Weaponized_Carcass_NextZombineRunT = 0
						end
					else
						if v.ToTU_Weaponized_Redead_Running then
							v.ToTU_Weaponized_Redead_RunT = CurTime() + math.random(5,10)
						else
							v.ToTU_Weaponized_Redead_NextRunT = 0
						end
					end

					self.ToTU_Weaponized_Revenant_NextBuffTime = CurTime() + math.random(3,5)

				end

			end

		end
	end

	if self:GetClass() == "npc_vj_totu_weaponized_cancer" then
		if self.LNR_Crippled then
			local randuncriptime = math.random(5,10)
			timer.Simple(randuncriptime,function() if IsValid(self) && self.LNR_Crippled then
				self:VJ_ACT_PLAYACTIVITY("vjseq_infectionrise2",true,false,false)
				self.MovementType = VJ_MOVETYPE_STATIONARY
				self.ToTU_CanStumble = false
				timer.Simple(3.6,function() if IsValid(self) then
					self.LNR_Crippled = false
					self.MovementType = VJ_MOVETYPE_GROUND
					self.ToTU_CanStumble = true
				end end)
				self:UnCripple()
			end end)
		end
	end

	if self:GetClass() == "npc_vj_totu_weaponized_revenant" or self.ToTU_Weaponized_Redead_Grunt_IsCaretaker then

		for _,v in ipairs(ents.FindInSphere(self:GetPos(),150)) do

			if v:IsNPC() && !v.Dead && !self.Dead && v:Disposition(self) == D_LI then

				if v:Health() < v:GetMaxHealth() && CurTime() > self.ToTU_Weaponized_NextHealTime then

					for i = 0,v:GetBoneCount() -1 do

						ParticleEffect("vortigaunt_glow_beam_cp0",v:GetBonePosition(i),Angle(0,0,0),nil)

					end

					for i = 0,self:GetBoneCount() -1 do

						ParticleEffect("vortigaunt_glow_beam_cp1",self:GetBonePosition(i),Angle(0,0,0),nil)

					end

					effects.BeamRingPoint(self:GetPos(), 0.3, 2, 400, 16, 0, Color(33, 255, 0, 255), {material="sprites/orangelight1", framerate=20})
					effects.BeamRingPoint(self:GetPos(), 0.3, 2, 200, 16, 0, Color(33, 255, 0, 255), {material="sprites/orangelight1", framerate=20})
					VJ_EmitSound(self,{"items/smallmedkit1.wav"},100,math.random(100,95))
					v:SetHealth(v:Health() +math.random(30,35))

					if v:Health() > v:GetMaxHealth() then

						v:SetHealth(v:GetMaxHealth())

					end

					self.ToTU_Weaponized_NextHealTime = CurTime() + (math.Rand(2,4))

				end

			end

		end

	end

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/