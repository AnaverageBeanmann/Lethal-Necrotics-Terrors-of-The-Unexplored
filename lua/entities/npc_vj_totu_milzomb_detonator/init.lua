AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Idle = {
		"voices/det/idle_1.mp3",
		"voices/det/idle_2.mp3",
		"voices/det/idle_3.mp3",
		"voices/det/idle_4.mp3",
		"voices/det/idle_5.mp3",
		"voices/det/idle_6.mp3",
		"voices/det/idle_7.mp3",
		"voices/det/idle_8.mp3",
		"voices/det/idle_9.mp3",
		"voices/det/idle_10.mp3",
		"voices/det/idle_11.mp3",
		"voices/det/idle_12.mp3",
		"voices/det/idle_13.mp3",
		"voices/det/idle_14.mp3",
		"voices/det/idle_15.mp3",
		"voices/det/idle_16.mp3",
		"voices/det/idle_17.mp3",
		"voices/det/idle_18.mp3",
		"voices/det/idle_19.mp3",
		"voices/det/idle_20.mp3",
		"voices/det/idle_21.mp3",
		"voices/det/idle_22.mp3",
		"voices/det/idle_23.mp3"
	}

	self.SoundTbl_Alert = {
		"voices/det/alert_1.mp3",
		"voices/det/alert_2.mp3",
		"voices/det/alert_3.mp3",
		"voices/det/alert_4.mp3",
		"voices/det/alert_5.mp3",
		"voices/det/alert_6.mp3",
		"voices/det/alert_7.mp3",
		"voices/det/alert_8.mp3",
		"voices/det/alert_9.mp3",
		"voices/det/alert_10.mp3",
		"voices/det/alert_11.mp3",
		"voices/det/alert_12.mp3",
		"voices/det/alert_13.mp3",
		"voices/det/alert_14.mp3",
		"voices/det/alert_15.mp3"
	}

	self.SoundTbl_CombatIdle = {
		"voices/det/cidle_1.mp3",
		"voices/det/cidle_2.mp3",
		"voices/det/cidle_3.mp3",
		"voices/det/cidle_4.mp3",
		"voices/det/cidle_5.mp3",
		"voices/det/cidle_6.mp3",
		"voices/det/cidle_7.mp3",
		"voices/det/cidle_8.mp3",
		"voices/det/cidle_9.mp3",
		"voices/det/cidle_10.mp3",
		"voices/det/cidle_11.mp3",
		"voices/det/cidle_12.mp3",
		"voices/det/cidle_13.mp3",
		"voices/det/cidle_14.mp3",
		"voices/det/cidle_15.mp3",
		"voices/det/cidle_16.mp3",
		"voices/det/cidle_17.mp3",
		"voices/det/cidle_18.mp3",
		"voices/det/cidle_19.mp3"
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"voices/det/attack_1.mp3",
		"voices/det/attack_2.mp3",
		"voices/det/attack_3.mp3",
		"voices/det/attack_4.mp3",
		"voices/det/attack_5.mp3",
		"voices/det/attack_6.mp3",
		"voices/det/attack_7.mp3",
		"voices/det/attack_8.mp3",
		"voices/det/attack_9.mp3",
		"voices/det/attack_10.mp3",
		"voices/det/attack_11.mp3",
		"voices/det/attack_12.mp3"
	}

	self.SoundTbl_Pain = {
		"voices/det/pain_1.mp3",
		"voices/det/pain_2.mp3",
		"voices/det/pain_3.mp3",
		"voices/det/pain_4.mp3",
		"voices/det/pain_5.mp3",
		"voices/det/pain_6.mp3"
	}

    self.SoundTbl_Death = {
		"voices/det/death_1.mp3",
		"voices/det/death_2.mp3",
		"voices/det/death_3.mp3",
		"voices/det/death_4.mp3",
		"voices/det/death_5.mp3"
	}

	if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
		self.IdleSoundPitch = VJ_Set(80, 70)
		self.AlertSoundPitch = VJ_Set(80, 70)
		self.CombatIdleSoundPitch = VJ_Set(80, 70)
		self.BeforeMeleeAttackSoundPitch = VJ_Set(80, 70)
		self.PainSoundPitch = VJ_Set(80, 70)
		self.DeathSoundPitch = VJ_Set(80, 70)	
	end

	self.ToTU_Almanac_VoiceActor = "Gas Tank (Dying Light 1)"

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()

	if self.MilZ_Det_Beep_BeepT < CurTime() && self.MilZ_Det_Beep_CanBeep && !self.Dead then

		if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then

			VJ_EmitSound(self,{"fx/detonator_beep.mp3"},65,45)

		else

			if self.MiLZ_Det_Hector then

				VJ_EmitSound(self,{"fx/egg/ding.mp3"},65,100)

			elseif self.MilZ_Det_Kamikaze then

				if self:GetEnemy() != nil then

					VJ_EmitSound(self,{"fx/egg/kamikaze_yell.wav"},70,100)

				else

					VJ_EmitSound(self,{"fx/egg/kamikaze_yell2.wav"},65,100)

				end

			else

				VJ_EmitSound(self,{"fx/detonator_beep.mp3"},65,100)

			end

		end

		if GetConVar("VJ_ToTU_MilZ_Det_BombLights"):GetInt() == 1 or GetConVar("VJ_ToTU_MilZ_Det_BombLights"):GetInt() == 2 then

			local bombglow = ents.Create("env_sprite")
			bombglow:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
			bombglow:SetKeyValue("scale", "0.07")
			bombglow:SetKeyValue("rendermode","5")
			bombglow:SetKeyValue("rendercolor","255 0 0")
			bombglow:SetKeyValue("spawnflags","1") -- If animated
			bombglow:SetParent(self)
			bombglow:Fire("SetParentAttachment", "imgonnashit")
			bombglow:Spawn()
			bombglow:Activate()
			bombglow:Fire("Kill", "", 0.1)
			self:DeleteOnRemove(bombglow)

			if GetConVar("VJ_ToTU_MilZ_Det_BombLights"):GetInt() == 2 then

				local bomblight = ents.Create("light_dynamic")
				bomblight:SetKeyValue("brightness", "7")
				bomblight:SetKeyValue("distance", "35")
				bomblight:SetParent(self)
				bomblight:Fire("Color", "255 0 0")
				bomblight:Fire("SetParentAttachment","imgonnashit")
				bomblight:Spawn()
				bomblight:Activate()
				bomblight:Fire("Kill", "", 0.07)
				self:DeleteOnRemove(bomblight)

			end

		end

		if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then

			self.MilZ_Det_Beep_BeepT = CurTime() + 4

		else

			if self.Dead == false && self:GetEnemy() != nil && self.VJ_IsBeingControlled == false then

				local EnemyDistance = self:VJ_GetNearestPointToEntityDistance(self:GetEnemy(),self:GetPos():Distance(self:GetEnemy():GetPos()))

				if self.MilZ_Det_Kamikaze then

					self.MilZ_Det_Beep_BeepT = CurTime() + 0.719

				else

					if EnemyDistance <= 300 then

						self.MilZ_Det_Beep_BeepT = CurTime() + 0.35

					elseif EnemyDistance <= 750 then

						self.MilZ_Det_Beep_BeepT = CurTime() + 0.70

					elseif EnemyDistance <= 1100 then

						self.MilZ_Det_Beep_BeepT = CurTime() + 1.05

					elseif EnemyDistance <= 1450 then

						self.MilZ_Det_Beep_BeepT = CurTime() + 1.40

					else

						self.MilZ_Det_Beep_BeepT = CurTime() + 2

					end

				end

			else

				self.MilZ_Det_Beep_BeepT = CurTime() + 2

			end

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnMeleeAttack_BeforeStartTimer()

	if !self.MilZ_Det_DeathExplosionAllowed then

		self.HasMeleeAttack = false
		self.MilZ_Det_Beep_CanBeep = false

		if self.LNR_Crippled then

			if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then

				self.AnimTbl_MeleeAttack = {"vjseq_crawl_idle"}

			else

				self.AnimTbl_MeleeAttack = {"vjseq_crawl_idle2"}

			end

		end

		if self:GetClass() == "npc_vj_totu_milzomb_detonator" && !self.MilZ_Det_Faceplate_Broken then

			self.SoundTbl_BeforeMeleeAttack = {
				"voices/det/pain_critical_1.mp3",
				"voices/det/pain_critical_2.mp3",
				"voices/det/pain_critical_3.mp3"
			}

			if GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then

				if math.random(1,100) == 1 then

					if math.random(1,2) == 1 then

						self.SoundTbl_BeforeMeleeAttack = {"fx/egg/krakatoa.mp3"}
						self.BeforeMeleeAttackSoundLevel = 80

					else

						timer.Simple(0.7,function() if IsValid(self) && !self.Dead then

							VJ_EmitSound(self,{"fx/egg/HAAAAH.mp3"},75,100)

						end end)

					end

				end

			end

		end

	if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then

		VJ_EmitSound(self,{"fx/detonator_preexplode.mp3"},100,60)

	else

		VJ_EmitSound(self,{"fx/detonator_preexplode.mp3"},75,100)

	end

	if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then

		if GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then

			if math.random(1,100) == 1 then

				if math.random(1,2) == 1 then

					VJ_EmitSound(self,{"fx/egg/shitssshit.mp3"},100,100)

				else

					timer.Simple(0.2,function() if IsValid(self) && !self.Dead then
						VJ_EmitSound(self,{"fx/egg/wa.mp3"},100,100)
					end end)

				end

			end

		end

			timer.Simple(2,function() if IsValid(self) && !self.Dead then

				self:ToTU_Detonator_CommitDie()

			end	end)

		else

			timer.Simple(1.25,function() if IsValid(self) && !self.Dead then

				self:ToTU_Detonator_CommitDie()

			end	end)

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Detonator_CommitDie()		

	self.GodMode = false
	self.MilZ_Det_DeathExplosionAllowed = true
	self.HasDeathRagdoll = false
	self.HasDeathAnimation = false
	self.HasGibOnDeath = true
	self.GibOnDeathDamagesTable = {"All"}
	self.HasDeathSounds = false

	if GetConVar("VJ_ToTU_MilZ_Det_Infection"):GetInt() == 0 then
		self.LNR_VirusInfection = false
	end

	local d = DamageInfo()
	d:SetDamage(self:GetMaxHealth())
	d:SetAttacker(self)
	d:SetDamageType(DMG_GENERIC) 
	self:TakeDamageInfo(d)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ToTU_Detonator_BombHitExplode()

	self.GodMode = false
	self.MilZ_Det_DeathExplosionAllowed = true
	self.HasDeathRagdoll = false
	self.HasDeathAnimation = false
	self.HasGibOnDeath = true
	self.GibOnDeathDamagesTable = {"All"}
	self.HasDeathSounds = false

	if GetConVar("VJ_ToTU_MilZ_Det_Infection"):GetInt() == 0 then
		self.LNR_VirusInfection = false
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)

	if hitgroup == HITGROUP_GEAR then

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

		self.MilZ_Det_BombHealth = self.MilZ_Det_BombHealth -dmginfo:GetDamage()

		if self.MilZ_Det_BombHealth <= 0 then

			self:ToTU_Detonator_BombHitExplode()
			dmginfo:ScaleDamage(999999999999)

		end

	end

	if
		dmginfo:IsExplosionDamage() or
		dmginfo:IsDamageType(DMG_BLAST_SURFACE) or
		dmginfo:IsDamageType(DMG_MISSILEDEFENSE) or
		dmginfo:IsDamageType(DMG_ALWAYSGIB)
	then

		dmginfo:ScaleDamage(0.20)

	end

	if dmginfo:IsDamageType(DMG_BURN) or dmginfo:IsDamageType(DMG_SLOWBURN) then

		-- ""The outer material is constructed from flame retardant Nomex/Kevlar mix which protects the user against burns.""
		-- thank you wikipedia
		dmginfo:ScaleDamage(0.50)

	end

	if hitgroup == HITGROUP_HEAD && !self.MilZ_Det_Faceplate_Broken then

		self.MilZ_Det_Faceplate_Health = self.MilZ_Det_Faceplate_Health -dmginfo:GetDamage()

		local halfhp = self.MilZ_Det_Faceplate_StartingHP * 0.5

		if self.MilZ_Det_Faceplate_Health <= halfhp then

			if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/glass/glass_cup_break"..math.random(1,2)..".wav"},70) end

			self:SetBodygroup(1,1)

		end

		if self.MilZ_Det_Faceplate_Health <= 0 && !self.MilZ_Det_Faceplate_Broken then

			self.MilZ_Det_Faceplate_Broken = true
			self:StopAllCommonSounds()
			self.BreathSoundLevel = 60
			self.CanEat = true

			if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/glass/glass_sheet_break"..math.random(1,3)..".wav"},70) end
			if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/glass/glass_pottery_break"..math.random(1,3)..".wav"},70) end

			self:RemoveAllDecals()

			if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then

				self.SoundTbl_Idle = {
					"voices/mil_jugg/idle_1.mp3",
					"voices/mil_jugg/idle_2.mp3",
					"voices/mil_jugg/idle_3.mp3",
					"voices/mil_jugg/idle_4.mp3",
					"voices/mil_jugg/idle_5.mp3",
					"voices/mil_jugg/idle_6.mp3",
					"voices/mil_jugg/idle_7.mp3",
					"voices/mil_jugg/idle_8.mp3"
				}

				self.SoundTbl_Alert = {
					"voices/mil_jugg/alert_1.mp3",
					"voices/mil_jugg/alert_2.mp3"
				}

				self.SoundTbl_CombatIdle = {
					"voices/mil_jugg/idle_1.mp3",
					"voices/mil_jugg/idle_2.mp3",
					"voices/mil_jugg/idle_3.mp3",
					"voices/mil_jugg/idle_4.mp3",
					"voices/mil_jugg/idle_5.mp3",
					"voices/mil_jugg/idle_6.mp3",
					"voices/mil_jugg/idle_7.mp3",
					"voices/mil_jugg/idle_8.mp3"
				}

				self.SoundTbl_BeforeMeleeAttack = {
					"voices/mil_jugg/attack_1.mp3",
					"voices/mil_jugg/attack_2.mp3",
					"voices/mil_jugg/attack_3.mp3",
					"voices/mil_jugg/attack_4.mp3",
					"voices/mil_jugg/attack_5.mp3",
					"voices/mil_jugg/attack_6.mp3",
					"voices/mil_jugg/attack_7.mp3"
				}

				self.SoundTbl_Pain = {
					"voices/mil_jugg/pain_1.mp3",
					"voices/mil_jugg/pain_2.mp3",
					"voices/mil_jugg/pain_3.mp3",
					"voices/mil_jugg/pain_4.mp3",
					"voices/mil_jugg/pain_5.mp3"
				}

				self.SoundTbl_Death = {
					"voices/mil_jugg/death_cutoff.mp3"
				}

				self.ToTU_Almanac_VoiceActor = "Demolisher (Dying Light 1)"

				self.IdleSoundPitch = VJ_Set(90, 80)
				self.AlertSoundPitch = VJ_Set(90, 80)
				self.CombatIdleSoundPitch = VJ_Set(90, 80)
				self.BeforeMeleeAttackSoundPitch = VJ_Set(90, 80)
				self.PainSoundPitch = VJ_Set(90, 80)
				self.DeathSoundPitch = VJ_Set(90, 80)

				if self.LNR_Runner or self.ToTU_Rusher then

					self.SoundTbl_Alert = {
						"voices/mil_jugg/run_start_1.mp3",
						"voices/mil_jugg/run_start_2.mp3",
						"voices/mil_jugg/run_start_3.mp3"
					}

					self.SoundTbl_CombatIdle = {
						"voices/mil_jugg/cidle_1.mp3",
						"voices/mil_jugg/cidle_2.mp3"
					}

				end

			else

				self:ZombieSounds_GiveDefault()

			end

		local effectData = EffectData()
		effectData:SetOrigin(dmginfo:GetDamagePosition())
		effectData:SetScale(1)
		util.Effect("GlassImpact", effectData)

		self:SetBodygroup(1,2)
		self.Bleeds = true

		return end

		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"physics/glass/glass_impact_bullet"..math.random(1,4)..".wav",70) end

		self.Bleeds = false

		-- if
			-- dmginfo:IsBulletDamage() or
			-- dmginfo:IsDamageType(DMG_BUCKSHOT) or
			-- dmginfo:IsDamageType(DMG_SNIPER) or
			-- dmginfo:IsDamageType(DMG_SLASH) or
			-- dmginfo:IsDamageType(DMG_CLUB)
		-- then
			dmginfo:ScaleDamage(0)
		-- end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnKilled(dmginfo,hitgroup)

	if self.MilZ_Det_DeathExplosionAllowed == true then

		local effectdata = EffectData()
		effectdata:SetOrigin(self:GetPos())
		effectdata:SetScale( 500 )
		util.Effect( "HelicopterMegaBomb", effectdata )
		util.Effect( "ThumperDust", effectdata )
		util.Effect( "Explosion", effectdata )
		util.Effect( "VJ_Small_Explosion1", effectdata )

		VJ_EmitSound(self,"fx/funny.mp3",85)
		ParticleEffect("vj_explosion2",self:GetPos() + self:GetUp()*48 + self:GetForward()*1,Angle(0,0,0),nil) 
		ParticleEffect("vj_explosion1",self:GetPos() + self:GetUp()*15,Angle(0,0,0),nil)
		ParticleEffect("vj_explosionfire2",self:GetPos() + self:GetUp()*20,Angle(0,0,0),nil)
		ParticleEffect("vj_explosionfire1",self:GetPos() + self:GetUp()*20,Angle(0,0,0),nil)

		if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then

			ParticleEffect("explosion_huge",self:GetPos() + self:GetUp()*20,Angle(0,0,0),nil)

			if GetConVar("VJ_ToTU_MilZ_Det_ExplosionSetup"):GetInt() == 1 then
				util.VJ_SphereDamage(self, self, self:GetPos(), 100, 75, DMG_BLAST, true, true, {Force=100})
				util.VJ_SphereDamage(self, self, self:GetPos(), 200, 75, DMG_BLAST, true, true, {Force=100})
				util.VJ_SphereDamage(self, self, self:GetPos(), 300, 75, DMG_BLAST, true, true, {Force=100})
				util.VJ_SphereDamage(self, self, self:GetPos(), 400, 75, DMG_BLAST, true, true, {Force=100})
				util.VJ_SphereDamage(self, self, self:GetPos(), 500, 75, DMG_BLAST, true, true, {Force=100})
				util.VJ_SphereDamage(self, self, self:GetPos(), 600, 75, DMG_BLAST, true, true, {Force=100})
				util.VJ_SphereDamage(self, self, self:GetPos(), 700, 75, DMG_BLAST, true, true, {Force=100})
				util.VJ_SphereDamage(self, self, self:GetPos(), 800, 75, DMG_BLAST, true, true, {Force=100})
				util.VJ_SphereDamage(self, self, self:GetPos(), 900, 75, DMG_BLAST, true, true, {Force=100})
				util.VJ_SphereDamage(self, self, self:GetPos(), 1000, 75, DMG_BLAST, true, true, {Force=100})
			else
				util.VJ_SphereDamage(self, self, self:GetPos(), 1000, 750, DMG_BLAST, true, true, {Force=100})
			end

			util.ScreenShake(self:GetPos(), 300, 1000, 5, 2400)

			VJ_EmitSound(self,"ambient/explosions/explode_"..math.random(1,9)..".wav",180)
			VJ_EmitSound(self,"ambient/explosions/exp"..math.random(1,4)..".wav",180)
			VJ_EmitSound(self,"ambient/explosions/exp"..math.random(1,4)..".wav",180)
			VJ_EmitSound(self,"ambient/explosions/exp"..math.random(1,4)..".wav",180)
			VJ_EmitSound(self,"fx/funny.mp3",180)
			VJ_EmitSound(self,"fx/funny.mp3",0)
			VJ_EmitSound(self,"fx/funny.mp3",180)
			VJ_EmitSound(self,"ambient/explosions/explode_"..math.random(1,9)..".wav",180)
			VJ_EmitSound(self,"ambient/explosions/explode_"..math.random(1,9)..".wav",70)

			if math.random(1,100) == 1 && GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
				VJ_EmitSound(self,"fx/egg/pie2.mp3",0)
			end

		else

			if GetConVar("VJ_ToTU_MilZ_Det_ExplosionSetup"):GetInt() == true then
				util.VJ_SphereDamage(self, self, self:GetPos(), 40, 25, DMG_BLAST, true, true, {Force=70})
				util.VJ_SphereDamage(self, self, self:GetPos(), 80, 25, DMG_BLAST, true, true, {Force=70})
				util.VJ_SphereDamage(self, self, self:GetPos(), 120, 25, DMG_BLAST, true, true, {Force=70})
				util.VJ_SphereDamage(self, self, self:GetPos(), 160, 25, DMG_BLAST, true, true, {Force=70})
				util.VJ_SphereDamage(self, self, self:GetPos(), 200, 25, DMG_BLAST, true, true, {Force=70})
			else
				util.VJ_SphereDamage(self, self, self:GetPos(), 200, 125, DMG_BLAST, true, true, {Force=70})
			end
			util.ScreenShake(self:GetPos(), 300, 500, 1.6, 1200)

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetUpGibesOnDeath(dmginfo,hitgroup)

	if !self.MilZ_Det_DeathExplosionAllowed then return end

	if self.HasGibDeathParticles == true then

		local effectBlood = EffectData()
		effectBlood:SetOrigin(self:GetPos() + self:OBBCenter())
		effectBlood:SetColor(VJ_Color2Byte(Color(127,0,0)))
		effectBlood:SetScale(120)
		util.Effect("VJ_Blood1",effectBlood)

		local bloodspray = EffectData()
		bloodspray:SetOrigin(self:GetPos())
		bloodspray:SetScale(8)
		bloodspray:SetFlags(3)
		bloodspray:SetColor(0)	
		util.Effect("bloodspray",bloodspray)
		util.Effect("bloodspray",bloodspray)

	end

	if GetConVar("VJ_TOTU_LNR_Gib"):GetInt() == 1 then

		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Small",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,35))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,35))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,35))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,35))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,35))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,30))})
		self:CreateGibEntity("obj_vj_gib","UseHuman_Big",{Pos=self:LocalToWorld(Vector(0,0,30))})

		return true,{DeathAnim=false,AllowCorpse=true}

	end

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/