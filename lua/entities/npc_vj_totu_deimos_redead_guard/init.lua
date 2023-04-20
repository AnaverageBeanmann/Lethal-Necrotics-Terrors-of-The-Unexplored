AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
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

	if self.ToTU_Weaponized_Redead_Grunt_ShouldHaveEyetrail && !self.MilZ_HasGasmask && GetConVar("VJ_ToTU_Weaponized_Deimos_Eyes"):GetInt() == 2 then
		local TrailColor = Color(220,0,255,255)
		local EyeTrail = util.SpriteTrail(self,10,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
		local EyeTrail2 = util.SpriteTrail(self,9,TrailColor,false,5,0,0.25,1,"vj_base/sprites/vj_trial1")
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ArmorDamage(dmginfo,hitgroup)

	if GetConVar("VJ_ToTU_General_Armor_Allow"):GetInt() == 0 then return end

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
		self.ToTU_Weaponized_Redead_Guard_HasHelmet
	then

		if GetConVar("VJ_ToTU_MilZ_Helmet_Breakable"):GetInt() == 1 then

			self.ToTU_Weaponized_Redead_Guard_HelmetHealth = self.ToTU_Weaponized_Redead_Guard_HelmetHealth -dmginfo:GetDamage()

			if self.ToTU_Weaponized_Redead_Guard_HelmetHealth <= 0 && self.ToTU_Weaponized_Redead_Guard_HasHelmet then

				self.ToTU_Weaponized_Redead_Guard_HasHelmet = false

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

				self:SetBodygroup(2,1)

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

		if self.ToTU_Weaponized_Redead_Guard_HasVest == true then
			if
				dmginfo:IsBulletDamage() or
				dmginfo:IsDamageType(DMG_BUCKSHOT) or
				dmginfo:IsDamageType(DMG_SLASH) or
				dmginfo:IsDamageType(DMG_CLUB)
			then

				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,"fx/armor/kevlar"..math.random(1,5)..".wav",70) end
				if self.HasSounds && self.HasImpactSounds then VJ_EmitSound(self,{"physics/wood/wood_box_break1.wav","physics/wood/wood_box_break2.wav"},70) end
				dmginfo:ScaleDamage(0.70)

			end
		end

	end

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/