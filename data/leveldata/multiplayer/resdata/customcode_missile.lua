function Start_X_Missile(CustomGroup, playerIndex, shipID)  
	xSetShipIdioStateKey(shipID,1,"On")
end

function Do_X_Missile(CustomGroup, playerIndex, shipID)  	
	xSetShipIdioStateKey(shipID,1,"On")
end

function Finish_X_Missile(CustomGroup, playerIndex, shipID)	
	xSetShipIdioStateKey(shipID,1,"Off")
end