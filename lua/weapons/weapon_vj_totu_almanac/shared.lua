

-- The code in this is modified from the Zombies Expansion Zombie Inspector, none of this is my original work.
-- Please don't hurt me.

-- Variables that are used on both client and server

SWEP.PrintName		= "ToTU Almanac"
SWEP.Author			= ""
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModel		= "models/weapons/c_bugbait.mdl"
SWEP.WorldModel		= "models/weapons/w_bugbait.mdl"

SWEP.UseHands		= true
SWEP.Spawnable		= true

SWEP.ShootSound = Sound( "friends/friend_join.wav" )

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"
SWEP.DrawAmmo = false

SWEP.CanHolster = true
SWEP.CanDeploy = true

function SWEP:Precache()

	util.PrecacheSound( self.ShootSound )

end

function SWEP:PrintWeaponInfo()
end

function SWEP:Reload()
end

function SWEP:DoShootEffect( hitpos, hitnormal, entity, physbone, bFirstTimePredicted )

	self:EmitSound( self.ShootSound )
	self:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
	self.Owner:SetAnimation( PLAYER_ATTACK1 )

	if ( !bFirstTimePredicted ) then return end

	local effectdata = EffectData()
	effectdata:SetOrigin( hitpos )
	effectdata:SetStart( self.Owner:GetShootPos() )
	effectdata:SetAttachment( 1 )
	effectdata:SetEntity( self )
	util.Effect( "ToolTracer", effectdata )

end

-- Trace a line then send the result to a mode function
function SWEP:PrimaryAttack()

	local tr = util.GetPlayerTrace( self.Owner )
	tr.mask = bit.bor( CONTENTS_SOLID, CONTENTS_MOVEABLE, CONTENTS_MONSTER, CONTENTS_WINDOW, CONTENTS_DEBRIS, CONTENTS_GRATE, CONTENTS_AUX )
	
	local trace = util.TraceLine( tr )
	
	if ( !trace.Hit ) or !trace.Entity.ToTU_IsToTUZombie then return end

	if trace.Entity.ToTU_IsToTUZombie then
	
	-- if trace.Entity.zmiSpeed and trace.Entity.zmiSpeed != "" then
	
		-- self.Speed = trace.Entity.zmiSpeed
		
	-- else
	
		-- self.Speed = "Normal"
		
	-- end
	
	-- if trace.Entity.zmiToughness and trace.Entity.zmiToughness != "" then
	
		-- self.Toughness = trace.Entity.zmiToughness
	
	-- else
	
		-- self.Toughness = "Normal"
	
	-- end
	
	self.PrintName = trace.Entity.PrintName
	self.Name = trace.Entity.ToTU_Almanac_Name
	self.Strain = trace.Entity.ToTU_Almanac_Strain
	self.Toughness = trace.Entity.ToTU_Almanac_Toughness
	self.Damage = trace.Entity.ToTU_Almanac_Damage
	self.Gimmicks = trace.Entity.ToTU_Almanac_Gimmicks
	self.Flavortext = trace.Entity.ToTU_Almanac_FlavorText
	self.Notes = trace.Entity.ToTU_Almanac_Notes
	self.Notes2 = trace.Entity.ToTU_Almanac_Notes2
	self.Notes3 = trace.Entity.ToTU_Almanac_Notes3
	self.Notes4 = trace.Entity.ToTU_Almanac_Notes4
	self.Notes5 = trace.Entity.ToTU_Almanac_Notes5
	
	self.Desc = trace.Entity.zmiDesc
	self:DoShootEffect( trace.HitPos, trace.HitNormal, trace.Entity, trace.PhysicsBone, IsFirstTimePredicted() )
	-- self.Owner:ChatPrint("Speed: "..self.Speed.."   Toughness: "..self.Toughness.."\n")
	-- self.Owner:ChatPrint("\n"..self.Name.."\n")
	-- self.Owner:ChatPrint(self.TopDesc.."\n")
	
	-- self.Owner:ChatPrint("Test")
	self.Owner:ChatPrint(" ")
	self.Owner:ChatPrint(""..self.Name.."")
	self.Owner:ChatPrint(""..self.Strain.."")
	self.Owner:ChatPrint(""..self.Toughness.."")
	self.Owner:ChatPrint(""..self.Damage.."")
	-- self.Owner:ChatPrint(""..self.Gimmicks.."")
	
	if self.Notes != "" then
	
		self.Owner:ChatPrint(""..self.Notes.."")
		
	end
	
	if self.Notes2 != "" then
	
		self.Owner:ChatPrint(""..self.Notes2.."")
		
	end
	
	if self.Notes3 != "" then
	
		self.Owner:ChatPrint(""..self.Notes3.."")
		
	end
	
	if self.Notes4 != "" then
	
		self.Owner:ChatPrint(""..self.Notes4.."")
		
	end
	
	if self.Notes5 != "" then
	
		self.Owner:ChatPrint(""..self.Notes5.."")
		
	end
	
	if self.Gimmicks != "" then
	
		self.Owner:ChatPrint(""..self.Gimmicks.."")
		
	end

		-- self.Owner:ChatPrint(self.Desc.."\n\n\n")
		
	self.Owner:ChatPrint(""..self.Flavortext.."")
	
	end
	
end

function SWEP:FireAnimationEvent( pos, ang, event, options )

	-- Disables animation based muzzle event
	if ( event == 21 ) then return true end
	-- Disable thirdperson muzzle flash
	if ( event == 5003 ) then return true end

end
