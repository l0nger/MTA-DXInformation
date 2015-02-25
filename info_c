--[[
	MTA-SA DX-Information

	@author: l0nger <l0nger.programmer@gmail.com>
	@license: GPLv2
]]

local screenW, screenH=guiGetScreenSize()

local pos_x=50
local pos_y=screenH/2-180
local count=250
local fadeOut=nil

local messages={}

function outputInformationText(msg)
	if #messages==0 then
		count=300
	end
	table.insert(messages, {text=msg, alpha=0})
end

addEventHandler("onClientRender", root, function()
	count=count-1
	if count==20 and messages[1] then
		fadeOut=messages[1]
		table.remove(messages, 1)
	end

	if count<=20 and count>0 then
		pos_y=screenH/2-180+count
	elseif count==0 then
		pos_y=screenH/2-180
		count=200
	end

	if fadeOut then
		fadeOut.alpha=math.max(fadeOut.alpha-0.05, 0)

		dxDrawText(fadeOut.text, pos_x-1, 1+pos_y-20, pos_x+101, 1+pos_y, tocolor(255, 255, 255, 255*fadeOut.alpha), 1.2, "default-bold", "left", "center", false, false, false, true)
		if fadeOut.alpha==0 then
			fadeOut=nil
		end
	end

	for id, msg in pairs(messages) do
		if id>4 then return end

		msg.alpha=math.min(msg.alpha+0.05, 1)

		dxDrawText(msg.text, pos_x-1, 1+pos_y+(id-1)*20, pos_x+101, 1+pos_y+id*20, tocolor(255, 255, 255, 255*msg.alpha), 1.2, "default-bold", "left", "center", false, false, false, true)
	end
end)

addEvent("outputInformationText", true)
addEventHandler("outputInformationText", root, function(text)
	outputInformationText(text)
end)
