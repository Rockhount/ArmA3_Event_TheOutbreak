removeAllWeapons Player;
removeAllItems Player;
removeAllAssignedItems Player;
removeUniform Player;
removeVest Player;
removeBackpack Player;
removeHeadgear Player;
removeGoggles Player;

Player forceAddUniform "rhs_uniform_FROG01_d";
Player addItemToUniform "ACE_microDAGR";
Player addItemToUniform "SmokeShell";
Player addVest "rhsusf_spc_corpsman";
for "_i" from 1 to 2 do {Player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {Player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 7 do {Player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 5 do {Player addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 5 do {Player addItemToVest "ACE_fieldDressing";};
Player addBackpack "B_Carryall_cbr";
for "_i" from 1 to 15 do {Player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 4 do {Player addItemToBackpack "ACE_plasmaIV_500";};
for "_i" from 1 to 5 do {Player addItemToBackpack "ACE_personalAidKit";};
for "_i" from 1 to 5 do {Player addItemToBackpack "ACE_surgicalKit";};
Player addItemToBackpack "ACE_EarPlugs";
for "_i" from 1 to 20 do {Player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 8 do {Player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 4 do {Player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 8 do {Player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 4 do {Player addItemToBackpack "ACE_bloodIV_500";};
for "_i" from 1 to 10 do {Player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 15 do {Player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {Player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 5 do {Player addItemToBackpack "ACE_tourniquet";};
Player addHeadgear "rhsusf_mich_helmet_marpatd";
Player addGoggles "rhs_googles_clear";

Player addWeapon "rhs_weap_m16a4_carryhandle";
Player addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
Player addWeapon "rhsusf_weap_m9";
Player addWeapon "Binocular";

Player linkItem "ItemMap";
Player linkItem "ItemCompass";
Player linkItem "ItemWatch";
Player linkItem "tf_anprc152";
Player linkItem "ItemGPS";

Player setFace "WhiteHead_11";
Player setSpeaker "Male07ENG";