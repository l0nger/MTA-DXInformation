--[[
	MTA-SA DX-Information

	@author: l0nger <l0nger.programmer@gmail.com>
	@license: GPLv2
]]

function sendInformationToPlayer(player, text)
 	triggerClientEvent(player, "outputInformationText", player, text)	
end

function sendInformationToAll(text)
	triggerClientEvent(root, "outputInformationText", root, text)
end

-- examples
addEventHandler("onPlayerJoin", root, function()
	sendInformationToAll(("#666666%s #ffffffjoined the server."):format(getPlayerName(source):gsub("#%x%x%x%x%x%x", "")))
end)

addEventHandler("onPlayerQuit", root, function(type)
	sendInformationToAll(("#666666%s #ffffffleft the server (%s)."):format(getPlayerName(source):gsub("#%x%x%x%x%x%x", ""), type))
end)

--[[
test command 
addCommandHandler("info-txt", function(plr, cmd, ...)
	local txt=table.concat({...}, " ")
	outputClientInformationText(txt)
end)
]]--
