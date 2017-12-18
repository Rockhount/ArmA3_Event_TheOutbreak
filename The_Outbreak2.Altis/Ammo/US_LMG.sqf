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
Player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 6 do {Player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_epinephrine";};
Player addVest "rhsusf_iotv_ocp_SAW";
for "_i" from 1 to 2 do {Player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {Player addItemToVest "rhs_200rnd_556x45_T_SAW";};
for "_i" from 1 to 2 do {Player addItemToVest "rhsusf_mag_7x45acp_MHP";};
Player addBackpack "rhsusf_assault_eagleaiii_ocp";
for "_i" from 1 to 2 do {Player addItemToBackpack "rhs_200rnd_556x45_T_SAW";};
Player addItemToBackpack "ACE_SpareBarrel";
Player addHeadgear "rhsusf_ach_helmet_headset_ocp";
Player addGoggles "rhs_googles_clear";

Player addWeapon "rhs_weap_m249_pip_L_para";
Player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
Player addPrimaryWeaponItem "ACE_optic_MRCO_2D";
Player addWeapon "rhsusf_weap_m1911a1";
Player addWeapon "Binocular";

Player linkItem "ItemMap";
Player linkItem "ItemCompass";
Player linkItem "ItemWatch";
Player linkItem "tf_anprc152";
Player linkItem "ItemGPS";

Player setFace "GreekHead_A3_09";
Player setSpeaker "Male01ENG";