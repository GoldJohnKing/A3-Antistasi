//////////////////////////
//   Side Information   //
//////////////////////////

["name", "BAF"] call _fnc_saveToTemplate; 						
["spawnMarkerName", "BAF Support Corridor"] call _fnc_saveToTemplate; 			

["flag", "Flag_UK_F"] call _fnc_saveToTemplate; 						
["flagTexture", "\A3\Data_F\Flags\flag_uk_CO.paa"] call _fnc_saveToTemplate; 				
["flagMarkerType", "flag_UK"] call _fnc_saveToTemplate; 			

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldier", "CUP_B_BAF_Soldier_Rifleman_MTP"] call _fnc_saveToTemplate;
["baseSoldierMilitia", "CUP_B_CDF_Soldier_MNT"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; 
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; 

["vehiclesBasic", ["B_Quadbike_01_F"]] call _fnc_saveToTemplate; 			
["vehiclesLightUnarmed", ["B_A_MRAP_03_wdl_F","B_A_LSV_01_light_wdl_F", "B_A_LSV_01_unarmed_wdl_F","CUP_B_LR_Transport_GB_W"]] call _fnc_saveToTemplate; 		
["vehiclesLightArmed",["B_A_LSV_01_AT_wdl_F", "B_A_LSV_01_armed_wdl_F", "B_A_MRAP_03_gmg_wdl_F", "B_A_MRAP_03_hmg_wdl_F","CUP_B_BAF_Coyote_GMG_W", "CUP_B_BAF_Coyote_L2A1_W", "CUP_B_Jackal2_GMG_GB_W", "CUP_B_Jackal2_L2A1_GB_W","CUP_B_LR_Special_GMG_GB_W", "CUP_B_LR_Special_M2_GB_W", "CUP_B_LR_MG_GB_W","CUP_B_Mastiff_GMG_GB_W", "CUP_B_Mastiff_HMG_GB_W", "CUP_B_Mastiff_LMG_GB_W","CUP_B_Ridgback_GMG_GB_W", "CUP_B_Ridgback_HMG_GB_W", "CUP_B_Ridgback_LMG_GB_W", "CUP_B_Wolfhound_GMG_GB_W", "CUP_B_Wolfhound_HMG_GB_W", "CUP_B_Wolfhound_LMG_GB_W"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["B_A_Truck_01_covered_wdl_F", "B_A_Truck_01_transport_wdl_F", "CUP_B_MTVR_BAF_WOOD"]] call _fnc_saveToTemplate; 			
["vehiclesCargoTrucks", ["B_A_Truck_01_cargo_wdl_F", "B_A_Truck_01_flatbed_wdl_F"]] call _fnc_saveToTemplate; 		
["vehiclesAmmoTrucks", ["CUP_B_MTVR_Ammo_BAF_WOOD","B_A_Truck_01_ammo_wdl_F"]] call _fnc_saveToTemplate; 		
["vehiclesRepairTrucks", ["CUP_B_MTVR_Repair_BAF_WOOD","B_A_Truck_01_Repair_wdl_F"]] call _fnc_saveToTemplate; 		
["vehiclesFuelTrucks", ["CUP_B_MTVR_Refuel_BAF_WOOD","B_A_Truck_01_fuel_wdl_F"]] call _fnc_saveToTemplate;		
["vehiclesMedical", ["CUP_B_LR_Ambulance_GB_W", "CUP_B_FV432_GB_Ambulance", "B_A_Truck_01_medical_wdl_F"]] call _fnc_saveToTemplate;			
["vehiclesAPCs", ["B_A_APC_tracked_03_cannon_v2_wdl_F","CUP_B_FV432_Bulldog_GB_W_RWS", "CUP_B_FV432_Bulldog_GB_W", "CUP_B_FV432_GB_GPMG", "CUP_B_FV510_GB_W_SLAT", "CUP_B_FV510_GB_W", "CUP_B_MCV80_GB_W_SLAT", "CUP_B_MCV80_GB_W"]] call _fnc_saveToTemplate; 				
["vehiclesTanks", ["CUP_B_Challenger2_Woodland_BAF", "CUP_B_Challenger2_2CD_BAF", "CUP_B_Challenger2_2CW_BAF"]] call _fnc_saveToTemplate; 			
["vehiclesAA", ["B_W_APC_Tracked_01_AA_F"]] call _fnc_saveToTemplate; 				
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;			
["vehiclesIFVs", []] call _fnc_saveToTemplate;				

["vehiclesSam", ["B_A_Radar_System_01_wdl_F","B_A_SAM_System_03_wdl_F", "B_AAA_System_01_F"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM, CIWS

["vehiclesTransportBoats", ["CUP_B_MK10_GB"]] call _fnc_saveToTemplate; 	
["vehiclesGunBoats", ["CUP_B_RHIB2Turret_USMC", "CUP_B_RHIB_USMC"]] call _fnc_saveToTemplate; 			
["vehiclesAmphibious", ["CUP_B_LAV25M240_green"]] call _fnc_saveToTemplate; 		

["vehiclesPlanesCAS", ["CUP_B_GR9_DYN_GB"]] call _fnc_saveToTemplate; 		
["vehiclesPlanesAA", ["CUP_B_F35B_BAF","B_A_Plane_Fighter_05_wdl_F"]] call _fnc_saveToTemplate; 			
["vehiclesPlanesTransport", ["CUP_B_C130J_GB","B_A_VTOL_01_infantry_wdl_F"]] call _fnc_saveToTemplate; 	

["vehiclesHelisLight", ["B_A_Heli_light_03_unarmed_wdl_F","CUP_B_AW159_Unarmed_RN_Grey", "CUP_B_AW159_Unarmed_GB", "CUP_B_AW159_Unarmed_RN_Blackcat"]] call _fnc_saveToTemplate; 		
["vehiclesHelisTransport", ["B_A_Heli_light_03_unarmed_wdl_F", "B_A_Heli_Transport_02_wdl_F","CUP_B_AW159_Unarmed_RN_Grey", "CUP_B_AW159_Unarmed_GB", "CUP_B_AW159_Unarmed_RN_Blackcat","CUP_B_SA330_Puma_HC2_BAF", "CUP_B_Merlin_HC3_Armed_GB", "CUP_B_Merlin_HC3A_Armed_GB", "CUP_B_MH47E_GB"]] call _fnc_saveToTemplate; 	
["vehiclesHelisAttack", ["B_A_Heli_Attack_01_dynamicLoadout_wdl_F", "B_A_Heli_light_03_dynamicLoadout_wdl_F", "CUP_B_AW159_RN_Blackcat", "CUP_B_AW159_GB", "CUP_B_AW159_RN_Grey", "CUP_B_AH1_DL_BAF"]] call _fnc_saveToTemplate; 		

["vehiclesArtillery", [
["CUP_B_M270_HE_BAF_WOOD",["CUP_12Rnd_MLRS_HE"]],
["CUP_B_M270_DPICM_BAF_WOOD",["CUP_12Rnd_MLRS_DPICM"]]
]] call _fnc_saveToTemplate; 		

["uavsAttack", ["B_A_UAV_02_dynamicLoadout_wdl_F"]] call _fnc_saveToTemplate; 				
["uavsPortable", ["B_A_UAV_01_wdl_F"]] call _fnc_saveToTemplate; 				


["vehiclesMilitiaLightArmed", ["CUP_B_UAZ_MG_CDF"]] call _fnc_saveToTemplate; 
["vehiclesMilitiaTrucks", ["CUP_B_Ural_Open_CDF", "CUP_B_Ural_CDF", "CUP_B_Kamaz_CDF", "CUP_B_Kamaz_Open_CDF"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["CUP_B_UAZ_Unarmed_CDF", "CUP_B_UAZ_Open_CDF"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["CUP_B_BTR80_CDF"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["CUP_LADA_LM_CIV", "CUP_C_S1203_Militia_CIV"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_B_L111A1_BAF_MPT"]] call _fnc_saveToTemplate; 					
["staticAT", ["CUP_B_TOW2_TriPod_US"]] call _fnc_saveToTemplate; 					
["staticAA", ["CUP_B_Stinger_AA_pod_Base_USMC"]] call _fnc_saveToTemplate; 					
["staticMortars", ["CUP_B_L16A2_BAF_DDPM"]] call _fnc_saveToTemplate;
["staticHowitzers", ["CUP_B_M119_USMC"]] call _fnc_saveToTemplate;


["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["howitzerMagazineHE", "CUP_30Rnd_105mmHE_M119_M"] call _fnc_saveToTemplate;

["baggedMGs", [["CUP_B_L111A1_Gun_Bag", "CUP_B_L111A1_Tripod_Bag"]]] call _fnc_saveToTemplate; 				
["baggedAT", [["CUP_B_TOW2_Tripod_Bag", "CUP_B_Tow_Gun_Bag"]]] call _fnc_saveToTemplate; 					
["baggedAA", []] call _fnc_saveToTemplate; 					
["baggedMortars", [["CUP_B_L16A2_Bipod_Bag", "CUP_B_L16A2_Gun_Bag"]]] call _fnc_saveToTemplate; 			//this line determines bagged static mortars -- Example: ["baggedMortars", [["B_Mortar_01_weapon_F", "B_Mortar_01_support_F"]]] -- Array, can contain multiple assets


["minefieldAT", ["ATMine", "CUP_Mine_M"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine_Range_Mag"]] call _fnc_saveToTemplate;


["playerDefaultLoadout", []] call _fnc_saveToTemplate;
["pvpLoadouts", [
	//Team Leader
	["cup_blufor_EUROFOR_teamLeader_temp"] call A3A_fnc_getLoadout,
	//Medic
	["cup_blufor_EUROFOR_medic_temp"] call A3A_fnc_getLoadout,
	//Autorifleman
	["cup_blufor_EUROFOR_machineGunner_temp"] call A3A_fnc_getLoadout,
	//Marksman
	["cup_blufor_EUROFOR_marksman_temp"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["cup_blufor_EUROFOR_AT_temp"] call A3A_fnc_getLoadout,
	//AT2
	["cup_blufor_EUROFOR_AT2_temp"] call A3A_fnc_getLoadout
]] call _fnc_saveToTemplate;

["pvpVehicles", ["CUP_B_BAF_Coyote_L2A1_W", "CUP_B_Jackal2_L2A1_GB_W"]] call _fnc_saveToTemplate;


//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData setVariable ["rifles", []]; 					
_loadoutData setVariable ["carbines", []]; 					
_loadoutData setVariable ["grenadeLaunchers", []]; 			
_loadoutData setVariable ["SMGs", []]; 						
_loadoutData setVariable ["machineGuns", []]; 				
_loadoutData setVariable ["marksmanRifles", []]; 			
_loadoutData setVariable ["sniperRifles", []]; 				
_loadoutData setVariable ["lightATLaunchers", []]; 
_loadoutData setVariable ["ATLaunchers", []];  				
_loadoutData setVariable ["missileATLaunchers", []]; 		
_loadoutData setVariable ["AALaunchers", []];
_loadoutData setVariable ["sidearms", []]; 					

_loadoutData setVariable ["ATMines", ["ATMine_Range_Mag"]]; 					
_loadoutData setVariable ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]]; 					
_loadoutData setVariable ["lightExplosives", ["DemoCharge_Remote_Mag"]]; 			
_loadoutData setVariable ["heavyExplosives", ["SatchelCharge_Remote_Mag"]]; 			

_loadoutData setVariable ["antiInfantryGrenades", ["CUP_HandGrenade_L109A2_HE", "CUP_HandGrenade_L109A1_HE"]]; 		
_loadoutData setVariable ["antiTankGrenades", []]; 			
_loadoutData setVariable ["smokeGrenades", ["SmokeShell", "SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];




_loadoutData setVariable ["maps", ["ItemMap"]];
_loadoutData setVariable ["watches", ["ItemWatch"]];
_loadoutData setVariable ["compasses", ["ItemCompass"]];
_loadoutData setVariable ["radios", ["ItemRadio"]];
_loadoutData setVariable ["gpses", ["ItemGPS"]];
_loadoutData setVariable ["NVGs", ["CUP_NVG_PVS15_black"]];
_loadoutData setVariable ["binoculars", ["Binocular"]];		
_loadoutData setVariable ["Rangefinder", ["Rangefinder"]];

_loadoutData setVariable ["uniforms", []];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["Hvests", []];
_loadoutData setVariable ["GLvests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["longRangeRadios", []];
_loadoutData setVariable ["helmets", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData setVariable ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData setVariable ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData setVariable ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData setVariable ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];


_loadoutData setVariable ["items_squadleader_extras", ["ACE_microDAGR", "ACE_DAGR", "Laserbatteries", "Laserbatteries", "Laserbatteries"]];
_loadoutData setVariable ["items_rifleman_extras", []];
_loadoutData setVariable ["items_medic_extras", []];
_loadoutData setVariable ["items_grenadier_extras", []];
_loadoutData setVariable ["items_explosivesExpert_extras", ["Toolkit", "MineDetector", "ACE_Clacker","ACE_DefusalKit"]];
_loadoutData setVariable ["items_engineer_extras", ["Toolkit", "MineDetector"]];
_loadoutData setVariable ["items_lat_extras", []];
_loadoutData setVariable ["items_at_extras", []];
_loadoutData setVariable ["items_aa_extras", []];
_loadoutData setVariable ["items_machineGunner_extras", []];
_loadoutData setVariable ["items_marksman_extras", ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"]];
_loadoutData setVariable ["items_sniper_extras", ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"]];
_loadoutData setVariable ["items_police_extras", []];
_loadoutData setVariable ["items_crew_extras", []];
_loadoutData setVariable ["items_unarmed_extras", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////


private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData setVariable ["uniforms", ["U_B_CTRG_Soldier_F", "U_B_CTRG_Soldier_3_F", "U_B_CTRG_Soldier_2_F"]];			
_sfLoadoutData setVariable ["vests", ["V_PlateCarrier1_rgr_noflag_F"]];
_sfLoadoutData setVariable ["Hvests", ["V_PlateCarrier2_rgr_noflag_F"]];
_sfLoadoutData setVariable ["backpacks", ["B_Kitbag_rgr", "B_AssaultPackSpec_rgr", "B_Carryall_green_F"]];			
_sfLoadoutData setVariable ["helmets", ["H_Booniehat_oli", "H_Bandanna_sgg", "H_HelmetB_Camo_tna_F", "H_HelmetB_TI_tna_F"]];			
_sfLoadoutData setVariable ["ATLaunchers", ["CUP_launch_NLAW"]];  
_sfLoadoutData setVariable ["binoculars", ["CUP_LRTV"]];
_sfLoadoutData setVariable ["lightATLaunchers", [
	["launch_MRAWS_green_F", "", "CUP_acc_LLM_od", "", ["MRAWS_HE_F", "MRAWS_HEAT55_F"], [], ""],
	["launch_MRAWS_green_F", "", "CUP_acc_LLM_od", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""],
	["launch_MRAWS_green_F", "", "CUP_acc_LLM_od", "", ["MRAWS_HEAT_F", "MRAWS_HE_F"], [], ""]
]];
_sfLoadoutData setVariable ["missileATLaunchers", [
	["launch_I_Titan_short_F", "", "CUP_acc_LLM_od", "", ["Titan_AT"], [], ""]
]]; 
_sfLoadoutData setVariable ["AALaunchers", [
	["launch_B_Titan_olive_F", "", "CUP_acc_LLM_od", "", ["Titan_AA"], [], ""]
]];
_sfLoadoutData setVariable ["longRangeRadios", ["B_RadioBag_01_sage_F"]];

_sfLoadoutData setVariable ["rifles", [
["GL_XM25_F", "", "", "", ["5Rnd_25x40mm_HE", "5Rnd_25x40mm_HE", "5Rnd_25x40mm_airburst"], [], ""],
["arifle_SPAR_02_blk_F", "muzzle_snds_M", "CUP_acc_LLM_black", "CUP_optic_MicroT1", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["arifle_SPAR_02_blk_F", "muzzle_snds_M", "CUP_acc_LLM_black", "CUP_optic_Elcan", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["arifle_SPAR_02_blk_F", "muzzle_snds_M", "CUP_acc_LLM_black", "CUP_optic_Elcan_SpecterDR_KF_RMR_black", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "CUP_acc_LLM_od", "CUP_optic_MicroT1_OD", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""],
["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "CUP_acc_LLM_od", "CUP_optic_Elcan_OD", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""],
["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "CUP_acc_LLM_od", "CUP_optic_Elcan_SpecterDR_KF_RMR_od", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""],
["arifle_SCAR_khaki_F", "muzzle_snds_B_khk_F", "CUP_acc_LLM_od", "CUP_optic_Elcan_SpecterDR_KF_RMR_od", ["20Rnd_762x51_Mag"], [], "bipod_01_F_snd"],
["arifle_SCAR_grip_khaki_F", "muzzle_snds_B_khk_F", "CUP_acc_LLM_od", "CUP_optic_Elcan_OD", ["20Rnd_762x51_Mag"], [], "bipod_01_F_snd"],
["arifle_SCAR_black_F", "muzzle_mzls_B", "CUP_acc_LLM_black", "CUP_optic_Elcan_SpecterDR_KF_RMR_black", ["20Rnd_762x51_Mag"], [], "bipod_01_F_blk"],
["arifle_SCAR_grip_black_F", "muzzle_mzls_B", "CUP_acc_LLM_black", "CUP_optic_Elcan_SpecterDR_KF_RMR_black", ["20Rnd_762x51_Mag"], [], "bipod_01_F_blk"]
]];
_sfLoadoutData setVariable ["carbines", [
["GL_XM25_F", "", "", "", ["5Rnd_25x40mm_HE", "5Rnd_25x40mm_HE", "5Rnd_25x40mm_airburst"], ["5Rnd_25x40mm_HE", "5Rnd_25x40mm_HE", "5Rnd_25x40mm_airburst"], ""],
["arifle_SPAR_01_blk_F", "muzzle_snds_M", "CUP_acc_LLM_black", "CUP_optic_MicroT1", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["arifle_SPAR_01_blk_F", "muzzle_snds_M", "CUP_acc_LLM_black", "CUP_optic_Elcan", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["arifle_SPAR_01_blk_F", "muzzle_snds_M", "CUP_acc_LLM_black", "CUP_optic_Elcan_SpecterDR_KF_RMR_black", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["arifle_SPAR_01_khk_F", "muzzle_snds_m_khk_F", "CUP_acc_LLM_od", "CUP_optic_MicroT1_OD", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""],
["arifle_SPAR_01_khk_F", "muzzle_snds_m_khk_F", "CUP_acc_LLM_od", "CUP_optic_Elcan_OD", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""],
["arifle_SPAR_01_khk_F", "muzzle_snds_m_khk_F", "CUP_acc_LLM_od", "CUP_optic_Elcan_SpecterDR_KF_RMR_od", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""],
["arifle_SCAR_short_khaki_F", "muzzle_snds_B_khk_F", "CUP_acc_LLM_od", "optic_ERCO_snd_F", ["20Rnd_762x51_Mag"], [], "bipod_01_F_snd"],
["arifle_SCAR_short_khaki_F", "muzzle_snds_B_khk_F", "CUP_acc_LLM_od", "CUP_optic_Elcan_OD", ["20Rnd_762x51_Mag"], [], "bipod_01_F_snd"],
["arifle_SCAR_short_black_F", "muzzle_snds_B", "CUP_acc_LLM_black", "CUP_optic_Elcan_SpecterDR_KF_RMR_black", ["20Rnd_762x51_Mag"], [], "bipod_01_F_blk"],
["arifle_SCAR_short_black_F", "muzzle_snds_B", "CUP_acc_LLM_black", "optic_Hamr", ["20Rnd_762x51_Mag"], [], "bipod_01_F_blk"]
]];
_sfLoadoutData setVariable ["grenadeLaunchers", [
["GL_XM25_F", "", "", "", ["5Rnd_25x40mm_HE", "5Rnd_25x40mm_HE", "5Rnd_25x40mm_airburst"], ["5Rnd_25x40mm_HE", "5Rnd_25x40mm_HE", "5Rnd_25x40mm_airburst"], ""],
["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "CUP_acc_LLM_black", "CUP_optic_MicroT1", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "CUP_acc_LLM_black", "CUP_optic_Elcan", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "CUP_acc_LLM_black", "CUP_optic_Elcan_SpecterDR_KF_RMR_black", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "CUP_acc_LLM_od", "CUP_optic_MicroT1_OD", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "CUP_acc_LLM_od", "CUP_optic_Elcan_OD", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "CUP_acc_LLM_od", "CUP_optic_Elcan_SpecterDR_KF_RMR_od", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_SCAR_GL_khaki_F", "muzzle_snds_B_khk_F", "CUP_acc_LLM_od", "CUP_optic_Elcan_OD", ["20Rnd_762x51_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_SCAR_GL_black_F", "muzzle_snds_B", "CUP_acc_LLM_od", "CUP_optic_Elcan_SpecterDR_KF_RMR_black", ["20Rnd_762x51_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];

_sfLoadoutData setVariable ["SMGs", [
["GL_XM25_F", "", "", "", ["5Rnd_25x40mm_HE", "5Rnd_25x40mm_HE", "5Rnd_25x40mm_airburst"], [], ""],
["SMG_04_blk_F", "muzzle_snds_460", "", "optic_Aco_smg", ["40Rnd_460x30_Mag_F"], [], ""],
["SMG_04_snd_F", "muzzle_snds_460", "", "optic_Holosight_smg", ["40Rnd_460x30_Mag_F"], [], ""]
]];
_sfLoadoutData setVariable ["machineGuns", [
["arifle_SPAR_02_blk_F", "muzzle_snds_M", "CUP_acc_LLM_black", "CUP_optic_MicroT1", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
["arifle_SPAR_02_blk_F", "muzzle_snds_M", "CUP_acc_LLM_black", "CUP_optic_Elcan", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
["arifle_SPAR_02_blk_F", "muzzle_snds_M", "CUP_acc_LLM_black", "CUP_optic_Elcan_SpecterDR_KF_RMR_black", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "CUP_acc_LLM_od", "CUP_optic_MicroT1_OD", ["150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_Tracer_F"], [], "bipod_01_F_khk"],
["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "CUP_acc_LLM_od", "CUP_optic_Elcan_OD", ["150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_Tracer_F"], [], "bipod_01_F_khk"],
["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "CUP_acc_LLM_od", "CUP_optic_Elcan_SpecterDR_KF_RMR_od", ["150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_Tracer_F"], [], "bipod_01_F_khk"],
["MMG_02_black_F", "muzzle_snds_338_black", "CUP_acc_LLM_black", "optic_tws_mg", ["130Rnd_338_Mag"], [], "bipod_01_F_blk"],
["MMG_02_khaki_F", "muzzle_snds_338_green", "CUP_acc_LLM_od", "optic_tws_mg", ["130Rnd_338_Mag"], [], "bipod_01_F_khk"]
]];
_sfLoadoutData setVariable ["marksmanRifles", [
["srifle_DMR_02_F", "muzzle_snds_338_black", "CUP_acc_LLM_black", "optic_AMS", [], [], "bipod_01_F_blk"],
["srifle_DMR_02_camo_F", "muzzle_snds_338_black", "CUP_acc_LLM_od", "optic_AMS", [], [], "bipod_01_F_blk"],
["srifle_DMR_02_tna_F", "muzzle_snds_338_black", "CUP_acc_LLM_od", "optic_AMS", [], [], "bipod_01_F_blk"],
["srifle_DMR_02_F", "muzzle_snds_338_black", "CUP_acc_LLM_black", "optic_tws_sniper", [], [], "bipod_01_F_blk"],
["srifle_DMR_02_camo_F", "muzzle_snds_338_black", "CUP_acc_LLM_od", "optic_tws_sniper", [], [], "bipod_01_F_blk"],
["srifle_DMR_02_tna_F", "muzzle_snds_338_black", "CUP_acc_LLM_od", "optic_tws_sniper", [], [], "bipod_01_F_blk"]
]];
_sfLoadoutData setVariable ["sniperRifles", [
["srifle_LRR_F", "muzzle_snds_L", "", "optic_LRPS", [], [], ""],
["srifle_LRR_camo_F", "muzzle_snds_408_green", "", "optic_LRPS", [], [], ""],
["srifle_LRR_tna_F", "muzzle_snds_408_green", "", "optic_LRPS_tna_F", [], [], ""],
["srifle_LRR_F", "muzzle_snds_L", "", "optic_tws_sniper", [], [], ""],
["srifle_LRR_camo_F", "muzzle_snds_408_green", "", "optic_tws_sniper", [], [], ""],
["srifle_LRR_tna_F", "muzzle_snds_408_green", "", "optic_tws_sniper", [], [], ""],
["CUP_srifle_M107_Base", "CUP_muzzle_mfsup_Suppressor_M107_Black", "", "CUP_optic_LeupoldMk4_25x50_LRT", [], [], ""],
["CUP_srifle_M107_Woodland", "CUP_muzzle_mfsup_Suppressor_M107_Woodland", "", "CUP_optic_LeupoldMk4_25x50_LRT_WOODLAND", [], [], ""]
]];
_sfLoadoutData setVariable ["sidearms", [
["hgun_Pistol_heavy_01_black_F", "muzzle_snds_acp", "CUP_acc_MLPLS_Laser", "optic_MRD_black", [], [], ""],
["hgun_Pistol_heavy_01_green_F", "muzzle_snds_acp", "CUP_acc_MLPLS_Laser", "optic_MRD_black", [], [], ""]
]];
/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData setVariable ["uniforms", ["CUP_U_B_BAF_MTP_UBACSLONG_Gloves", "CUP_U_B_BAF_MTP_UBACSLONGKNEE_Gloves", "CUP_U_B_BAF_MTP_UBACSROLLED_Gloves", "CUP_U_B_BAF_MTP_UBACSTSHIRT_Gloves", "CUP_U_B_USArmy_ACU_OEFCP", "CUP_U_B_USArmy_ACU_Rolled_Gloves_OEFCP", "CUP_U_B_USArmy_ACU_Rolled_OEFCP"]];		
_militaryLoadoutData setVariable ["vests", ["CUP_V_B_BAF_MTP_Osprey_Mk4_AutomaticRifleman", "CUP_V_B_BAF_MTP_Osprey_Mk4_Engineer", "CUP_V_B_BAF_MTP_Osprey_Mk4_Medic", "CUP_V_B_BAF_MTP_Osprey_Mk4_Rifleman"]];			
_militaryLoadoutData setVariable ["Hvests", ["CUP_V_B_BAF_MTP_Osprey_Mk4_Scout"]];
_militaryLoadoutData setVariable ["GLvests", ["CUP_V_B_BAF_MTP_Osprey_Mk4_Grenadier", "CUP_V_B_BAF_MTP_Osprey_Mk4_Officer"]];
_militaryLoadoutData setVariable ["backpacks", ["B_TacticalPack_mcamo","B_Kitbag_cbr", "CUP_B_Predator_Radio_MTP", "CUP_B_Predator_MTP"]];		
_militaryLoadoutData setVariable ["helmets", ["CUP_H_BAF_MTP_Mk7", "CUP_H_BAF_MTP_Mk6_EMPTY", "CUP_H_BAF_MTP_Mk7_PRR_SCRIM_A", "CUP_H_BAF_MTP_Mk7_PRR_SCRIM_B", "CUP_H_BAF_MTP_Mk6_NETTING_PRR", "CUP_H_BAF_MTP_Mk6_GOGGLES_PRR", "CUP_H_BAF_MTP_Mk6_GLASS_PRR"]];		
_militaryLoadoutData setVariable ["ATLaunchers", ["CUP_launch_M136"]];  
_militaryLoadoutData setVariable ["lightATLaunchers", [
	["CUP_launch_MAAWS", "", "", "", ["MRAWS_HE_F", "MRAWS_HEAT55_F"], [], ""],
	["CUP_launch_MAAWS", "", "", "CUP_optic_MAAWS_Scope", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""],
	["CUP_launch_MAAWS", "", "", "", ["MRAWS_HEAT_F", "MRAWS_HE_F"], [], ""]
]];
_militaryLoadoutData setVariable ["AALaunchers", [
	["CUP_launch_FIM92Stinger", "", "", "", ["CUP_Stinger_M"], [], ""]
]];
_militaryLoadoutData setVariable ["longRangeRadios", ["CUP_B_Motherlode_Radio_MTP", "CUP_B_Predator_Radio_MTP"]];

_militaryLoadoutData setVariable ["rifles", [
["CUP_arifle_FNFAL5061_wooden_railed", "", "CUP_acc_LLM01_L", "CUP_optic_ACOG", ["CUP_20Rnd_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Red_Tracer_762x51_FNFAL_M"], [], ""],
["CUP_arifle_FNFAL5061_wooden_railed", "", "CUP_acc_LLM01_L", "CUP_optic_Elcan_SpecterDR_black", ["CUP_20Rnd_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Red_Tracer_762x51_FNFAL_M"], [], ""],	
["CUP_arifle_L85A2", "", "", "", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_L85A2", "", "", "CUP_optic_SUSAT_3D", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_L85A2", "", "", "CUP_optic_Elcan_SpecterDR_black", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_L85A2", "", "", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_L85A2", "", "", "CUP_optic_ACOG", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_L85A2_G", "", "CUP_acc_LLM01_L", "", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_L85A2_G", "", "CUP_acc_LLM01_L", "CUP_optic_SUSAT_3D", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_L85A2_G", "", "CUP_acc_LLM01_L", "CUP_optic_Elcan_SpecterDR_black", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_L85A2_G", "", "CUP_acc_LLM01_L", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_L85A2_G", "", "CUP_acc_LLM01_L", "CUP_optic_ACOG", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""]
]];
_militaryLoadoutData setVariable ["carbines", [
["CUP_arifle_M4A1_MOE_black", "", "CUP_acc_LLM01_L", "", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_MOE_black", "", "CUP_acc_LLM01_L", "CUP_optic_Elcan_SpecterDR_black", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_MOE_black", "", "CUP_acc_LLM01_L", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_MOE_black", "", "CUP_acc_LLM01_L", "CUP_optic_ACOG", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""]
]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_L85A2_GL", "", "CUP_acc_LLM01_L", "", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_L85A2_GL", "", "CUP_acc_LLM01_L", "CUP_optic_Elcan_SpecterDR_black", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_L85A2_GL", "", "CUP_acc_LLM01_L", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_L85A2_GL", "", "CUP_acc_LLM01_L", "CUP_optic_ACOG", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""]
]];
_militaryLoadoutData setVariable ["SMGs", [
["CUP_smg_MP5A5", "", "", "", ["CUP_30Rnd_9x19_MP5"], [], ""],
["CUP_smg_MP5A5_flashlight", "", "", "", ["CUP_30Rnd_9x19_MP5"], [], ""]
]];
_militaryLoadoutData setVariable ["machineGuns", [
["CUP_arifle_L86A2", "", "", "CUP_optic_SUSAT", ["CUP_60Rnd_556x45_SureFire", "CUP_60Rnd_556x45_SureFire", "CUP_60Rnd_556x45_SureFire_Tracer_Red"], [], ""],
["CUP_lmg_L110A1", "", "CUP_acc_LLM01_L", "CUP_optic_Eotech553_Black", ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch", "CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch"], [], ""],
["CUP_lmg_L7A2_Flat", "", "", "", ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"], [], ""]
]];
_militaryLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_L129A1", "", "CUP_acc_LLM01_L", "CUP_optic_Elcan_SpecterDR_black", ["CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_TE1_Red_Tracer_762x51_M110"], [], ""],
["CUP_srifle_L129A1_HG", "", "CUP_acc_LLM01_L", "CUP_optic_ACOG", ["CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_TE1_Red_Tracer_762x51_M110"], [], "CUP_bipod_VLTOR_Modpod_black"]
]];
_militaryLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_AWM_wdl", "", "", "CUP_optic_LeupoldMk4_25x50_LRT", ["CUP_5Rnd_86x70_L115A1"], [], "CUP_bipod_VLTOR_Modpod_black"],
["CUP_srifle_AWM_blk", "", "", "CUP_optic_LeupoldMk4_25x50_LRT", ["CUP_5Rnd_86x70_L115A1"], [], "CUP_bipod_VLTOR_Modpod_black"]
]];
_militaryLoadoutData setVariable ["sidearms", [
["CUP_hgun_Glock17", "", "", "", [], [], ""],
["CUP_hgun_Glock17_blk", "", "", "", [], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data    //
/////////////////////////////////
private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData setVariable ["uniforms", ["U_B_UBACS_wdl_f", "U_B_UBACS_vest_wdl_f", "U_B_UBACS_tshirt_wdl_f"]];	
_eliteLoadoutData setVariable ["vests", ["V_CarrierRigKBT_01_light_Olive_F", "V_CarrierRigKBT_01_Olive_F", "V_CarrierRigKBT_01_heavy_Olive_F"]];
_eliteLoadoutData setVariable ["Hvests", ["V_CarrierRigKBT_01_heavy_Olive_F"]];
_eliteLoadoutData setVariable ["GLvests", ["V_CarrierRigKBT_01_heavy_Olive_F"]];
_eliteLoadoutData setVariable ["backpacks", ["B_Kitbag_sgg","B_AssaultPackSpec_rgr", "B_Carryall_green_F"]];		
_eliteLoadoutData setVariable ["helmets", ["H_HelmetSpecB_green", "H_HelmetSpecB_wdl"]];		
_eliteLoadoutData setVariable ["ATLaunchers", ["CUP_launch_NLAW"]];  
_eliteLoadoutData setVariable ["lightATLaunchers", [
	["launch_MRAWS_green_rail_F", "", "CUP_acc_LLM_od", "", ["MRAWS_HE_F", "MRAWS_HEAT55_F"], [], ""],
	["launch_MRAWS_green_rail_F", "", "CUP_acc_LLM_od", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""],
	["launch_MRAWS_green_rail_F", "", "CUP_acc_LLM_od", "", ["MRAWS_HEAT_F", "MRAWS_HE_F"], [], ""]
]];
_eliteLoadoutData setVariable ["missileATLaunchers", [
	["launch_I_Titan_short_F", "", "CUP_acc_LLM_od", "", ["Titan_AT"], [], ""]
]]; 
_eliteLoadoutData setVariable ["AALaunchers", [
	["launch_B_Titan_olive_F", "", "CUP_acc_LLM_od", "", ["Titan_AA"], [], ""]
]];
_eliteLoadoutData setVariable ["longRangeRadios", ["CUP_B_Motherlode_Radio_MTP", "CUP_B_Predator_Radio_MTP"]];
//"B_RadioBag_01_green_F", "B_RadioBag_01_sage_F" 

_eliteLoadoutData setVariable ["rifles", [
["arifle_SA80_blk_F", "", "CUP_acc_LLM_black", "CUP_optic_AIMM_MICROT1_BLK", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_SA80_blk_F", "", "CUP_acc_LLM_black", "CUP_optic_Elcan_SpecterDR_black", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_SA80_blk_F", "", "CUP_acc_LLM_black", "CUP_optic_Elcan_reflex", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
]];
_eliteLoadoutData setVariable ["carbines", [
["arifle_SA80_C_blk_F", "", "CUP_acc_LLM_black", "CUP_optic_AIMM_MICROT1_BLK", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_SA80_C_blk_F", "", "CUP_acc_LLM_black", "CUP_optic_Elcan_SpecterDR_black", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_SA80_C_blk_F", "", "CUP_acc_LLM_black", "CUP_optic_Elcan_reflex", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
]];
_eliteLoadoutData setVariable ["grenadeLaunchers", [
["arifle_SA80_GL_blk_F", "", "CUP_acc_LLM_black", "CUP_optic_AIMM_MICROT1_BLK", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["arifle_SA80_GL_blk_F", "", "CUP_acc_LLM_black", "CUP_optic_Elcan_SpecterDR_black", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["arifle_SA80_GL_blk_F", "", "CUP_acc_LLM_black", "CUP_optic_Elcan_reflex", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""]
]];
_eliteLoadoutData setVariable ["SMGs", [
["SMG_04_blk_F", "", "", "CUP_optic_MicroT1_low", ["40Rnd_460x30_Mag_F"], [], ""]
]];
_eliteLoadoutData setVariable ["machineGuns", [
["LMG_Mk200_black_F", "", "CUP_acc_LLM_black", "CUP_optic_ElcanM145", ["200Rnd_65x39_cased_Box_Tracer_Red", "200Rnd_65x39_cased_Box_Tracer_Red", "200Rnd_65x39_cased_Box_Red"], [], ""]
]];
_eliteLoadoutData setVariable ["marksmanRifles", [
["srifle_DMR_03_F", "CUP_muzzle_mfsup_Flashhider_762x51_Black", "CUP_acc_LLM_black", "CUP_optic_Elcan_reflex", ["20Rnd_762x51_Mag", "20Rnd_762x51_Mag", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR"], [], ""]
]];
_eliteLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_M107_Base", "", "", "CUP_optic_LeupoldMk4_25x50_LRT", [], [], ""]
]];
_eliteLoadoutData setVariable ["sidearms", [
["CUP_hgun_Glock17_blk", "", "CUP_acc_Glock17_Flashlight", "", [], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData setVariable ["uniforms", ["CUP_U_C_Policeman_01"]];
_policeLoadoutData setVariable ["vests", ["CUP_V_C_Police_Holster"]];
_policeLoadoutData setVariable ["helmets", ["CUP_H_C_Policecap_01"]];
_policeLoadoutData setVariable ["smgs", [
["CUP_smg_SA61", "", "", "", ["CUP_20Rnd_B_765x17_Ball_M"], [], ""],
["CUP_smg_vityaz", "", "", "", ["CUP_30Rnd_9x19_Vityaz", "CUP_30Rnd_9x19_Vityaz", "CUP_30Rnd_9x19AP_Vityaz"], [], ""],
["CUP_arifle_AKS74U", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_545x39_AKSU_M"], [], ""]
]];
_policeLoadoutData setVariable ["sidearms", ["CUP_hgun_Makarov"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData setVariable ["uniforms", ["CUP_U_B_CDF_FST_1", "CUP_U_B_CDF_FST_2"]];		
_militiaLoadoutData setVariable ["vests", ["V_TacVest_grn", "CUP_V_O_SLA_M23_1_OD"]];			
_militiaLoadoutData setVariable ["Hvests", ["CUP_V_O_SLA_Flak_Vest03", "CUP_V_O_SLA_Flak_Vest01", "CUP_V_O_SLA_Flak_Vest02"]];
_militiaLoadoutData setVariable ["GLvests", ["CUP_V_O_SLA_Flak_Vest03", "CUP_V_O_SLA_Flak_Vest01", "CUP_V_O_SLA_Flak_Vest02"]];
_militiaLoadoutData setVariable ["backpacks", ["B_FieldPack_oli", "CUP_B_HikingPack_Civ"]];		
_militiaLoadoutData setVariable ["helmets", ["CUP_H_SLA_Helmet_OD_worn", "CUP_H_SLA_Helmet_OD_worn", "H_PASGT_basic_green_F", "H_Bandanna_khk", "CUP_H_CDF_OfficerCap_FST"]];		
_militiaLoadoutData setVariable ["ATLaunchers", ["CUP_launch_RPG18", "CUP_launch_HCPF3", "CUP_launch_BF3"]];  
_militiaLoadoutData setVariable ["lightATLaunchers", [
	["CUP_launch_RPG7V", "", "", "", ["CUP_PG7V_M", "CUP_PG7V_M", "CUP_OG7_M"], [], ""],
	["CUP_launch_RPG7V", "", "", "", ["CUP_PG7V_M", "CUP_PG7V_M", "CUP_PG7VL_M"], [], ""],
	["CUP_launch_RPG7V", "", "", "", ["CUP_PG7V_M", "CUP_OG7_M", "CUP_OG7_M"], [], ""]
]];
_militiaLoadoutData setVariable ["AALaunchers", [
	["CUP_launch_9K32Strela", "", "", "", ["CUP_Strela_2_M"], [], ""]
]];
_militiaLoadoutData setVariable ["longRangeRadios", ["B_RadioBag_01_green_F"]];

_militiaLoadoutData setVariable ["rifles", [
["CUP_arifle_Sa58P", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG"], [], ""],
["CUP_arifle_Sa58P_wood", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG"], [], ""],
["CUP_arifle_Sa58V", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG"], [], ""],
["CUP_arifle_Sa58V_wood", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG"], [], ""],
["CUP_arifle_G36E", "", "CUP_acc_Flashlight", "CUP_optic_G36Optics15x_3D", ["CUP_30Rnd_556x45_G36", "CUP_30Rnd_556x45_G36", "CUP_30Rnd_TE1_Red_Tracer_556x45_G36"], [], ""],
["CUP_arifle_AUG_A1", "", "", "", ["CUP_30Rnd_556x45_AUG", "CUP_30Rnd_556x45_AUG", "CUP_30Rnd_TE1_Red_Tracer_556x45_AUG"], [], ""]
]];
_militiaLoadoutData setVariable ["carbines", [
["CUP_SKS", "", "", "", [], [], ""],
["CUP_arifle_OTS14_GROZA_762_Grip", "", "", "", ["30Rnd_762x39_Mag_F", "30Rnd_762x39_Mag_F", "30Rnd_762x39_Mag_Tracer_F"], [], ""],
["CUP_arifle_OTS14_GROZA_762", "", "", "", ["30Rnd_762x39_Mag_F", "30Rnd_762x39_Mag_F", "30Rnd_762x39_Mag_Tracer_F"], [], ""]
]];
_militiaLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_OTS14_GROZA_762_GL", "", "", "", ["30Rnd_762x39_Mag_F", "30Rnd_762x39_Mag_F", "30Rnd_762x39_Mag_Tracer_F"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], ""]
]];
_militiaLoadoutData setVariable ["SMGs", [
["CUP_smg_vityaz", "", "", "", ["CUP_30Rnd_9x19_Vityaz", "CUP_30Rnd_9x19_Vityaz", "CUP_30Rnd_9x19AP_Vityaz"], [], ""],
["CUP_arifle_OTS14_GROZA", "", "", "", [], [], ""],
["CUP_arifle_OTS14_GROZA_Grip", "", "", "", [], [], ""]
]];
_militiaLoadoutData setVariable ["machineGuns", [
["CUP_arifle_RPK74", "", "", "", ["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M", "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M", "CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"], [], ""],
["CUP_lmg_PKMN", "", "", "", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"], [], ""],
["CUP_lmg_MG3", "", "", "", ["CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"], [], ""]
]];
_militiaLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_SVD", "", "", "CUP_optic_PSO_1", ["CUP_10Rnd_762x54_SVD_M"], [], ""],
["CUP_SKS_rail", "", "", "optic_MRCO", ["CUP_10Rnd_762x39_SKS_M"], [], ""]
]];
_militiaLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_Mosin_Nagant", "", "", "CUP_optic_PEM", [], [], ""],
["CUP_srifle_LeeEnfield", "", "", "CUP_optic_no23mk2", [], [], ""]
]];
_militiaLoadoutData setVariable ["sidearms", ["CUP_hgun_CZ75"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData setVariable ["uniforms", ["CUP_U_B_BAF_MTP_UBACSROLLED"]];			
_crewLoadoutData setVariable ["vests", ["CUP_V_B_BAF_MTP_Osprey_Mk4_Crewman"]];				
_crewLoadoutData setVariable ["helmets", ["CUP_H_BAF_MTP_Mk6_CREW_PRR"]];			


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["CUP_U_B_BAF_MTP_UBACSLONG"]];
_pilotLoadoutData setVariable ["vests", ["CUP_V_B_BAF_DDPM_Osprey_Mk3_Pilot"]];
_pilotLoadoutData setVariable ["helmets", ["CUP_H_SPH4", "CUP_H_SPH4_visor"]];

// ##################### DO NOT TOUCH ANYTHING BELOW THIS LINE #####################


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.

private _squadLeaderTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["grenadeLaunchers", "rifles"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;


	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["longRangeRadios"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;
  	[selectRandom ["carbines", "smgs"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_medic"] call _fnc_addItemSet;
	["items_medic_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["GLvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["grenadeLaunchers"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_grenadier_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 4] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["GLvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_explosivesExpert_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["lightExplosives", 2] call _fnc_addItem;
	if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["carbines", "smgs"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_engineer_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	[["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_lat_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	[selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_at_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["AALaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_aa_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["machineGuns"] call _fnc_setPrimary;
	["primary", 4] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_machineGunner_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;


	["marksmanRifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_marksman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["Rangefinder"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;


	["sniperRifles"] call _fnc_setPrimary;
	["primary", 7] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_sniper_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["Rangefinder"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;


	["smgs"] call _fnc_setPrimary;
	["primary", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_police_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	[selectRandom ["carbines", "smgs"]] call _fnc_setPrimary;
	["primary", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_crew_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
	call _unarmedTemplate;
	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["Radioman", _radiomanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate],
	["Sniper", _sniperTemplate]
];

[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
	params ["_name", "_loadoutTemplate"];
	private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
	private _finalName = _prefix + _name;
	[_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["Radioman", _radiomanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate],
	["Sniper", _sniperTemplate]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["Radioman", _radiomanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate],
	["Sniper", _sniperTemplate]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate],
	["Standard", _policeTemplate]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["Radioman", _radiomanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate],
	["Sniper", _sniperTemplate]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////


["other", [["Crew", _crewTemplate]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Pilot", _crewTemplate]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Official", _policeTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Traitor", _traitorTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Unarmed", _unarmedTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
