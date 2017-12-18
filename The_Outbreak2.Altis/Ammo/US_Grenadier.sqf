removeAllWeapons Player;
removeAllItems Player;
removeAllAssignedItems Player;
removeUniform Player;
removeVest Player;
removeBackpack Player;
removeHeadgear Player;
removeGoggles Player;

Player forceAddUniform "rhs_uniform_cu_ocp_101st";
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {Player addItemToUniform "SmokeShell";};
Player addItemToUniform "Laserbatteries";
Player addVest "rhsusf_iotv_ocp_Grenadier";
for "_i" from 1 to 2 do {Player addItemToVest "SmokeShell";};
Player addItemToVest "ACE_EarPlugs";
for "_i" from 1 to 3 do {Player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 7 do {Player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {Player addItemToVest "rhsusf_mag_7x45acp_MHP";};
Player addBackpack "rhsusf_assault_eagleaiii_ocp";
Player addItemToBackpack "ACE_microDAGR";
for "_i" from 1 to 5 do {Player addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 5 do {Player addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 14 do {Player addItemToBackpack "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 5 do {Player addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 2 do {Player addItemToBackpack "rhsusf_mag_7x45acp_MHP";};
Player addHeadgear "rhsusf_ach_helmet_headset_ess_ocp";
Player addGoggles "rhs_googles_clear";

Player addWeapon "rhs_weap_m4a1_m203s_d";
Player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
Player addPrimaryWeaponItem "rhsusf_acc_ACOG_d";
Player addWeapon "rhs_weap_M136";
Player addWeapon "rhsusf_weap_m1911a1";
Player addWeapon "Laserdesignator";

Player linkItem "ItemMap";
Player linkItem "ItemCompass";
Player linkItem "ItemWatch";
Player linkItem "tf_anprc152";
Player linkItem "ItemGPS";

Player setFace "GreekHead_A3_09";
Player setSpeaker "Male01ENG";