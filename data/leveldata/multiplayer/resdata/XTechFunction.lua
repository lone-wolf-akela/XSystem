function XDoTechFunction(iPlayerIndex,iFunction,iTechnology)
	for Index,Parameter in iFunction do
		XTechFunction[Index](iPlayerIndex,Parameter,TechnologyTimeCountDown[iPlayerIndex + 1][iTechnology],iTechnology)
	end
end

XTechFunction = {}
XTechFunction["GainRU"]=function(iPlayer,Parameter,iTime,iTechnology)--�����ţ�Function������ʱ�䣬�Ƽ����
	if(iTime==10)then
	Player_SetRU(iPlayer,Player_GetRU(iPlayer)+Parameter)
	end
end