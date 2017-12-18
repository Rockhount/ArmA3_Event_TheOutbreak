removeAllWeapons Player;
removeAllItems Player;
removeAllAssignedItems Player;
removeUniform Player;
removeVest Player;
removeBackpack Player;
removeHeadgear Player;
removeGoggles Player;

Player forceAddUniform "rhs_uniform_FROG01_d";
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_morphine";};
Player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {Player addItemToUniform "ACE_epinephrine";};
Player addVest "rhsusf_spc_marksman";
for "_i" from 1 to 4 do {Player addItemToVest "20Rnd_762x51_Mag";};
for "_i" from 1 to 2 do {Player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
Player addItemToVest "Laserbatteries";
Player addItemToVest "rhsusf_acc_LEUPOLDMK4";
Player addBackpack "rhsusf_assault_eagleaiii_coy";
Player addItemToBackpack "ACE_DAGR";
Player addItemToBackpack "rhsusf_mich_helmet_marpatd_alt_headset";
Player addItemToBackpack "ACE_CableTie";
Player addItemToBackpack "ACE_MapTools";
Player addItemToBackpack "ACE_RangeCard";
for "_i" from 1 to 4 do {Player addItemToBackpack "20Rnd_762x51_Mag";};
for "_i" from 1 to 3 do {Player addItemToBackpack "SmokeShell";};
Player addItemToBackpack "SmokeShellBlue";
Player addHeadgear "rhs_booniehat2_marpatd";
Player addGoggles "G_Tactical_Clear";

Player addWeapon "srifle_DMR_06_olive_F";
Player addPrimaryWeaponItem "ACE_optic_Arco_2D";
Player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
Player addWeapon "rhsusf_weap_m9";
Player addWeapon "Laserdesignator";

Player linkItem "ItemMap";
Player linkItem "ItemCompass";
Player linkItem "tf_microdagr";
Player linkItem "tf_anprc152";
Player linkItem "ItemGPS";

Player setFace "WhiteHead_13";
Player setSpeaker "Male11ENG";