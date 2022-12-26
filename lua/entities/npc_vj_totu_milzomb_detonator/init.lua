AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
function ENT:Zombie_CustomOnThink_AIEnabled()

	if self.MilZ_Det_Beep_BeepT < CurTime() && self.MilZ_Det_Beep_CanBeep && !self.Dead then
	
		if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
		
			-- add lower pitched beep?
			VJ_EmitSound(self,{"fx/detonator_beep.mp3"},75,math.random(100,100))
			
		else
			if self.MiLZ_Det_Hector then
			VJ_EmitSound(self,{"fx/egg/ding.mp3"},70,math.random(100,100))
			else
			VJ_EmitSound(self,{"fx/detonator_beep.mp3"},65,math.random(100,100))
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
			
			self.MilZ_Det_Beep_BeepT = CurTime() + 2
				
			else
			
			if self.Dead == false && self:GetEnemy() != nil && self.VJ_IsBeingControlled == false then
			
				local EnemyDistance = self:VJ_GetNearestPointToEntityDistance(self:GetEnemy(),self:GetPos():Distance(self:GetEnemy():GetPos()))
				
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
		
		if self.LNR_Crippled or self.LNR_Crawler then
			if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
				self.AnimTbl_MeleeAttack = {"vjseq_crawl_idle"}
			else
				self.AnimTbl_MeleeAttack = {"vjseq_crawl_idle2"}
			end
		end
		
		if self:GetClass() == "npc_vj_totu_milzomb_detonator" then
		
		self.SoundTbl_BeforeMeleeAttack = {
		"voices/det/pain_critical_1.mp3",
		"voices/det/pain_critical_2.mp3",
		"voices/det/pain_critical_3.mp3"
		}
		if GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
			if math.random(1,100) == 1 then
			timer.Simple(0.7,function() if IsValid(self) && !self.Dead then
				VJ_EmitSound(self,{"fx/egg/HAAAAH.mp3"},150,math.random(100,100))
			end end)
		end
		end
		end
		
		VJ_EmitSound(self,{"fx/detonator_preexplode.mp3"},100,math.random(100,100))
				
		if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
		
		
		if GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
			if math.random(1,100) == 1 then
				if math.random(1,2) == 1 then
				VJ_EmitSound(self,{"fx/egg/shitssshit.mp3"},150,math.random(100,100))
				VJ_EmitSound(self,{"fx/egg/shitssshit.mp3"},150,math.random(100,100))
				else
			timer.Simple(0.2,function() if IsValid(self) && !self.Dead then
				VJ_EmitSound(self,{"fx/egg/wa.mp3"},150,math.random(100,100))
				VJ_EmitSound(self,{"fx/egg/wa.mp3"},150,math.random(100,100))
				VJ_EmitSound(self,{"fx/egg/wa.mp3"},150,math.random(100,100))
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
	
	-- add convar for this
	
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
function ENT:ArmorDamage(dmginfo,hitgroup)

	if GetConVar("VJ_ToTU_General_Armor_Allow"):GetInt() == 0 then return end

	if dmginfo:IsExplosionDamage() then
	
		dmginfo:ScaleDamage(0.20)
		
	end
	
	if dmginfo:IsDamageType(DMG_BURN) or dmginfo:IsDamageType(DMG_SLOWBURN) then
	
		-- ""The outer material is constructed from flame retardant Nomex/Kevlar mix which protects the user against burns.""
		-- thank you wikipedia
		dmginfo:ScaleDamage(0.50)
		
	end
	
	if hitgroup == HITGROUP_HEAD && !self.MilZ_Det_Faceplate_Broken then
	
		if GetConVar("VJ_ToTU_MilZ_Det_Faceplate_Breakable"):GetInt() == 1 then
		
			self.MilZ_Det_Faceplate_Health = self.MilZ_Det_Faceplate_Health -dmginfo:GetDamage()
			
			local halfhp = self.MilZ_Det_Faceplate_StartingHP * 0.5
			
			if self.MilZ_Det_Faceplate_Health <= halfhp then
			
				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/glass/glass_cup_break"..math.random(1,2)..".wav"},70) end
				
				self:SetBodygroup(1,1)
				
			end
			
			if self.MilZ_Det_Faceplate_Health <= 0 && !self.MilZ_Det_Faceplate_Broken then
				
				self.MilZ_Det_Faceplate_Broken = true
	self:StopAllCommonSounds()
				
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
		
					self.IdleSoundPitch = VJ_Set(90, 80)
					self.AlertSoundPitch = VJ_Set(90, 80)
					self.CombatIdleSoundPitch = VJ_Set(90, 80)
					self.BeforeMeleeAttackSoundPitch = VJ_Set(90, 80)
					self.PainSoundPitch = VJ_Set(90, 80)
					self.DeathSoundPitch = VJ_Set(90, 80)
		
					if self.LNR_Runner then
		
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
				
			end	
			
			local effectData = EffectData()
			effectData:SetOrigin(dmginfo:GetDamagePosition())
			effectData:SetScale(1)
			util.Effect("GlassImpact", effectData)
				
			self:SetBodygroup(1,2)
			self.Bleeds = true
				
			return end
		end
	
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"physics/glass/glass_impact_bullet"..math.random(1,4)..".wav",70) end
	
		self.Bleeds = false
			
		if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) or dmginfo:IsDamageType(DMG_SLASH) or dmginfo:IsDamageType(DMG_CLUB) then
	
			dmginfo:ScaleDamage(0)
			
		end
	
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
		
		VJ_EmitSound(self,"ambient/explosions/explode_"..math.random(1,9)..".wav",70)
		VJ_EmitSound(self,"fx/funny.mp3",150)
		ParticleEffect("vj_explosion2",self:GetPos() + self:GetUp()*48 + self:GetForward()*1,Angle(0,0,0),nil) 
		ParticleEffect("vj_explosion1",self:GetPos() + self:GetUp()*15,Angle(0,0,0),nil)
		ParticleEffect("vj_explosionfire2",self:GetPos() + self:GetUp()*20,Angle(0,0,0),nil)
		ParticleEffect("vj_explosionfire1",self:GetPos() + self:GetUp()*20,Angle(0,0,0),nil)
		
		if self:GetClass() == "npc_vj_totu_milzomb_detonator_bulk" then
		
			ParticleEffect("explosion_huge",self:GetPos() + self:GetUp()*20,Angle(0,0,0),nil)
			
			util.VJ_SphereDamage(self, self, self:GetPos(), 1000, 750, DMG_BLAST, true, true, {Force=350})
			util.ScreenShake(self:GetPos(), 300, 1000, 5, 2400)
			
			VJ_EmitSound(self,"ambient/explosions/explode_"..math.random(1,9)..".wav",180)
			VJ_EmitSound(self,"ambient/explosions/exp"..math.random(1,4)..".wav",180)
			VJ_EmitSound(self,"ambient/explosions/exp"..math.random(1,4)..".wav",180)
			VJ_EmitSound(self,"ambient/explosions/exp"..math.random(1,4)..".wav",180)
			VJ_EmitSound(self,"fx/funny.mp3",180)
			VJ_EmitSound(self,"fx/funny.mp3",0)
			VJ_EmitSound(self,"fx/funny.mp3",180)
			-- VJ_EmitSound(self,"ambient/explosions/citadel_end_explosion1.wav",0)
			VJ_EmitSound(self,"ambient/explosions/explode_"..math.random(1,9)..".wav",180)

			if math.random(1,100) == 1 && GetConVar("VJ_ToTU_General_EasterEggs"):GetInt() == 1 then
				VJ_EmitSound(self,"fx/egg/pie2.mp3",0)
			end
			
		else
		
			util.VJ_SphereDamage(self, self, self:GetPos(), 200, 125, DMG_BLAST, true, true, {Force=350})
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
	
	if GetConVar("VJ_LNR_Gib"):GetInt() == 1 then
	
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