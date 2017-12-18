removeAllWeapons Player;
removeAllItems Player;
removeAllAssignedItems Player;
removeUniform Player;
removeVest Player;
removeBackpack Player;
removeHeadgear Player;
removeGoggles Player;

Player forceAddUniform "rhs_uniform_cu_ocp_101st";
for "_i" from 1 to 3 do {Player addItemToUniform "rhsusf_mag_7x45acp_MHP";};
for "_i" from 1 to 3 do {Player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 3 do {Player addItemToUniform "ACE_morphine";};
Player addVest "rhsusf_iotv_ocp_Rifleman";
for "_i" from 1 to 3 do {Player addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 3 do {Player addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 3 do {Player addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 3 do {Player addItemToVest "ACE_morphine";};
for "_i" from 1 to 3 do {Player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
Player addItemToVest "ACE_packingBandage";
Player addItemToVest "ACE_EarPlugs";
Player addItemToVest "ACE_DAGR";
for "_i" from 1 to 2 do {Player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 4 do {Player addItemToVest "SmokeShell";};
Player addBackpack "rhsusf_assault_eagleaiii_ocp";
Player addItemToBackpack "ToolKit";
for "_i" from 1 to 2 do {Player addItemToBackpack "SmokeShell";};
for "_i" from 1 to 8 do {Player addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
Player addHeadgear "rhsusf_ach_helmet_headset_ess_ocp";
Player addGoggles "rhs_googles_clear";

Player addWeapon "rhs_weap_m4a1_d_mstock";
Player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
Player addPrimaryWeaponItem "rhsusf_acc_ACOG_d";
Player addWeapon "rhsusf_weap_m1911a1";
Player addWeapon "Binocular";

Player linkItem "ItemMap";
Player linkItem "ItemCompass";
Player linkItem "ItemWatch";
Player linkItem "tf_anprc152";
Player linkItem "ItemGPS";

Player setFace "GreekHead_A3_06";
Player setSpeaker "Male11ENG";