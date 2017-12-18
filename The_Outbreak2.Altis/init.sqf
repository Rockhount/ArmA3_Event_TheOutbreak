//Mission-Technology by Rockhount
//Mission-Design & Story by [AIG]Tartar
//Story-Adaptation by [AIG]Atze Peng
//Loadouts by MightyBullet

diag_log "################################## The Outbreak ##################################";


if (!isServer && {hasInterface}) then
{
	private _Local_var_DebugLevel = ["DebugLevel", 0] call BIS_fnc_getParamValue;
	"Ziel2" setMarkerAlphaLocal 0;
	"notebook" setMarkerAlphaLocal 0;
	"b1" setMarkerAlphaLocal 0;
	"b2" setMarkerAlphaLocal 0;
	"b3" setMarkerAlphaLocal 0;
	if (_Local_var_DebugLevel != 1) then
	{
		0 spawn
		{
			waitUntil{sleep 1;!isNull Player};//This is only needed for JIP
			
			Player createDiaryRecord ["Diary", ["Credits", "Mission-Scripts + DLL's by Rockhount. Mission-Design + Story by [ArmA-AIG]Tartar. Story-Adaptation by [ArmA-AIG]Atze Peng. Loadouts by MightyBullet. Information retrieval by [BierAIG]Tartar. Danke an alle Unterstützer. Die Mission ist frei erfunden und hat so nicht stattgefunden. Viel Glück und viel Spaß."]];
			Player createDiaryRecord ["Diary", ["Technisches", "Medical System · ACE3!<br/><br/>Ärztliche Endversorgung nur durch Sanis am Lazarett möglich!<br/><br/>Die OPZ entscheidet was wann wo und wie geschieht."]];
			Player createDiaryRecord ["Diary", ["Geschichte", "Die aktuellen Konfliktherde im nahen Osten führen zu einer enormen militärischen Präsenz im östlichen Mittelmeerraum. In vielen Medien werden daher die jährlich abgehaltenen Manöver, von NATO auf der einen und der Russischen Föderation auf der anderen Seite, in der Region als ""Lunte am Pulverfass"" kritisiert. Die Möglichkeit eines ungewollten Aufeinandertreffens der beiden Fraktionen ist seit dem Ende des Kalten Krieges nicht mehr so hoch gewesen. Besonders erschreckend an dieser angespannten Lage sind Gerüchte über einen gescheiterten Putschversuch innerhalb des Militärs der Russischen Föderation. Nach übereinstimmenden Geheimdienstberichten soll eine Gruppe um den, auf russischer Seite am Manöver in der Ägäis teilnehmenden General Vladimir Kruscheck hinter den Verschwörern stecken. Angeblich hat der General einen Nuklearsprengkopf der Russischen Föderation entwendet. Da weder der General noch einer seiner Getreuen die Codes für die Zündung des Sprengkopfes besitzten gehen die Experten davon aus, daß das nukleare Material anderweitig eingesetzt werden könnte. Diese These wird durch hohe Strahlenwerte am letzten bekannten Standort des Generals gestützt. Wie es aussieht hat der General nicht nur 500 gut ausgebildete und loyale Soldaten sowie modernstes russisches Militärgerät unter seinem Kommando sondern auch genügend Plutonium für 3 sogenannte ""schmutzige Bomben""!Der General und seine Männer haben sich nach dem gescheiterten Putsch auf die Insel Altis abgesetzt. Ein eingreifen regulärer russischer Streitkräfte auf NATO Gebiet käme eine Kriegserklärung gleich und ist auszuschließen - jetzt kommen Sie ins Spiel."]];
			Player createDiaryRecord ["Diary", ["Lage", "In der letzten Nacht landeten irreguläre russische Truppen des Putschisten Vladimir Kruscheck an der östliche Küste von Altis. Bis zum Morgengrauen haben die Männer des Generals einen Brückenkopf südöstlich der Stadt Molos errichtet. Die provisorischen Hafenanlagen sind bereits gut abgesichert und der Zugang über das Wasser ist durch Seeminen versperrt. Die feindlichen Truppen sollen sogar über Submarine Einheiten verfügen. Der Aufenthaltort von General Vladimir Kruscheck sowie der ""schmutzigen Bomben"" ist unbekannt. Da Ihre Einheit, die Gerade mit den Deutschen Soldaten zusammen im Manöver trainiert unsere schnellste Option ist, ergeht folgender Befehl:"]];

			Global_var_Task1 = Player createSimpleTask ["Säuberung des Brückenkopfes südöstlich der Stadt Molos."];
			Global_var_Task2 = Player createSimpleTask ["Beseitigen der Seeminen am Brückenkopf."];
			Global_var_Task3 = Player createSimpleTask ["Zerstörung der Mini-Uboote."];
			Global_var_Task4 = Player createSimpleTask ["Zerstörung aller Antennen."];
			Global_var_Task5 = Player createSimpleTask ["Suche nach dem Verbleib des Generals und der schmutzigen Bomben."];
			Global_var_Task6 = Player createSimpleTask ["Eliminierung von General Vladimir Kruscheck."];
			Global_var_Task7 = Player createSimpleTask ["Sicherung der 3 schmutzigen Bomben."];
			for "_i" from 1 to 7 do
			{
				call compile format[
				"
					Global_var_Task%1 setTaskState 'Created';
				", _i];
			};
			Global_var_Task1 setSimpleTaskDestination getMarkerPos "Ziel1";
			Global_var_Task1 setTaskState "Assigned";
			Global_var_Task1 setSimpleTaskDescription ["Säubern Sie den Brückenkopf südöstlich der Stadt Molos und finden Sie relevante Daten, die auf Laptops oder Akten stehen könnten.","Daten finden","Daten gefunden"];
			Global_var_Task2 setSimpleTaskDescription ["Beseitigen Sie die Seeminen am Brückenkopf damit wir unseren Nachschub gefahrlos anlanden können","Seeminen beseitigen","Seeminen beseitigt"];
			Global_var_Task3 setSimpleTaskDescription ["Zerstören Sie unbedingt die Mini-Uboote, damit die schmutzigen Bomben nicht mit ihnen unerkannt verschwinden","Mini-Uboote zerstören","Mini-Uboote zerstört"];
			Global_var_Task4 setSimpleTaskDescription ["Unterbinden Sie die Kommunikation der feindlichen Einheiten und Zerstören Sie alle Antennen","Alle Antennen zerstören","Antennen zerstört"];
			Global_var_Task5 setSimpleTaskDescription ["Sichern Sie weitere eventuel vorhandene Informationen und Beweise im Bereich der Kommunikationseinrichtung","Informationen sichern","Informationen gesichert"];
			Global_var_Task6 setSimpleTaskDescription ["Eliminieren Sie General Vladimir Kruscheck und durchsuchen Sie die Gegend nach weiteren Beweismaterialien","General Vladimir Kruscheck eliminieren","General eliminiert"];
			Global_var_Task7 setSimpleTaskDescription ["Finden und sichern Sie die 3 schmutzigen Bomben","Bomben sichern","Bomben gesichert"];
		};
	}
	else
	{
		//To prevent reference errors
		Global_var_Task1 = Player createSimpleTask ["1"];
		Global_var_Task2 = Player createSimpleTask ["2"];
		Global_var_Task3 = Player createSimpleTask ["3"];
		Global_var_Task4 = Player createSimpleTask ["4"];
		Global_var_Task5 = Player createSimpleTask ["5"];
		Global_var_Task6 = Player createSimpleTask ["6"];
		Global_var_Task7 = Player createSimpleTask ["7"];
	};
};
Global_var_CacheDistance = 1700;
Global_var_CreateCivDistance = 350;
Global_var_ServerIP = "127.0.0.1";
Global_var_ServerIP4HC = "127.0.0.1";
Global_var_ServerIP4Player = "127.0.0.1";
Global_var_UMissionID = "A903253DDDF7B86E40D9D452001624CB";
if !(call compile preprocessFileLineNumbers "HandleDLLInit.sqf") exitWith {};
if (isDedicated) then
{
	"HandleServer" callExtension (Global_var_ServerIP + "|" + Global_var_UMissionID + "|" + str ["Reset",Global_var_CacheDistance,Global_var_CreateCivDistance,60]);
};
sleep 1;
if (!isNil "Public_fnc_ShowDLLMissing") exitWith
{
	switch (Public_fnc_ShowDLLMissing) do
	{
		case 0:
		{
			diag_log "HandleServer.dll nicht geladen oder verbunden";
			endMission "End1";
		};
		case 1:
		{
			diag_log "HandleHC.dll nicht geladen";
			endMission "End2";
		};
	};
};
if (!isServer && {hasInterface}) then
{
	private _Local_var_Result = "HandleClient" callExtension  str ["Reset",Global_var_ServerIP4Player,Global_var_UMissionID];
	if ((!isNil "_Local_var_Result") && {_Local_var_Result != ""}) then
	{
		diag_log "Es wurden falsche Parameter an die Client DLL übergeben.";
		diag_log _Local_var_Result;
		endMission "End4";
	};
};
setViewDistance 2000;
setObjectViewDistance 1700;
setterraingrid 25;
enableSaving [false,false];
enableDynamicSimulationSystem false;

Global_var_LoopCount = 4;
Public_var_TaskDone = -1;
Global_var_CivilClasses = ["C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_p_beggar_F","C_man_p_fugitive_F","C_man_hunter_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F","C_man_1","C_Man_casual_1_F","C_Man_casual_2_F","C_Man_casual_3_F","C_man_hunter_1_F","C_Man_casual_5_F","C_Man_casual_6_F","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_p_beggar_F_afro","C_man_p_shorts_1_F_afro","C_Man_casual_1_F_afro","C_Man_casual_3_F","C_Man_casual_3_F_afro","C_man_shorts_1_F_afro","C_Man_casual_4_F_afro","C_Man_casual_5_F_afro","C_Man_casual_6_F_afro","C_man_polo_1_F_afro","C_man_polo_2_F_afro","C_man_polo_4_F_afro","C_Man_casual_2_F_afro","C_man_polo_6_F_afro","C_man_p_beggar_F_asia","C_man_p_fugitive_F_asia","C_man_p_shorts_1_F_asia","C_Man_casual_1_F_asia","C_Man_casual_2_F_asia","C_Man_casual_3_F_asia","C_man_shorts_1_F_asia","C_Man_casual_4_F_asia","C_Man_casual_5_F_asia","C_Man_casual_6_F_asia","C_man_polo_1_F_asia","C_man_polo_2_F_asia","C_man_polo_4_F_asia","C_man_polo_5_F_asia","C_man_polo_6_F_asia","C_man_p_beggar_F_euro","C_man_p_shorts_1_F_euro","C_Man_casual_1_F_euro","C_Man_casual_2_F_euro","C_Man_casual_3_F_euro","C_man_shorts_1_F_euro","C_Man_casual_4_F_euro","C_Man_casual_5_F_euro","C_Man_casual_6_F_euro","C_man_polo_1_F_euro","C_man_polo_2_F_euro","C_man_polo_4_F_euro","C_man_polo_5_F_euro","C_man_polo_6_F_euro","C_Orestes","C_Man_casual_1_F_tanoan","C_Man_casual_2_F_tanoan","C_Man_casual_3_F_tanoan","C_Man_casual_4_F_tanoan","C_Man_casual_5_F_tanoan","C_Man_casual_6_F_tanoan"];
execFSM "HandleAIComA3.fsm";
execFSM "HCManagerA3.fsm";
execFSM "HandleDeleteA3.fsm";

execVM "Ammo\init.sqf";
(1200) execVM "HandleWeaponCleanUpA3.sqf";
Global_fnc_AttackPos =
{
	Params["_Local_var_Group","_Local_var_TargetPos"];
	{
		_x doMove _Local_var_TargetPos;
		_x setSpeedMode "NORMAL";
		_x setBehaviour "COMBAT";
		_x setCombatMode "RED";
	} forEach units _Local_var_Group;
};
Global_fnc_AddWPs =
{
	Private ["_Local_var_CurWP"];
	Params ["_Local_var_Group", "_Local_var_WPPositions"];
	{
		_Local_var_CurWP = _Local_var_Group addWaypoint [_x, 0];
		_Local_var_CurWP setWaypointBehaviour "COMBAT";
		_Local_var_CurWP setWaypointCombatMode "RED";
		_Local_var_CurWP setWaypointCompletionRadius 50;
		_Local_var_CurWP setWaypointFormation "NO CHANGE";
		_Local_var_CurWP setWaypointSpeed "NORMAL";
		_Local_var_CurWP setWaypointType "MOVE";
		if (_forEachIndex == 0) then
		{
			_Local_var_Group setCurrentWaypoint _Local_var_CurWP;
		};
	} forEach _Local_var_WPPositions;
	_Local_var_CurWP = _Local_var_Group addWaypoint [_Local_var_WPPositions select 0, 0];
	_Local_var_CurWP setWaypointBehaviour "COMBAT";
	_Local_var_CurWP setWaypointCombatMode "RED";
	_Local_var_CurWP setWaypointFormation "NO CHANGE";
	_Local_var_CurWP setWaypointSpeed "NORMAL";
	_Local_var_CurWP setWaypointType "CYCLE";
};
Global_fnc_Patrol =
{
	Params ["_Local_var_Objects", "_Local_var_Pos", "_Local_var_Radius"];
	[_Local_var_Objects, _Local_var_Pos, _Local_var_Radius, 7, "MOVE", "COMBAT", "RED"] call CBA_fnc_taskPatrol;
	if ((_Local_var_Pos select 2) < -1) then
	{
		{
			(waypointPosition _x) Params ["_Local_var_CurWayPosX","_Local_var_CurWayPosY","_Local_var_CurWayPosZ"];
			_x setWaypointPosition [[_Local_var_CurWayPosX, _Local_var_CurWayPosY, _Local_var_Pos select 2], 0];
		} forEach (waypoints _Local_var_Objects);
		if ((typeName _Local_var_Objects) == "GROUP") then
		{
			{
				_x swimInDepth (_Local_var_Pos select 2);
			} forEach (units _Local_var_Objects);
		}
		else
		{
			_Local_var_Objects swimInDepth (_Local_var_Pos select 2);
		};
	};
};
Global_fnc_SpawnVehicle =
{
	Params ["_Local_var_Pos", "_Local_var_Type", "_Local_var_Side"];
	private _Local_var_Group = createGroup _Local_var_Side;
	private _Local_var_Vehicle = createVehicle [_Local_var_Type, [0,0,0], [], 0, if (_Local_var_Type isKindOf "Air") then {"FLY"} else {"NONE"}];
	_Local_var_Vehicle setPosATL _Local_var_Pos;
	private _Local_var_CurSeatCount = _Local_var_Vehicle emptyPositions "Commander";
	if (_Local_var_CurSeatCount > 0) then
	{
		private _Local_var_CurUnit = _Local_var_Group createUnit ["rhs_vdv_des_rifleman", [0,0,0], [], 0, "NONE"];
		_Local_var_CurUnit assignAsCommander _Local_var_Vehicle;
		_Local_var_CurUnit moveInCommander _Local_var_Vehicle;
	};
	_Local_var_CurSeatCount = _Local_var_Vehicle emptyPositions "Driver";
	if (_Local_var_CurSeatCount > 0) then
	{
		private _Local_var_CurUnit = _Local_var_Group createUnit ["rhs_vdv_des_rifleman", [0,0,0], [], 0, "NONE"];
		_Local_var_CurUnit assignAsDriver _Local_var_Vehicle;
		_Local_var_CurUnit moveInDriver _Local_var_Vehicle;
	};
	_Local_var_CurSeatCount = _Local_var_Vehicle emptyPositions "Gunner";
	if (_Local_var_CurSeatCount > 0) then
	{
		private _Local_var_CurUnit = _Local_var_Group createUnit ["rhs_vdv_des_rifleman", [0,0,0], [], 0, "NONE"];
		_Local_var_CurUnit assignAsGunner _Local_var_Vehicle;
		_Local_var_CurUnit moveInGunner _Local_var_Vehicle;
	};
	[_Local_var_Vehicle,_Local_var_Group]
};
if (isDedicated) then
{
	Global_var_AllTaskMessages = [];
	"Public_fnc_AddTaskID" addPublicVariableEventHandler
	{
		if !((_this select 1) in Global_var_AllTaskMessages) then
		{
			(_this select 1) spawn
			{
				Public_var_TaskDone = _this;
				Global_var_AllTaskMessages pushBack _this;
				publicVariable "Public_var_TaskDone";
			};
		};
	};
	"Public_fnc_GetJIPInfos" addPublicVariableEventHandler
	{
		(_this select 1) spawn
		{
			{
				Public_var_TaskDone = _x;
				(owner _this) publicVariableClient "Public_var_TaskDone";
			} forEach Global_var_AllTaskMessages;
		};
	};
	Global_var_FPS = 0;
	[{Global_var_FPS = Global_var_FPS + 1;}, 0, 0] call CBA_fnc_addPerFrameHandler;
	[{diag_log format["--Server-- Einheiten: %1 DavonLokalOhneZivs: %2 Spieler: %3 Objekte: %4 FPS: %5 Schleifen: %6 Skripte: %7", count allUnits, {if ((local _x) && {side _x != civilian}) then {true} else {false}} count allUnits, count allPlayers, count vehicles, Global_var_FPS, Global_var_LoopCount,diag_activeScripts];Global_var_FPS = 0;}, 1, 0] call CBA_fnc_addPerFrameHandler;
//------------------------------------------------------------------------------------------------------------------------------
	Global_var_Task4Hits = 0;
	//Task2
	0 spawn  //killed EventHandlers doesn't work for every object anymore
	{
		Global_var_LoopCount = Global_var_LoopCount + 1;
		waitUntil{sleep 20;({(isNull _x) || {(getDammage _x) == 1}} count [Mine_1,Mine_2,Mine_3,Mine_4]) == 4};
		Public_var_TaskDone = 1;
		Global_var_AllTaskMessages pushBack 1;
		publicVariable "Public_var_TaskDone";
		Global_var_LoopCount = Global_var_LoopCount - 1;
	};
	PublicVariable "Mine_1";
	PublicVariable "Mine_2";
	PublicVariable "Mine_3";
	PublicVariable "Mine_4";
	 //Task3
	0 spawn
	{
		Global_var_LoopCount = Global_var_LoopCount + 1;
		waitUntil{sleep 20;({(isNull _x) || {(getDammage _x) == 1}} count [SVD1,SVD2]) == 2};
		Public_var_TaskDone = 2;
		Global_var_AllTaskMessages pushBack 2;
		publicVariable "Public_var_TaskDone";
		Global_var_LoopCount = Global_var_LoopCount - 1;
	};
	 //Task4
	{
		_x addEventHandler
		[
			"killed",
			{
				Global_var_Task4Hits = Global_var_Task4Hits + 1;
				"HandleServer" callExtension (Global_var_ServerIP + "|" + Global_var_UMissionID + "|" + str ["AddObjectToDelete",0,netId (_this select 0)]);
				if (Global_var_Task4Hits == 2) then
				{
					Public_var_TaskDone = 3;
					Global_var_AllTaskMessages pushBack 3;
					publicVariable "Public_var_TaskDone";
					antenne1 setVectorDirAndUp [[0,1,0],[1,0,0]];
				};
			}
		];
	} forEach [Radar1,antenne1];
	//Task6
	0 spawn
	{
		Global_var_LoopCount = Global_var_LoopCount + 1;
		waitUntil{sleep 30;(isNull Vladimir_Kruscheck) || {!alive Vladimir_Kruscheck}};
		Public_var_TaskDone = 5;
		Global_var_AllTaskMessages pushBack 5;
		publicVariable "Public_var_TaskDone";
		Global_var_LoopCount = Global_var_LoopCount - 1;
	};
	0 spawn
	{
		Global_var_LoopCount = Global_var_LoopCount + 1;
		waitUntil{sleep 30;laptop03 getVariable [ "Public_var_Downloaded", false]};
		Public_var_TaskDone = 6;
		Global_var_AllTaskMessages pushBack 6;
		publicVariable "Public_var_TaskDone";
		Global_var_LoopCount = Global_var_LoopCount - 1;
	};
//------------------------------------------------------------------------------------------------------------------------------
	Global_fnc_CreateGroup =
	{
		Private ["_Local_var_TargetPos", "_Local_var_Radius", "_Local_var_WayPoints"];
		Params ["", "_Local_var_Pos", "_Local_var_UnitTypes"];
		switch (_this select 0) do
		{//0=Static, 1=Patrol, 2=WayPoints
			case 1:
			{
				_Local_var_TargetPos = _this select 3;
				_Local_var_Radius = _this select 4;
			};
			case 2:
			{
				_Local_var_WayPoints = _this select 3;
			};
		};
		if (count Global_var_HCIDs > 0) then
		{
			Public_fnc_HCTask = [];
			switch (_this select 0) do
			{//0=Static, 1=Patrol, 2=WayPoints
				case 0:
				{
					Public_fnc_HCTask = [0, _Local_var_Pos, east, 0.6, 0.8, _Local_var_UnitTypes, 0];
				};
				case 1:
				{
					Public_fnc_HCTask = [0, _Local_var_Pos, east, 0.6, 0.8, _Local_var_UnitTypes, 1, _Local_var_TargetPos, _Local_var_Radius];
				};
				case 2:
				{
					Public_fnc_HCTask = [0, _Local_var_Pos, east, 0.6, 0.8, _Local_var_UnitTypes, 2, _Local_var_WayPoints];
				};
			};
			(selectRandom Global_var_HCIDs) publicVariableClient "Public_fnc_HCTask";
		}
		else
		{
			private _Local_var_Group = [ _Local_var_Pos, east, _Local_var_UnitTypes, [], [],[0.6,0.8,0.7]] call BIS_fnc_spawnGroup;
			switch (_this select 0) do
			{//0=Static, 1=Patrol, 2=WayPoints
				case 0:
				{
					_Local_var_Group setBehaviour "AWARE";
					_Local_var_Group setCombatMode "RED";
					{
						_x setUnitPos "UP";
					} forEach units _Local_var_Group;
				};
				case 1:
				{
					(units _Local_var_Group) doMove _Local_var_TargetPos;
					[_Local_var_Group, _Local_var_TargetPos, _Local_var_Radius] call Global_fnc_Patrol;
				};
				case 2:
				{
					(units _Local_var_Group) doMove (_Local_var_WayPoints select 0);
					[_Local_var_Group, _Local_var_WayPoints] call Global_fnc_AddWPs;
				};
			};
			{
				_x addEventHandler ["killed", {"HandleServer" callExtension (Global_var_ServerIP + "|" + Global_var_UMissionID + "|" + str ["AddObjectToDelete",1,netId (_this select 0)])}];
				_x setskill ["spotDistance", 1];
				_x setskill ["spotTime", 1];
				_x setskill ["courage", 1];
				_x setskill ["aimingAccuracy", 0.3];
			} forEach units _Local_var_Group;
			_Local_var_Group deleteGroupWhenEmpty true;
			(leader _Local_var_Group) addWeapon "NVGoggles";
			switch (_this select 0) do
			{//0=Static, 1=Patrol, 2=WayPoints
				case 0:
				{
					_Local_var_Group setVariable ["GroupCommands",
					"
						if (count Global_var_HCIDs > 0) then
						{
							Public_fnc_HCTask = [1, _this, 0];
							(selectRandom Global_var_HCIDs) publicVariableClient 'Public_fnc_HCTask';
						};
					", false];
				};
				case 1:
				{
					_Local_var_Group setVariable ["GroupCommands", format[
					"
						if (count Global_var_HCIDs > 0) then
						{
							Public_fnc_HCTask = [1, _this, 1, %1, %2];
							(selectRandom Global_var_HCIDs) publicVariableClient 'Public_fnc_HCTask';
						};
					", _Local_var_TargetPos, _Local_var_Radius], false];
				};
				case 2:
				{
					_Local_var_Group setVariable ["GroupCommands", format[
					"
						if (count Global_var_HCIDs > 0) then
						{
							Public_fnc_HCTask = [1, _this, 2, %1];
							(selectRandom Global_var_HCIDs) publicVariableClient 'Public_fnc_HCTask';
						};
					", _Local_var_WayPoints], false];
				};
			};
		};
	};
	Global_fnc_CreateVehicle =
	{
		Private ["_Local_var_Radius", "_Local_var_TargetPos", "_Local_var_Dir", "_Local_var_WPPositions"];
		Params ["", "_Local_var_Pos", "_Local_var_VehCount", "_Local_var_Type", "_Local_var_Delay"];
		for "_i" from 1 to _Local_var_VehCount do
		{
			if (count Global_var_HCIDs > 0) then
			{
				Public_fnc_HCTask = [];
				switch (_this select 0) do
				{//0=Static,1=Attack, 2=Patrol, 3=WayPoints
					case 0:
					{
						_Local_var_Dir = _this select 5;
						Public_fnc_HCTask = [2, _Local_var_Pos, east, _Local_var_Type, 0, _Local_var_Dir];
					};
					case 1:
					{
						_Local_var_TargetPos = _this select 5;
						Public_fnc_HCTask = [2, _Local_var_Pos, east, _Local_var_Type, 1, _Local_var_TargetPos];
					};
					case 2:
					{
						_Local_var_TargetPos = _this select 5;
						_Local_var_Radius = _this select 6;
						Public_fnc_HCTask = [2, _Local_var_Pos, east, _Local_var_Type, 2, _Local_var_TargetPos, _Local_var_Radius];
					};
					case 3:
					{
						_Local_var_WPPositions = _this select 5;
						Public_fnc_HCTask = [2, _Local_var_Pos, east, _Local_var_Type, 3, _Local_var_WPPositions];
					};
				};
				(selectRandom Global_var_HCIDs) publicVariableClient "Public_fnc_HCTask";
			}
			else
			{
				private _Local_var_Objects = [_Local_var_Pos, _Local_var_Type, EAST] call Global_fnc_SpawnVehicle;
				private _Local_var_Vehicle = _Local_var_Objects select 0;
				private _Local_var_Group = _Local_var_Objects select 1;
				_Local_var_Vehicle setVehicleLock "LOCKED";
				if (side _Local_var_Group != EAST) then
				{
					private _Local_var_NewGroup = createGroup EAST;
					(units _Local_var_Group) joinSilent _Local_var_NewGroup;
					deleteGroup _Local_var_Group;
					_Local_var_Group = _Local_var_NewGroup;
				};
				switch (_this select 0) do
				{//0=Static,1=Attack, 2=Patrol, 3=WayPoints
					case 0:
					{
						_Local_var_Dir = _this select 5;
						_Local_var_Vehicle setDir _Local_var_Dir;
					};
					case 1:
					{
						_Local_var_TargetPos = _this select 5;
						[_Local_var_Group, _Local_var_TargetPos] call Global_fnc_AttackPos;
					};
					case 2:
					{
						_Local_var_TargetPos = _this select 5;
						_Local_var_Radius = _this select 6;
						(units _Local_var_Group) doMove _Local_var_TargetPos;
						[_Local_var_Group, _Local_var_TargetPos, _Local_var_Radius] call Global_fnc_Patrol;
					};
					case 3:
					{
						_Local_var_WPPositions = _this select 5;
						(units _Local_var_Group) doMove (_Local_var_WPPositions select 0);
						[_Local_var_Group, _Local_var_WPPositions] call Global_fnc_AddWPs;
					};
				};
				{
					_x addEventHandler ["killed", {"HandleServer" callExtension (Global_var_ServerIP + "|" + Global_var_UMissionID + "|" + str ["AddObjectToDelete",1,netId (_this select 0)])}];
					_x setskill ["spotDistance", 1];
					_x setskill ["spotTime", 1];
					_x setskill ["courage", 1];
					_x setskill ["aimingAccuracy", 0.3];
				} forEach units _Local_var_Group;
				(leader _Local_var_Group) addWeapon "NVGoggles";
				_Local_var_Vehicle addEventHandler ["killed", {"HandleServer" callExtension (Global_var_ServerIP + "|" + Global_var_UMissionID + "|" + str ["AddObjectToDelete",0,netId (_this select 0)])}];
				_Local_var_Group deleteGroupWhenEmpty true;
				switch (_this select 0) do
				{//0=Static,1=Attack, 2=Patrol, 3=WayPoints
					case 0:
					{
						_Local_var_Group setVariable ["GroupCommands",
						"
							Private ['_Local_var_Veh'];
							_Local_var_Veh = vehicle ((units _this) select 0);
							if (count Global_var_HCIDs > 0) then
							{
								Public_fnc_HCTask = [3, getPosATL _Local_var_Veh, side _this, typeOf _Local_var_Veh, damage _Local_var_Veh, getDir _Local_var_Veh, 0];
								{
									'HandleServer' callExtension (Global_var_ServerIP + '|' + Global_var_UMissionID + '|' + str ['DeleteObjects',1,netId _x]);
									deleteVehicle _x;
								} forEach units _this;
								deleteGroup _this;
								'HandleServer' callExtension (Global_var_ServerIP + '|' + Global_var_UMissionID + '|' + str ['DeleteObjects',0,netId _Local_var_Veh]);
								deleteVehicle _Local_var_Veh;
								(selectRandom Global_var_HCIDs) publicVariableClient 'Public_fnc_HCTask';
							};
						", false];
					};
					case 1:
					{
						_Local_var_Group setVariable ["GroupCommands", format[
						"
							Private ['_Local_var_Veh'];
							_Local_var_Veh = vehicle ((units _this) select 0);
							if (count Global_var_HCIDs > 0) then
							{
								Public_fnc_HCTask = [3, getPosATL _Local_var_Veh, side _this, typeOf _Local_var_Veh, damage _Local_var_Veh, getDir _Local_var_Veh, 1, vectorDir _Local_var_Veh, vectorUp _Local_var_Veh, %1];
								{
									'HandleServer' callExtension (Global_var_ServerIP + '|' + Global_var_UMissionID + '|' + str ['DeleteObjects',1,netId _x]);
									deleteVehicle _x;
								} forEach units _this;
								deleteGroup _this;
								'HandleServer' callExtension (Global_var_ServerIP + '|' + Global_var_UMissionID + '|' + str ['DeleteObjects',0,netId _Local_var_Veh]);
								deleteVehicle _Local_var_Veh;
								(selectRandom Global_var_HCIDs) publicVariableClient 'Public_fnc_HCTask';
							};
						", _Local_var_TargetPos], false];
					};
					case 2:
					{
						_Local_var_Group setVariable ["GroupCommands", format[
						"
							Private ['_Local_var_Veh'];
							_Local_var_Veh = vehicle ((units _this) select 0);
							if (count Global_var_HCIDs > 0) then
							{
								Public_fnc_HCTask = [3, getPosATL _Local_var_Veh, side _this, typeOf _Local_var_Veh, damage _Local_var_Veh, getDir _Local_var_Veh, 2, vectorDir _Local_var_Veh, vectorUp _Local_var_Veh, %1, %2];
								{
									'HandleServer' callExtension (Global_var_ServerIP + '|' + Global_var_UMissionID + '|' + str ['DeleteObjects',1,netId _x]);
									deleteVehicle _x;
								} forEach units _this;
								deleteGroup _this;
								'HandleServer' callExtension (Global_var_ServerIP + '|' + Global_var_UMissionID + '|' + str ['DeleteObjects',0,netId _Local_var_Veh]);
								deleteVehicle _Local_var_Veh;
								(selectRandom Global_var_HCIDs) publicVariableClient 'Public_fnc_HCTask';
							};
						", _Local_var_TargetPos, _Local_var_Radius], false];
					};
					case 3:
					{
						_Local_var_Group setVariable ["GroupCommands", format[
						"
							Private ['_Local_var_Veh'];
							_Local_var_Veh = vehicle ((units _this) select 0);
							if (count Global_var_HCIDs > 0) then
							{
								Public_fnc_HCTask = [3, getPosATL _Local_var_Veh, side _this, typeOf _Local_var_Veh, damage _Local_var_Veh, getDir _Local_var_Veh, 3, vectorDir _Local_var_Veh, vectorUp _Local_var_Veh, %1];
								{
									'HandleServer' callExtension (Global_var_ServerIP + '|' + Global_var_UMissionID + '|' + str ['DeleteObjects',1,netId _x]);
									deleteVehicle _x;
								} forEach units _this;
								deleteGroup _this;
								'HandleServer' callExtension (Global_var_ServerIP + '|' + Global_var_UMissionID + '|' + str ['DeleteObjects',0,netId _Local_var_Veh]);
								deleteVehicle _Local_var_Veh;
								(selectRandom Global_var_HCIDs) publicVariableClient 'Public_fnc_HCTask';
							};
						", _Local_var_WPPositions], false];
						
					};
				};
			};
			sleep _Local_var_Delay;
		};
	};
//------------------------------------------------------------------------------------------------------------------------------
	Vladimir_Kruscheck doMove (getPos Vladimir_Kruscheck);
	[Vladimir_Kruscheck, getPos Vladimir_Kruscheck, 200] call Global_fnc_Patrol;
	antenne1 setDamage 0.7;
//------------------------------------------------------------------------------------------------------------------------------
	removeAllWeapons ausruester_ger;
	removeBackpack ausruester_ger;
	removeAllWeapons ausruester_us;
	removeBackpack ausruester_us;
	sleep 1;
	ausruester_ger enableSimulation false;
	ausruester_ger allowDamage false;
	ausruester_us enableSimulation false;
	ausruester_us allowDamage false;
	Global_var_MortarsFound = false;
	Global_var_AllTriggers = [];
	Global_var_AllTriggers pushBack [[28247,23897,0],2000,0];	//G5
	Global_var_AllTriggers pushBack [[26978,23289,0],1500,1];	//V6
	Global_var_AllTriggers pushBack [[26987,23091,0],650,2];	//G1
	Global_var_AllTriggers pushBack [[26826,23121,0],850,3];	//Al1
	Global_var_AllTriggers pushBack [[27230,22936,0],1200,4];	//Al7
	Global_var_AllTriggers pushBack [[27608,21527,0],600,5];	//G6
	Global_var_AllTriggers pushBack [[27708,21059,0],1300,6];	//Al35
	Global_var_AllTriggers pushBack [[27696,20935,0],1700,7];	//Al46
	Global_var_AllTriggers pushBack [[27044,21515,0],1500,8];	//Al55
	Global_var_AllTriggers pushBack [[26270,21772,0],1200,9];	//V5
	Global_var_AllTriggers pushBack [[25989,22567,0],880,10];	//G4
	Global_var_AllTriggers pushBack [[25324,22837,0],1000,11];	//Al15
	Global_var_AllTriggers pushBack [[25020,23317,0],1400,12];	//Al21
	Global_var_AllTriggers pushBack [[24646,23183,0],1200,13];	//G2
	Global_var_AllTriggers pushBack [[24433,23207,0],1000,14];	//V0
	Global_var_AllTriggers pushBack [[25093,22516,0],1200,15];	//G0
	Global_var_AllTriggers pushBack [[24214,22616,0],600,16];	//G3
	Global_var_AllTriggers pushBack [[24550,22371,0],1500,17];	//Al70
	Global_var_AllTriggers pushBack [[23645,21819,0],300,18];	//V3
	Global_var_AllTriggers pushBack [[25297,21812,0],1500,19];	//Al80
	Global_var_AllTriggers pushBack [[25362,21568,0],500,20];	//Al83
	Global_var_AllTriggers pushBack [[25463,21460,0],500,21];	//Al124
	Global_var_AllTriggers pushBack [[25623,21301,0],600,22];	//Al103
	Global_var_AllTriggers pushBack [[25539,21178,0],300,23];	//Al109
	Global_var_AllTriggers pushBack [[25788,21098,0],300,24];	//Al114
	Global_var_AllTriggers pushBack [[25071,20989,0],400,25];	//Al119
	Global_var_AllTriggers pushBack [[25401,20326,0],1600,26];	//G8
	Global_var_AllTriggers pushBack [[25841,20153,0],700,27];	//V2
	Global_var_AllTriggers pushBack [[23359,14911,0],1300,28];	//V4
	Global_var_AllTriggers pushBack [[23209,18587,0],400,29];	//V7
	Global_var_AllTriggers pushBack [[28035,21313,0],200,30];	//Ar0
	Global_var_AllTriggers pushBack [[27093,21463,0],200,31];	//Ar1
	Global_var_AllTriggers pushBack [[24586,22332,0],200,32];	//Ar2
	Global_var_AllTriggers pushBack [[27226,22928,0],150,33];	//Ar3
	Global_var_AllTriggers pushBack [[27676,20840,0],150,34];	//Ar4
	Global_var_AllTriggers pushBack [[25446,20336,0],400,35];	//New
	0 spawn
	{
		private _Local_fnc_DelTriggers =
		{
			{
				if ((_x select 2) in _this) then
				{
					Global_var_AllTriggers set [_forEachIndex, 1];
				};
			} forEach Global_var_AllTriggers;
			Global_var_AllTriggers = Global_var_AllTriggers - [1];
		};
		private _Local_fnc_HandleSingleSpawns =
		{
			private _Local_var_MaxCount = round (((count allPlayers) / 33)  * (count _this));
			if (_Local_var_MaxCount == 0) then
			{
				_Local_var_MaxCount = 1;
			};
			private _Local_var_Counter = 0;
			{
				if (_Local_var_Counter < _Local_var_MaxCount) then
				{
					call compile _x;
					_Local_var_Counter = _Local_var_Counter + 1;
				};
			} forEach _this;
		};
		private _Local_fnc_GetEnemyTypes =
		{
			private _Local_var_MaxGroupCount = _this;
			private _Local_var_GroupCount = round (((count allPlayers) / 33)  * _Local_var_MaxGroupCount);
			private _Local_var_RootClasses = ["rhs_vdv_mflora_at","rhs_vdv_mflora_machinegunner","rhs_vdv_mflora_grenadier","rhs_vdv_mflora_RShG2"];
			private _Local_var_DynamicClasses = ["rhs_vdv_mflora_efreitor","rhs_vdv_mflora_grenadier_rpg","rhs_vdv_mflora_strelok_rpg_assist","rhs_vdv_mflora_engineer","rhs_vdv_mflora_aa","rhs_vdv_mflora_machinegunner_assistant","rhs_vdv_mflora_medic","rhs_vdv_mflora_sergeant","rhs_vdv_mflora_LAT","rhs_vdv_mflora_marksman","rhs_vdv_mflora_rifleman","rhs_vdv_mflora_strelok_rpg_assist"];
			private _Local_var_RootCount = floor (_Local_var_MaxGroupCount / 2);
			private _Local_var_ReturnList = [];
			if (_Local_var_RootCount < 1) then
			{
				_Local_var_RootCount = 1;
			};
			if (_Local_var_RootCount < 4) then
			{
				for "_i" from 1 to _Local_var_RootCount do
				{
					_Local_var_ReturnList pushBack (_Local_var_RootClasses select (_i - 1));
				};
			}
			else
			{
				_Local_var_RootCount = 3;
				_Local_var_ReturnList = _Local_var_RootClasses;
			};
			if (_Local_var_GroupCount >= (_Local_var_RootCount + 1)) then
			{
				for "_i" from (_Local_var_RootCount + 1) to _Local_var_GroupCount do
				{
					_Local_var_ReturnList pushBack (selectRandom _Local_var_DynamicClasses);
				};
			};
			_Local_var_ReturnList
		};
		Global_var_LoopCount = Global_var_LoopCount + 1;
		while {count Global_var_AllTriggers > 0} do
		{
			private _Local_var_Result = call compile ("HandleServer" callExtension (Global_var_ServerIP + "|" + Global_var_UMissionID + "|" + str ["CountPlayerInArea",Global_var_AllTriggers]));
			if (typeName _Local_var_Result == "ARRAY") then
			{
				if (count _Local_var_Result > 0) then
				{
					{
						switch (_x) do
						{
							case 0://G5
							{
								[2,[28247,23897,0],6 call _Local_fnc_GetEnemyTypes,[[27871,23635,0],[27877,22813,0],[27981,22197,0],[28071,21250,0],[27745,20980,0],[27697,20893,0],[27585,20873,0]]] call Global_fnc_CreateGroup;
							};
							case 1://V6
							{
								[3,[26978,23289,0],1,"rhs_tigr_sts_3camo_msv",0,[[25969,21555,0],[26302,22036,0],[25695,21347,0],[26751,21215,0],[27056,21444,0],[27763,21046,0],[26978,23826,0]]] call Global_fnc_CreateVehicle;
							};
							case 2://G1
							{
								[1,[26987,23091,0],6 call _Local_fnc_GetEnemyTypes,[26987,23091,0],1000] call Global_fnc_CreateGroup;
							};
							case 3://Al1
							{
								[
									"[0,[26830.1,23122.4,0.54],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[26826.7,23121.5,4.34],['rhs_vmf_flora_grenadier']] call Global_fnc_CreateGroup;",
									"[0,[26831.2,23098.6,0.32],['rhs_vmf_flora_sergeant']] call Global_fnc_CreateGroup;",
									"[0,[26814,23151.4,0.40],['rhs_vmf_flora_at']] call Global_fnc_CreateGroup;",
									"[0,[26818.8,23110.9,0],['rhs_vmf_flora_grenadier_rpg']] call Global_fnc_CreateGroup;",
									"[0,[26808.7,23115.3,0],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[26817.6,23100.8,0],['rhs_vmf_flora_armoredcrew']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
								[0,[26807.8,23120.1,0],1,"rhs_KORD_high_MSV",0,42] call Global_fnc_CreateVehicle;
							};
							case 4://Al7
							{
								[
									"[0,[27230.5,22936,0],['rhs_vmf_flora_aa']] call Global_fnc_CreateGroup;",
									"[0,[27221.9,22928.5,0],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[27217.4,22917.4,0],['rhs_vmf_flora_medic']] call Global_fnc_CreateGroup;",
									"[0,[27223.4,22923.3,0],['rhs_vmf_flora_junior_sergeant']] call Global_fnc_CreateGroup;",
									"[0,[27211.6,22893.8,0],['rhs_vmf_flora_engineer']] call Global_fnc_CreateGroup;",
									"[0,[27294,22959.3,0],['rhs_vmf_flora_RShG2']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
								[0,[27217.4,22930.8,0],1,"rhs_KORD_high_MSV",0,335] call Global_fnc_CreateVehicle;
							};
							case 5://G6
							{
								[2,[27608,21527,0],6 call _Local_fnc_GetEnemyTypes,[[27429,22028,0],[27135,22608,0],[26592,22114,0],[26986,21397,0],[27485,20850,0]]] call Global_fnc_CreateGroup;
							};
							case 6://Al35
							{
								[
									"[0,[25324,22837.9,0],['rhs_vmf_flora_machinegunner_assistant']] call Global_fnc_CreateGroup;",
									"[0,[25320.4,22843.9,0],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[25313,22835.4,0],['rhs_vmf_flora_combatcrew']] call Global_fnc_CreateGroup;",
									"[0,[25019.2,23301.2,0],['rhs_vmf_flora_combatcrew']] call Global_fnc_CreateGroup;",
									"[0,[25033.1,23306.7,0],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[25041.5,23300.1,0],['rhs_vmf_flora_machinegunner_assistant']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
								[2,[27689,21056,0],["rhs_vdv_des_machinegunner"],[[27706,21038,0],[27739,21046,0],[27749,21064,0],[27708,21098,0],[27688,21081,0]]] call Global_fnc_CreateGroup;
							};
							case 7://Al46
							{
								//Diver
								[
									"[1,[27872,20860,-20],['O_diver_F'],[27872,20860,-20],50] call Global_fnc_CreateGroup;",
									"[1,[29943,23947,-20],['O_diver_F'],[29943,23947,-20],50] call Global_fnc_CreateGroup;",
									"[1,[27806,20796,-21],['O_diver_F'],[27806,20796,-21],50] call Global_fnc_CreateGroup;",
									"[1,[27832,20817,-21],['O_diver_F'],[27832,20817,-21],50] call Global_fnc_CreateGroup;",
									"[1,[27871,20851,-21],['O_diver_F'],[27871,20851,-21],50] call Global_fnc_CreateGroup;",
									"[1,[27871,20851,-21],['O_diver_F'],[27871,20851,-21],50] call Global_fnc_CreateGroup;",
									"[1,[27913,20932,-22],['O_diver_F'],[27913,20932,-22],30] call Global_fnc_CreateGroup;",
									"[1,[27924,20968,-17],['O_diver_F'],[27924,20968,-17],30] call Global_fnc_CreateGroup;",
									"[1,[27743,20777,-15],['O_diver_F'],[27743,20777,-15],30] call Global_fnc_CreateGroup;",
									"[1,[27938,20842,-16],['O_diver_F'],[27938,20842,-16],50] call Global_fnc_CreateGroup;",
									"[1,[27885,20824,-16],['O_diver_F'],[27885,20824,-16],50] call Global_fnc_CreateGroup;",
									"[1,[27948,20947,-16],['O_diver_F'],[27948,20947,-16],50] call Global_fnc_CreateGroup;",
									"[1,[27848,20867,-16],['O_diver_F'],[27848,20867,-16],50] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
								//Alone
								[
									"[0,[27720.1,20897.7,5.24],['rhs_vmf_flora_marksman']] call Global_fnc_CreateGroup;",
									"[0,[27631.4,20848.9,20.24],['rhs_vmf_flora_marksman']] call Global_fnc_CreateGroup;",
									"[0,[27718,20810.2,13.26],['rhs_vmf_flora_marksman']] call Global_fnc_CreateGroup;",
									"[0,[27727.7,20822.8,12.15],['rhs_vmf_flora_grenadier']] call Global_fnc_CreateGroup;",
									"[0,[27718,20829.7,4.49],['rhs_vmf_flora_grenadier']] call Global_fnc_CreateGroup;",
									"[0,[27704.9,20815.2,4.93],['rhs_vmf_flora_rifleman']] call Global_fnc_CreateGroup;",
									"[0,[27708.6,20803,7.82],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[27585.3,20882.1,0.31],['rhs_vmf_flora_RShG2']] call Global_fnc_CreateGroup;",
									"[0,[27580.4,20883.8,0.12],['rhs_vmf_flora_LAT']] call Global_fnc_CreateGroup;",
									"[0,[27580.9,20880.5,0.23],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[27696.5,20935.1,1.03],['rhs_vmf_flora_grenadier']] call Global_fnc_CreateGroup;",
									"[0,[27685.7,20933.1,1.26],['rhs_vmf_flora_junior_sergeant']] call Global_fnc_CreateGroup;",
									"[0,[27688,20929.5,1.14],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
								//Groups
								[2,[27627,20857,0],["rhs_vdv_des_machinegunner"],[[27585,20876,0],[27596,20853,0],[27674,20840,0],[27698,20930,0]]] call Global_fnc_CreateGroup;
								[2,[27688,20924,0],["rhs_vdv_des_machinegunner"],[[27582,20877,0],[27744,20977,0]]] call Global_fnc_CreateGroup;
							};
							case 8://Al55
							{
								//Alone
								[
									"[0,[27034.4,21486.7,0],['rhs_vmf_flora_LAT']] call Global_fnc_CreateGroup;",
									"[0,[27023.4,21478.3,0],['rhs_vmf_flora_junior_sergeant']] call Global_fnc_CreateGroup;",
									"[0,[27021.8,21480.5,0],['rhs_vmf_flora_officer_armored']] call Global_fnc_CreateGroup;",
									"[0,[27054,21455.5,0],['rhs_vmf_flora_sergeant']] call Global_fnc_CreateGroup;",
									"[0,[27088.3,21490.3,0],['rhs_vmf_flora_medic']] call Global_fnc_CreateGroup;",
									"[0,[27062.3,21511,6.33],['rhs_vmf_flora_marksman']] call Global_fnc_CreateGroup;",
									"[0,[27044,21515,10.07],['rhs_vmf_flora_marksman']] call Global_fnc_CreateGroup;",
									"[0,[27043.8,21489.3,48.45],['rhs_vmf_flora_marksman']] call Global_fnc_CreateGroup;",
									"[0,[27037.1,21484,48.31],['rhs_vmf_flora_marksman']] call Global_fnc_CreateGroup;",
									"[0,[27041.3,21486,9.40],['rhs_vmf_flora_grenadier']] call Global_fnc_CreateGroup;",
									"[0,[27039.3,21487.8,9.45],['rhs_vmf_flora_grenadier']] call Global_fnc_CreateGroup;",
									"[0,[27036.7,21443.4,5.05],['rhs_vmf_flora_rifleman']] call Global_fnc_CreateGroup;",
									"[0,[27112.2,21529.1,5.05],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[27060.2,21563.2,5.06],['rhs_vmf_flora_RShG2']] call Global_fnc_CreateGroup;",
									"[0,[27016,21625.3,5.05],['rhs_vmf_flora_LAT']] call Global_fnc_CreateGroup;",
									"[0,[26963.9,21584.2,5.06],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[26891.6,21514.2,5.05],['rhs_vmf_flora_grenadier']] call Global_fnc_CreateGroup;",
									"[0,[26924.4,21484.5,5.05],['rhs_vmf_flora_junior_sergeant']] call Global_fnc_CreateGroup;",
									"[0,[26981.3,21458.7,5.05],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
								//Groups
								[2,[27051,21448,0],["rhs_vdv_des_machinegunner"],[[27024,21426,0],[26921,21474,0],[26873,21521,0],[26946,21579,0]]] call Global_fnc_CreateGroup;
								[2,[27057,21453,0],["rhs_vdv_des_machinegunner"],[[27128,21514,0],[27100,21550,0],[27082,21538,0],[27060,21602,0],[27024,21638,0]]] call Global_fnc_CreateGroup;
								//Static
								[0,[27055.9,21435.6,0],1,"rhs_KORD_high_MSV",0,186] call Global_fnc_CreateVehicle;
								[0,[27073,21450.3,0],1,"rhs_KORD_high_MSV",0,87] call Global_fnc_CreateVehicle;
							};
							case 9://V5
							{
								[3,[26270,21772,0],1,"RHS_Civ_Truck_02_transport_F",0,[[26686,22864,0],[26926,23237,0],[27589,23547,0],[27072,21456,0]]] call Global_fnc_CreateVehicle;
							};
							case 10://G4
							{
								[2,[25989,22567,0],6 call _Local_fnc_GetEnemyTypes,[[26311,22920,0],[26203,23177,0],[26568,23464,0],[26986,23284,0],[26809,23109,0],[27227,22931,0],[27876,22799,0],[27066,21453,0]]] call Global_fnc_CreateGroup;
							};
							case 11://Al15
							{
								[
									"[0,[25328.5,22834.5,0],['rhs_vmf_flora_at']] call Global_fnc_CreateGroup;",
									"[0,[25332.5,22825.3,0],['rhs_vmf_flora_efreitor']] call Global_fnc_CreateGroup;",
									"[0,[25324,22837.9,0],['rhs_vmf_flora_machinegunner_assistant']] call Global_fnc_CreateGroup;",
									"[0,[25320.4,22843.9,0],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[25313,22835.4,0],['rhs_vmf_flora_combatcrew']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
								[0,[25331.5,22838.3,0],1,"rhs_KORD_high_MSV",0,78] call Global_fnc_CreateVehicle;
							};
							case 12://Al21
							{
								[
									"[0,[25019.2,23301.2,0],['rhs_vmf_flora_combatcrew']] call Global_fnc_CreateGroup;",
									"[0,[25033.1,23306.7,0],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[25041.5,23300.1,0],['rhs_vmf_flora_machinegunner_assistant']] call Global_fnc_CreateGroup;",
									"[0,[25020.1,23317.7,0.28],['rhs_vmf_flora_grenadier']] call Global_fnc_CreateGroup;",
									"[0,[25015.9,23315.6,0.21],['rhs_vmf_flora_LAT']] call Global_fnc_CreateGroup;",
									"[0,[24993.6,23364.2,0],['rhs_vmf_flora_grenadier']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
								[0,[25034.7,23312.2,0],1,"rhs_KORD_high_MSV",0,56] call Global_fnc_CreateVehicle;
							};
							case 13://G2
							{
								[2,[25093,22516,0],6 call _Local_fnc_GetEnemyTypes,[[24609,23054,0],[24775,22878,0],[24547,22542,0],[24573,22360,0],[25317,22821,0],[25138,23371,0]]] call Global_fnc_CreateGroup;
							};
							case 14://V0
							{
								[3,[24433.4,23207.7,0],1,"rhs_btr70_msv",0,[[25419,22869,0],[25509,22042,0],[25296,22024,0],[24708,22243,0],[26912,23417,0],[27558,21021,0],[26007,21531,0],[25799,21448,0],[25011,22634,0]]] call Global_fnc_CreateVehicle;
							};
							case 15://G0
							{
								[1,[25093,22516,0],6 call _Local_fnc_GetEnemyTypes,[25093,22516,0],1000] call Global_fnc_CreateGroup;
							};
							case 16://G3
							{
								[2,[24214,22616,0],6 call _Local_fnc_GetEnemyTypes,[[24094,22761,0],[24252,22779,0],[24548,22542,0],[24653,22370,0],[24581,22332,0],[25294,22021,0],[25522,22875,0],[25620,21300,0]]] call Global_fnc_CreateGroup;
							};
							case 17://Al70
							{
								//Alone
								[
									"[0,[24565.8,22385.1,14.74],['rhs_vmf_flora_marksman']] call Global_fnc_CreateGroup;",
									"[0,[24566.1,22384.1,14.78],['rhs_vmf_flora_marksman']] call Global_fnc_CreateGroup;",
									"[0,[24550.3,22371.6,5.05],['rhs_vmf_flora_marksman']] call Global_fnc_CreateGroup;",
									"[0,[24556.2,22338.5,5.05],['rhs_vmf_flora_marksman']] call Global_fnc_CreateGroup;",
									"[0,[24589.7,22364.3,5.06],['rhs_vmf_flora_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[24572,22351.2,0],['rhs_vmf_flora_rifleman']] call Global_fnc_CreateGroup;",
									"[0,[24558.2,22346,0],['rhs_vmf_flora_medic']] call Global_fnc_CreateGroup;",
									"[0,[24566.1,22384.1,14.79],['rhs_vmf_flora_marksman']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
								//Vehicle
								[3,[24594.2,22339.8,0],1,"rhs_tigr_sts_3camo_vv",0,[[25235,22771,0],[26065,23057,0],[26743,23049,0],[26937,23248,0],[27215,22942,0],[27588,22561,0],[27289,22332,0],[25839,21486,0],[25340,22014,0]]] call Global_fnc_CreateVehicle;
								//Static
								[0,[24529.1,22388.8,0],1,"rhs_KORD_high_MSV",0,228] call Global_fnc_CreateVehicle;
								[0,[24587.2,22353.9,0],1,"rhs_KORD_high_MSV",0,91] call Global_fnc_CreateVehicle;
							};
							case 18://V3
							{
								[3,[23645.2,21819.6,0],1,"rhs_brm1k_vv",0,[[24645,22366,0],[24829,22097,0],[24757,21843,0],[24674,21575,0],[25172,21333,0],[23695,21072,0]]] call Global_fnc_CreateVehicle;
							};
							case 19://Al80
							{
								//Alone
								[
									"[0,[25329.3,21785.4,1.88],['rhs_vdv_des_efreitor']] call Global_fnc_CreateGroup;",
									"[0,[25293.5,21826.8,7.45],['rhs_vdv_des_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[25297.4,21812.1,8.59],['rhs_vdv_des_medic']] call Global_fnc_CreateGroup;",
									"[0,[25280.7,21804.8,8.36],['rhs_vdv_des_rifleman']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
								//Groups
								[2,[25266,21811,0],6 call _Local_fnc_GetEnemyTypes,[[25693,22037,0],[25605,22429,0],[26070,22660,0],[26117,22862,0],[24574,22333,0],[25439,21449,0],[25809,21117,0],[25081,20895,0],[24669,21566,0],[25181,21697,0]]] call Global_fnc_CreateGroup;
								//Static
								[0,[25341.8,21804.8,0],1,"RHS_ZU23_VDV",0,71] call Global_fnc_CreateVehicle;
							};
							case 20://Al83
							{
								[
									"[0,[25336.8,21618.1,0.53],['rhs_vdv_des_rifleman_asval']] call Global_fnc_CreateGroup;",
									"[0,[25362.1,21568.5,0.61],['rhs_vdv_des_LAT']] call Global_fnc_CreateGroup;",
									"[0,[25368.8,21567.3,0.98],['rhs_vdv_des_marksman']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
							};
							case 21://Al124
							{
								[
									"[0,[25378.7,21490.9,3.11],['rhs_vdv_des_junior_sergeant']] call Global_fnc_CreateGroup;",
									"[0,[25380.6,21490.8,3.23],['rhs_vdv_des_sergeant']] call Global_fnc_CreateGroup;",
									"[0,[25374,21489.1,0.091],['rhs_vdv_des_marksman_asval']] call Global_fnc_CreateGroup;",
									"[0,[25484.8,21416.2,0.41],['rhs_vdv_des_RShG2']] call Global_fnc_CreateGroup;",
									"[0,[25477.6,21417.4,0.21],['rhs_vdv_des_strelok_rpg_assist']] call Global_fnc_CreateGroup;",
									"[0,[25483.5,21420.1,0.26],['rhs_vdv_des_engineer']] call Global_fnc_CreateGroup;",
									"[0,[25463.7,21460.4,2.92],['rhs_vdv_des_marksman']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
							};
							case 22://Al103
							{
								[
									"[0,[25507.8,21364.1,0.26],['rhs_vdv_des_rifleman_lite']] call Global_fnc_CreateGroup;",
									"[0,[25504,21357.2,0.48],['rhs_vdv_des_efreitor']] call Global_fnc_CreateGroup;",
									"[0,[25552.9,21336.5,3.71],['rhs_vdv_des_strelok_rpg_assist']] call Global_fnc_CreateGroup;",
									"[0,[25549.2,21341.9,3.56],['rhs_vdv_des_rifleman']] call Global_fnc_CreateGroup;",
									"[0,[25553.3,21338.5,3.61],['rhs_vdv_des_RShG2']] call Global_fnc_CreateGroup;",
									"[0,[25565.9,21322.8,0.42],['rhs_vdv_des_rifleman_asval']] call Global_fnc_CreateGroup;",
									"[0,[25560.8,21321.5,0.55],['rhs_vdv_des_at']] call Global_fnc_CreateGroup;",
									"[0,[25508.2,21330.4,3.90],['rhs_vdv_des_rifleman_lite']] call Global_fnc_CreateGroup;",
									"[0,[25505,21328.5,4.12],['rhs_vdv_des_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[25515.6,21328.4,3.87],['rhs_vdv_des_LAT']] call Global_fnc_CreateGroup;",
									"[0,[25510.6,21324.1,4.14],['rhs_vdv_des_medic']] call Global_fnc_CreateGroup;",
									"[0,[25568,21321.4,0.5364],['rhs_vdv_des_junior_sergeant']] call Global_fnc_CreateGroup;",
									"[0,[25623.1,21301.9,4.06],['rhs_vdv_des_LAT']] call Global_fnc_CreateGroup;",
									"[0,[25620.8,21300.6,4.13],['rhs_vdv_des_rifleman']] call Global_fnc_CreateGroup;",
									"[0,[25624.3,21294.3,4.26],['rhs_vdv_des_engineer']] call Global_fnc_CreateGroup;",
									"[0,[25702.9,21315.8,0.50],['rhs_vdv_des_rifleman']] call Global_fnc_CreateGroup;",
									"[0,[25691.4,21313.3,0.49],['rhs_vdv_des_engineer']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
							};
							case 23://Al109
							{
								[
									"[0,[25534,21179.1,0.19],['rhs_vdv_des_junior_sergeant']] call Global_fnc_CreateGroup;",
									"[0,[25539.5,21178,0.24],['rhs_vdv_des_rifleman']] call Global_fnc_CreateGroup;",
									"[0,[25540.5,21180.4,3.06],['rhs_vdv_des_marksman']] call Global_fnc_CreateGroup;",
									"[0,[25537.3,21176.1,3.10],['rhs_vdv_des_rifleman']] call Global_fnc_CreateGroup;",
									"[0,[25541.1,21177.3,3.09],['rhs_vdv_des_marksman']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
							};
							case 24://Al114
							{
								[
									"[0,[25791.1,21096.2,0.18],['rhs_vdv_des_RShG2']] call Global_fnc_CreateGroup;",
									"[0,[25788.9,21098.2,0.10],['rhs_vdv_des_rifleman']] call Global_fnc_CreateGroup;",
									"[0,[25763.1,21081.3,0.53],['rhs_vdv_des_LAT']] call Global_fnc_CreateGroup;",
									"[0,[25791.6,21140.3,0.11],['rhs_vdv_des_LAT']] call Global_fnc_CreateGroup;",
									"[0,[25798.5,21137.2,0.25],['rhs_vdv_des_rifleman_lite']] call Global_fnc_CreateGroup;",
									"[0,[25795.3,21140.5,0.16],['rhs_vdv_des_machinegunner']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
							};
							case 25://Al119
							{
								[
									"[0,[25080,20969.5,0],['rhs_vdv_des_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[25072.5,20968.4,0],['rhs_vdv_des_rifleman']] call Global_fnc_CreateGroup;",
									"[0,[25071.9,20989.2,0],['rhs_vdv_des_rifleman_lite']] call Global_fnc_CreateGroup;",
									"[0,[25077.3,20992.4,0],['rhs_vdv_des_LAT']] call Global_fnc_CreateGroup;",
									"[0,[25066.2,20967.8,0.93],['rhs_vdv_des_RShG2']] call Global_fnc_CreateGroup;",
									"[0,[24860.5,21069,0.22],['rhs_vdv_des_machinegunner']] call Global_fnc_CreateGroup;",
									"[0,[24859.7,21072.8,0.11],['rhs_vdv_des_rifleman']] call Global_fnc_CreateGroup;",
									"[0,[25069.6,20892.1,0.35],['rhs_vdv_des_engineer']] call Global_fnc_CreateGroup;"
								] call _Local_fnc_HandleSingleSpawns;
							};
							case 26://G8
							{
								[2,[25401,20326,0],6 call _Local_fnc_GetEnemyTypes,[[25036,20846,0],[25825,21471,0],[26086,21659,0],[26309,21058,0],[25154,21322,0],[25461,21438,0],[25798,21129,0]]] call Global_fnc_CreateGroup;
							};
							case 27://V2
							{
								[3,[25841.4,20153.4,0],1,"rhs_btr60_vv",0,[[26401,20542,0],[26939,20954,0],[27378,20942,0],[27719,21037,0],[27065,21340,0],[27379,22127,0],[27306,22831,0]]] call Global_fnc_CreateVehicle;
							};
							case 28://V4
							{
								[3,[23359.3,14911.3,0],1,"C_Boat_Transport_02_F",0,[[24929,14117,0],[26495,18957,0],[27944,20675,0],[28529,22339,0],[29401,22348,0],[29488,20295,0],[28007,20817,0]]] call Global_fnc_CreateVehicle;
							};
							case 29://V7
							{
								[3,[23209.3,18587,100],1,"RHS_Mi24Vt_vvs",0,[[23289,22600,145],[24836,22390,145],[26132,21570,145],[27518,21045,70],[25360,21207,60],[24942,20969,60]]] call Global_fnc_CreateVehicle;
							};
							case 30://Ar0
							{
								if (!Global_var_MortarsFound) then
								{
									[0,[25435.4,20357.9,0],1,"rhs_2b14_82mm_vdv",0,1] call Global_fnc_CreateVehicle;
									[[27771,21603,0], 70, "R_80mm_HE", 4, 4, 15, 15, 30] execVM "HandleArmA3FakeArtillery.sqf";
								};
							};
							case 31://Ar1
							{
								if (!Global_var_MortarsFound) then
								{
									[0,[25441.3,20347.2,0],1,"rhs_2b14_82mm_vdv",0,1] call Global_fnc_CreateVehicle;
									[[27240,21577,0], 100, "R_80mm_HE", 3, 3, 10, 10, 30] execVM "HandleArmA3FakeArtillery.sqf";
								};
							};
							case 32://Ar2
							{
								if (!Global_var_MortarsFound) then
								{
									[0,[25446.6,20336.5,0],1,"rhs_2b14_82mm_vdv",0,1] call Global_fnc_CreateVehicle;
									[[24652,22367,0], 200, "R_80mm_HE", 5, 5, 25, 25, 30] execVM "HandleArmA3FakeArtillery.sqf";
								};
							};
							case 33://Ar3
							{
								if (!Global_var_MortarsFound) then
								{
									[0,[25453,20328.5,0],1,"rhs_2b14_82mm_vdv",0,1] call Global_fnc_CreateVehicle;
									[[27080,23065,0], 100, "R_80mm_HE", 3, 3, 10, 10, 30] execVM "HandleArmA3FakeArtillery.sqf";
								};
							};
							case 34://Ar4
							{
								if (!Global_var_MortarsFound) then
								{
									[0,[25433,20360.6,0],1,"rhs_2b14_82mm_vdv",0,1] call Global_fnc_CreateVehicle;
									[[27602,20999,0], 250, "R_80mm_HE", 4, 4, 15, 15, 30] execVM "HandleArmA3FakeArtillery.sqf";
								};
							};
							case 35://New
							{
								Global_var_MortarsFound = true;
							};
						};
					} forEach _Local_var_Result;
					_Local_var_Result call _Local_fnc_DelTriggers;
				};
			}
			else
			{
				diag_log _Local_var_Result;
			};
			sleep 5;
		};
		Global_var_LoopCount = Global_var_LoopCount - 1;
	};
	{
		if ((local _x) && {simulationEnabled _x}) then
		{
			_x addEventHandler ["killed", {"HandleServer" callExtension (Global_var_ServerIP + "|" + Global_var_UMissionID + "|" + str ["AddObjectToDelete",0,netId (_this select 0)])}];
		};
	} forEach vehicles;
	[[[25473,22814,0],100,5],[[27044,23251,0],350,12],[[25656,21306,0],350,15],[[27940,23665,0],100,4],[[27039,22833,0],100,4],[[26707,21216,0],250,8],[[27573,21539,0],100,4],[[25256,22660,0],100,3],[[26779,24606,0],200,3]] execFSM "HandleCivsA3.fsm";
	Global_var_LoopCount = Global_var_LoopCount + 1;
	execVM "ACEStuff.sqf";
	addMissionEventHandler ["HandleDisconnect",{deleteVehicle (_this select 0);false}];
};
if (!isServer) then
{
	waitUntil {sleep 1;!isNull Player};
	Player setVariable ["BIS_noCoreConversations", true];
	enableRadio false;
	Player enableFatigue false;
	if (hasInterface) then
	{
		startLoadingScreen ["Mission wird initialisiert..."];
		disableUserInput true;
		Player addEventHandler ["Respawn", {(_this select 0) enableFatigue false;(_this select 0) setVariable ["BIS_noCoreConversations", true]; _Local_var_BackPack = nearestObject [_this select 0, "GroundWeaponHolder"];if (!isNull _Local_var_BackPack) then {deleteVehicle _Local_var_BackPack;};(_this select 1) spawn {sleep 60; deleteVehicle _this};removeAllWeapons Player;removeAllItems Player;removeAllAssignedItems Player;}];
		"Public_var_TaskDone" addPublicVariableEventHandler
		{
			switch (_this select 1) do
			{
				case 0:
				{
					Global_var_Task1 setTaskState "Succeeded";
					if ((taskState Global_var_Task2 != "Succeeded") && {taskState Global_var_Task2 != "Failed"}) then
					{
						Global_var_Task2 setTaskState "Assigned";
						Global_var_Task2 setSimpleTaskDestination getMarkerPos "Ziel1";
					};
					if (({taskState _x == "Succeeded"} count [Global_var_Task2,Global_var_Task3]) == 2) then
					{
						"Ziel1" setMarkerColorLocal "ColorGreen";
						Global_var_Task4 setTaskState "Assigned";
						Global_var_Task4 setSimpleTaskDestination getMarkerPos "Ziel2";
					};
					"Ziel2" setMarkerAlphaLocal 0.5;
					["TaskSucceeded",["Informationen gefunden"]] call bis_fnc_showNotification;
				};
				case 1:
				{
					Global_var_Task2 setTaskState "Succeeded";
					if ((taskState Global_var_Task3 != "Succeeded") && {taskState Global_var_Task3 != "Failed"}) then
					{
						Global_var_Task3 setTaskState "Assigned";
						Global_var_Task3 setSimpleTaskDestination getMarkerPos "Ziel1";
					};
					if (({taskState _x == "Succeeded"} count [Global_var_Task1,Global_var_Task3]) == 2) then
					{
						"Ziel1" setMarkerColorLocal "ColorGreen";
						Global_var_Task4 setTaskState "Assigned";
						Global_var_Task4 setSimpleTaskDestination getMarkerPos "Ziel2";
					};
					["TaskSucceeded",["Seeminen beseitigt"]] call bis_fnc_showNotification;
				};
				case 2:
				{
					Global_var_Task3 setTaskState "Succeeded";
					if (({taskState _x == "Succeeded"} count [Global_var_Task1,Global_var_Task2]) == 2) then
					{
						"Ziel1" setMarkerColorLocal "ColorGreen";
						Global_var_Task4 setTaskState "Assigned";
						Global_var_Task4 setSimpleTaskDestination getMarkerPos "Ziel2";
					};
					["TaskSucceeded",["Mini-Uboote zerstört"]] call bis_fnc_showNotification;
				};
				case 3:
				{
					Global_var_Task4 setTaskState "Succeeded";
					if ((taskState Global_var_Task5 != "Succeeded") && {taskState Global_var_Task5 != "Failed"}) then
					{
						Global_var_Task5 setTaskState "Assigned";
						Global_var_Task5 setSimpleTaskDestination getMarkerPos "Ziel2";
					};
					if (taskState Global_var_Task5 == "Succeeded") then
					{
						"Ziel2" setMarkerColorLocal "ColorGreen";
					};
					["TaskSucceeded",["Antennen zerstört"]] call bis_fnc_showNotification;
				};
				case 4:
				{
					Global_var_Task5 setTaskState "Succeeded";
					if ((taskState Global_var_Task6 != "Succeeded") && {taskState Global_var_Task6 != "Failed"}) then
					{
						Global_var_Task6 setTaskState "Assigned";
						Global_var_Task6 setSimpleTaskDestination getMarkerPos "notebook";
						"notebook" setMarkerAlphaLocal 0.5;
					};
					if (taskState Global_var_Task4 == "Succeeded") then
					{
						"Ziel2" setMarkerColorLocal "ColorGreen";
					};
					["TaskSucceeded",["Informationen gefunden"]] call bis_fnc_showNotification;
				};
				case 5:
				{
					if (laptop03 getVariable [ "Public_var_Downloaded", false]) then
					{
						"notebook" setMarkerColorLocal "ColorGreen";
						Global_var_Task6 setTaskState "Succeeded";
					};
					["TaskSucceeded",["General eliminiert"]] call bis_fnc_showNotification;
				};
				case 6:
				{
					if ((isNull Vladimir_Kruscheck) || {!alive Vladimir_Kruscheck}) then
					{
						"notebook" setMarkerColorLocal "ColorGreen";
						Global_var_Task6 setTaskState "Succeeded";
					};
					"b1" setMarkerAlphaLocal 0.5;
					"b2" setMarkerAlphaLocal 0.5;
					"b3" setMarkerAlphaLocal 0.5;
					if ((taskState Global_var_Task7 != "Succeeded") && {taskState Global_var_Task7 != "Failed"}) then
					{
						Global_var_Task7 setTaskState "Assigned";
						Global_var_Task7 setSimpleTaskDestination getMarkerPos "b1";
					};
					["TaskSucceeded",["Informationen gefunden"]] call bis_fnc_showNotification;
				};
				case 7:
				{
					"b1" setMarkerColorLocal "ColorGreen";
					"b2" setMarkerColorLocal "ColorGreen";
					"b3" setMarkerColorLocal "ColorGreen";
					Global_var_Task7 setTaskState "Succeeded";
					["TaskSucceeded",["Bomben gesichert"]] call bis_fnc_showNotification;
				};
			};
			if (({taskState _x == "Succeeded"} count [Global_var_Task1, Global_var_Task2, Global_var_Task3, Global_var_Task4, Global_var_Task5, Global_var_Task6, Global_var_Task7]) == 7) then
			{
				0 spawn
				{
					sleep 60;
					[[["Mission Erfolgreich abgeschlossen!","<t align = 'center' size = '1.5'>%1</t><br/>"],  ["Gute Arbeit.","<t align = 'center' size = '1.5'>%1</t><br/>"]]] spawn BIS_fnc_typeText;
					["end5",true,15,true,false] spawn BIS_fnc_endMission;
				};
			};
		};
		0 spawn //USMC Ausrüster
		{
			Private ["_Local_var_AID"];
			while {true} do
			{
				waitUntil{sleep 10;(!isNull Player) && {alive Player}};
				waitUntil{sleep 3;(Player distance [28346,25780,0]) < 5};
				_Local_var_AID = Player addAction ["USMC Ausrüstung", "Ammo\Dialog.sqf", [0,5]];
				waitUntil{sleep 3;(Player distance [28346,25780,0]) > 5};
				Player removeAction _Local_var_AID;
			};
		};
		0 spawn //US Ausrüster
		{
			Private ["_Local_var_AID"];
			while {true} do
			{
				waitUntil{sleep 10;(!isNull Player) && {alive Player}};
				waitUntil{sleep 3;(Player distance [28320,25785,0]) < 5};
				_Local_var_AID = Player addAction ["US Ausrüstung", "Ammo\Dialog.sqf", [6,14]];
				waitUntil{sleep 3;(Player distance [28320,25785,0]) > 5};
				Player removeAction _Local_var_AID;
			};
		};
		private _Local_fnc_CheckServicePoint =
		{
			Params["_Local_var_Pos","_Local_var_Types"];
			private _Local_fnc_isCoPilot =
			{
				if(vehicle _this == _this) exitWith {false};
				if(driver vehicle _this == _this) exitWith {true};
				private _Local_var_Vehicle = vehicle _this;
				private _Local_var_Cfg = configFile >> "CfgVehicles" >> (typeOf _Local_var_Vehicle);
				private _Local_var_Turrets = _Local_var_Cfg >> "turrets";
				private _Local_var_Return = false;
				for "_i" from 0 to (count _Local_var_Turrets - 1) do
				{
					if(getNumber((_Local_var_Turrets select _i) >> "iscopilot") == 1) exitWith
					{
						_Local_var_Return = (_Local_var_Vehicle turretUnit [_i]) == _this;
					};
				};
				_Local_var_Return
			};
			while {true} do
			{
				waitUntil{sleep 5;(alive Player) && {(vehicle Player != Player) && {(({vehicle Player isKindOf _x} count _Local_var_Types) > 0) && {(Player call _Local_fnc_isCoPilot) && {(vehicle Player distance _Local_var_Pos) < 10}}}}};
				(vehicle Player) execVM "ServicePoint.sqf";
				waitUntil{sleep 5;(!alive Player) || {(vehicle Player == Player) || {(({vehicle Player isKindOf _x} count _Local_var_Types) == 0) || {!(Player call _Local_fnc_isCoPilot) || {(vehicle Player distance _Local_var_Pos) > 10}}}}};
			};
		};
		private _Local_fnc_ShowBoxMenu =
		{
			Params ["_Local_var_VehicleClasses","_Local_var_Selection"];
			Private ["_Local_var_AID"];
			while {true} do
			{
				waitUntil{sleep 10; (!isNull Player) && {alive Player}};
				waitUntil{sleep 3;(vehicle Player == Player) && {count (nearestObjects [Player, _Local_var_VehicleClasses, 10]) > 0}};
				_Local_var_AID = Player addAction ["Kisten Ausladen", "Ammo\Dialog.sqf", _Local_var_Selection];
				waitUntil{sleep 3;(vehicle Player != Player) || {count (nearestObjects [Player, _Local_var_VehicleClasses, 10]) == 0}};
				if (dialog) then
				{
					closeDialog 2;
				};
				Player removeAction _Local_var_AID;
			};
		};
		[["B_Truck_01_medical_F","rhsusf_m113d_usarmy_medical","GR_Bell412_1","GR_UH1H_4"], [15,16]] spawn _Local_fnc_ShowBoxMenu;//Medizinische Lkw-Kisten
		[["rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy","DAR_LHS_16T"], [17,23]] spawn _Local_fnc_ShowBoxMenu;//Sonstige Lkw-Kisten (mit ACE bis 25)
		[["rhsusf_M977A4_REPAIR_usarmy_d"], [26,27]] spawn _Local_fnc_ShowBoxMenu;//Sprengmittel,Reifen
		if ((str Player) in ["s14","s15","s22","s23","s24"]) then
		{
			0 spawn
			{
				waitUntil{sleep 1;!isNil "Global_var_AmmoData"};
				Private ["_Local_var_AID"];
				Global_var_AllBoxClasses = [];
				{
					if !(_x select 2) then
					{
						Global_var_AllBoxClasses pushBack (_x select 1);
					};
				} forEach Global_var_AmmoData;
				while {true} do
				{
					waitUntil{sleep 10; (!isNull Player) && {alive Player}};
					waitUntil{sleep 3;(vehicle Player == Player) && {(!isNull cursorObject) && {(typeOf cursorObject) in Global_var_AllBoxClasses}}};
					_Local_var_AID = Player addAction ["Munitionskiste zerstören", {if ((typeOf cursorObject) in Global_var_AllBoxClasses) then {cursorObject setDammage 1;}}];
					waitUntil{sleep 3;(vehicle Player != Player) || {(isNull cursorObject) || {!((typeOf cursorObject) in Global_var_AllBoxClasses)}}};
					Player removeAction _Local_var_AID;
				};
			};
		};
		if ((str Player) in ["s19","s20","s21"]) then
		{
			0 spawn
			{
				waitUntil{sleep 1;!isNil "Mine_4"};
				{
					_x spawn
					{
						Private ["_Local_var_AID"];
						while {(!isNull _this) && {(alive _this) && {!(_this getVariable ["BombPlaced", false])}}} do
						{
							waitUntil{sleep 10; (!isNull Player) && {alive Player}};
							waitUntil{sleep 3;(Player distance _this) < 5};
							if !(_this getVariable ["BombPlaced", false]) then
							{
								_Local_var_AID = Player addAction ["Bombe anbringen",
								{
									(_this select 3) Params ["_Local_var_Text","_Local_var_Bomb"];
									hint _Local_var_Text;
									_Local_var_Bomb setVariable ["BombPlaced", true, true];
									sleep 30;
									_Local_var_Bomb setDamage 1;
								}, ["Die Bombe geht gleich hoch. Verschwinden Sie da!", _this]];
								waitUntil{sleep 3;((Player distance _this) > 5) || {_this getVariable ["BombPlaced", false]}};
								Player removeAction _Local_var_AID;
							}
							else
							{
								sleep 10;
							};
						};
					};
				} foreach [Mine_1,Mine_2,Mine_3,Mine_4];
				{
					_x spawn
					{
						Private ["_Local_var_AID"];
						while {(!isNull _this) && {(alive _this) && {!(_this getVariable ["BombPlaced", false])}}} do
						{
							waitUntil{sleep 10; (!isNull Player) && {alive Player}};
							waitUntil{sleep 3;(Player distance _this) < 5};
							if !(_this getVariable ["BombPlaced", false]) then
							{
								_Local_var_AID = Player addAction ["Bombe anbringen", compile format ["hint '%1';%2 setVariable ['BombPlaced', true, true];sleep 30;%2 setDamage 1;'%3' createVehicle (getPos %2);", "Die Bombe geht gleich hoch. Verschwinden Sie da!", _this, "Bo_Mk82_MI08"]];
								waitUntil{sleep 3;((Player distance _this) > 5) || {_this getVariable ["BombPlaced", false]}};
								Player removeAction _Local_var_AID;
							}
							else
							{
								sleep 10;
							};
						};
					};
				} forEach [SVD1,SVD2];
			};
		};
		[[28329,25686,0], ["LandVehicle", "Air"]] spawn _Local_fnc_CheckServicePoint;
		execVM "ACEStuff.sqf";
		(bomb1) execVM "secureBomb.sqf";
		(Bombe2) execVM "secureBomb.sqf";
		(Bombe3) execVM "secureBomb.sqf";
		[notebook1_dummy1, true, -1] execVM "downloadData.sqf";
		[notebook1_2_Dummy, true, -1] execVM "downloadData.sqf";
		[laptop01, false, 0] execVM "downloadData.sqf";
		[laptop02, false, 4] execVM "downloadData.sqf";
		[laptop03, false, -1] execVM "downloadData.sqf";
		removeAllWeapons Player;
		removeAllItems Player;
		removeAllAssignedItems Player;
		ausruester_ger enableSimulation false;
		ausruester_us enableSimulation false;
		STHud_NoSquadBarMode = true;
		uiSleep (15 + random 8);
		private _Local_var_BackPack = nearestObject [Player, "GroundWeaponHolder"];
		if (!isNull _Local_var_BackPack) then
		{
			deleteVehicle _Local_var_BackPack;
		};
		if (didJIP) then
		{
			Public_fnc_GetJIPInfos = Player;
			publicVariableServer "Public_fnc_GetJIPInfos";
		};
		private _Local_var_DebugLevel = ["DebugLevel", 0] call BIS_fnc_getParamValue;
		if (_Local_var_DebugLevel > 1) then
		{
			if (_Local_var_DebugLevel == 3) then
			{
				0 spawn
				{
					while {true} do
					{
						Player setPos ([26259,22046,0] getPos [300 + (random 1100), random 360]);
						if (((count allPlayers) > 2) && {(random 100) < (20 / ((count allPlayers) - 2))}) then
						{
							if ((east countside allUnits) > 10) then
							{
								{
									if (side _x == east) exitWith
									{
										_x setDamage 1;
									};
								} foreach allUnits;
							};
						};
						sleep 10;
					};
				};
			}
			else
			{
				onMapSingleClick "Player setPos _pos;";
			};
			private _Local_var_EnemyMarkers = ["EnemyMarkers", 0] call BIS_fnc_getParamValue;
			if (_Local_var_EnemyMarkers == 1) then
			{
				0 spawn
				{
					_Marker = createMarkerLocal ["Mortars", [25441.3,20347.2,0]];
					_Marker setMarkerColorLocal "ColorWhite";
					_Marker setMarkerShapeLocal "ICON";
					_Marker setMarkerBrushLocal "Solid";
					_Marker setMarkerSizeLocal [2, 2];
					_Marker setMarkerTypeLocal "mil_dot";
					_Marker setMarkerTextLocal "Mortars";
					{
						_Marker = createMarkerLocal [format["Mortar%1", _forEachIndex], _x];
						_Marker setMarkerColorLocal "ColorBlue";
						_Marker setMarkerShapeLocal "ICON";
						_Marker setMarkerBrushLocal "Solid";
						_Marker setMarkerSizeLocal [2, 2];
						_Marker setMarkerTypeLocal "mil_dot";
						_Marker setMarkerTextLocal format["Mortar%1", _forEachIndex];
					} forEach [[27771,21603,0],[27240,21577,0],[24652,22367,0],[27080,23065,0],[27602,20999,0]];
					while {true} do
					{
						{
							if (_forEachIndex > 17) then
							{
								deleteMarkerLocal _x;
							};
						} forEach allMapMarkers;
						{
							if ((side _x == east) && {_x != Player}) then
							{
								_Marker = createMarkerLocal [format["Enemy%1", _forEachIndex], getPos _x];
								if (_x in Global_var_CachedUnits) then
								{
									_Marker setMarkerColorLocal "ColorGrey";
								}
								else
								{
									_Marker setMarkerColorLocal "ColorRed";
								};
								_Marker setMarkerShapeLocal "ICON";
								_Marker setMarkerBrushLocal "Solid";
								_Marker setMarkerSizeLocal [2, 2];
								_Marker setMarkerTypeLocal "mil_dot";
								_Marker setMarkerTextLocal format["%1m", round (_x distance Player)];
							};
						} forEach allUnits;
						_Marker = createMarkerLocal ["Playerxy", getPos Player];
						_Marker setMarkerColorLocal "ColorGreen";
						_Marker setMarkerShapeLocal "ICON";
						_Marker setMarkerBrushLocal "Solid";
						_Marker setMarkerSizeLocal [2, 2];
						_Marker setMarkerTypeLocal "mil_dot";
						_Marker setMarkerTextLocal name Player;
						sleep 10;
					};
				};
			};
		};
		if (_Local_var_DebugLevel == 1) then
		{
			0 spawn
			{
				while {true} do
				{
					if ((Player distance ausruester_ger) > 500) then
					{
						Player setPos ((getPos ausruester_ger) findEmptyPosition [10, 50, typeOf Player]);
					};
					sleep 10;
				};
			};
		};
		disableUserInput false;
		endLoadingScreen;
		["The Outbreak", "Datum:" + str (date select 2) + "/" + str (date select 1) + "/" + str (date select 0)] spawn BIS_fnc_infoText;
		sleep 15;
		["Viel Spaß!", "Datum:" + str (date select 2) + "/" + str (date select 1) + "/" + str (date select 0)] spawn BIS_fnc_infoText;
	}
	else
	{
		Global_var_FPS = 0;
		[{Global_var_FPS = Global_var_FPS + 1;}, 0, 0] call CBA_fnc_addPerFrameHandler;
		[{diag_log format["--HC-- Einheiten: %1 DavonLokal: %2 Spieler: %3 Objekte: %4 FPS: %5 Schleifen: %6 Skripte: %7", count allUnits, {if (local _x) then {true} else {false}} count allUnits, count allPlayers, count vehicles, Global_var_FPS, Global_var_LoopCount,diag_activeScripts];Global_var_FPS = 0;}, 1, 0] call CBA_fnc_addPerFrameHandler;
	};
};