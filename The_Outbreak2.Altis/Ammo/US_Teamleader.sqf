removeAllWeapons Player;
removeAllItems Player;
removeAllAssignedItems Player;
removeUniform Player;
removeVest Player;
removeBackpack Player;
removeHeadgear Player;
removeGoggles Player;

Player forceAddUniform "rhs_uniform_cu_ocp_101st";
for "_i" from 1 to 3 do {Player addItemToUniform "ACE_morphine";};
Player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 3 do {Player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 3 do {Player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {Player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 3 do {Player addItemToUniform "ACE_quikclot";};
Player addVest "rhsusf_iotv_ocp_Squadleader";
for "_i" from 1 to 8 do {Player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {Player addItemToVest "rhsusf_mag_7x45acp_MHP";};
Player addItemToVest "Laserbatteries";
Player addBackpack "rhsusf_assault_eagleaiii_ocp";
Player addItemToBackpack "ACE_DAGR";
Player addItemToBackpack "ACE_CableTie";
Player addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 5 do {Player addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 3 do {Player addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {Player addItemToBackpack "rhs_mag_m67";};
Player addItemToBackpack "SmokeShellBlue";
Player addItemToBackpack "rhs_mag_m18_red";
Player addHeadgear "rhsusf_ach_helmet_headset_ess_ocp";
Player addGoggles "G_Tactical_Clear";

Player addWeapon "rhs_weap_m4a1_d";
Player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
Player addPrimaryWeaponItem "rhsusf_acc_ACOG_d";
Player addPrimaryWeaponItem "rhsusf_acc_grip3_tan";
Player addWeapon "rhsusf_weap_m1911a1";
Player addWeapon "Laserdesignator";

Player linkItem "ItemMap";
Player linkItem "ItemCompass";
Player linkItem "tf_microdagr";
Player linkItem "tf_anprc152";
Player linkItem "ItemGPS";

Player setFace "WhiteHead_13";
Player setSpeaker "Male11ENG";