AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.AnimTbl_MeleeAttack = {"vjseq_nz_sonic_attack_2"}


/*
	stuff to do
	- make it protect like this
	- "The outer material is constructed from flame retardant Nomex/Kevlar mix which protects the user against burns."
	* burn protection, but how much?
	* flame *redartand*, so maybe like idk 50%?
	- good protection from explosives
	* 80-90%?
	- no protection against bullets on bodyshot
	- "The visor's fully laminated acrylic and polycarbonate construction increases its margin of safety against multiple fragment hits."
	- glass can stop like 1-2 bullets maybe?

*/


---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()
	if self.MilZ_Det_Beep_BeepT < CurTime() && self.MilZ_Det_Beep_CanBeep && !self.Dead then
	
		-- VJ_EmitSound(self,{"weapons/c4/c4_beep1.wav"},75,math.random(100,100))
		VJ_EmitSound(self,{"fx/detonator_beep.mp3"},65,math.random(100,100))
		
		
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
			
			local bomblight = ents.Create("light_dynamic")
			bomblight:SetKeyValue("brightness", "7")
			bomblight:SetKeyValue("distance", "35")
			-- bomblight:SetLocalPos(self:GetPos() + self:GetUp()*91 + self:GetForward()*26)
			-- bomblight:SetLocalAngles(self:GetAngles())
			bomblight:Fire("Color", "255 0 0")
			bomblight:SetParent(self)
			bomblight:Spawn()
			bomblight:Activate()
			bomblight:Fire("SetParentAttachment","imgonnashit")
			bomblight:Fire("Kill", "", 0.07)
			self:DeleteOnRemove(bomblight)
		
		
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
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMeleeAttack_BeforeStartTimer()
	if !self.MilZ_Det_DeathExplosionAllowed then
		
		VJ_EmitSound(self,{"fx/detonator_preexplode.mp3"},100,math.random(100,100))
		
			self.MilZ_Det_Beep_CanBeep = false
			
		
		timer.Simple(1.25,function() if IsValid(self) && !self.Dead then
		
			self.GodMode = false
	
			self.MilZ_Det_DeathExplosionAllowed = true
			self.HasDeathRagdoll = false
			self.HasDeathAnimation = false
			self.HasGibOnDeath = true
			self.GibOnDeathDamagesTable = {"All"}
			self.HasDeathSounds = false
			-- self.LNR_VirusInfection = false
			
			local d = DamageInfo()
			d:SetDamage(self:GetMaxHealth())
			d:SetAttacker(self)
			d:SetDamageType(DMG_GENERIC) 
			self:TakeDamageInfo(d)
		end	end)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)
	if GetConVar("VJ_ToTU_General_Armor_Allow"):GetInt() == 0 then	return end

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
				-- if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"vo/k_lab/kl_ahhhh.wav"},70) end
		-- if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"physics/glass/glass_impact_bullet"..math.random(1,4)..".wav",70) end
				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/glass/glass_cup_break"..math.random(1,2)..".wav"},70) end
				self:SetBodygroup(1,1)
			end
			
			if self.MilZ_Det_Faceplate_Health <= 0 && !self.MilZ_Det_Faceplate_Broken then
				
				self.MilZ_Det_Faceplate_Broken = true
				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/glass/glass_sheet_break"..math.random(1,3)..".wav"},70) end
				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/glass/glass_pottery_break"..math.random(1,3)..".wav"},70) end
				self:RemoveAllDecals()
				
				
				
				
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
				
				
				
				-- ParticleEffectAttach("GlassImpact",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
				
				
			-- local spark = ents.Create("env_spark")
			-- spark:SetKeyValue("Magnitude","1")
			-- spark:SetKeyValue("Spark Trail Length","1")
			-- spark:SetPos(dmginfo:GetDamagePosition())
			-- spark:SetAngles(self:GetAngles())
			-- spark:SetParent(self)
			-- spark:Spawn()
			-- spark:Activate()
			-- spark:Fire("StartSpark","",0)
			-- spark:Fire("StopSpark","",0.001)
			-- self:DeleteOnRemove(spark)
			
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
	/*
	- make it protect like this
	- "The outer material is constructed from flame retardant Nomex/Kevlar mix which protects the user against burns."
	* burn protection, but how much?
	* flame *redartand*, so maybe like idk 50%?
	- good protection from explosives
	* 80-90%?
	- no protection against bullets on bodyshot
	- "The visor's fully laminated acrylic and polycarbonate construction increases its margin of safety against multiple fragment hits."
	- glass can stop like 1-2 bullets maybe?
	
	make helmet breaking like pd2 dozer
	
	have helmet do p2d shenanigans
	remove the fire weakness
	keep explosion protection obviously
	
	if hitgroup == HITGROUP_HEAD && !self.MilZ_HelmetBroken then
	
	if GetConVar("VJ_ToTU_MilZ_Helmet_Breakable"):GetInt() == 1 then
		self.MilZ_HelmetHealth = self.MilZ_HelmetHealth -dmginfo:GetDamage()
	
	if self.MilZ_HelmetHealth <= 0 && !self.MilZ_HelmetBroken then
		self.MilZ_HelmetBroken = true
		-- VJ_EmitSound(self,{"physics/metal/metal_box_break1.wav","physics/metal/metal_box_break2.wav"},70)
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/wood/wood_box_break1.wav","physics/wood/wood_box_break2.wav"},70) end
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/plastic/plastic_box_break1.wav","physics/plastic/plastic_box_break2.wav"},70) end
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/wood/wood_strain2.wav","physics/wood/wood_strain3.wav","physics/wood/wood_strain4.wav"},70) end
		self:RemoveAllDecals()
		
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
			
		if self.MilZ_HasGasmask then
			self:SetBodygroup(4,8)
		else
			self:SetBodygroup(4,7)
		end
			self.Bleeds = true
		return
	end
	end
	
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"player/bhit_helmet-1.wav",70) end
		self.Bleeds = false
		if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) or dmginfo:IsDamageType(DMG_SLASH) or dmginfo:IsDamageType(DMG_CLUB) then
		-- if dmginfo:IsDamageType(DMG_CLUB) then
		-- dmginfo:ScaleDamage(0.00)
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
		if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"player/bhit_helmet-1.wav",70) end
		-- if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"vo/k_lab/ba_pissinmeoff.wav",70) end
		self.Bleeds = true
		if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) or dmginfo:IsDamageType(DMG_SLASH) then
			if math.random(1,3) == 1 then
				dmginfo:ScaleDamage(0.15)
			
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
				dmginfo:ScaleDamage(0.25)
			end
		end
		if dmginfo:IsDamageType(DMG_CLUB) then
			dmginfo:ScaleDamage(0.30)
		end		
	end
		
		if self.MilZ_HasFlakSuit == false then return end
		
		if hitgroup == HITGROUP_LEFTARM or hitgroup == HITGROUP_RIGHTARM or hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then
			if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"player/kevlar"..math.random(1,5)..".wav",70) end
			self.Bleeds = true
			if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) or dmginfo:IsDamageType(DMG_SLASH) then
				if math.random(1,3) == 1 then
				dmginfo:ScaleDamage(0.25)
			
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
		elseif dmginfo:IsDamageType(DMG_CLUB) then
				dmginfo:ScaleDamage(0.85)
			end	
		end
		-- end
		*/
	end
-- end
-- end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnKilled(dmginfo,hitgroup)

	if self.MilZ_Det_DeathExplosionAllowed == true then
	
	
	
	
		local effectdata = EffectData()
		effectdata:SetOrigin(self:GetPos())
		effectdata:SetScale( 500 )
		util.Effect( "HelicopterMegaBomb", effectdata )
		util.Effect( "ThumperDust", effectdata )
		util.Effect( "Explosion", effectdata )
		//util.Effect( "VJ_Small_Explosion1", effectdata )
		
		VJ_EmitSound(self,"ambient/explosions/explode_"..math.random(1,9)..".wav",70)
		VJ_EmitSound(self,"fx/funny.mp3",150)
		ParticleEffect("vj_explosion2",self:GetPos() + self:GetUp()*48 + self:GetForward()*1,Angle(0,0,0),nil) 
		ParticleEffect("vj_explosion1",self:GetPos() + self:GetUp()*15,Angle(0,0,0),nil)
		ParticleEffect("vj_explosionfire2",self:GetPos() + self:GetUp()*20,Angle(0,0,0),nil)
		ParticleEffect("vj_explosionfire1",self:GetPos() + self:GetUp()*20,Angle(0,0,0),nil)
		
		util.VJ_SphereDamage(self, self, self:GetPos(), 200, 125, DMG_BLAST, true, true, {DisableVisibilityCheck=true, Force=350})
		util.ScreenShake(self:GetPos(), 300, 500, 1.6, 1200)	
	
		
		-- for k,v in ipairs(ents.FindInSphere(self:GetPos(),150)) do
			-- v:TakeDamage(math.random(150,200),self,self)
		-- end
		
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