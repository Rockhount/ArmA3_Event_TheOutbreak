removeAllWeapons Player;
removeAllItems Player;
removeAllAssignedItems Player;
removeUniform Player;
removeVest Player;
removeBackpack Player;
removeHeadgear Player;
removeGoggles Player;

Player forceAddUniform "rhs_uniform_FROG01_d";
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_fieldDressing";};
Player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 6 do {Player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_epinephrine";};
Player addVest "rhsusf_spc_mg";
for "_i" from 1 to 2 do {Player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {Player addItemToVest "rhs_200rnd_556x45_T_SAW";};
for "_i" from 1 to 2 do {Player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
Player addBackpack "rhsusf_assault_eagleaiii_coy";
for "_i" from 1 to 2 do {Player addItemToBackpack "rhs_200rnd_556x45_T_SAW";};
Player addItemToBackpack "ACE_SpareBarrel";
Player addHeadgear "rhsusf_mich_helmet_marpatd";
Player addGoggles "G_Combat";

Player addWeapon "rhs_weap_m249_pip_L";
Player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
Player addWeapon "rhsusf_weap_m9";
Player addWeapon "Binocular";

Player linkItem "ItemMap";
Player linkItem "ItemCompass";
Player linkItem "ItemWatch";
Player linkItem "tf_anprc152";
Player linkItem "ItemGPS";

Player setFace "GreekHead_A3_09";
Player setSpeaker "Male01ENG";