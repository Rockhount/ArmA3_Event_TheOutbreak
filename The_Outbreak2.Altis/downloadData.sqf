Params ["_Local_var_Laptop", "_Local_var_IsFake", "_Local_var_TaskID", "_Local_var_AIDs"];
if (isNil "Global_var_LaptopFileSize") then
{
	Global_var_LaptopFileSize = 25687;  								// Filesize ... smaller files will take shorter time to download!
	Global_var_LaptopText1 = "Wird bereits ausgeführt!";			// download already in progress by someone else
	Global_var_LaptopText2 = "Download gestartet!";				// download started
	Global_var_LaptopText3 = "Download abgeschlossen!";			// download finished
	Global_var_LaptopText4 = "##  Download Data  ##";				// line for the addaction
	Global_var_LaptopText5 = "Connecting ...";
	Global_var_LaptopText6 = "Connected:";
	Global_var_LaptopText7 = "Daten gefunden. Ziel auf Karte markiert";
	Global_var_LaptopText8 = "Keine relevanten Daten gefunden. Suchen Sie weiter!";
	Global_var_LaptopAbort = false;
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	Global_var_DownloadLaptopData =
	{
		(_this select 3) Params ["_Local_var_Laptop", "_Local_var_IsFake", "_Local_var_TaskID"];
		if ( _Local_var_Laptop getVariable ["Public_var_IsInUse", false]) exitWith
		{
			cutText[Global_var_LaptopText1, "PLAIN"];
		};
		if ( _Local_var_Laptop getVariable ["Public_var_Downloaded", false]) exitWith
		{
			cutText[Global_var_LaptopText3, "PLAIN"];
		};
		cutText[Global_var_LaptopText2, "PLAIN"];
		_Local_var_Laptop setVariable ["Public_var_IsInUse", true, true];
		private _Local_var_LaptopFile = 0;
		Global_var_LaptopAbort = false;
		sleep 0.5;
		systemChat Global_var_LaptopText5;
		sleep 0.5;
		systemChat Global_var_LaptopText6;
		Private ["_Local_var_DownloadRate", "_Local_var_Percent"];
		while {!Global_var_LaptopAbort} do
		{
			_Local_var_DownloadRate = 200 + random 80;
			_Local_var_LaptopFile = _Local_var_LaptopFile + _Local_var_DownloadRate;
			if (_Local_var_LaptopFile > Global_var_LaptopFileSize) then
			{
				_Local_var_DownloadRate = 0;
				_Local_var_LaptopFile = Global_var_LaptopFileSize;
				systemChat Global_var_LaptopText3;
				cutText [Global_var_LaptopText3, "PLAIN"];
				Global_var_LaptopAbort = true;
				_Local_var_Laptop setVariable ["Public_var_Downloaded", true, true];
				sleep 3;
				clearRadio;
				if (_Local_var_IsFake) then
				{
					hint Global_var_LaptopText8;
				}
				else
				{
					hint Global_var_LaptopText7;
					Public_fnc_AddTaskID = _Local_var_TaskID;
					publicVariableServer "Public_fnc_AddTaskID";
				};
			}
			else
			{
				clearRadio;
				systemChat format ["%1 KB/s", _Local_var_DownloadRate];
				_Local_var_Percent =  str round (( _Local_var_LaptopFile / Global_var_LaptopFileSize ) * 100);
				systemChat format ["%1 KB (%2%3)", _Local_var_LaptopFile, (if ( Global_var_LaptopAbort ) then { 100 } else { _Local_var_Percent }), "%"];
				sleep 0.25;
			};
		};
		_Local_var_Laptop setVariable ["Public_var_IsInUse", false, true];

	};
};
while {(!isNull _Local_var_Laptop) && {(alive _Local_var_Laptop) && {!(_Local_var_Laptop getVariable ["Public_var_Downloaded", false])}}} do
{
	_Local_var_AIDs = [];
	waitUntil{sleep 10; (!isNull Player) && {alive Player}};
	waitUntil{sleep 5; (Player distance _Local_var_Laptop) < 5};
	if !(_Local_var_Laptop getVariable ["Public_var_Downloaded", false]) then
	{
		_Local_var_AIDs pushBack (Player addAction [Global_var_LaptopText4, Global_var_DownloadLaptopData, [_Local_var_Laptop, _Local_var_IsFake, _Local_var_TaskID], 10, false]);
	};
	waitUntil{sleep 5;(Player distance _Local_var_Laptop) > 5};
	{
		Player removeAction _x;
	} forEach _Local_var_AIDs;
};