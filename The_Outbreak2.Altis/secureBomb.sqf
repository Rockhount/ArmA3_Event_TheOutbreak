//_this==Die Bombe als blanker Parameter
Private ["_Local_var_AIDs"];
if (isNil "Global_fnc_DefuseBombExplosion") then
{
	// Chance to defuse the Bomb for each addAction
	// 1 = bomb will always explode
	// 0 = bomb will never explode
	// 0.5 = 50/50 chance ....
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	Global_fnc_DefuseBombExplosion =
	{
		private _Local_var_BombPos = (getPos _this);
		private _Local_var_NewBombPos = [_Local_var_BombPos select 0, _Local_var_BombPos select 1, (_Local_var_BombPos select 2) + 1.5];
		sleep (10 + random 10);
		"Bo_Mk82_MI08" createVehicle _Local_var_NewBombPos;
		sleep 0.6;
		"Bo_Mk82_MI08" createVehicle _Local_var_NewBombPos;
		sleep 2;
		"Bo_Mk82_MI08" createVehicle _Local_var_NewBombPos;
		_this setDamage 1;
	};
	Global_fnc_DefuseBomb =
	{
		(_this select 3) Params ["_Local_var_Bomb", "_Local_var_Chance"];
		_Local_var_Bomb setVariable [ "Public_var_Defused", true, true ];
		if ((random 1) > _Local_var_Chance) then
		{
			hint "Bombe wurde entschärft!";
		}
		else
		{
			hint "Bombe konnte nicht entschärft werden. Verschwinden Sie da!";
			_Local_var_Bomb call Global_fnc_DefuseBombExplosion;
		};
		if (({_x getVariable [ "Public_var_Defused", false]} count [bomb1, Bombe2, Bombe3]) == 3) then
		{
			sleep 30;
			Public_fnc_AddTaskID = 7;
			publicVariableServer "Public_fnc_AddTaskID";
		};
	};
};
while {(!isNull _this) && {(alive _this) && {!( _this getVariable [ "Public_var_Defused", false])}}} do
{
	_Local_var_AIDs = [];
	waitUntil{sleep 10; (!isNull Player) && {alive Player}};
	waitUntil{sleep 5;(Player distance _this) < 5};
	if !(_this getVariable [ "Public_var_Defused", false]) then
	{
		_Local_var_AIDs pushBack (Player addAction [ "den blauen Draht zerschneiden", Global_fnc_DefuseBomb, [_this, 0], 0.1, false]);
		_Local_var_AIDs pushBack (Player addAction [ "den roten Draht zerschneiden", Global_fnc_DefuseBomb, [_this, 0], 0.1, false]);
		_Local_var_AIDs pushBack (Player addAction [ "die Batterie raustrennen", Global_fnc_DefuseBomb, [_this, 0], 0.1, false]);
		_Local_var_AIDs pushBack (Player addAction [ "Kabel aus dem Sprengstoff ziehen", Global_fnc_DefuseBomb, [_this, 0], 0.1, false]);
	};
	waitUntil{sleep 5;((Player distance _this) > 5) || {_this getVariable [ "Public_var_Defused", false]}};
	{
		Player removeAction _x;
	} forEach _Local_var_AIDs;
};