AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.HasLeapAttack = true 
ENT.LeapAttackDamage = 15
ENT.LeapAttackDamageType = DMG_CLUB
ENT.LeapAttackAnimationFaceEnemy = false
ENT.AnimTbl_LeapAttack = {"vjseq_jump_attack"} 
ENT.LeapDistance = 350 
ENT.LeapToMeleeDistance = 250
ENT.LeapAttackDamageDistance = 50 
ENT.LeapAttackExtraTimers = {0.6, 0.8, 1, 1.2, 1.4} 
ENT.StopLeapAttackAfterFirstHit = true
ENT.TimeUntilLeapAttackVelocity = 0.1 
ENT.NextLeapAttackTime = 8
ENT.NextAnyAttackTime_Leap = 2
ENT.LeapAttackVelocityForward = 100
ENT.LeapAttackVelocityUp = 250
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Ghost_CloakFlicker()
	
	if self.MilZ_Ghost_CloakBroke then return end
	
	self:SetMaterial("models/props_combine/com_shield001a")
	self:RemoveAllDecals()
	self:DrawShadow(true)
	self.FootStepSoundLevel = 65
	self.VJ_NoTarget = false
	self:RemoveFlags(FL_NOTARGET)
	
	VJ_EmitSound(self,{
		"ambient/energy/spark1.wav",
		"ambient/energy/spark2.wav",
		"ambient/energy/spark3.wav",
		"ambient/energy/spark4.wav",
		"ambient/energy/spark5.wav",
		"ambient/energy/spark6.wav"
		}
	,100,math.random(100,95))
		
	local spark = ents.Create("env_spark")
	spark:SetKeyValue("Magnitude","1")
	spark:SetKeyValue("Spark Trail Length","1")
	spark:SetPos(self:GetAttachment(self:LookupAttachment("chest")).Pos)
	spark:SetAngles(self:GetAngles())
	spark:SetParent(self)
	spark:Spawn()
	spark:Activate()
	spark:Fire("StartSpark","",0)
	spark:Fire("StopSpark","",0.001)
	self:DeleteOnRemove(spark)
					
	local XBoxLive = math.random(0.3,0.7)
	local Fat = math.random(1,1.5)
	local YoMama = math.random(XBoxLive,Fat)
	
	timer.Simple(YoMama,function() if IsValid(self) && !self.MilZ_Ghost_CloakBroke then
	
		self:SetMaterial("models/shadertest/predator")
		self:RemoveAllDecals()
		self:DrawShadow(false)
		self:SetRenderFX(kRenderFxNone)
		self.FootStepSoundLevel = 55
		self.VJ_NoTarget = true 
		self:AddFlags(FL_NOTARGET)
		
		VJ_EmitSound(self,{
			"ambient/energy/spark1.wav",
			"ambient/energy/spark2.wav",
			"ambient/energy/spark3.wav",
			"ambient/energy/spark4.wav",
			"ambient/energy/spark5.wav",
			"ambient/energy/spark6.wav"
			}
		,100,math.random(100,95))
	
			local spark = ents.Create("env_spark")
			spark:SetKeyValue("Magnitude","1")
			spark:SetKeyValue("Spark Trail Length","1")
			spark:SetPos(self:GetAttachment(self:LookupAttachment("chest")).Pos)
			spark:SetAngles(self:GetAngles())
			spark:SetParent(self)
			spark:Spawn()
			spark:Activate()
			spark:Fire("StartSpark","",0)
			spark:Fire("StopSpark","",0.001)
			self:DeleteOnRemove(spark)
		
	end end)
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Ghost_BreakCloak()

	-- update this when the easter egg convar gets added
	if math.random(1,100) == 1 then
	
		VJ_EmitSound(self,{"zombies/military/cloaker/invisiblereveal.wav"},100,math.random(100,100))
		
	end
	
	self:StopAllCommonSounds()
	self.FootStepSoundLevel = 70
	self.MilZ_Ghost_CloakBroke = true
	
	VJ_EmitSound(self,{
		"ambient/energy/zap1.wav",
		"ambient/energy/zap2.wav",
		"ambient/energy/zap3.wav",
		"ambient/energy/zap5.wav",
		"ambient/energy/zap6.wav",
		"ambient/energy/zap7.wav",
		"ambient/energy/zap8.wav",
		"ambient/energy/zap9.wav"
		}
	,100,math.random(100,95))
	
	self:SetMaterial("")
	self:DrawShadow(true)
	self.VJ_NoTarget = false
	self:RemoveFlags(FL_NOTARGET)
	-- self.AnimTbl_Run = {ACT_RUN_STEALTH}
	ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))
		
			
	self.SoundTbl_Idle = {
		"vj_lnrhl2/infected/zomb_runner_male1-idle-01.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-idle-02.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-idle-03.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-idle-04.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-idle-05.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-idle-06.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-idle-07.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-idle-08.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-idle-09.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-idle-10.wav"
	}
		
	self.SoundTbl_Alert = {
		"vj_lnrhl2/infected/zomb_runner_male1-alert-01.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-02.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-03.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-04.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-05.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-06.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-07.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-08.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-09.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-10.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-11.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-12.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-13.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-14.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-alert-15.wav"
	}
		
	self.SoundTbl_CombatIdle = {
		"vj_lnrhl2/infected/zomb_runner_male1-pursuit-01.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pursuit-02.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pursuit-03.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pursuit-04.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pursuit-05.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pursuit-06.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pursuit-07.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pursuit-08.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pursuit-09.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pursuit-10.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pursuit-11.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pursuit-12.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pursuit-13.wav"	
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"vj_lnrhl2/infected/zomb_runner_male1-attack01.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack02.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack03.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack04.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack05.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack06.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack07.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack08.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack09.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack10.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack11.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack12.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack13.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack14.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack15.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack16.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack17.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack18.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack19.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-attack20.wav"	
	}

	self.SoundTbl_Pain = {
		"vj_lnrhl2/infected/zomb_runner_male1-pain01.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain02.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain03.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain04.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain05.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain06.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain07.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain08.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain09.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain10.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain11.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain12.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain13.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain14.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain15.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain16.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain17.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-pain18.wav"
	}

	self.SoundTbl_Death = {
		"vj_lnrhl2/infected/zomb_runner_male1-death-01.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-02.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-03.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-04.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-05.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-06.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-07.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-08.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-09.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-10.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-11.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-12.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-13.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-14.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-15.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-16.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-17.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-18.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-19.wav",
		"vj_lnrhl2/infected/zomb_runner_male1-death-20.wav"
	}
		
	self.SoundTbl_LeapAttackJump = {self.SoundTbl_BeforeMeleeAttack}

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()

	if self.MilZ_Ghost_CloakT < CurTime() && !self.MilZ_Ghost_CloakBroke && !self.Dead then
	
		self:ToTU_Ghost_CloakFlicker()
		
		self.MilZ_Ghost_CloakT = CurTime() + math.random(3,30)	
		
	end
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMeleeAttack_BeforeStartTimer(seed)

	self:ToTU_Ghost_CloakFlicker()

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnLeapAttack_BeforeStartTimer(seed)

	self:ToTU_Ghost_CloakFlicker()
	-- self.Behavior = VJ_BEHAVIOR_PASSIVE

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/