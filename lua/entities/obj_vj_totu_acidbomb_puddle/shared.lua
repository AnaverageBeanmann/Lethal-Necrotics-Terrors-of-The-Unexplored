ENT.Base 			= "obj_vj_projectile_base" -- Full list of bases is in the base, or go back to this link and read the list: https://saludos.sites.google.com/site/vrejgaming/makingvjbaseaddon
ENT.Type 			= "anim"
ENT.PrintName		= "Acid Puddle"
ENT.Author 			= "Bean"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Information		= "Projectile"
ENT.Category		= "ToTU"

if (CLIENT) then
	local Name = "Acid Puddle"
	local LangName = "obj_vj_totu_acidbomb_puddle"
	language.Add(LangName, Name)
	killicon.Add(LangName,"HUD/killicons/default",Color(255,80,0,255))
	language.Add("#"..LangName, Name)
	killicon.Add("#"..LangName,"HUD/killicons/default",Color(255,80,0,255))
end