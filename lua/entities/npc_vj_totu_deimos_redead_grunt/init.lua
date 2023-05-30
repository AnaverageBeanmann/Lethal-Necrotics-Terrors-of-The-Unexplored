AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()

	self.MilZ_IsMilZ = true

	self.MilZ_HelmetHealth = GetConVar("VJ_ToTU_MilZ_Helmet_Health"):GetInt()

	if GetConVar("VJ_ToTU_General_TF2Mode"):GetInt() == 0 then
		self.GeneralSoundPitch1 = 85
		self.GeneralSoundPitch2 = 80
	end

	self.Model = {"models/totu/remort.mdl"}

	timer.Simple(0.1,function() if IsValid(self) && !self.LNR_Crippled  then
		self.AnimTbl_Walk = {ACT_MP_MELEE_GRENADE1_IDLE}
		self.AnimTbl_Run = {ACT_SPRINT}
		self.AnimTbl_IdleStand = {ACT_IDLE_AIM_STIMULATED}
		if self.LNR_UsingRelaxedIdle == true then
			self.AnimTbl_IdleStand = {ACT_IDLE}
		end
	end end)

	self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(3,10)

	self.SoundTbl_Breath = {
		"ambient/levels/prison/radio_random1.wav",
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
		"ambient/levels/prison/radio_random14.wav"
	}

	self.NextSoundTime_Breath = VJ_Set(7,20)

	if math.random(1,4) == 1 then

		if math.random(1,2) == 1 then
			self.SoundTbl_Breath = {
				"fx/radio/4/hq_radio_garble_01.ogg",
				"fx/radio/4/hq_radio_garble_02.ogg",
				"fx/radio/4/hq_radio_garble_03.ogg",
				"fx/radio/4/hq_radio_garble_04.ogg",
				"fx/radio/4/hq_radio_garble_05.ogg",
				"fx/radio/4/hq_radio_garble_06.ogg",
				"fx/radio/4/hq_radio_garble_07.ogg",
			}
			self.BreathSoundLevel = 65
		else
			self.SoundTbl_Breath = {
				"fx/radio/1/radio_1.mp3",
				"fx/radio/1/radio_2.mp3",
				"fx/radio/1/radio_3.mp3",
				"fx/radio/1/radio_4.mp3",
				"fx/radio/1/radio_5.mp3",
				"fx/radio/1/radio_6.mp3",
				"fx/radio/1/radio_7.mp3",
				"fx/radio/1/radio_8.mp3",
				"fx/radio/1/radio_9.mp3"
			}
			self.BreathSoundLevel = 55
		end

	end

	if math.random(1,7) == 1 then
		if math.random(1,2) == 1 then
			self.SoundTbl_Breath = {
				"fx/radio/3/airsupportnotvalidtarget1.ogg",
				"fx/radio/3/airsupportnotvalidtarget2.ogg",
				"fx/radio/3/airsupportnotvalidtarget3.ogg",
				"fx/radio/3/airsupportnotvalidtarget4.ogg",
				"fx/radio/3/airsupportnotvalidtarget5.ogg",
				"fx/radio/3/airsupportunavailable1.ogg",
				"fx/radio/3/airsupportunavailable2.ogg",
				"fx/radio/3/airsupportunavailable3.ogg",
				"fx/radio/3/airsupportunavailable4.ogg",
				"fx/radio/3/airsupportunavailable5.ogg",
				"fx/radio/3/airsupportunavailable6.ogg",
				"fx/radio/3/airsupportunavailable7.ogg",
				"fx/radio/3/airsupportunavailable8.ogg",
				"fx/radio/3/airsupportunavailable9.ogg",
				"fx/radio/3/airsupportunavailable10.ogg",
				"fx/radio/3/artillerybegin1.ogg",
				"fx/radio/3/artillerybegin2.ogg",
				"fx/radio/3/artillerybegin3.ogg",
				"fx/radio/3/artillerybegin4.ogg",
				"fx/radio/3/artillerybegin5.ogg",
				"fx/radio/3/artillerybegin6.ogg",
				"fx/radio/3/artillerybeginsmoke1.ogg",
				"fx/radio/3/artillerybeginsmoke2.ogg",
				"fx/radio/3/artillerybeginsmoke3.ogg",
				"fx/radio/3/artillerybeginsmoke4.ogg",
				"fx/radio/3/artillerybeginsmoke5.ogg",
				"fx/radio/3/artillerybusy1.ogg",
				"fx/radio/3/artillerybusy2.ogg",
				"fx/radio/3/artillerybusy3.ogg",
				"fx/radio/3/artillerybusy4.ogg",
				"fx/radio/3/artillerybusy5.ogg",
				"fx/radio/3/artillerybusy6.ogg",
				"fx/radio/3/artillerydoesnotcopy1.ogg",
				"fx/radio/3/artillerydoesnotcopy2.ogg",
				"fx/radio/3/artillerydoesnotcopy3.ogg",
				"fx/radio/3/artillerydoesnotcopy4.ogg",
				"fx/radio/3/artillerydoesnotcopy5.ogg",
				"fx/radio/3/artilleryend1.ogg",
				"fx/radio/3/artilleryend2.ogg",
				"fx/radio/3/artilleryend3.ogg",
				"fx/radio/3/artilleryend4.ogg",
				"fx/radio/3/artilleryend5.ogg",
				"fx/radio/3/artilleryendsmoke1a.ogg",
				"fx/radio/3/artilleryendsmoke2.ogg",
				"fx/radio/3/artilleryendsmoke3.ogg",
				"fx/radio/3/artilleryendsmoke4.ogg",
				"fx/radio/3/artilleryendsmoke5.ogg",
				"fx/radio/3/artilleryloading1.ogg",
				"fx/radio/3/artilleryloading2.ogg",
				"fx/radio/3/artilleryloading3.ogg",
				"fx/radio/3/artilleryloading4.ogg",
				"fx/radio/3/artilleryloading5.ogg",
				"fx/radio/3/artillerynotvalidtarget1.ogg",
				"fx/radio/3/artillerynotvalidtarget2.ogg",
				"fx/radio/3/artillerynotvalidtarget3.ogg",
				"fx/radio/3/artillerynotvalidtarget4.ogg",
				"fx/radio/3/artillerynotvalidtarget5.ogg",
				"fx/radio/3/artilleryready1.ogg",
				"fx/radio/3/artilleryready2.ogg",
				"fx/radio/3/artilleryready3.ogg",
				"fx/radio/3/artilleryready4.ogg",
				"fx/radio/3/artilleryready5.ogg",
				"fx/radio/3/autosupplydrop1.ogg",
				"fx/radio/3/autosupplydrop2.ogg",
				"fx/radio/3/autosupplydrop3.ogg",
				"fx/radio/3/autosupplydrop4.ogg",
				"fx/radio/3/autosupplydrop5.ogg",
				"fx/radio/3/carpetbombbegin1.ogg",
				"fx/radio/3/carpetbombbegin2.ogg",
				"fx/radio/3/carpetbombbegin3.ogg",
				"fx/radio/3/carpetbombbegin4.ogg",
				"fx/radio/3/carpetbombbegin5.ogg",
				"fx/radio/3/carpetbombend1.ogg",
				"fx/radio/3/carpetbombend2.ogg",
				"fx/radio/3/carpetbombend3.ogg",
				"fx/radio/3/carpetbombend4.ogg",
				"fx/radio/3/carpetbombend5.ogg",
				"fx/radio/3/carpetbombready1.ogg",
				"fx/radio/3/carpetbombready2.ogg",
				"fx/radio/3/carpetbombready3.ogg",
				"fx/radio/3/carpetbombready4.ogg",
				"fx/radio/3/carpetbombready5.ogg",
				"fx/radio/3/genericsupportavaliable1.ogg",
				"fx/radio/3/genericsupportavaliable2.ogg",
				"fx/radio/3/genericsupportavaliable3.ogg",
				"fx/radio/3/genericsupportavaliable4.ogg",
				"fx/radio/3/genericsupportavaliable5.ogg",
				"fx/radio/3/reinforcementready1.ogg",
				"fx/radio/3/reinforcementready2.ogg",
				"fx/radio/3/reinforcementready3.ogg",
				"fx/radio/3/reinforcementready4.ogg",
				"fx/radio/3/reinforcementready5.ogg",
				"fx/radio/3/reinforcementsbegin1.ogg",
				"fx/radio/3/reinforcementsbegin2.ogg",
				"fx/radio/3/reinforcementsbegin3.ogg",
				"fx/radio/3/reinforcementsbegin4.ogg",
				"fx/radio/3/reinforcementsbegin5.ogg",
				"fx/radio/3/reinforcementsend1.ogg",
				"fx/radio/3/reinforcementsend2.ogg",
				"fx/radio/3/reinforcementsend3.ogg",
				"fx/radio/3/reinforcementsend4.ogg",
				"fx/radio/3/reinforcementsend5.ogg",
				"fx/radio/3/straferunbegin1.ogg",
				"fx/radio/3/straferunbegin2.ogg",
				"fx/radio/3/straferunbegin3.ogg",
				"fx/radio/3/straferunbegin4.ogg",
				"fx/radio/3/straferunbegin5.ogg",
				"fx/radio/3/straferunend1.ogg",
				"fx/radio/3/straferunend2.ogg",
				"fx/radio/3/straferunend3.ogg",
				"fx/radio/3/straferunend4.ogg",
				"fx/radio/3/straferunend5.ogg",
				"fx/radio/3/straferunready1.ogg",
				"fx/radio/3/straferunready2.ogg",
				"fx/radio/3/straferunready3.ogg",
				"fx/radio/3/straferunready4.ogg",
				"fx/radio/3/straferunready5.ogg",
				"fx/radio/3/supplydropbegin1.ogg",
				"fx/radio/3/supplydropbegin2.ogg",
				"fx/radio/3/supplydropbegin3.ogg",
				"fx/radio/3/supplydropbegin4.ogg",
				"fx/radio/3/supplydropbegin5.ogg",
				"fx/radio/3/supplydropend1.ogg",
				"fx/radio/3/supplydropend2.ogg",
				"fx/radio/3/supplydropend3.ogg",
				"fx/radio/3/supplydropend4.ogg",
				"fx/radio/3/supplydropend5.ogg",
				"fx/radio/3/supplydropready1.ogg",
				"fx/radio/3/supplydropready2.ogg",
				"fx/radio/3/supplydropready3.ogg",
				"fx/radio/3/supplydropready4.ogg",
				"fx/radio/3/supplydropready5.ogg",
			}
			self.BreathSoundLevel = 65
		else
			self.SoundTbl_Breath = {
				"fx/radio/2/beep.mp3",
				"fx/radio/2/radio_1.mp3",
				"fx/radio/2/radio_2.mp3",
				"fx/radio/2/radio_3.mp3",
				"fx/radio/2/radio_4.mp3",
				"fx/radio/2/radio_5.mp3",
				"fx/radio/2/radio_6.mp3",
				"fx/radio/2/radio_7.mp3",
				"fx/radio/2/radio_8.mp3",
				"fx/radio/2/radio_9.mp3",
				"fx/radio/2/radio_10.mp3",
				"fx/radio/2/radio_11.mp3",
				"fx/radio/2/radio_12.mp3",
				"fx/radio/2/radio_13.mp3",
				"fx/radio/2/radio_14.mp3",
				"fx/radio/2/radio_15.mp3",
				"fx/radio/2/radio_16.mp3",
				"fx/radio/2/radio_17.mp3",
				"fx/radio/2/radio_18.mp3",
				"fx/radio/2/radio_19.mp3",
				"fx/radio/2/radio_20.mp3",
				"fx/radio/2/radio_21.mp3",
				"fx/radio/2/radio_22.mp3",
				"fx/radio/2/radio_23.mp3",
				"fx/radio/2/radio_24.mp3",
				"fx/radio/2/radio_25.mp3",
				"fx/radio/2/radio_26.mp3",
				"fx/radio/2/radio_27.mp3",
				"fx/radio/2/radio_28.mp3"
			}
			self.BreathSoundLevel = 55
		end


	end

	if
		GetConVar("VJ_ToTU_Weaponized_Remort_Gasmasks_Allow"):GetInt() == 1 &&
		math.random(1,GetConVar("VJ_ToTU_Weaponized_Remort_Gasmasks_Chance"):GetInt()) == 1
	then
		self.MilZ_HasGasmask = true
		self.CanEat = false
	end

	if 
		GetConVar("VJ_ToTU_Weaponized_Remort_FlakArmor_Allow"):GetInt() == 1 &&
		math.random(1,GetConVar("VJ_ToTU_Weaponized_Remort_FlakArmor_Chance"):GetInt()) == 1 &&
		!self.MilZ_Det_IsDetonator
	then
		self.MilZ_HasFlakSuit = true
	end

	
	if
		GetConVar("VJ_ToTU_Weaponized_Remort_Caretakers_Allow"):GetInt() == 1 &&
		math.random(1,GetConVar("VJ_ToTU_Weaponized_Remort_Caretakers_Chance"):GetInt()) == 1
	then

		self.ToTU_Weaponized_Redead_Grunt_IsCaretaker = true

		self.Model = {"models/totu/remort_med.mdl"}
		self.IsMedicSNPC = true
		self.AnimTbl_Medic_GiveHealth = {"vjseq_nz_attack_stand_ad_1"}
		self.Medic_TimeUntilHeal = 0.9
		self.Medic_HealthAmount = math.random(45,50)
		self.Medic_SpawnPropOnHealModel = "models/totu/hspray.mdl"
		self.Medic_SpawnPropOnHealAttachment = "anim_attachment_RH"
		self.SoundTbl_MedicAfterHeal = {"fx/medspray.wav"}

		self.ItemDropsOnDeath_EntityList = {
			"item_ammo_pistol",
			"item_ammo_357",
			"item_ammo_smg1",
			"item_ammo_ar2",
			"item_box_buckshot",
			"item_healthvial",
			"item_healthvial",
			"item_healthvial",
		}

	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()

	self.ItemDropsOnDeath_EntityList = {
		"item_ammo_pistol",
		"item_ammo_357",
		"item_ammo_smg1",
		"item_ammo_ar2",
		"item_box_buckshot",
	}

	if
		(GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() == -1 or GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() != -1) &&
		GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() != 0
	then
		self.ItemDropsOnDeath_EntityList = {
			"item_ammo_pistol",
			"item_ammo_357",
			"item_ammo_smg1",
			"item_ammo_ar2",
			"item_box_buckshot",
			"weapon_frag",
			"weapon_frag",
			"obj_vj_totu_milzgren",
			"obj_vj_totu_flashbang",
		}
	end

	if math.random(1,2) == 1 then

		self:SetBodygroup(2,math.random(0,2))

	else

		self:SetBodygroup(2,math.random(4,6))

	end

	if math.random(1,4) == 1 then

		self:SetBodygroup(3,1)

	end

	if self.MilZ_HasGasmask == false then

		self:SetBodygroup(4,math.random(1,6))

		if self:GetBodygroup(4) == 5 then
			self.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyeglow = false
		end

		if self:GetBodygroup(4) == 2 then
			self.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyetrail = false
		end

		if self.LNR_Biter == false then

			if math.random(1,2) == 1 then
				self:SetBodygroup(1,1)
				self.CanEat = false
			else
				self:SetBodygroup(1,0)
			end

		end

	end

	if self.MilZ_HasFlakSuit == true then

		self:SetBodygroup(2,3)

	end
	

	if GetConVar("VJ_ToTU_MilZ_Grenades"):GetInt() == 1 then

		if math.random(1,GetConVar("VJ_ToTU_MilZ_Grenades_Chance"):GetInt()) == 1 && !self.LNR_Crippled && !self.MilZ_CanShuutDeGun then

			self.HasRangeAttack = true
			self.RangeAttackAnimationFaceEnemy = true
			self.AnimTbl_RangeAttack = {"vjseq_throwsomeshit"}
			self.RangeDistance = 750 
			self.RangeToMeleeDistance = 1 
			self.RangeAttackAngleRadius = 100
			self.TimeUntilRangeAttackProjectileRelease = 1.6
			self.NextRangeAttackTime = math.random(15,20)
			self.RangeAttackPos_Up = 65
			self.RangeAttackPos_Right = -10

			self.MilZ_HasGrenades = true

			if GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() == -1 then

				self.MilZ_Grenades = math.random(1,3)

			elseif GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() == 0 then

				-- i mean what did you expect?
				self.MilZ_Grenades = 0
				self.HasRangeAttack = false

			elseif GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt() != -1 then

				self.MilZ_Grenades = GetConVar("VJ_ToTU_MilZ_Grenades_Ammount"):GetInt()

			end

		end

	end

	if math.random(1,4) == 1 then
		self:ZombieWeapons()
	end

	if self.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyeglow then
		if self.DisableFindEnemy == true then
			timer.Simple(1.4,function() if IsValid(self) then
				self:Zombie_GlowEyes_Give()
			end end)
		else
			self:Zombie_GlowEyes_Give()
		end
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MilZ_GiveGasmaskSounds()

	self.SoundTbl_Idle = {
		"voices/mil_gasmask/idle_1.wav",
		"voices/mil_gasmask/idle_2.wav",
		"voices/mil_gasmask/idle_3.wav",
		"voices/mil_gasmask/idle_4.wav"
	}

	self.SoundTbl_Alert = {
		"voices/mil_gasmask/alert_1.wav",
		"voices/mil_gasmask/alert_2.wav",
		"voices/mil_gasmask/alert_3.wav",
		"voices/mil_gasmask/alert_4.wav",
		"voices/mil_gasmask/alert_5.wav",
		"voices/mil_gasmask/alert_6.wav",
		"voices/mil_gasmask/alert_7.wav"
	}

	self.SoundTbl_CombatIdle = {
		"voices/mil_gasmask/cidle_1.wav",
		"voices/mil_gasmask/cidle_2.wav"
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"voices/mil_gasmask/alert_1.wav",
		"voices/mil_gasmask/alert_2.wav",
		"voices/mil_gasmask/alert_3.wav",
		"voices/mil_gasmask/alert_4.wav",
		"voices/mil_gasmask/alert_5.wav",
		"voices/mil_gasmask/alert_6.wav",
		"voices/mil_gasmask/alert_7.wav"
	}

	self.SoundTbl_Pain = {
		"voices/mil_gasmask/pain_1.wav",
		"voices/mil_gasmask/pain_2.wav",
		"voices/mil_gasmask/pain_3.wav",
		"voices/mil_gasmask/pain_4.wav"
	}

	self.SoundTbl_Death = {
		"voices/mil_gasmask/death_1.wav",
		"voices/mil_gasmask/death_2.wav"
	}

	self.ToTU_Almanac_VoiceActor = "Security Zombie (Nightmare House 2)"

	if GetConVar("VJ_ToTU_General_TF2Mode"):GetInt() == 1 then

		self.SoundTbl_Idle = {
			"vo/pyro_laughevil02.mp3",
			"vo/pyro_laughevil03.mp3",
			"vo/pyro_laughevil04.mp3"
		}

		self.SoundTbl_Alert = {
			"vo/pyro_battlecry01.mp3",
			"vo/pyro_battlecry02.mp3",
			"vo/pyro_headleft01.mp3",
			"vo/taunts/pyro/pyro_taunt_head_int_01.mp3",
			"vo/taunts/pyro/pyro_taunt_head_int_03.mp3",
			"vo/taunts/pyro/pyro_taunt_head_int_04.mp3"
		}

		self.SoundTbl_CallForHelp = {
			"vo/pyro_activatecharge01.mp3",
			"vo/pyro_go01.mp3",
			"vo/pyro_headleft01.mp3",
			"vo/pyro_helpme01.mp3",
			"vo/pyro_moveup01.mp3"
		}

		self.SoundTbl_CombatIdle = {
			"vo/pyro_laugh_addl04.mp3",
			"vo/pyro_laughevil01.mp3",
			"vo/pyro_laughevil02.mp3",
			"vo/pyro_laughevil03.mp3",
			"vo/pyro_laughevil04.mp3",
			"vo/pyro_laughshort01.mp3",
			"vo/taunts/pyro/pyro_taunt_cong_fun_05.mp3",
			"vo/taunts/pyro/pyro_taunt_cong_fun_08.mp3",
			"vo/taunts/pyro/pyro_taunt_cong_fun_09.mp3",
			"vo/taunts/pyro/pyro_taunt_cong_fun_10.mp3",
			"vo/taunts/pyro/pyro_taunt_cong_fun_11.mp3",
			"vo/taunts/pyro/pyro_taunt_cong_fun_12.mp3",
			"vo/taunts/pyro/pyro_taunt_cong_fun_13.mp3",
			"vo/taunts/pyro/pyro_taunt_cong_fun_14.mp3"
		}

		self.SoundTbl_BeforeMeleeAttack = {
			"vo/taunts/pyro_highfive01.mp3",
			"vo/taunts/pyro_highfive02.mp3",
			"vo/taunts/pyro/pyro_taunt_flip_exert_02.mp3",
			"vo/taunts/pyro/pyro_taunt_flip_exert_04.mp3",
			"vo/taunts/pyro/pyro_taunt_flip_exert_05.mp3",
			"vo/taunts/pyro/pyro_taunt_head_exert_03.mp3"
		}

		self.SoundTbl_OnKilledEnemy = {
			"vo/pyro_autocappedcontrolpoint01.mp3",
			"vo/pyro_autocappedintelligence01.mp3",
			"vo/pyro_cheers01.mp3",
			"vo/pyro_goodjob01.mp3",
			"vo/pyro_positivevocalization01.mp3",
			"vo/taunts/pyro_taunts01.mp3",
			"vo/taunts/pyro_taunts02.mp3",
			"vo/taunts/pyro_taunts03.mp3",
			"vo/taunts/pyro_taunts04.mp3",
			"vo/taunts/pyro_highfive_success02.mp3",
			"vo/taunts/pyro_highfive_success03.mp3",
			"vo/taunts/pyro/pyro_taunt_ballon_07.mp3",
			"vo/taunts/pyro/pyro_taunt_ballon_11.mp3"
		}

		self.SoundTbl_AllyDeath = {
			"vo/pyro_autodejectedtie01.mp3",
			"vo/pyro_jeers01.mp3",
			"vo/pyro_jeers02.mp3",
			"vo/pyro_negativevocalization01.mp3"
		}

		self.SoundTbl_Pain = {
			"vo/pyro_medic01.mp3",
			"vo/pyro_painsevere01.mp3",
			"vo/pyro_painsevere02.mp3",
			"vo/pyro_painsevere03.mp3",
			"vo/pyro_painsevere04.mp3",
			"vo/pyro_painsevere05.mp3",
			"vo/pyro_painsevere06.mp3",
			"vo/pyro_painsharp01.mp3",
			"vo/pyro_painsharp02.mp3",
			"vo/pyro_painsharp03.mp3",
			"vo/pyro_painsharp04.mp3",
			"vo/pyro_painsharp05.mp3",
			"vo/pyro_painsharp06.mp3",
			"vo/pyro_painsharp07.mp3"
		}

		self.SoundTbl_Death = {
			"vo/pyro_paincrticialdeath01.mp3",
			"vo/pyro_paincrticialdeath02.mp3",
			"vo/pyro_paincrticialdeath03.mp3"
		}
		
		self.ToTU_Almanac_VoiceActor = "Pyro (Team Fortress 2)"
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_GlowEyes_Give()

	if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 0 or GetConVar("vj_npc_noidleparticle"):GetInt() == 1  then return end

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

	if self.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyetrail && !self.MilZ_HasGasmask && GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
		local TrailColor = Color(220,0,255,255)
		local EyeTrail = util.SpriteTrail(self,10,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		local EyeTrail2 = util.SpriteTrail(self,9,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 150
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 350
		self.MeleeAttackDamage = math.Rand(25,30)

	else

		self.StartHealth = 200
		self.MeleeAttackDamage = math.Rand(10,15)

	end

	self:SetHealth(self.StartHealth)

	self.LNR_LegHP = self.StartHealth * 0.20

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)

	if GetConVar("VJ_ToTU_General_Armor_Allow"):GetInt() == 0 then return end

	if self.MilZ_HasFlakSuit == true then

		if
			dmginfo:IsExplosionDamage() or
			dmginfo:IsDamageType(DMG_BLAST_SURFACE) or
			dmginfo:IsDamageType(DMG_MISSILEDEFENSE) or
			dmginfo:IsDamageType(DMG_ALWAYSGIB)
		then

			dmginfo:ScaleDamage(0.50)

		end

	end

	if
		hitgroup == HITGROUP_GENERIC &&
		(dmginfo:IsDamageType(DMG_CLUB) or
		dmginfo:IsDamageType(DMG_SLASH) or
		dmginfo:IsDamageType(DMG_GENERIC))
	then

		-- didn't hit a bodygroup, assume they sometimes hit the armor
		-- don't run this for houndeyes and stuff

		if math.random(1,2) == 1 then

			dmginfo:ScaleDamage(0.35)

			if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"fx/armor/bhit_helmet-1.wav",70) end

		end

	end

	if
		hitgroup == HITGROUP_HEAD &&
		!self.MilZ_HelmetBroken
	then

		if GetConVar("VJ_ToTU_MilZ_Helmet_Breakable"):GetInt() == 1 then

			self.MilZ_HelmetHealth = self.MilZ_HelmetHealth -dmginfo:GetDamage()

			if self.MilZ_HelmetHealth <= 0 && !self.MilZ_HelmetBroken then

				self.MilZ_HelmetBroken = true

				if self.VJ_IsBeingControlled then
					self.VJ_TheController:ChatPrint("Your helmet broke!")
					local badtotheboner = CreateSound(self.VJ_TheController, "common/warning.wav")
					badtotheboner:SetSoundLevel(0)
					badtotheboner:Play()
				end

				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/wood/wood_box_break1.wav","physics/wood/wood_box_break2.wav"},70) end
				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/plastic/plastic_box_break1.wav","physics/plastic/plastic_box_break2.wav"},70) end
				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/wood/wood_strain2.wav","physics/wood/wood_strain3.wav","physics/wood/wood_strain4.wav"},70) end

				self:RemoveAllDecals()

				if !self.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyetrail && !self.MilZ_HasGasmask then
					if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 && GetConVar("vj_npc_noidleparticle"):GetInt() == 0  then
						local TrailColor = Color(220,0,255,255)
						local EyeTrail = util.SpriteTrail(self,10,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
						local EyeTrail2 = util.SpriteTrail(self,9,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
					end
				end


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

				if self:GetBodygroup(4) == 5 then
					self:Zombie_GlowEyes_Give()
				end

				if self.MilZ_HasGasmask then

					self:SetBodygroup(4,8)

				else

					self:SetBodygroup(4,7)

				end

				self.Bleeds = true

		return end

		end

		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"fx/armor/bhit_helmet-1.wav",70) end

		self.Bleeds = false

		if
			dmginfo:IsBulletDamage() or
			dmginfo:IsDamageType(DMG_BUCKSHOT) or
			dmginfo:IsDamageType(DMG_SLASH) or
			dmginfo:IsDamageType(DMG_CLUB)
		then

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
	
		self.Bleeds = true

		if
			dmginfo:IsBulletDamage() or
			dmginfo:IsDamageType(DMG_BUCKSHOT) or
			dmginfo:IsDamageType(DMG_SLASH) or
			dmginfo:IsDamageType(DMG_CLUB)
		then

			if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"fx/armor/bhit_helmet-1.wav",70) end

			if math.random(1,3) == 1 then

				dmginfo:ScaleDamage(0.50)

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

				dmginfo:ScaleDamage(0.35)

			end

		end

	end

	if !self.MilZ_HasFlakSuit then return end

	if hitgroup == HITGROUP_LEFTARM or hitgroup == HITGROUP_RIGHTARM or hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then

		self.Bleeds = true

		if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SLASH) then

		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"fx/armor/kevlar"..math.random(1,5)..".wav",70) end

			if math.random(1,3) == 1 then

				dmginfo:ScaleDamage(1)

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

		end	

	end

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/