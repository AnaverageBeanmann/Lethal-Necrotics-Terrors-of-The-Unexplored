AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.GeneralSoundPitch1 = 85
ENT.GeneralSoundPitch2 = 80
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZombieSounds_Custom()

		self.SoundTbl_Idle = {""}
			
		self.SoundTbl_Alert = {
			"npc/barnacle/barnacle_bark1.wav",
			"npc/barnacle/barnacle_bark2.wav",
		}
		
		self.SoundTbl_CombatIdle = {
			"npc/barnacle/barnacle_tongue_pull1.wav",
			"npc/barnacle/barnacle_tongue_pull2.wav",
			"npc/barnacle/barnacle_tongue_pull3.wav",
		}
		
		self.SoundTbl_BeforeMeleeAttack = {
			"npc/barnacle/barnacle_tongue_pull1.wav",
			"npc/barnacle/barnacle_tongue_pull2.wav",
			"npc/barnacle/barnacle_tongue_pull3.wav",
		}
		
		self.SoundTbl_BeforeLeapAttack = {
			self.SoundTbl_BeforeMeleeAttack
		}
		
		self.SoundTbl_LeapAttackDamage = {
			self.SoundTbl_MeleeAttack
		}
		
		self.SoundTbl_Pain = {
			"npc/barnacle/barnacle_pull1.wav",
			"npc/barnacle/barnacle_pull2.wav",
			"npc/barnacle/barnacle_pull3.wav",
			"npc/barnacle/barnacle_pull4.wav",
		}
		
    	self.SoundTbl_Death = {
			"npc/barnacle/neck_snap1.wav",
			"npc/barnacle/neck_snap2.wav",
		}
		
		self.ToTU_Almanac_VoiceActor = "Barnacle (Half-Life 2)"


end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Difficulty()

	if GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 1 then

		self.StartHealth = 25
		self.MeleeAttackDamage = math.Rand(5,10)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 2 then

		self.StartHealth = 50
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 3 then

		self.StartHealth = 50
		self.MeleeAttackDamage = math.Rand(10,15)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 4 then

		self.StartHealth = 100
		self.MeleeAttackDamage = math.Rand(20,25)

	elseif GetConVar("VJ_TOTU_LNR_Difficulty"):GetInt() == 5 then

		self.StartHealth = 125
		self.MeleeAttackDamage = math.Rand(25,30)

	else

		self.StartHealth = 50
		self.MeleeAttackDamage = math.Rand(10,15)

	end

	self:SetHealth(self.StartHealth)

end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/