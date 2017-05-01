function XDoTechFunction(iPlayerIndex,iFunction,iTechnology)
	for Index,Parameter in iFunction do
		XTechFunction[Index](iPlayerIndex,Parameter,TechnologyTimeCountDown[iPlayerIndex + 1][iTechnology],iTechnology)
	end
end

XTechFunction = {}
XTechFunction["GainRU"]=function(iPlayer,Parameter,iTime,iTechnology)--玩家序号，Function参数，时间，科技序号
	if(iTime==10)then
	Player_SetRU(iPlayer,Player_GetRU(iPlayer)+Parameter)
	end
end