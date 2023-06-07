ENT.Base 			= "npc_vj_totu_lnr_wal"
ENT.Type 			= "ai"
ENT.PrintName 		= "Infected"
ENT.Author 			= "Darkborn & King of Pootis"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= "To create an outbreak!"
ENT.Instructions 	= "You've Been Infected...I'm terribly sorry.."
ENT.Category		= "ToTU"

if (CLIENT) then
	local Name = "Infected"
	local LangName = "npc_vj_totu_lnr_inf"
	language.Add(LangName, Name)
	killicon.Add(LangName,"HUD/killicons/default",Color(255,80,0,255))
	language.Add("#"..LangName, Name)
	killicon.Add("#"..LangName,"HUD/killicons/default",Color(255,80,0,255))
end