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
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()

	self.MilZ_HelmetHealth = GetConVar("VJ_ToTU_MilZ_Helmet_Health"):GetInt()

	self.Model = {"models/totu/redead.mdl"}

	timer.Simple(0.1,function() if IsValid(self) then
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

	local TrailColor = Color(220,0,255,255)
	local EyeTrail = util.SpriteTrail(self,8,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
	local EyeTrail2 = util.SpriteTrail(self,9,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")

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
				then
					self:SetTarget(v)
					self:VJ_TASK_GOTO_TARGET("TASK_RUN_PATH")
				end

				for _,v in ipairs(ents.FindInSphere(self:GetPos(),20)) do
					if
						IsValid(v) &&
						v:GetClass() == "prop_ragdoll" &&
						v:GetClass() != "prop_physics"&&
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
					then
						local eattime = 4.5 -- How long it should sleep
						if !self.ToTU_Weaponized_Revenant_Reviving then
							local anim = {"vjseq_Stand_to_crouch"}
							self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
							self.ToTU_Weaponized_Revenant_Reviving = true
						end
						self.ToTU_Weaponized_Revenant_Reviving = true
						self.AnimTbl_IdleStand = {ACT_VM_DEPLOYED_DRYFIRE}
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
							VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(100,95))
							ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
							ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
							timer.Simple(1,function() if IsValid(self) then
								VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(100,95))
								VJ_EmitSound(self,"items/smallmedkit1.wav",80,math.random(70,65))
								ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
								ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
							end end)
							timer.Simple(2,function() if IsValid(self) then
								VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(100,95))
								ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_RH"))
								ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("anim_attachment_LH"))
							end end)
							timer.Simple(3,function() if IsValid(self) then
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

			if v:IsNPC() && v:Disposition(self) == D_LI && CurTime() > self.ToTU_Weaponized_Revenant_NextBuffTime && v:GetClass() != "npc_vj_totu_weaponized_cazador" && v:GetClass() != "npc_vj_totu_weaponized_cazador_torso" then

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

				end

				self.ToTU_Weaponized_Revenant_NextBuffTime = CurTime() + math.random(3,5)

			end

		end
	end

	if self:GetClass() == "npc_vj_totu_weaponized_cancer" then
		if self.LNR_Crippled then
			local randuncriptime = 5
			timer.Simple(randuncriptime,function() if IsValid(self) && self.LNR_Crippled then
				self.LNR_Crippled = false
				self:VJ_ACT_PLAYACTIVITY("vjseq_infectionrise2",true,false,false)
				self.MovementType = VJ_MOVETYPE_STATIONARY
				timer.Simple(3.6,function() if IsValid(self) then
					self.MovementType = VJ_MOVETYPE_GROUND
				end end)
				self:UnCripple()
			end end)
		end
	end

	if self:GetClass() == "npc_vj_totu_weaponized_revenant" or self.ToTU_Weaponized_Redead_Grunt_IsCaretaker then

		for _,v in ipairs(ents.FindInSphere(self:GetPos(),150)) do

			if v:IsNPC() && v:Disposition(self) == D_LI then

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