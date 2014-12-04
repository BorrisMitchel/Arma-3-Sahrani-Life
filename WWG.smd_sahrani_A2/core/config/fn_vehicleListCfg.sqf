#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return =
		[
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	
	case "dodge":
	{
		_return =
		[
			["Jonzie_Viper",105000]
		];
	};
	
	case "bmw":
	{
		_return =
		[
			["cl3_z4_2008_orange",400000],
			["cl3_e60_m5_orange",150000],
			["cl3_e60_m5_black",100000]
			
		];
	};
	case "audi":
	{
		_return = 
		[
			["IVORY_R8",500000],
			["IVORY_R8SPYDER",550000]
		];
		

	};
	
	case "lamborghini":
	{
		_return = 
		[
			["cl3_lamborghini_gt1_2tone2",650000],
			["cl3_lamborghini_gt1_2tone3",650000],
			["cl3_murcielago_lime",600000],
			["cl3_murcielago_yellow",600000],
			["cl3_murcielago_orange",600000],
			["IVORY_REV",700000]
		];
			
		

	};
	case "ford":
	{
		_return =
		[
			["cl3_taurus_grey",50000],
			["cl3_taurus_blue",55000]
		];
		

	};
	case "adminmenu":
	{
		if(__GETC__(life_adminlevel) > 1) then
		{
			_return pushBack
			["cl3_reventon_orange",0];
			_return pushBack
			["cl3_carrera_gt_white",0];
			_return pushBack
			["cl3_e63_amg_black",0];
			_return pushBack
			["cl3_dodge_charger_f_black",0];
			_return pushBack
			["cl3_murcielago_lime",0];
			_return pushBack
			["cl3_e60_m5_black",0];
			_return pushBack
			["cl3_veyron_wht_lwht",0];
			
		};
		
	};
	
	case "porsche":
	{
		_return = 
		[
			["cl3_carrera_gt_orange",600000],
			["cl3_carrera_gt_white",600000],
			["cl3_carrera_gt_blue",600000]
		];


	};
	case "med_shop":
	{
		_return = [
			["IVORY_PRIUS",2500],
			["A3L_AmberLamps",5000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["ivory_b206_rescue",45000],
			["IVORY_BELL512_RESCUE",85000]
		];
	};
	
	case "civ_car":
	{
			_return pushBack
			["B_Quadbike_01_F",2500];
			_return pushBack
			["C_Hatchback_01_F",9500];
			_return pushBack
			["C_Offroad_01_F",12500];
			_return pushBack
			["C_SUV_01_F",35000];
			_return pushBack
			["C_Van_01_transport_F",40000];
			_return pushBack
			["cl3_golf_learner_white",10000];
			_return pushBack
			["cl3_polo_gti_silver",15000];
			_return pushBack
			["cl3_range_rover_white",60000];
			_return pushBack
			["cl3_range_rover_black",60000];
			_return pushBack
			["Jonzie_Mini_Cooper",2000];
			_return pushBack
			["IVORY_PRIUS",25000];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",350000],
			["O_Truck_03_device_F",450000],
			["CL3_bus_cl_blue",100000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000],
			["B_Heli_Light_01_F",325000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",750000];
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["IVORY_PRIUS",2500];
		_return pushBack
		["DAR_CVPIPolice",12000];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack
			["DAR_TahoePolice",20000];
			_return pushBack
			["DAR_TaurusPolice",20000];
			
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack
			["IVORY_REV",100000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000],
			["ivory_b206",350000],
			["ivory_b206_news",400000],
			["GNT_C185",150000]
		];
	};
	
	case "civ_air_1":
	{
		_return =
		[

		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["kyo_MH47E_HC",400000];
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["B_MRAP_01_hmg_F",750000];
		};
	};
	
	case "civ_ship":
	{
		_return pushBack
		["C_Rubberboat",5000];
		_return pushBack
		["C_Boat_Civil_01_F",22000];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
