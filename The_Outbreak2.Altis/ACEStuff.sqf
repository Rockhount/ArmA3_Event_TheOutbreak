if (isDedicated) then
{
	for "_i" from 1 to 33 do
	{
		call compile format [
		"
			clearweaponcargoGlobal Vehicle_%1;
			clearmagazinecargoGlobal Vehicle_%1;
			clearItemcargoGlobal Vehicle_%1;
		", _i];
	};
	for "_i" from 1 to 9 do
	{
		call compile format [
		"
			clearweaponcargoGlobal MedVehicle_%1;
			clearmagazinecargoGlobal MedVehicle_%1;
			clearItemcargoGlobal MedVehicle_%1;
			MedVehicle_%1 setVariable ['ACE_medical_isMedicalFacility', true, true];
		", _i];
	};
	for "_i" from 1 to 3 do
	{
		call compile format [
		"
			clearweaponcargoGlobal RepVehicle_%1;
			clearmagazinecargoGlobal RepVehicle_%1;
			clearItemcargoGlobal RepVehicle_%1;
			RepVehicle_%1 setVariable ['ACE_isRepairVehicle', 1, true];
			RepVehicle_%1 addItemCargoGlobal ['toolkit', 1];
			[RepVehicle_%1, 5] call ACE_repair_fnc_addSpareParts;
		", _i];
	};
}
else
{
	if ((str Player) in ["s6","s12","s16","s17","s25","s30"]) then
	{
		Global_var_MedicClass = ["MedicSkill", 1] call BIS_fnc_getParamValue;
		Player setVariable ["ACE_medical_medicClass", Global_var_MedicClass, true];
		Player addEventHandler ["Respawn",
		{
			(_this select 0) setVariable ["ACE_medical_medicClass", Global_var_MedicClass, true];//Mit dem Basic System muss man 1 nehmen, sonst 2.
		}];
	};
	if ((str Player) in ["s14","s15"]) then
	{
		Global_var_EngineerClass = ["EngineerSkill", 1] call BIS_fnc_getParamValue;
		Player setVariable ["ACE_isEngineer", Global_var_EngineerClass, true]; //Man hat sich für 1 entschieden, damit man die Fahrzeuge nur in der Base komplett reparieren kann.
		Player addEventHandler ["Respawn",
		{
			(_this select 0) setVariable ["ACE_isEngineer", Global_var_EngineerClass, true];
		}];
	};
};