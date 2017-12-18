removeAllWeapons Player;
removeAllItems Player;
removeAllAssignedItems Player;
removeUniform Player;
removeVest Player;
removeBackpack Player;
removeHeadgear Player;
removeGoggles Player;

Player forceAddUniform "rhs_uniform_FROG01_d";
for "_i" from 1 to 3 do {Player addItemToUniform "ACE_morphine";};
Player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 3 do {Player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 3 do {Player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {Player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 3 do {Player addItemToUniform "ACE_quikclot";};
Player addVest "rhsusf_spc_teamleader";
Player addItemToVest "Laserbatteries";
for "_i" from 1 to 8 do {Player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {Player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
Player addBackpack "rhsusf_assault_eagleaiii_coy";
Player addItemToBackpack "ACE_DAGR";
Player addItemToBackpack "ACE_CableTie";
Player addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 5 do {Player addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 5 do {Player addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 10 do {Player addItemToBackpack "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 5 do {Player addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 3 do {Player addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {Player addItemToBackpack "rhs_mag_m67";};
Player addItemToBackpack "SmokeShellBlue";
Player addItemToBackpack "rhs_mag_m18_red";
Player addHeadgear "rhsusf_mich_helmet_marpatd_alt_headset";
Player addGoggles "G_Tactical_Clear";

Player addWeapon "rhs_weap_m16a4_carryhandle_M203";
Player addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
Player addWeapon "rhsusf_weap_m9";
Player addWeapon "Laserdesignator";

Player linkItem "ItemMap";
Player linkItem "ItemCompass";
Player linkItem "tf_microdagr";
Player linkItem "tf_anprc152";
Player linkItem "ItemGPS";

Player setFace "WhiteHead_13";
Player setSpeaker "Male11ENG";