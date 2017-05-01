function Start_X_Switch(CustomGroup, playerIndex, shipID) 
	if(xGetShipIdioStateKey(shipID,1)=="Off")then
		xSetShipIdioStateKey(shipID,1,"On")
	else
		xSetShipIdioStateKey(shipID,1,"Off")
	end
end

function Do_X_Switch(CustomGroup, playerIndex, shipID)  	
	
end

function Finish_X_Switch(CustomGroup, playerIndex, shipID)	
end
