function Create_X(CustomGroup, playerIndex, shipID)
	if(X_CustomFunctionCreate[CustomGroup]~=nil)then
		X_CustomFunctionCreate[CustomGroup](CustomGroup, playerIndex, shipID)
	end
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
	if(X_CustomFunctionUpdate[CustomGroup]~=nil)then
		X_CustomFunctionUpdate[CustomGroup](CustomGroup, playerIndex, shipID)
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
	if(X_CustomFunctionDestroy[CustomGroup]~=nil)then
		X_CustomFunctionDestroy[CustomGroup](CustomGroup, playerIndex, shipID)
	end
end

X_CustomFunctionCreate={}
X_CustomFunctionUpdate={}
X_CustomFunctionDestroy={}
--Write your own custom code for units here follow the format below:
--X_CustomFunctionCreate[<ShipType>]=function(CustomGroup, playerIndex, shipID)
--
--<your code>
--
--end
--X_CustomFunctionUpdate[<ShipType>]=function(CustomGroup, playerIndex, shipID)
--
--<your code>
--
--end
--X_CustomFunctionDestroy[<ShipType>]=function(CustomGroup, playerIndex, shipID)
--
--<your code>
--
--end
