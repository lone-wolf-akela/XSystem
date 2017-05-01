function Create_XSYS_initiator(CustomGroup, playerIndex, shipID)
	_ALERT("Initializing X System in CustomCode Scope...")
	local sReslist = GameEvent_IsListening(35587)
	_ALERT("Selected Reslist: "..sReslist)
	GameEvent_UnListen(35587)
	dofilepath("data:leveldata/multiplayer/resdata/XCode.lua")
	dofilepath("data:leveldata/multiplayer/resdata/"..sReslist)
end

function Update_XSYS_initiator(CustomGroup, playerIndex, shipID)
	SobGroup_MakeDead(CustomGroup)
	_ALERT("Initialized X System in CustomCode Scope...")
end