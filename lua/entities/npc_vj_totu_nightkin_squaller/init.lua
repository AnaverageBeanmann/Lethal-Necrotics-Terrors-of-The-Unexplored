AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
util.AddNetworkString("VJ_ToTU_Squaller_Hud")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		-- self.StartHealth = 250
		self.StartHealth = 300
		self.MeleeAttackDamage = math.Rand(15,20)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		-- self.StartHealth = 500
		self.StartHealth = 325
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		-- self.StartHealth = 750
		self.StartHealth = 800
		self.MeleeAttackDamage = math.Rand(25,30)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		-- self.StartHealth = 1000
		self.StartHealth = 1100
		self.MeleeAttackDamage = math.Rand(30,35)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		-- self.StartHealth = 1250
		self.StartHealth = 1750
		self.MeleeAttackDamage = math.Rand(40,45)

	else

		self.StartHealth = 800
		self.MeleeAttackDamage = math.Rand(25,30)

	end

	self:SetHealth(self.StartHealth)	

	self.TOTU_LNR_LegHP = self.StartHealth * 0.20

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

	-- update these for the new sound location
	self.SoundTbl_Idle = {
		"voices/nightkin/squaller/idle_close_1.mp3",
		"voices/nightkin/squaller/idle_close_2.mp3",
		"voices/nightkin/squaller/idle_close_3.mp3",
		"voices/nightkin/squaller/idle_close_4.mp3",
		"voices/nightkin/squaller/idle_close_5.mp3",
		"voices/nightkin/squaller/idle_close_6.mp3",
		"voices/nightkin/squaller/idle_close_7.mp3",
		"voices/nightkin/squaller/idle_close_8.mp3",
		"voices/nightkin/squaller/idle_close_9.mp3",
		"voices/nightkin/squaller/idle_close_10.mp3",
		"voices/nightkin/squaller/lost_close_3.mp3",
		"voices/nightkin/squaller/lost_close_4.mp3",
		"voices/nightkin/squaller/lost_close_5.mp3",
		"voices/nightkin/squaller/lost_close_6.mp3",
	}

	self.SoundTbl_Alert = {
		"voices/nightkin/squaller/spot_player_2.mp3",
		"voices/nightkin/squaller/spot_player_3.mp3",
		"voices/nightkin/squaller/spot_player_5.mp3",
		"voices/nightkin/squaller/spot_player_6.mp3",
	}

	self.SoundTbl_CombatIdle = {
		"voices/nightkin/squaller/hunt_1.mp3",
		"voices/nightkin/squaller/hunt_2.mp3",
		"voices/nightkin/squaller/hunt_3.mp3",
		"voices/nightkin/squaller/hunt_4.mp3",
		"voices/nightkin/squaller/hunt_5.mp3",
		"voices/nightkin/squaller/hunt_6.mp3",
		"voices/nightkin/squaller/spot_player_1.mp3",
		"voices/nightkin/squaller/spot_player_4.mp3"
	}

	self.SoundTbl_Pain = {
		"voices/nightkin/squaller/search_extra_1.mp3",
		"voices/nightkin/squaller/search_extra_2.mp3",
		"voices/nightkin/squaller/search_extra_3.mp3",
		"voices/nightkin/squaller/search_extra_4.mp3",
		"voices/nightkin/squaller/search_extra_5.mp3",
		"voices/nightkin/squaller/search_extra_6.mp3",
		"voices/nightkin/squaller/search_extra_7.mp3",
		"voices/nightkin/squaller/search_extra_8.mp3",
		"voices/nightkin/squaller/search_extra_9.mp3",
		"voices/nightkin/squaller/search_extra_10.mp3",
	}

	self.SoundTbl_Death = {
		"voices/nightkin/squaller/start_search_close_1.mp3",
		"voices/nightkin/squaller/start_search_close_2.mp3",
		"voices/nightkin/squaller/start_search_close_3.mp3",
		"voices/nightkin/squaller/start_search_close_4.mp3",
		"voices/nightkin/squaller/start_search_close_5.mp3",
		"voices/nightkin/squaller/start_search_close_6.mp3",
		"voices/nightkin/squaller/start_search_close_7.mp3",
		"voices/nightkin/squaller/start_search_close_8.mp3",
	}

	self.ToTU_Almanac_VoiceActor = "Proxy (SOMA)"

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_CustomOnMeleeAttack_BeforeStartTimer(seed)
	if self:IsMoving() then
		self.SoundTbl_BeforeMeleeAttack = {
			"voices/nightkin/squaller/lost_close_1.mp3",
			"voices/nightkin/squaller/lost_close_2.mp3",
			"voices/nightkin/squaller/hunt_2.mp3",
		}
	else
		self.SoundTbl_BeforeMeleeAttack = {
			"voices/nightkin/squaller/hunt_1.mp3",
			"voices/nightkin/squaller/hunt_2.mp3",
			"voices/nightkin/squaller/hunt_3.mp3",
			"voices/nightkin/squaller/hunt_4.mp3",
			"voices/nightkin/squaller/hunt_5.mp3",
			"voices/nightkin/squaller/hunt_6.mp3",
			"voices/nightkin/squaller/spot_player_1.mp3",
			"voices/nightkin/squaller/spot_player_4.mp3"
		}
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/