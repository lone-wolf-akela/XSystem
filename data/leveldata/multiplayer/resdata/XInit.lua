function XInit(sReslist, sSurviveJudgeAndTechnologies)
	_ALERT("Initializing X System in GameRule Scope...")
	dofilepath("data:leveldata/multiplayer/resdata/"..sReslist)
	dofilepath("data:leveldata/multiplayer/resdata/logics.lua")
	if sSurviveJudgeAndTechnologies ~= "" then
		dofilepath("data:leveldata/multiplayer/resdata/"..sSurviveJudgeAndTechnologies)
	else
		PlayerSurviveJudge = 0
		ShipForSurvive = {}
		Technologies ={}
	end
	Entrance()
	
	GameEvent_Listen(35587, sReslist)
	
	Volume_AddSphere("XInitVolume", {0, 0, 0}, 0)
	SobGroup_CreateIfNotExist("XInitGroup")
	SobGroup_SpawnNewShipInSobGroup(-1, "XSYS_initiator", "XSYS_initiator", "XInitGroup", "XInitVolume")
	Volume_Delete("XInitVolume")
	
	_ALERT("Initialized X System in GameRule Scope...")
end