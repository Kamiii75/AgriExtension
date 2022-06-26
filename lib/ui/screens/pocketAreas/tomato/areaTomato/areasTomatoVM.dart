import 'package:agri_app/core/models/cardModel.dart';
import 'package:flutter/material.dart';


class AreasTomatoProvider extends ChangeNotifier{



  bool _area1Expanded=false;
  bool get area1Expanded=>_area1Expanded;

  toggleArea1Expanded(){
    _area1Expanded=!_area1Expanded;
    notifyListeners();
  }

  String _selectedValueArea1="";
  String get selectedValueArea1=>_selectedValueArea1;
  setSelectedValueaArea1(String val){
    _selectedValueArea1=val;
    notifyListeners();
  }

  bool _area2Expanded=false;
  bool get area2Expanded=>_area2Expanded;

  toggleArea2Expanded(){
    _area2Expanded=!_area2Expanded;
    notifyListeners();
  }

  String _selectedValueArea2="";
  String get selectedValueArea2=>_selectedValueArea2;
  setSelectedValueaArea2(String val){
    _selectedValueArea2=val;
    notifyListeners();
  }



  bool _area3Expanded=false;
  bool get area3Expanded=>_area3Expanded;

  toggleArea3Expanded(){
    _area3Expanded=!_area3Expanded;
    notifyListeners();
  }

  String _selectedValueArea3="";
  String get selectedValueArea3=>_selectedValueArea3;
  setSelectedValueaArea3(String val){
    _selectedValueArea3=val;
    notifyListeners();
  }




  bool _growingSeasonsExpanded=false;
  bool get growingSeasonsExpanded=>_growingSeasonsExpanded;

  toggleGrowingSeasonsExpanded(){
    _growingSeasonsExpanded=!_growingSeasonsExpanded;
    notifyListeners();
  }




  bool _transplantationExpanded=false;
  bool get transplantationExpanded=>_transplantationExpanded;

  toggleTransplantationExpanded(){
    _transplantationExpanded=!_transplantationExpanded;
    notifyListeners();
  }

  bool _irrigationExpanded=false;
  bool get irrigationExpanded=>_irrigationExpanded;

  toggleIrrigationExpanded(){
    _irrigationExpanded=!_irrigationExpanded;
    notifyListeners();
  }

  bool _manureFertilizersExpanded=false;
  bool get manureFertilizersExpanded=>_manureFertilizersExpanded;

  toggleManureFertilizersExpanded(){
    _manureFertilizersExpanded=!_manureFertilizersExpanded;
    notifyListeners();
  }


  // String _selectedValueGrowingSeasons="";
  // String get selectedValueGrowingSeasons=>_selectedValueGrowingSeasons;
  // setSelectedValueaGrowingSeasons(String val){
  //   _selectedValueGrowingSeasons=val;
  //   notifyListeners();
  // }


  List<String> tableDataArea1H =
    [
      "S.No",
      "Tehsil"

  ];

  List<List<String>> tableDataArea1 = [
    // [
    //   "S.No",
    //   "Tehsil"
    // ],
    ["1","Tehsil Salarzai"],
    ["2","Tehsil Uthmankhel"],
    ["3","Tehsil Barang"],
    ["4","Tesil Mamund (Warra and Loye Mamund)"],
    ["5","Different areas of Tehsil Khar"],
  ];

  List<String> tableDataArea2H = [

      "S.No",
      "Area/Tehsil",
      "No. Growers"


  ];

  List<List<String>> tableDataArea2 = [
    // [
    //   "S.No",
    //   "Area/Tehsil",
    //   "No. Growers"
    // ],
    ["1","Tehsil Salarzai","180+"],
    ["2","Tehsil Khar","160+"],
    ["3","Tehsil Uthmankhell","400+"],
    ["4","Tehsil Barang","70+"],
    ["5","Tesil Mamund (Warra and Loye Mamund)","145+"],
    ["","Total","955+"],

  ];
  List<String> tableDataArea3H = [

      "S.No",
      "Area/Tehsil",
      "Areas"


  ];
 List<List<String>> tableDataArea3 = [
    // [
    //   "S.No",
    //   "Area/Tehsil",
    //   "Areas"
    // ],
    ["1","Tehsil Salarzai","150+ acre"],
    ["2","Tehsil Khar","120+ acre"],
    ["3","Tehsil Uthmankhell","250+ acre"],
    ["4","Tehsil Barang","40+acre"],
    ["5","Tesil Mamund (Warra and Loye Mamund)","105+ acre"],
    ["","Total","265+ acre"],

  ];



  List<String> growingSeasonsList=[
"Mainly two season crops of tomato are grown at district Bajaur.",
"Tomatoes grown for summer season in plain areas like tehsil khar, tehsil salarzai and uthmankhel areas etc.,",
"While autumn crop are grown in the fall in free frost zones or free frost pocket areas like tehsil barang,",
" tehsil Uthmankhel, some areas of tehsil mamund, Arang and Alizo areas etc.",

  ];
  List<String> transplantationList=[
"Dip the roots of seedling in solution prepared of Mancozeb Or Diathane+Metalyxal Or Alliete (Fosetyle Aluminium) @ 05 gm/L.",
"Flood the insecticide like Larsban, Chlorofypos, Lambda or Radiant/Fipronil during transplantation for the protection of seedlings from insects attacks.",
"Apply Density (Azoxystrobin+Fludoxonil+Mefenoxam) a broad spectrum fungicides used for treating soil born diseases during first irrigation.",

  ];

  List<String> irrigationList=[
"The amount of water that is needed depends on the type of soil and on the weather (amount of rain, humidity and temperature).",
"The plants are irrigated just after transplanting.",
"Irrigation with an interval of 5-7 days is recommended.",
"The irrigation interval can be decreased when weather is too hot.",
  ];

  List<String> manureFertilizersList=[
"02 bags DAP or 04 bags SSP and 01 bag SOP per acre should be applied. Well rotten farm yard manure should be applied at the rate of 8-10 tons per acre, at the time of land preparation for maintaining proper physical conditions and fertility status of the soil.",
"Half amount of all fertilizers and full amount of farm yard manure are incorporated into the soil at time of land preparation.",
"Remaining half amount of fertilizers is split into two doses and applied as side dressing to the plants one month after transplanting and after first picking of fruit..",

  ];


}