AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
-- /*
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if self.CanDoTheFunny == false or self.LNR_Crawler or self.LNR_Crippled then return end
		if dmginfo:IsBulletDamage() or dmginfo:IsDamageType(DMG_BUCKSHOT) or dmginfo:IsDamageType(DMG_SNIPER) then
			if hitgroup == HITGROUP_HEAD or hitgroup == HITGROUP_CHEST or hitgroup == HITGROUP_STOMACH then
				if self.LNR_NextStumbleT < CurTime() && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) then
					if dmginfo:GetDamage() > 129 or dmginfo:GetDamageForce():Length() > 14499 then
						self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
						-- self:SetState(VJ_STATE_ONLY_ANIMATION)
						self.LNR_NextStumbleT = CurTime() + 7
					elseif dmginfo:GetDamage() > 74 or dmginfo:GetDamageForce():Length() > 7999 then
						if math.random (1,3) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
							-- self:SetState(VJ_STATE_ONLY_ANIMATION)
							self.LNR_NextStumbleT = CurTime() + 7
						end
					else
						if math.random (1,5) == 1 then
							self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
							self.LNR_NextStumbleT = CurTime() + 6
						end
					end
				end
			elseif hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then		 
				if self.LNR_NextStumbleT < CurTime() && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) then
					if self:GetActivity() == ACT_SPRINT or self:GetActivity() == ACT_RUN_AIM then
						if dmginfo:GetDamage() > 99 or dmginfo:GetDamageForce():Length() > 30000 then
							if self.LNR_NextShoveT < CurTime() then
								self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
								-- self:SetState(VJ_STATE_ONLY_ANIMATION)
								self.LNR_NextShoveT = CurTime() + math.random(5,8)
							end
						elseif dmginfo:GetDamage() > 49 or dmginfo:GetDamageForce():Length() > 15000 then
							if self.LNR_NextShoveT < CurTime() then
								self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
								-- self:SetState(VJ_STATE_ONLY_ANIMATION)
								self.LNR_NextShoveT = CurTime() + math.random(5,8)
							end
						else
							if self.LNR_NextShoveT < CurTime() then
								self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
								self.LNR_NextShoveT = CurTime() + math.random(5,8)
							end
						end
					end
				end
			end
		end
		if dmginfo:IsDamageType(DMG_CLUB) or dmginfo:IsDamageType(DMG_SLASH) or dmginfo:IsDamageType(DMG_GENERIC) or dmginfo:IsDamageType(DMG_SONIC) or dmginfo:IsDamageType(DMG_CRUSH) then
			if self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH) then
				if dmginfo:GetDamage() > 99 or dmginfo:GetDamageForce():Length() > 30000 then
					if self.LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
						-- self:SetState(VJ_STATE_ONLY_ANIMATION)
						self.LNR_NextShoveT = CurTime() + math.random(5,8)
					end
				elseif dmginfo:GetDamage() > 49 or dmginfo:GetDamageForce():Length() > 15000 then
					if self.LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH,true,false,false)
						-- self:SetState(VJ_STATE_ONLY_ANIMATION)
						self.LNR_NextShoveT = CurTime() + math.random(5,8)
					end
				else
					if self.LNR_NextShoveT < CurTime() then
						self:VJ_ACT_PLAYACTIVITY(ACT_STEP_BACK,true,1.6)
						self.LNR_NextShoveT = CurTime() + math.random(5,8)
					end
				end
			end
    return !self.LNR_Crawler && !self.LNR_Crippled && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH)
	end
-- end
	if dmginfo:IsExplosionDamage() then
		if self.NextSplodeStumbleT < CurTime() then
		if math.random(1,2) == 1 then
			if math.random(1,2) == 1 then
				self:VJ_ACT_PLAYACTIVITY("vjseq_Run_Stumble_01",true,false,false)
				-- self:SetState(VJ_STATE_ONLY_ANIMATION)
			else
				self:VJ_ACT_PLAYACTIVITY("vjseq_shove_forward_01",true,false,false)
				-- self:SetState(VJ_STATE_ONLY_ANIMATION)
			end
		else
		self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH,true,false,false)
				-- self:SetState(VJ_STATE_ONLY_ANIMATION)
		end
		self.NextSplodeStumbleT = CurTime() + 5
		end
		    return !self.LNR_Crawler && !self.LNR_Crippled && self:GetSequence() != self:LookupSequence(ACT_BIG_FLINCH) && self:GetSequence() != self:LookupSequence(ACT_SMALL_FLINCH)
	end
			if GetConVar("VJ_LNR_Cripple"):GetInt() == 1 then 
			if hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then
			self.LNR_LegHP = self.LNR_LegHP -dmginfo:GetDamage()
			end
			end
			if self.LNR_LegHP <= 0 then
				self.LNR_Crippled = true
				if self.ToTU_Crawling then return end
				local anim = {"vjseq_nz_death_1","vjseq_nz_death_f_7","vjseq_nz_death_f_8"}				
				//if math.random(1,4) == 1 then anim = {"vjseq_nz_death_1","vjseq_nz_death_f_7","vjseq_nz_death_f_8"} end
				self:VJ_ACT_PLAYACTIVITY(anim,true,false,false)
                self:Cripple()
            end				
end
-- end
-- end
-- */
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/