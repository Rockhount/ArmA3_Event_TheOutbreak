removeAllWeapons Player;
removeAllItems Player;
removeAllAssignedItems Player;
removeUniform Player;
removeVest Player;
removeBackpack Player;
removeHeadgear Player;
removeGoggles Player;

Player forceAddUniform "rhs_uniform_cu_ocp_101st";
Player addItemToUniform "ACE_epinephrine";
Player addItemToUniform "ACE_morphine";
Player addItemTouniform "ACE_EarPlugs";
for "_i" from 1 to 3 do {Player addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
Player addVest "rhsusf_iotv_ocp_Rifleman";
for "_i" from 1 to 2 do {Player addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 3 do {Player addItemToVest "rhsusf_mag_7x45acp_MHP";};
Player addItemToVest "ACE_fieldDressing";
Player addBackpack "B_Carryall_mcamo";
for "_i" from 1 to 2 do {Player addItemToBackpack "rhs_mag_smaw_HEAA";};
Player addHeadgear "rhsusf_ach_helmet_headset_ess_ocp";
Player addGoggles "rhs_googles_clear";

Player addWeapon "rhs_weap_m4a1_d_mstock";
Player addPrimaryWeaponItem "rhsusf_acc_ACOG_d";
Player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
Player addWeapon "rhs_weap_smaw_green";
Player addSecondaryWeaponItem "rhs_weap_optic_smaw";
Player addWeapon "rhsusf_weap_m1911a1";
Player addWeapon "Binocular";

Player linkItem "ItemMap";
Player linkItem "ItemCompass";
Player linkItem "ItemWatch";
Player linkItem "tf_anprc152";
Player linkItem "ItemGPS";

Player setFace "AfricanHead_02";
Player setSpeaker "Male06ENG";