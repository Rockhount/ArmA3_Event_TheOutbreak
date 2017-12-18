Global_var_AmmoData =
[
	["Luftabwehrsoldat","Ammo\USMC_AA.sqf",true],
	["Panzerabwehrsoldat","Ammo\USMC_AT.sqf",true],
	["LMG","Ammo\USMC_LMG.sqf",true],
	["Sanitäter","Ammo\USMC_Medic.sqf",true],
	["Gruppen Scharfschütze","Ammo\USMC_Sniper.sqf",true],
	["Gruppenführer","Ammo\USMC_Teamleader.sqf",true],
	["Teamleader","Ammo\US_Teamleader.sqf",true],
	["LMG","Ammo\US_LMG.sqf",true],
	["Grenadier","Ammo\US_Grenadier.sqf",true],
	["Sanitäter","Ammo\US_Medic.sqf",true],
	["Panzerabwehr Schütze","Ammo\US_AT.sqf",true],
	["Reperaturspezialist","Ammo\US_Engineer.sqf",true],
	["Pilot","Ammo\US_Pilot.sqf",true],
	["Crew","Ammo\US_Crew.sqf",true],
	["Taucher","Ammo\US_Diver.sqf",true],
	["ACE Sanitätskiste (Erweitert)","ACE_medicalSupplyCrate_advanced",false],
	["ACE Sanitätskiste (Standard)","ACE_medicalSupplyCrate",false],
	["Funkgeräte","TF_NATO_Radio_Crate",false],
	["Nato Granaten","Box_NATO_Grenades_F",false],
	["RHS Munition","rhsusf_mags_crate",false],
	["RHS Equipment","rhsusf_gear_crate",false],
	["RHS Raketenwerfer","rhsusf_launcher_crate",false],
	["RHS Spezial Waffen","rhsusf_spec_weapons_crate",false],
	["RHS Waffen","rhsusf_weapon_crate",false],
	["ACE Munition","ACE_Box_Ammo",false],
	["ACE Verschiedenes","ACE_Box_Misc",false],
	["Sprengmittel","Box_IND_AmmoOrd_F", false],
	["Reifen","ACE_Wheel", false]
];
if (isDedicated) then
{
	Global_var_PlayerAmmoRequested = [];
	Global_var_AmmoRequests= [];
	0 spawn
	{
		Global_var_LoopCount = Global_var_LoopCount + 1;
		while {true} do
		{
			{
				Public_fnc_ApplyPlayerAmmo = _x select 1;
				(owner (_x select 0)) publicVariableClient "Public_fnc_ApplyPlayerAmmo";
				Global_var_AmmoRequests set [_forEachIndex, 0];
				Global_var_PlayerAmmoRequested set [_forEachIndex, 0];
				sleep 3;
			} forEach Global_var_AmmoRequests;
			Global_var_AmmoRequests = Global_var_AmmoRequests - [0];
			Global_var_PlayerAmmoRequested = Global_var_PlayerAmmoRequested - [0];
			sleep 3;
		};
	};
	"Public_fnc_ManageAmmoRequests" addPublicVariableEventHandler
	{
		(_this select 1) spawn
		{
			if !((_this select 0) in Global_var_PlayerAmmoRequested) then
			{
				Global_var_PlayerAmmoRequested pushBack (_this select 0);
				Global_var_AmmoRequests pushBack _this;
			};
		};
	};
}
else
{
	if (!isServer && {hasInterface}) then
	{
		"Public_fnc_ApplyPlayerAmmo" addPublicVariableEventHandler
		{
			clearRadio;
			if ((Global_var_AmmoData select (_this select 1)) select 2) then
			{
				execVM ((Global_var_AmmoData select (_this select 1)) select 1);
			}
			else
			{
				((Global_var_AmmoData select (_this select 1)) select 1) createVehicle (getPosATL Player);;
			};
		};
	};
};