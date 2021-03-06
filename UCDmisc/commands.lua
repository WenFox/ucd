function clearChat()
	for i = 1, getChatboxLayout()["chat_lines"] do
		outputChatBox("")
	end
end
addCommandHandler("clearchat", clearChat)

function retrieveCoords()
	local px, py, pz	= getElementPosition(localPlayer)
	local int 			= getElementInterior(localPlayer)
	local dim 			= getElementDimension(localPlayer)
	local _, _, rz      = getElementRotation(localPlayer)
	
	local cpx 			= exports.UCDutil:mathround(px, 4)
	local cpy 			= exports.UCDutil:mathround(py, 4)
	local cpz 			= exports.UCDutil:mathround(pz, 4)
	local crz           = exports.UCDutil:mathround(rz, 4)
	
	outputChatBox("Your position is: "..cpx..", "..cpy..", "..cpz.." - Rotation: "..crz.." - Dimension: "..dim.." - Interior: "..int.."", 
		math.random(50, 255),
		math.random(50, 255),
		math.random(50, 255)
	)
	setClipboard("x = "..cpx..", y = "..cpy..", z = "..cpz..", rot = "..crz)
end
addCommandHandler("pos", retrieveCoords)