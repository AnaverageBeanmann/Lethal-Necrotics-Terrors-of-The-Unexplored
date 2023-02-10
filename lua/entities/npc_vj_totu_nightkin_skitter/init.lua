AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 75
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 125
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 175
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 225
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 275
		self.MeleeAttackDamage = math.Rand(25,30)

	else

		self.StartHealth = 125
		self.MeleeAttackDamage = math.Rand(10,15)

	end

	self:SetHealth(self.StartHealth)	

	if GetConVar("VJ_ToTU_General_LegHealthScalesWithDifficulty"):GetInt() == 1 then

		if GetConVar("VJ_LNR_Difficulty"):GetInt() == 1 then

			self.LNR_LegHP = 15

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 2 then

			self.LNR_LegHP = 25

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 3 then

			self.LNR_LegHP = 35

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 4 then

			self.LNR_LegHP = 45

		elseif GetConVar("VJ_LNR_Difficulty"):GetInt() == 5 then

			self.LNR_LegHP = 55

		end
	
	else

		self.LNR_LegHP = 25

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Idle = {
		"voices/nightkin/skitter/idle_1.mp3",
		"voices/nightkin/skitter/idle_2.mp3",
		"voices/nightkin/skitter/idle_3.mp3",
		"voices/nightkin/skitter/idle_4.mp3",
		"voices/nightkin/skitter/idle_5.mp3",
		"voices/nightkin/skitter/idle_6.mp3",
		"voices/nightkin/skitter/idle_7.mp3",
		"voices/nightkin/skitter/idle_8.mp3",
		"voices/nightkin/skitter/idle_9.mp3",
		"voices/nightkin/skitter/idle_10.mp3"
	}

	self.SoundTbl_Alert = {
		"voices/nightkin/skitter/attack_1.mp3",
		"voices/nightkin/skitter/attack_2.mp3",
		"voices/nightkin/skitter/attack_3.mp3",
		"voices/nightkin/skitter/attack_4.mp3",
		"voices/nightkin/skitter/attack_5.mp3",
		"voices/nightkin/skitter/attack_6.mp3",
		"voices/nightkin/skitter/attack_7.mp3"
	}

	self.SoundTbl_CombatIdle = {
		"voices/nightkin/skitter/cidle_1.mp3",
		"voices/nightkin/skitter/cidle_2.mp3",
		"voices/nightkin/skitter/cidle_3.mp3",
		"voices/nightkin/skitter/cidle_4.mp3"
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"voices/nightkin/skitter/attack_1.mp3",
		"voices/nightkin/skitter/attack_2.mp3",
		"voices/nightkin/skitter/attack_3.mp3",
		"voices/nightkin/skitter/attack_4.mp3",
		"voices/nightkin/skitter/attack_5.mp3",
		"voices/nightkin/skitter/attack_6.mp3",
		"voices/nightkin/skitter/attack_7.mp3"
	}

	self.SoundTbl_Pain = {
		"voices/nightkin/skitter/pain_1.mp3",
		"voices/nightkin/skitter/pain_2.mp3",
		"voices/nightkin/skitter/pain_3.mp3",
		"voices/nightkin/skitter/pain_4.mp3",
		"voices/nightkin/skitter/pain_5.mp3",
		"voices/nightkin/skitter/pain_6.mp3",
		"voices/nightkin/skitter/pain_7.mp3",
		"voices/nightkin/skitter/pain_8.mp3",
		"voices/nightkin/skitter/pain_9.mp3",
		"voices/nightkin/skitter/pain_10.mp3",
		"voices/nightkin/skitter/pain_12.mp3",
		"voices/nightkin/skitter/pain_13.mp3",
		"voices/nightkin/skitter/pain_14.mp3"
	}

	self.SoundTbl_Death = {
		"voices/nightkin/skitter/death_1.mp3",
		"voices/nightkin/skitter/death_2.mp3",
		"voices/nightkin/skitter/death_3.mp3",
		"voices/nightkin/skitter/death_4.mp3"
	}

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()

	if
		self.LNR_Crippled or
		self.ToTU_Crawling or
		self.LeapAttacking or
		self:GetActivity() == ACT_STEP_BACK or
		self:GetActivity() == ACT_STEP_FORE or	
		self:GetActivity() == ACT_SMALL_FLINCH or
		self:GetActivity() == ACT_BIG_FLINCH or
		self:GetActivity() == ACT_FLINCH_STOMACH or
		self:GetActivity() == ACT_GMOD_SHOWOFF_STAND_01 or
		self:GetActivity() == ACT_VM_DEPLOYED_FIRE or
		self:GetSequence() == self:LookupSequence("jump_attack") or
		self:GetSequence() == self:LookupSequence("nz_spawn_jump") or
		self:GetSequence() == self:LookupSequence("nz_spawn_climbout_fast") or
		self:GetSequence() == self:LookupSequence("Run_Stumble_01") or
		self:GetSequence() == self:LookupSequence("Climb120_00_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb120_00a_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb120_03_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb120_03a_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb120_04_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb144_00_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb144_00a_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb144_01_InPlace") or	
		self:GetSequence() == self:LookupSequence("Climb144_03_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb144_03a_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb144_04_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb72_03_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb72_04_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb72_05_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb72_06_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb72_07_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb96_00_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb96_00a_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb96_03_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb96_03a_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb96_04a_InPlace") or
		self:GetSequence() == self:LookupSequence("Climb96_05_InPlace")
	then return end

	if self.Dead == false && self:GetEnemy() != nil && self.VJ_IsBeingControlled == false && !self.LNR_Crippled then

		local enemydist = self:GetPos():Distance(self:GetEnemy():GetPos())

		if
			enemydist >= 350 &&
			self.ToTU_Nightkin_Skitter_PlayChangeStateAnim == 1 &&
			CurTime() > self.ToTU_Nightkin_Skitter_PlayChangeStateAnimT &&
			!self.LeapAttacking
		then
			self.AnimTbl_Run = {ACT_RUN_STEALTH}
			self:ToTU_Skitter_StartCrawling()
			self.ToTU_Nightkin_Skitter_PlayChangeStateAnimT = CurTime() + (0.5)

			local anim = {"vjseq_Stand_to_crouch"}
			self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
		elseif
			enemydist <= 150 &&
			self.ToTU_Nightkin_Skitter_PlayChangeStateAnim == 2 &&
			CurTime() > self.ToTU_Nightkin_Skitter_PlayChangeStateAnimT &&
			!self.LeapAttacking
		then
			self.AnimTbl_Run = {ACT_RUN_RELAXED}
			self:ToTU_Skitter_GetTheUp()
			self.ToTU_Nightkin_Skitter_PlayChangeStateAnimT = CurTime() + (0.5)

			local anim = {"vjseq_Crouch_to_stand"}				
			self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
		end

	end

	if !self.Dead && self.VJ_IsBeingControlled && !self.LNR_Crippled then
		if self.VJ_TheController:KeyDown(IN_JUMP) then
			if self.ToTU_Nightkin_Skitter_PlayChangeStateAnim == 1 && CurTime() > self.ToTU_Nightkin_Skitter_PlayChangeStateAnimT then
				self:ToTU_Skitter_StartCrawling()
				self.ToTU_Nightkin_Skitter_PlayChangeStateAnimT = CurTime() + (0.5)
				local anim = {"vjseq_Stand_to_crouch"}
				self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
			elseif self.ToTU_Nightkin_Skitter_PlayChangeStateAnim == 2 && CurTime() > self.ToTU_Nightkin_Skitter_PlayChangeStateAnimT then
				self:ToTU_Skitter_GetTheUp()
				self.ToTU_Nightkin_Skitter_PlayChangeStateAnimT = CurTime() + (0.5)
				local anim = {"vjseq_Crouch_to_stand"}				
				self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
			end
		end
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Skitter_StartCrawling()

	self.CanTurnWhileStationary = false
	self.FootStepSoundLevel = 65
	self.HasMeleeAttack = false

	self.AnimTbl_IdleStand = {ACT_CROUCHIDLE}
	self.AnimTbl_Walk = {ACT_WALK_CROUCH_AIM}

	self.AnimTbl_Run = {ACT_RUN_STEALTH}

	self.VJC_Data = {
		CameraMode = 1,
		ThirdP_Offset = Vector(30, 25, -20),
		FirstP_Bone = "ValveBiped.Bip01_Head1",
		FirstP_Offset = Vector(5, 0, -1),
	}

	self.HasDeathAnimation = false
	self.ToTU_Nightkin_Skitter_PlayChangeStateAnim = 2

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Skitter_GetTheUp()

	self.CanTurnWhileStationary = true
	self.FootStepSoundLevel = 70
	self.HasMeleeAttack = true

	self.AnimTbl_IdleStand = {ACT_IDLE}
	if self.LNR_UsingRelaxedIdle == true then
		self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
	end

	self.AnimTbl_Walk = {ACT_SPRINT}
	self.AnimTbl_Run = {ACT_RUN_RELAXED}

	self.VJC_Data = {
		CameraMode = 1,
		ThirdP_Offset = Vector(40, 20, -50),
		FirstP_Bone = "ValveBiped.Bip01_Head1",
		FirstP_Offset = Vector(0, 0, 5),
	}

	self.HasDeathAnimation = true
	self.ToTU_Nightkin_Skitter_PlayChangeStateAnim = 1

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnLeapAttack_BeforeStartTimer(seed)
	if self.ToTU_Nightkin_Skitter_PlayChangeStateAnim == 2 then
		self.HasDeathAnimation = true
		timer.Simple(2,function() if IsValid(self) then
			self.HasDeathAnimation = false
		end end)
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/