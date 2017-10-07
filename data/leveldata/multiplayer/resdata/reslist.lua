Units=
{

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
	{
		Name = "hgn_marinefrigate",
		Type = "Frigate",
		Size = 1,
		LifeBarType = 1,
		Ability =
		{
			Characteristic =
			{
				{
					"OneselfSpeedChange",
					"Add",
					{
						{
							{"IsShipIdioStateKeyOn",1,},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
        	1,
				},                                 
				{
					"ShipIdioStateKeyTempOn",
					"Other",
					{
						{
							{"IsCapturing",1},
							{"IsControlledBy",-1},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					1,
					20,
					200/3,
				},
			},
			Exemption =
			{
			},
		},
  },



------------------------------------------------------------------------------------


------------------------------------------------------------------------------------
	{
		Name = "kpr_assaultfrigate",
		Type = "Frigate",
		Size = 1,
		LifeBarType = 2,
		Ability =
		{
			Characteristic =
			{
				{
					"EffectOnly",
					"Other",
					{},
					{},
					{},
					{{"ResourceStart",},{},5,0},
					{{},{},0,0},
					{{"ResourceEnd",},{},5,0},
					{1,1,},
				},
			},
			Exemption =
			{
			},
		},
	},
	{
		Name = "kpr_destroyer1",
		Type = "Capital",
		Size = 1,
		LifeBarType = 2,
		Ability =
		{
			Characteristic =
			{
				{
					"DroneShip",
					"Other",
					{},
					{},
					{},
					{{},{},0,0},
					{{},{},1,0},
					{{},{},0,0},
					{1,1,},
					"kpr_drone",
					2,
					{20,10},
					2500,
					1,
					1,
					{0,1,1,},
				},
				{
					"OneselfInvulnerability",
					"Other",
					{
						{
							{"DefenseFieldOpen",1,},
							{"IsControlledBy",1},
						},
						{
							{"IsShipIdioStateKeyOn",1},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{"Phase_Loop",},32,0},
					{{},{},0,0},
					{1,1,},
				},
				{
					"ShipIdioStateKeyTempOn",
					"Other",
					{
						{
							{"IsUnderAttack",1,},
							{"HealthChanged",-3,},
							{"IsControlledBy",-1},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					1,
					16,
					80,
				},
			},
			Exemption = 
			{
			},
		},
	},
------------------------------------------------------------------------------------
	{
		Name = "kad_mothership",
		Type = "Capital",
		Size = 1,
		LifeBarType = 2,
		Ability =
		{
			Characteristic =
			{
       	{
					"ShipInstantAmelioration",
					"Other",
					{},
					{},
					{{"GENERIC3",},},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					 "kad_mothershiplight",
					 -1,
				},
			},
			Exemption =
			{
			},
		},
	},
	{
		Name = "kad_mothershiplight",
		Type = "Capital",
		Size = 1,
		LifeBarType = 2,
		Ability =
		{
			Characteristic =
			{
				{
					"OneselfChangePower",
					"Other",
					{
						{
							{"IsShipIdioStateKeyOn",1},
							{"IsControlledBy",1},
						},
						{
							{"IsAttackingFamily",0,"SmallCapitalShip",},
							{"IsControlledBy",-1},
						},
						{
							{"IsAttackingFamily",0,"BigCapitalShip",},
							{"IsControlledBy",-1},
						},
						{
							{"IsAttackingFamily",0,"Mothership",},
							{"IsControlledBy",-1},
						},
					},
					{},
					{},
					{{"ResourceStart",},{},16,0},
					{{"ResourceDo",},{},4,0},
					{{"ResourceEnd",},{},12,0},
					{1,1,},
					{"Weapon_PhasedCannon",},
					{"",},
				},
				{
					"OneselfRepair",
					"Add",
					{
						{
							{"IsCharacteristicActive",-1,},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					0.0064,
				},
				{
					"OneselfSpeedChange",
					"Multiplication",
					{
						{
							{"IsCharacteristicActive",-1,},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					1.5,
				},
			},
			Exemption =
			{
			},
		},
	},
	{
		Name = "kad_fuelpod",
		Type = "Frigate",
		Size = 1,
		LifeBarType = 2,
		Ability =
		{
			Characteristic =
			{
				{
					"OneselfChangePower",
					"Other",
					{
						{
							{"IsControlledBy",1},
							{"IsShipIdioStateKeyOn",1},
						},
						{
							{"IsAttacking",1,},
							{"IsControlledBy",-1},
						},
					},
					{},
					{},
					{{"ResourceStart",},{},10,0},
					{{"ResourceDo",},{},1,0},
					{{"ResourceEnd",},{},10,0},
					{1,1,},
					{"Weapon_TurretTop",},
					{"",},
				},
				{
					"OneselfSpeedChange",
					"Multiplication",
					{
						{
							{"IsCharacteristicActive",1,},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					0.1,
				},
			},
			Exemption =
			{
			},
		},
	},
	{
		Name = "kad_guardianspirit",
		Type = "Capital",
		Size = 1,
		LifeBarType = 2,
		Ability =
		{
			Characteristic = 
			{
				{
				"DroneShip",
				"Other",
				{},
				{},
				{},
				{{},{},0,0},
				{{},{},1,0},
				{{},{},0,0},
				{1,1,},
				"KAD_SuperswarmerA",
				1,
				{10,5},
				4500,
				2,
				1,
				{0,1,1},
				},
				{
				"DroneShip",
				"Other",
				{},
				{},
				{},
				{{},{},0,0},
				{{},{},1,0},
				{{},{},0,0},
				{1,1,},
				"KAD_SuperswarmerB",
				1,
				{10,5},
				4500,
				2,
				1,
				{0,1,1},
				},
				{
				"DroneShip",
				"Other",
				{},
				{},
				{},
				{{},{},0,0},
				{{},{},1,0},
				{{},{},0,0},
				{1,1,},
				"KAD_SuperswarmerC",
				1,
				{10,5},
				4500,
				2,
				1,
				{0,1,1},
				},
				{
				"DroneShip",
				"Other",
				{},
				{},
				{},
				{{},{},0,0},
				{{},{},1,0},
				{{},{},0,0},
				{1,1,},
				"KAD_SuperswarmerD",
				1,
				{10,5},
				4500,
				2,
				1,
				{0,1,1},
				},
				{
				"DroneShip",
				"Other",
				{},
				{},
				{},
				{{},{},0,0},
				{{},{},1,0},
				{{},{},0,0},
				{1,1,},
				"KAD_SuperswarmerE",
				1,
				{10,5},
				4500,
				2,
				1,
				{0,1,1},
				},
				{
				"DroneShip",
				"Other",
				{},
				{},
				{},
				{{},{},0,0},
				{{},{},1,0},
				{{},{},0,0},
				{1,1,},
				"KAD_SuperswarmerF",
				1,
				{10,5},
				4500,
				2,
				1,
				{0,1,1},
				},
			},
			Exemption =
			{
			},
		},
	},
------------------------------------------------------------------------------------
	{
		Name = "tai_missiledestroyer",
		Type = "Capital",
		Size = 1,
		LifeBarType = 2,
		Ability = 
		{
			Characteristic =
			{
				{
					"OneselfChangePower",
					"Other",
					{
						{
							{"IsShipIdioStateKeyOn",1},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					{"Weapon_MissileLeftTop","Weapon_MissileLeftBottom","Weapon_MissileRightTop","Weapon_MissileRightBottom",},
					{},--{"Weapon_Missile",},
				},                                 
				{
					"ShipIdioStateKeyTempOn",
					"Other",
					{
						{
							{"IsAttackingFamily",0,"Capturer",},
							{"IsControlledBy",-1},
						},
						{
							{"IsAttackingFamily",0,"SmallCapitalShip",},
							{"IsControlledBy",-1},
						},
						{
							{"IsAttackingFamily",0,"BigCapitalShip",},
							{"IsControlledBy",-1},
						},
						{
							{"IsAttackingFamily",0,"Mothership",},
							{"IsControlledBy",-1},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					1,
					10,
					100,
				},
			},
			Exemption =
			{
			},
		},
	},
------------------------------------------------------------------------------------
	{
		Name = "tur_missilecorvette",
		Type = "Corvette",
		Size = 1,
		LifeBarType = 1,
		Ability =
		{
			Characteristic =
			{
				{
					"OneselfShipAbility",
					"Other",
					{
						{
							{"IsAttackingFamily",0,"Frigate",},
							{"IsControlledBy",-1},
						},
						{
							{"IsAttackingFamily",0,"Capturer",},
							{"IsControlledBy",-1},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					28,
					1,
				},
			},
			Exemption =
			{
			},
		},
	},
	{
		Name = "tur_carrier",
		Type = "Capital",
		Size = 1,
		LifeBarType = 2,
		Ability =
		{
			Characteristic =
			{
				{
					"OneselfChangePower",
					"Other",
					{
						{
							{"IsShipIdioStateKeyOn",1},
						},
					},
					{},
					{},
					{{"ResourceStart",},{},4,0},
					{{"ResourceDo",},{},1,0},
					{{"ResourceEnd",},{},4,0},
					{1,1,},
					{"Weapon_MissilePod",},
					{"",},
				},
				{
					"ShipIdioStateKeyTempOn",
					"Other",
					{
						{
							{"IsAttackingFamily",0,"Capturer",},
							{"IsControlledBy",-1},
						},
						{
							{"IsAttackingFamily",0,"SmallCapitalShip",},
							{"IsControlledBy",-1},
						},
						{
							{"IsAttackingFamily",0,"BigCapitalShip",},
							{"IsControlledBy",-1},
						},
						{
							{"IsAttackingFamily",0,"Mothership",},
							{"IsControlledBy",-1},
						},
					},
					{},
					{{"Production_2",},},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					1,
					12,
					120,
				},
				{
					"OneselfShipAbility",
					"Other",
					{
						{
							{"HasSubsystem",0,"Production_2",},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					 28,
					 1,
				},
			},
			Exemption =
			{
			},
		},
	},
	{
		Name = "tur_ionarrayfrigate",
		Type = "Frigate",
		Size = 1,
		LifeBarType = 2,
		Ability =
		{
			Characteristic =
			{
				{
					"EffectOnly",
					"Other",
					{
						{
							{"IsAttacking",1},
						},
					},
					{},
					{},
					{{"ResourceStart",},{},5,0},
					{{},{},0,0},
					{{"ResourceEnd",},{},5,0},
					{1,1,},
				},
			},
			Exemption =
			{
			},
		},
	},
	{
		Name = "tur_SiegeDrillfrigate",
		Type = "Frigate",
		Size = 1,
		LifeBarType = 1,
		Ability =
		{
			Characteristic =
			{
				{
					"OneselfChangePower",
					"Other",
					{
						{
							{"IsCapturingAndLatched",1,},
							{"Tactic",1,},
							{"IsControlledBy",1},
						},
						{
							{"IsCapturingAndLatched",1,},
							{"IsControlledBy",-1},
						},
					},
					{},
					{},
					{{"ResourceStart",},{"E_Open",},1,0},
					{{"ResourceDo",},{"E_Shocking",},6.25,0},
					{{"ResourceEnd",},{},1,0},
					{1,1,},
					{"Weapon_PodLauncher",},
					{},
				},
			},
			Exemption =
			{
			},
		},
	},
	----------------------------------------------------------
	{
		Name = "ben_corvette",
		Type = "Corvette",
		Size = 1,
		LifeBarType = 1,
		Ability =
		{
			Characteristic =
			{
				{
					"ShipIdioStateKeyTempOn",
					"Other",
					{
						{
							{"IsAttackingFamily",0,"Frigate",},
							{"IsControlledBy",-1},
						},
						{
							{"IsAttackingFamily",0,"Capturer",},
							{"IsControlledBy",-1},
						},
						{
							{"IsAttackingFamily",0,"SmallCapitalShip",},
							{"IsControlledBy",-1},
						},
						{
							{"IsAttackingFamily",0,"BigCapitalShip",},
							{"IsControlledBy",-1},
						},
						{
							{"IsAttackingFamily",0,"Mothership",},
							{"IsControlledBy",-1},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					1,
					60,
					0.1,
				},
				{
					"OneselfShipAbility",
					"Other",
					{
						{
							{"IsShipIdioStateKeyOn",1,},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					 28,
					 1,
				},
				{
					"OneselfShipAbility",
					"Other",
					{
						{
							{"IsShipIdioStateKeyOn",1,},
						},
					},
					{},
					{},
					{{},{},0,0},
					{{},{},0,0},
					{{},{},0,0},
					{1,1,},
					 20,
					 0,
				},
			},
			Exemption =
			{
			},
		},
	},
}

UnitReplacementList = 
{
}

DustCloudList = 
{
}

NebulaCloudList = 
{
}

BarDisplayOnOff = 1
SPingStringVersion = "CS"
OverBarShieldDisplayOnOff = 1
OverBarArmorDisplayOnOff = 1
OverBarFuelDisplayOnOff = 1
OverBarLevelDisplayOnOff = 1
SelectedBarShieldDisplayOnOff = 1
SelectedBarArmorDisplayOnOff = 1

LevelExperienceList = 
{
}

ScheduledShipAbilityMaxNumber = 20
