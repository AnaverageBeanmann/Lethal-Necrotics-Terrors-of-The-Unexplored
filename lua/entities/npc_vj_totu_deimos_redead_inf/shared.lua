ENT.Base 			= "npc_vj_totu_deimos_redead"
ENT.Type 			= "ai"
ENT.PrintName 		= "Redead"
ENT.Author 			= "Darkborn & King of Pootis originally, modified by Bean"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= "To create an outbreak!"
ENT.Instructions 	= "You've Been Infected...I'm terribly sorry.."
ENT.Category		= "ToTU"

if (CLIENT) then
	local Name = "Redead"
	local LangName = "npc_vj_totu_deimos_redead_inf"
	language.Add(LangName, Name)
	killicon.Add(LangName,"HUD/killicons/default",Color(255,80,0,255))
	language.Add("#"..LangName, Name)
	killicon.Add("#"..LangName,"HUD/killicons/default",Color(255,80,0,255))
end