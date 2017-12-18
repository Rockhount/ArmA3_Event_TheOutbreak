removeAllWeapons Player;
removeAllItems Player;
removeAllAssignedItems Player;
removeUniform Player;
removeVest Player;
removeBackpack Player;
removeHeadgear Player;
removeGoggles Player;

Player forceAddUniform "rhs_uniform_FROG01_d";
Player addItemToUniform "ACE_epinephrine";
Player addItemToUniform "ACE_morphine";
Player addItemToUniform "ACE_EarPlugs";
Player addVest "rhsusf_spc_patchless";
for "_i" from 1 to 2 do {Player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {Player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 2 do {Player addItemToVest "ACE_elasticBandage";};
Player addItemToVest "ACE_fieldDressing";
Player addBackpack "B_Carryall_cbr";
for "_i" from 1 to 2 do {Player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 2 do {Player addItemToBackpack "rhs_mag_smaw_HEAA";};
for "_i" from 1 to 4 do {Player addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
Player addHeadgear "rhsusf_mich_helmet_marpatd";
Player addGoggles "G_Combat";

Player addWeapon "rhs_weap_m16a4_carryhandle";
Player addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
Player addWeapon "rhs_weap_smaw_green";
Player addSecondaryWeaponItem "rhs_weap_optic_smaw";
Player addWeapon "rhsusf_weap_m9";
Player addWeapon "Binocular";

Player linkItem "ItemMap";
Player linkItem "ItemCompass";
Player linkItem "ItemWatch";
Player linkItem "tf_anprc152";
Player linkItem "ItemGPS";

Player setFace "AfricanHead_02";
Player setSpeaker "Male06ENG";