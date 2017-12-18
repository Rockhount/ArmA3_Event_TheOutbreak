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
for "_i" from 1 to 2 do {Player addItemToUniform "rhsusf_mag_7x45acp_MHP";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_morphine";};
Player addItemToUniform "ACE_Clacker";
Player addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
Player addItemToUniform "ACE_CableTie";
Player addVest "rhsusf_iotv_ocp_Repair";
Player addItemToVest "ACE_VMH3";
Player addItemToVest "rhs_mag_an_m8hc";
Player addItemToVest "ACE_EarPlugs";
Player addItemToVest "ACE_MapTools";
Player addItemToVest "ACE_DefusalKit";
Player addItemToVest "ACE_wirecutter";
for "_i" from 1 to 4 do {Player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
Player addBackpack "B_Carryall_mcamo";
for "_i" from 1 to 5 do {Player addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
Player addItemToBackpack "ToolKit";
Player addItemToBackpack "SatchelCharge_Remote_Mag";
Player addHeadgear "rhsusf_ach_helmet_headset_ess_ocp";
Player addGoggles "rhs_googles_clear";

Player addWeapon "rhs_weap_m4a1_d";
Player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
Player addPrimaryWeaponItem "rhsusf_acc_ACOG_d";
Player addWeapon "rhs_weap_M136";
Player addWeapon "hsusf_weap_m1911a1";
Player addWeapon "Binocular";

Player linkItem "ItemMap";
Player linkItem "ItemCompass";
Player linkItem "ItemWatch";
Player linkItem "tf_anprc152";
Player linkItem "ItemGPS";


Player setFace "WhiteHead_20";
Player setSpeaker "Male02ENG";