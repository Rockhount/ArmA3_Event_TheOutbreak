removeAllWeapons Player;
removeAllItems Player;
removeAllAssignedItems Player;
removeUniform Player;
removeVest Player;
removeBackpack Player;
removeHeadgear Player;
removeGoggles Player;

Player forceAddUniform "U_B_Wetsuit";
for "_i" from 1 to 5 do {Player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {Player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 5 do {Player addItemToUniform "ACE_morphine";};
Player addItemToUniform "ACE_EarPlugs";
Player addItemToUniform "ACE_personalAidKit";
for "_i" from 1 to 3 do {Player addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 3 do {Player addItemToUniform "9Rnd_45ACP_Mag";};
Player addVest "V_RebreatherB";
Player addBackpack "B_Carryall_oli";
for "_i" from 1 to 4 do {Player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {Player addItemToBackpack "ACE_elasticBandage";};
Player addItemToBackpack "ACE_DefusalKit";
for "_i" from 1 to 5 do {Player addItemToBackpack "ACE_epinephrine";};
Player addItemToBackpack "rhs_mag_an_m8hc";
Player addItemToBackpack "ACE_Flashlight_MX991";
Player addItemToBackpack "ACE_VMH3";
for "_i" from 1 to 5 do {Player addItemToBackpack "ACE_morphine";};
Player addItemToBackpack "ACE_EarPlugs";
Player addItemToBackpack "ACE_DAGR";
for "_i" from 1 to 4 do {Player addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {Player addItemToBackpack "DemoCharge_Remote_Mag";};
for "_i" from 1 to 3 do {Player addItemToBackpack "9Rnd_45ACP_Mag";};
Player addItemToBackpack "ACE_microDAGR";
Player addGoggles "G_B_Diving";

Player addWeapon "rhs_weap_mk18_bk";
Player addPrimaryWeaponItem "rhsusf_acc_nt4_black";
Player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
Player addPrimaryWeaponItem "ACE_optic_Hamr_2D";
Player addPrimaryWeaponItem "rhsusf_acc_grip1";
Player addWeapon "hgun_ACPC2_F";
Player addHandgunItem "muzzle_snds_acp";
Player addWeapon "lerca_1200_black";

Player addItemToBackpack "arifle_SDAR_F";
for "_i" from 1 to 3 do {Player addItemToBackpack "20Rnd_556x45_UW_mag";};

Player linkItem "ItemMap";
Player linkItem "ItemCompass";
Player linkItem "tf_microdagr";
Player linkItem "tf_anprc152";
Player linkItem "ItemGPS";

Player setFace "WhiteHead_17";
Player setSpeaker "Male01ENG";