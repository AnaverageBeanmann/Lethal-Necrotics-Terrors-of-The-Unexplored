AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
-- ENT.GeneralSoundPitch1 = 65
-- ENT.GeneralSoundPitch2 = 60
ENT.VJ_IsHugeMonster = true
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnPreInitialize()

	if self:GetClass() == "npc_vj_totu_deimos_corrupt_brute" then
		self.Model = {"models/totu/reaper.mdl"}
	elseif self:GetClass() == "npc_vj_totu_fon_lament" then
		self.Model = {"models/totu/fon_lament.mdl"}
	else
		self.Model = {"models/totu/corrupt.mdl"}
	end
	self.AnimTbl_Walk = {ACT_WALK}
	self.AnimTbl_Run = {ACT_RUN}
	self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(3,10)	
	
	timer.Simple(0.1,function() if IsValid(self) then
	self.AnimTbl_Walk = {ACT_WALK}
	self.AnimTbl_Run = {ACT_WALK}
	end end)
	
	
		self.HasWorldShakeOnMove = true

			self.WorldShakeOnMoveAmplitude = 1

	if self:GetClass() == "npc_vj_totu_deimos_corrupt_brute" then
		self.WorldShakeOnMoveAmplitude = 2
	end
	if self:GetClass() == "npc_vj_totu_fon_lament" then
		self.WorldShakeOnMoveAmplitude = 3
	end

		self.AnimTbl_Flinch = {""}
		self.CanFlinch = 0
	self.CanEat = false
	self:SetSkin(math.random(0,1))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnInitialize()

	self:SetModelScale(1.28)
	
	-- self:SetCollisionBounds(Vector(11, 11, 71), Vector(-11, -11, 0))
	-- self:SetModelScale(1.31)
	self.AnimTbl_Flinch = {}

	-- self.MeleeAttackDistance = 50
	-- self.MeleeAttackDamageDistance = 70

	if GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 0 or GetConVar("vj_npc_noidleparticle"):GetInt() == 1 then return end

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
		local EyeTrail = util.SpriteTrail(self,1,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		local EyeTrail2 = util.SpriteTrail(self,2,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
	end


end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

	self.SoundTbl_Idle = {
		"voices/deimos/corrupt/idle1.mp3",
		"voices/deimos/corrupt/idle2.mp3",
		"voices/deimos/corrupt/idle3.mp3",
		"voices/deimos/corrupt/idle4.mp3",
		"voices/deimos/corrupt/idle5.mp3",
		"voices/deimos/corrupt/idle6.mp3"
	}

	self.SoundTbl_Alert = {
		"voices/deimos/corrupt/alert1.mp3",
		"voices/deimos/corrupt/alert2.mp3",
		"voices/deimos/corrupt/alert3.mp3",
		"voices/deimos/corrupt/alert4.mp3",
		"voices/deimos/corrupt/super_puker_70.mp3"
	}

	self.SoundTbl_CombatIdle = {
		"voices/deimos/corrupt/idle1.mp3",
		"voices/deimos/corrupt/idle2.mp3",
		"voices/deimos/corrupt/idle3.mp3",
		"voices/deimos/corrupt/idle4.mp3",
		"voices/deimos/corrupt/idle5.mp3",
		"voices/deimos/corrupt/idle6.mp3"
	}

	self.SoundTbl_BeforeMeleeAttack = {
		"voices/deimos/corrupt/alert1.mp3",
		"voices/deimos/corrupt/alert2.mp3",
		"voices/deimos/corrupt/alert3.mp3",
		"voices/deimos/corrupt/alert4.mp3",
		"voices/deimos/corrupt/super_puker_70.mp3"
	}

	self.SoundTbl_Pain = {
		"voices/deimos/corrupt/pain1.mp3",
		"voices/deimos/corrupt/pain2.mp3",
		"voices/deimos/corrupt/pain3.mp3",
		"voices/deimos/corrupt/pain4.mp3",
		"voices/deimos/corrupt/pain5.mp3"
	}

	self.SoundTbl_Death = {
		"voices/deimos/corrupt/death1.mp3",
		"voices/deimos/corrupt/death2.mp3",
		"voices/deimos/corrupt/death3.mp3",
		"voices/deimos/corrupt/death4.mp3",
		"voices/deimos/corrupt/death5.mp3"
	}
		
	self.ToTU_Almanac_VoiceActor = "Puker (Dead Space 2)"

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	self.HasHealthRegeneration = true
	self.HealthRegenerationDelay = VJ_Set(2, 2)
	self.HealthRegenerationResetOnDmg = false

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 600
		self.MeleeAttackDamage = math.Rand(25,30)
		self.HealthRegenerationAmount = 30

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 500
		self.MeleeAttackDamage = math.Rand(30,35)
		self.HealthRegenerationAmount = 36

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 1500
		self.MeleeAttackDamage = math.Rand(35,40)
		self.HealthRegenerationAmount = 45

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 2250
		self.MeleeAttackDamage = math.Rand(40,45)
		self.HealthRegenerationAmount = 52

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 1200
		self.MeleeAttackDamage = math.Rand(45,50)
		self.HealthRegenerationAmount = 60

	else

		self.StartHealth = 1500
		self.MeleeAttackDamage = math.Rand(35,40)
		self.HealthRegenerationAmount = 45

	end


	if GetConVar("VJ_ToTU_Weaponized_Carcass_Bleed"):GetInt() == 1 then

		self.MeleeAttackBleedEnemy = true
		self.MeleeAttackBleedEnemyChance = 3
		self.MeleeAttackBleedEnemyTime = 1
		self.MeleeAttackBleedEnemyReps = 4
		
		if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
			self.MeleeAttackBleedEnemyDamage = math.random(1,5)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
			self.MeleeAttackBleedEnemyDamage = math.random(5,10)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
			self.MeleeAttackBleedEnemyDamage = math.random(10,15)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
			self.MeleeAttackBleedEnemyDamage = math.random(15,20)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
			self.MeleeAttackBleedEnemyDamage = math.random(20,25)
		else
			self.MeleeAttackBleedEnemyDamage = math.random(10,15)
		end
	end

	self:SetHealth(self.StartHealth)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RiseFromGround()

	timer.Simple(0.1,function() if IsValid(self) then
		if GetConVar("VJ_ToTU_Spawn_AlertSound"):GetInt() == 1 then
			VJ_CreateSound(self,self.SoundTbl_Alert,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.AlertSoundPitch.a, self.AlertSoundPitch.b))
		end
	end end)

	VJ_EmitSound(self,"fx/dirtintro"..math.random(1,2)..".wav",75,100)
	ParticleEffect("advisor_plat_break",self:GetPos(),self:GetAngles(),self)
	ParticleEffect("strider_impale_ground",self:GetPos(),self:GetAngles(),self)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GetSightDirection()
	return self:GetForward()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnThink_AIEnabled()

	if
		self.ToTU_Weaponized_Redead_NextRunT < CurTime() &&
		!self.ToTU_Weaponized_Redead_Running &&
		self:GetEnemy() != nil &&
		!self:IsBusy()
	then

		if self:GetClass() == "npc_vj_totu_deimos_corrupt_brute" then
			VJ_EmitSound(self,"voices/deimos/reaper/run_"..math.random(1,4)..".mp3",self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			self.ToTU_Weaponized_Redead_RunT = CurTime() + math.random(3,7)
		elseif self:GetClass() == "npc_vj_totu_fon_lament" then
			VJ_EmitSound(self,"voices/deimos/reaper/run_"..math.random(1,4)..".mp3",self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.AlertSoundPitch.a,self.AlertSoundPitch.b))
			if self.ToTU_FreakOfNature_Phase == 2 then
				self.ToTU_Weaponized_Redead_RunT = CurTime() + math.random(7,15)
			else
				self.ToTU_Weaponized_Redead_RunT = CurTime() + math.random(3,7)
			end
		else
			VJ_EmitSound(self,self.SoundTbl_BeforeMeleeAttack,self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
			self.ToTU_Weaponized_Redead_RunT = CurTime() + math.random(6,14)
		end

		self.ToTU_Weaponized_Redead_Running = true

		self.AnimTbl_Walk = {ACT_WALK}
		self.AnimTbl_Run = {ACT_RUN}

	end

	if
		self.ToTU_Weaponized_Redead_Running &&
		self.ToTU_Weaponized_Redead_RunT < CurTime() &&
		!self.LNR_Crippled
	then

		self.ToTU_Weaponized_Redead_Running = false
		if self:GetClass() == "npc_vj_totu_deimos_corrupt_brute" then
			self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(12,24)
		elseif self:GetClass() == "npc_vj_totu_fon_lament" then
			VJ_EmitSound(self,"voices/deimos/reaper/run_"..math.random(1,4)..".mp3",self.AlertSoundLevel,self:VJ_DecideSoundPitch(self.AlertSoundPitch.a,self.AlertSoundPitch.b))
			if self.ToTU_FreakOfNature_Phase == 2 then
				self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(3,10)
			else
				self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(12,24)
			end
		else
			self.ToTU_Weaponized_Redead_NextRunT = CurTime() + math.random(6,12)
		end

		self.AnimTbl_Walk = {ACT_WALK}
		self.AnimTbl_Run = {ACT_WALK}

	end

	if self:GetClass() == "npc_vj_totu_fon_lament" then
		if self.ToTU_FreakOfNature_Phase == 1 && self:Health() <= (self:GetMaxHealth() / 2) then
			self.ToTU_FreakOfNature_Phase = 2
			self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,1.6)
			VJ_EmitSound(self,"fx/Monster4.mp3",80,125)
			VJ_EmitSound(self,"fx/Monster4.mp3",80,125)
			effects.BeamRingPoint(self:GetPos(), 0.3, 2, 100, 15, 0, Color(255, 255, 255), {material="sprites/physbeama", framerate=20})
			effects.BeamRingPoint(self:GetPos(), 0.3, 2, 300, 10, 0, Color(255, 255, 255), {material="sprites/physbeama", framerate=20})
			effects.BeamRingPoint(self:GetPos(), 0.3, 2, 500, 5, 0, Color(255, 255, 255), {material="sprites/physbeama", framerate=20})

self:ToTU_Weaponized_Lament_Summon_Spawn()
self:ToTU_Weaponized_Lament_Summon_Spawn()
self:ToTU_Weaponized_Lament_Summon_Spawn()
self:ToTU_Weaponized_Lament_Summon_Spawn()

		self.HasRangeAttack = true
		self.RangeAttackEntityToSpawn = "obj_vj_totu_bloodcoagle"
		self.AnimTbl_RangeAttack = {"vjseq_flinch"}
		self.RangeDistance = 1200 
		self.RangeToMeleeDistance = 0
		self.RangeAttackAngleRadius = 100
		self.TimeUntilRangeAttackProjectileRelease = 0.05
		self.NextRangeAttackTime = 6
		self.NextAnyAttackTime_Range = 2
		self.RangeUseAttachmentForPos = true 
		self.RangeUseAttachmentForPosID = "eyes"
		self.RangeAttackExtraTimers = nil
		self.RangeAttackPos_Forward = 20
		self.RangeAttackPos_Up = 20
		self.RangeAttackReps = 3

					self.RangeAttackSoundLevel = 90
					self.SoundTbl_BeforeRangeAttack = {
						"npc/barnacle/barnacle_tongue_pull1.wav",
						"npc/barnacle/barnacle_tongue_pull2.wav",
						"npc/barnacle/barnacle_tongue_pull3.wav",
					}
		end
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnMeleeAttack_BeforeStartTimer(seed)

	if self:IsMoving() && self.ToTU_Weaponized_Redead_Running then

		self.AnimTbl_MeleeAttack = {"vjseq_attack_run"}
		
		self.SoundTbl_MeleeAttackExtra = {
			"fx/zombie_slice_1.wav",
			"fx/zombie_slice_2.wav",
			"fx/zombie_slice_3.wav",
			"fx/zombie_slice_4.wav",
			"fx/zombie_slice_5.wav",
			"fx/zombie_slice_6.wav"
		}

		self.SoundTbl_MeleeAttack = {""}

		if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
			self.MeleeAttackDamage = math.Rand(25,30)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
			self.MeleeAttackDamage = math.Rand(30,35)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
			self.MeleeAttackDamage = math.Rand(35,40)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
			self.MeleeAttackDamage = math.Rand(40,45)
		elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
			self.MeleeAttackDamage = math.Rand(45,50)
		else
			self.MeleeAttackDamage = math.Rand(35,40)
		end

		self.HasMeleeAttackKnockBack = false

		self.MeleeAttackDamageType = DMG_SLASH
		
		if GetConVar("VJ_ToTU_Weaponized_Carcass_Bleed"):GetInt() == 1 then
			self.MeleeAttackBleedEnemy = true
		end

	else
		if math.random(1,3) != 1 then

			self.AnimTbl_MeleeAttack = {"vjseq_attack1"}

			self.SoundTbl_MeleeAttackExtra = {
				"fx/zombie_slice_1.wav",
				"fx/zombie_slice_2.wav",
				"fx/zombie_slice_3.wav",
				"fx/zombie_slice_4.wav",
				"fx/zombie_slice_5.wav",
				"fx/zombie_slice_6.wav"
			}

			self.SoundTbl_MeleeAttack = {""}

			if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
				self.MeleeAttackDamage = math.Rand(25,30)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
				self.MeleeAttackDamage = math.Rand(30,35)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
				self.MeleeAttackDamage = math.Rand(35,40)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
				self.MeleeAttackDamage = math.Rand(40,45)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
				self.MeleeAttackDamage = math.Rand(45,50)
			else
				self.MeleeAttackDamage = math.Rand(35,40)
			end

			self.HasMeleeAttackKnockBack = false
			
			self.MeleeAttackDamageType = DMG_SLASH

			if GetConVar("VJ_ToTU_Weaponized_Carcass_Bleed"):GetInt() == 1 then
				self.MeleeAttackBleedEnemy = true
			end

		else

			self.SoundTbl_MeleeAttackExtra = {
				""
			}

			self.SoundTbl_MeleeAttack = {
				"fx/hit_punch_01.wav",
				"fx/hit_punch_02.wav",
				"fx/hit_punch_03.wav",
				"fx/hit_punch_04.wav",
				"fx/hit_punch_05.wav",
				"fx/hit_punch_06.wav",
				"fx/hit_punch_07.wav",
				"fx/hit_punch_08.wav"
			}

			self.AnimTbl_MeleeAttack = {"vjseq_attack2"}

			if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then
				self.MeleeAttackDamage = math.Rand(5,10)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then
				self.MeleeAttackDamage = math.Rand(10,15)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then
				self.MeleeAttackDamage = math.Rand(15,20)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then
				self.MeleeAttackDamage = math.Rand(20,25)
			elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then
				self.MeleeAttackDamage = math.Rand(25,30)
			else
				self.MeleeAttackDamage = math.Rand(15,20)
			end

			self.HasMeleeAttackKnockBack = true
			self.MeleeAttackKnockBack_Forward1 = 150
			self.MeleeAttackKnockBack_Forward2 = 150
			self.MeleeAttackKnockBack_Up1 = 100
			self.MeleeAttackKnockBack_Up2 = 125

			self.MeleeAttackDamageType = DMG_CLUB
			self.MeleeAttackBleedEnemy = false

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
-- function ENT:MeleeAttackKnockbackVelocity(hitEnt)
	-- return self:GetForward()*5000 + self:GetUp()*300
-- end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if
		dmginfo:IsDamageType(DMG_CLUB) or
		dmginfo:IsDamageType(DMG_SLASH) or
		dmginfo:IsDamageType(DMG_GENERIC) or
		dmginfo:IsDamageType(DMG_SONIC) or
		dmginfo:IsDamageType(DMG_VEHICLE) or
		dmginfo:IsDamageType(DMG_DIRECT) or
		dmginfo:IsDamageType(DMG_NEVERGIB) or
		dmginfo:IsDamageType(DMG_PHYSGUN) or
		dmginfo:IsDamageType(DMG_CRUSH)
	then	
		if self.LNR_NextShoveT < CurTime() then
			self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,1.6)
			
			if self:GetClass() == "npc_vj_totu_fon_lament" then
				self.LNR_NextShoveT = CurTime() + 7
			else
				self.LNR_NextShoveT = CurTime() + 3.5
			end
		end
	end
	if
		dmginfo:IsExplosionDamage() or
		dmginfo:IsDamageType(DMG_BLAST_SURFACE) or
		dmginfo:IsDamageType(DMG_MISSILEDEFENSE) or
		dmginfo:IsDamageType(DMG_ALWAYSGIB)
	then	
		if self.ToTU_NextSplodeStumbleT < CurTime() then
			self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,1.6)
			if self:GetClass() == "npc_vj_totu_fon_lament" then
				self.ToTU_NextSplodeStumbleT = CurTime() + 7
			else
				self.ToTU_NextSplodeStumbleT = CurTime() + 3.5
			end
		end
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/