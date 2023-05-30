AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
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

	end

	self:SetHealth(self.StartHealth)

	self.LNR_LegHP = self.StartHealth * 0.20

end 
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Ghost_CloakFlicker()

	if self.MilZ_Ghost_CloakBroke then return end

	self:SetMaterial("models/props_combine/com_shield001a")
	self:RemoveAllDecals()
	self:DrawShadow(true)
	self.FootStepSoundLevel = 65
	self.VJ_NoTarget = false
	self:RemoveFlags(FL_NOTARGET)

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

	self.MilZ_Ghost_CloakT = 3
	self.MilZ_Ghost_CloakT = CurTime() + math.random(1,10)	
	self.NextChaseTime = 1

	if !self.LNR_Crippled && self:GetClass() == "npc_vj_totu_milzomb_ghost" then
		self.AnimTbl_Run = {ACT_RUN_RELAXED}
	end

	if math.random(1,100) == 1 && GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then

		VJ_EmitSound(self,{"fx/egg/invisiblereveal.wav"},100,math.random(100,100))

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
	ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))

	self:ZombieSounds_GiveDefault()

	self.SoundTbl_LeapAttackJump = {self.SoundTbl_BeforeMeleeAttack}

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Ghost_FixCloak()

	VJ_EmitSound(self,{"fx/cloak_charge.mp3"},70,100)

	self.MilZ_Ghost_CloakT = 4
	self.MilZ_Ghost_CloakDamageable = false

	timer.Simple(4,function() if IsValid(self) && !self.Dead then

		self.MilZ_Ghost_CloakBroke = false
		self.Behavior = VJ_BEHAVIOR_AGGRESIVE

		timer.Simple(1,function() if IsValid(self) && !self.Dead then

			self.MilZ_Ghost_CloakDamageable = true

		end end)

		self.NextChaseTime = 1

		if self:GetClass() == "npc_vj_totu_milzomb_ghost" then
			if !self.LNR_Crippled then
				if self.LNR_SuperSprinter then
					self.AnimTbl_Run = {ACT_RUN_AIM}
				elseif self.ToTU_Rusher then
					self.AnimTbl_Run = {ACT_RUN_RELAXED}
				else
					self.AnimTbl_Run = {ACT_SPRINT}
				end
			end
		end

		self.MilZ_Ghost_CloakHP = GetConVar("VJ_ToTU_MilZ_Ghost_Cloak_Health"):GetInt()
		self:ToTU_Ghost_CloakFlicker()
		self:StopAllCommonSounds()

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

		ParticleEffectAttach("electrical_arc_01_parent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("chest"))

		self:MilZ_GiveGasmaskSounds()

		self.SoundTbl_LeapAttackJump = {self.SoundTbl_BeforeMeleeAttack}

	end end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()

	if self.MilZ_Ghost_CloakT < CurTime() then

		if self.MilZ_Ghost_CloakBroke && !self.Dead && self.MilZ_Ghost_CloakRechargable then

			self:ToTU_Ghost_FixCloak()
			self.MilZ_Ghost_CloakT = CurTime() + 10	

		else

			self:ToTU_Ghost_CloakFlicker()
			self.MilZ_Ghost_CloakT = CurTime() + math.random(3,30)

		end

	end
	
	if self:GetClass() == "npc_vj_totu_milzomb_ghost_walker" then return end
	
	if
		self.Dead == false &&
		self:GetEnemy() != nil &&
		self.VJ_IsBeingControlled == false &&
		self.MilZ_Ghost_CloakRechargable &&
		GetConVar("VJ_ToTU_MilZ_Ghost_Cloak_Recharge_RunWhileCharging"):GetInt() == 1
	then
		local enemydist = self:GetPos():Distance(self:GetEnemy():GetPos())
		if self.MilZ_Ghost_CloakBroke && !self.LNR_Crippled then
			if enemydist >= 450 then
				self.Behavior = VJ_BEHAVIOR_PASSIVE
			else
				self.Behavior = VJ_BEHAVIOR_AGGRESIVE
			end
		end
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnMeleeAttack_BeforeStartTimer(seed)

	self:ToTU_Ghost_CloakFlicker()

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnLeapAttack_BeforeStartTimer(seed)

	self:ToTU_Ghost_CloakFlicker()

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/