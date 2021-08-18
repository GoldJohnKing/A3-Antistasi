//////////////////////////////
//   Civilian Information   //
//////////////////////////////

["civilianUniforms", []] call _fnc_saveToTemplate;

["civilianHeadgear", []] call _fnc_saveToTemplate;

["vehiclesCivCar", [
		"C_Quadbike_01_F", 0.3
		,"CUP_C_TT650_CIV", 0.2
		,"CUP_C_Skoda_CR_CIV", 1.0
		,"CUP_C_Volha_CR_CIV", 1.0
		,"CUP_C_Lada_CIV", 1.0
		,"CUP_C_Lada_TK_CIV", 1.0
		,"CUP_C_UAZ_Unarmed_TK_CIV", 0.8
		,"CUP_C_UAZ_Open_TK_CIV", 0.8
		,"CUP_C_LR_Transport_CTK", 0.5
		,"C_Offroad_01_F", 0.5
		,"CUP_O_Hilux_unarmed_CR_CIV", 0.5
		,"CUP_C_Datsun_Covered", 0.5
		,"CUP_C_Datsun_Plain", 0.5
		,"CUP_C_Datsun_Tubeframe", 0.5
		,"C_SUV_01_F", 1.0
		,"C_Van_02_vehicle_F", 1.0				// van from Orange
		,"C_Van_02_transport_F", 0.2			// minibus
		,"C_Offroad_02_unarmed_F", 0.5			// Apex 4WD
		,"C_Offroad_01_comms_F", 0.1			// Contact
		,"C_Offroad_01_covered_F", 0.1
		,"CUP_C_S1203_CIV_CR", 0.4
		,"CUP_C_SUV_TK", 0.3
		,"CUP_C_SUV_CIV", 0.3
		,"CUP_C_Ikarus_Chernarus", 0.3
		,"CUP_C_Bus_City_CRCIV", 0.3
	]
] call _fnc_saveToTemplate; 			//this line determines civilian cars -- Example: ["vehiclesCivCar", ["C_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesCivIndustrial", [
		"C_Van_01_transport_F", 0.5
		,"C_Van_01_box_F", 0.3
		,"C_Truck_02_transport_F", 0.3
		,"C_Truck_02_covered_F", 0.3
		,"CUP_C_Ural_Civ_03", 0.3
		,"CUP_C_Ural_Open_Civ_03", 0.3
		,"C_Tractor_01_F", 0.3
		,"CUP_C_V3S_Open_TKC", 0.3	
		,"CUP_C_Tractor_Old_CIV", 0.3
		,"CUP_C_Tractor_CIV", 0.3		
	]
] call _fnc_saveToTemplate; 			//this line determines civilian trucks -- Example: ["vehiclesCivIndustrial", ["C_Truck_02_transport_F"]] -- Array, can contain multiple assets

["vehiclesCivHeli", ["not_supported"]] call _fnc_saveToTemplate; 			//this line determines civilian helis -- Example: ["vehiclesCivHeli", ["C_Heli_Light_01_civil_F"]] -- Array, can contain multiple assets

["vehiclesCivBoat", [
	"C_Boat_Civil_01_rescue_F", 0.1			// motorboats
	,"C_Boat_Civil_01_police_F", 0.1
	,"C_Boat_Civil_01_F", 1.0
	,"C_Rubberboat", 1.0					// rescue boat
	,"C_Boat_Transport_02_F", 1.0			// RHIB
	,"C_Scooter_Transport_01_F", 0.5		// jetski
	,"CUP_C_Fishing_Boat_Chernarus", 1.0
	,"CUP_C_PBX_CIV", 1.0
	,"CUP_C_Zodiac_CIV", 1.0
	]
] call _fnc_saveToTemplate; 			//this line determines civilian boats -- Example: ["vehiclesCivBoat", ["C_Boat_Civil_01_F"]] -- Array, can contain multiple assets

["vehiclesCivRepair", ["C_Offroad_01_repair_F", 0.3
	,"C_Van_02_service_F", 0.3				// orange
	,"C_Truck_02_box_F", 0.1]] call _fnc_saveToTemplate;			//this line determines civilian repair vehicles

["vehiclesCivMedical", ["C_Van_02_medevac_F", 0.1]] call _fnc_saveToTemplate;			//this line determines civilian medic vehicles

["vehiclesCivFuel", [
        "C_Van_01_fuel_F", 0.2
        ,"C_Truck_02_fuel_F", 0.1
	]
] call _fnc_saveToTemplate;			//this line determines civilian fuel vehicles
