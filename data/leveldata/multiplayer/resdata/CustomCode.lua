function Create_X(CustomGroup, playerIndex, shipID)
end

function Update_X(CustomGroup, playerIndex, shipID)
	if (AllUnitsStates[shipID]~=nil) then
		if (AllUnitsStates[shipID][1]~=nil) then
			PingShowStates(CustomGroup, playerIndex, shipID)
			UnitCharacteristicCheck(CustomGroup, playerIndex, shipID)
			UnitCharacteristicRuning(CustomGroup, playerIndex, shipID)
		end
	else--if(SobGroup_GroupInGroup("UnitStateInitlizeGroup", CustomGroup)==0)then
		InitlizeUnitStates(CustomGroup, playerIndex, GetUnitsIndex(CustomGroup), shipID)
	end
end

function Destroy_X(CustomGroup, playerIndex, shipID)
	if (AllUnitsStates[shipID]~=nil) then
		if (AllUnitsStates[shipID][1]~=nil) then
			UnitDeath(shipID, CustomGroup)
			UnitCharacteristicCheck(CustomGroup, playerIndex, shipID)
			UnitCharacteristicRuning(CustomGroup, playerIndex, shipID)
		end
	end
end