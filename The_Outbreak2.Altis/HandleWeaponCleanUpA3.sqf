if (hasInterface) then
{
	call compile format[
	"
		Player addEventHandler ['Put',
		{
			(_this select 1) spawn
			{
				if (((typeOf _this) in ['GroundWeaponHolder', 'WeaponHolderSimulated']) && {local _this}) then
				{
					sleep %1;
					if (!isNull _this) then
					{
						deleteVehicle _this;
					};
				};
			};
		}];
	", _this];
};