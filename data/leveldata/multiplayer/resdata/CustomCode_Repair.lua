function Create_Repair(CustomGroup, playerIndex, shipID)	
end

function Update_Repair(CustomGroup, playerIndex, shipID)
	if Player_GetLevelOfDifficulty(playerIndex) > 0 then
		SobGroup_AbilityActivate(CustomGroup, AB_Targeting, 0)
		SobGroup_AbilityActivate(CustomGroup, AB_Attack, 0)
		SobGroup_RepairSobGroup(CustomGroup, "Player_Ships"..SobGroup_OwnedBy(CustomGroup))
	end
end

function Destroy_Repair(CustomGroup, playerIndex, shipID)		
end