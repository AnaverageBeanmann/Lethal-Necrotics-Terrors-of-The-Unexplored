AddCSLuaFile()
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.Base = "base_anim"
ENT.Type = "anim"
ENT.Spawnable = false
ENT.AdminOnly = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetupDataTables()
	self:NetworkVar("Vector",0,"PlayerColor")
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Initialize()
    self:SetCollisionGroup(COLLISION_GROUP_WORLD)
    self:SetSolid(SOLID_NONE)
    self:AddEffects(EF_BONEMERGE)
	self:SetOwner(self.VJ_Owner)	
    if CLIENT && GetConVar("VJ_TOTU_LNR_BloodDecals"):GetInt() == 1 then
        for i = 1,5 do
            util.DecalEx(Material(util.DecalMaterial("Blood")),self,self:GetPos() + Vector(0,0,math.random(20,80)),VectorRand(),Color(255,255,255),1,1)
        end
    end
end