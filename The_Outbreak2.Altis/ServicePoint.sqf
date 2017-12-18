// get displayname of an object
// parameters: type of object (string), what (0 = CfgVehicles, 1 = CfgWeapons, 2 = CfgMagazines)
// example: _dispname = ["UAZ", 0] call _Local_fnc_GetDisplayName;
private _Local_fnc_GetDisplayName = {
	Params ["_obj_name", "_obj_kind"];
	private _cfg = switch (_obj_kind) do 
	{
		case 0: {"CfgVehicles"};
		case 1: {"CfgWeapons"};
		case 2: {"CfgMagazines"};
	};
	getText (configFile >> _cfg >> _obj_name >> "displayName")
};
//init
if (isServer) exitWith {};
private _Local_var_Vehicle = _this;
private _Local_var_VehicleType = typeof _Local_var_Vehicle;
//set delay
private _Local_var_Delay = 15;
if(_Local_var_Vehicle isKindOf "TANK") then
{
	_Local_var_Delay = 20;
};
if(_Local_var_Vehicle isKindOf "Air") then
{
	_Local_var_Delay = 10;
};
//stop the engine
_Local_var_Vehicle action ["engineOff", _Local_var_Vehicle];
//start service
private _Local_var_Fuel = fuel _Local_var_Vehicle;
_Local_var_Vehicle setFuel 0;
private _Local_var_VehicleDisplayName = [_Local_var_VehicleType, 0] call _Local_fnc_GetDisplayName;
hintSilent format ["Inspiziere %1... Bitte warten...", _Local_var_VehicleDisplayName];
sleep _Local_var_Delay;
//reammo driver weapons
private _Local_var_Magazines = getArray(configFile >> "CfgVehicles" >> _Local_var_VehicleType >> "magazines");
if (count _Local_var_Magazines > 0) then 
{
	//remove magazines
	private _Local_var_Removed = [];
	{
		if (!(_x in _Local_var_Removed)) then 
		{
			if (!alive _Local_var_Vehicle) exitWith {};
			_Local_var_Vehicle removeMagazines _x;
			_Local_var_Removed pushBack _x;
		};
	} forEach _Local_var_Magazines;
	private _Local_var_LastMag = "";
	{
		hintSilent format ["Lade %1", _x];
		if(_Local_var_LastMag != _x) then
		{
		  sleep _Local_var_Delay;
		};
		_Local_var_LastMag = _x;
		if (!alive _Local_var_Vehicle) exitWith {};
		_Local_var_Vehicle addMagazine _x;
	} forEach _Local_var_Magazines;
};
//reammo "level 1" turrets
private _Local_var_TurretCount = count (configFile >> "CfgVehicles" >> _Local_var_VehicleType >> "Turrets");
if (_Local_var_TurretCount > 0) then 
{
	for "_i" from 0 to (_Local_var_TurretCount - 1) do 
	{
		private _Local_var_Config = (configFile >> "CfgVehicles" >> _Local_var_VehicleType >> "Turrets") select _i;
		_Local_var_Magazines = getArray(_Local_var_Config >> "magazines");
		private _Local_var_Removed = [];
		{
			if (!(_x in _Local_var_Removed)) then 
			{
				if (!alive _Local_var_Vehicle) exitWith {};
				_Local_var_Vehicle removeMagazines _x;
				_Local_var_Removed pushBack _x;
			};
		} forEach _Local_var_Magazines;
		private _Local_var_LastMag = "";
		Private ["_Local_var_MagazineName"];
		{
			_Local_var_MagazineName = [_x, 2] call _Local_fnc_GetDisplayName;
			hintSilent format ["Lade %1", _Local_var_MagazineName];
			if(_Local_var_LastMag != _x) then
			{
			  sleep _Local_var_Delay;
			};
			_Local_var_LastMag = _x;
			if (!alive _Local_var_Vehicle) exitWith {};
			_Local_var_Vehicle addMagazine _x;
		} forEach _Local_var_Magazines;
	};
};
if (!alive _Local_var_Vehicle) exitWith {};
_Local_var_Vehicle setVehicleAmmo 1;
reload _Local_var_Vehicle;
//repair
sleep _Local_var_Delay;
if (!alive _Local_var_Vehicle) exitWith {};
hintSilent "Reparatur...";
private _Local_var_Damage = damage _Local_var_Vehicle;
while {_Local_var_Damage > 0} do 
{
	if (!alive _Local_var_Vehicle) exitWith {};
	_Local_var_Damage = _Local_var_Damage - 0.1;
	_Local_var_Vehicle setDamage _Local_var_Damage;
	sleep 2;
};
if (!alive _Local_var_Vehicle) exitWith {};
_Local_var_Vehicle setDamage 0;

//refuel
sleep _Local_var_Delay;
if (!alive _Local_var_Vehicle) exitWith {};
hintSilent "Betanke...";
_Local_var_Vehicle setFuel _Local_var_Fuel;
while {_Local_var_Fuel < 0.99} do 
{
	if (!alive _Local_var_Vehicle) exitWith {};
	if(isEngineOn _Local_var_Vehicle) then
	{
		_Local_var_Vehicle action ["engineOff", _Local_var_Vehicle];
	};
	_Local_var_Fuel = _Local_var_Fuel + 0.1;
 	_Local_var_Vehicle setFuel _Local_var_Fuel;
  	sleep 1;
};
if (!alive _Local_var_Vehicle) exitWith {};
_Local_var_Vehicle setFuel 1;

//
if (!alive _Local_var_Vehicle) exitWith {};
hintSilent format ["%1 ist einsatzbereit...", _Local_var_VehicleDisplayName];
_Local_var_Vehicle action ["engineOn", _Local_var_Vehicle];