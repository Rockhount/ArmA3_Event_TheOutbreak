removeAllWeapons Player;
removeAllItems Player;
removeAllAssignedItems Player;
removeUniform Player;
removeVest Player;
removeBackpack Player;
removeHeadgear Player;
removeGoggles Player;

Player forceAddUniform "rhs_uniform_cu_ocp_101st";
for "_i" from 1 to 3 do {Player addItemToUniform "rhsusf_mag_40Rnd_46x30_FMJ";};
Player addVest "rhsusf_spcs_ocp";
for "_i" from 1 to 3 do {Player addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 3 do {Player addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 3 do {Player addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 3 do {Player addItemToVest "ACE_morphine";};
Player addItemToVest "ACE_packingBandage";
Player addItemToVest "ACE_EarPlugs";
Player addItemToVest "ACE_DAGR";
Player addBackpack "rhsusf_assault_eagleaiii_ocp";
for "_i" from 1 to 5 do {Player addItemToBackpack "rhsusf_mag_7x45acp_MHP";};
for "_i" from 1 to 2 do {Player addItemToBackpack "SmokeShell";};
Player addHeadgear "H_PilotHelmetHeli_B";

Player addWeapon "rhsusf_weap_MP7A1_desert";
Player addPrimaryWeaponItem "rhsusf_acc_eotech_552_d";
Player addWeapon "rhsusf_weap_m1911a1";
Player addWeapon "Binocular";

Player linkItem "ItemMap";
Player linkItem "ItemCompass";
Player linkItem "ItemWatch";
Player linkItem "tf_anprc152";
Player linkItem "ItemGPS";

Player setFace "GreekHead_A3_06";
Player setSpeaker "Male11ENG";