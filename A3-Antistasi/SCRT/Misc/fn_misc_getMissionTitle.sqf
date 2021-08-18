private _title = nil;

switch (toLower worldName) do {
	case "tanoa":
	{
	    _title = localize "STR_antistasi_mission_info_tanoa_mapname_text";
	};
	case "altis":
	{
	    _title = localize "STR_antistasi_mission_info_altis_mapname_text";
	};
	case "enoch":
	{
	    _title = localize "STR_antistasi_mission_info_livonia_mapname_text";
	};
	case "vt7":
	{
	    _title = localize "STR_antistasi_mission_info_vt7_mapname_text";
	};
	case "cup_chernarus_a3":
	{
		_title = localize "STR_antistasi_mission_info_chernarus2020_mapname_text";
	};
	case "napf":
	{
		_title = localize "STR_antistasi_mission_info_napf_mapname_text";
	};
	case "abramia":
	{
		_title = localize "STR_antistasi_mission_info_abramia_mapname_text";
	};
	case "panthera3":
	{
		_title = localize "STR_antistasi_mission_info_panthera_mapname_text";
	};
	case "taviana":
	{
	    _title = localize "STR_antistasi_mission_info_taviana_mapname_text";
	};
	default
	{
	    _title = "Antistasi";
	};
};

_title