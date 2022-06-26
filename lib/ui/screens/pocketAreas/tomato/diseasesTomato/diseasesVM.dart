import 'package:flutter/material.dart';


class DiseasesTomatoProvider extends ChangeNotifier{

  bool _LateBlightOfTomatoExpanded=false;
  bool get LateBlightOfTomatoExpanded=>_LateBlightOfTomatoExpanded;

  toggleLateBlightOfTomatoExpanded(){
    _LateBlightOfTomatoExpanded=!_LateBlightOfTomatoExpanded;
    notifyListeners();
  }
  bool _ControlMeasuresTomatoExpanded=false;
  bool get ControlMeasuresTomatoExpanded=>_ControlMeasuresTomatoExpanded;

  toggleControlMeasuresTomatoExpanded(){
    _ControlMeasuresTomatoExpanded=!_ControlMeasuresTomatoExpanded;
    notifyListeners();
  }
  bool _FusariumWiltTomatoExpanded=false;
  bool get FusariumWiltTomatoExpanded=>_FusariumWiltTomatoExpanded;

  toggleFusariumWiltTomatoExpanded(){
    _FusariumWiltTomatoExpanded=!_FusariumWiltTomatoExpanded;
    notifyListeners();
  }

  bool _FUSARIUMCROWNANDROOTROTTomatoExpanded=false;
  bool get FUSARIUMCROWNANDROOTROTTomatoExpanded=>_FUSARIUMCROWNANDROOTROTTomatoExpanded;

  toggleFUSARIUMCROWNANDROOTROTTomatoExpanded(){
    _FUSARIUMCROWNANDROOTROTTomatoExpanded=!_FUSARIUMCROWNANDROOTROTTomatoExpanded;
    notifyListeners();
  }
  bool _POWDERYMILDEWTomatoExpanded=false;
  bool get POWDERYMILDEWTomatoExpanded=>_POWDERYMILDEWTomatoExpanded;

  togglePOWDERYMILDEWTomatoExpanded(){
    _POWDERYMILDEWTomatoExpanded=!_POWDERYMILDEWTomatoExpanded;
    notifyListeners();
  }
  bool _POWDERYMILDEWControlTomatoExpanded=false;
  bool get POWDERYMILDEWControlTomatoExpanded=>_POWDERYMILDEWControlTomatoExpanded;

  togglePOWDERYMILDEWControlTomatoExpanded(){
    _POWDERYMILDEWControlTomatoExpanded=!_POWDERYMILDEWControlTomatoExpanded;
    notifyListeners();
  }
  bool _BacterialSpotOfTomatoExpanded=false;
  bool get BacterialSpotOfTomatoExpanded=>_BacterialSpotOfTomatoExpanded;

  toggleBacterialSpotOfTomatoExpanded(){
    _BacterialSpotOfTomatoExpanded=!_BacterialSpotOfTomatoExpanded;
    notifyListeners();
  }
  bool _BacterialSpotOfTomatoControlExpanded=false;
  bool get BacterialSpotOfTomatoControlExpanded=>_BacterialSpotOfTomatoControlExpanded;

  toggleBacterialSpotOfTomatoControlExpanded(){
    _BacterialSpotOfTomatoControlExpanded=!_BacterialSpotOfTomatoControlExpanded;
    notifyListeners();
  }
  bool _BacterialCankerOfTomatoExpanded=false;
  bool get BacterialCankerOfTomatoExpanded=>_BacterialCankerOfTomatoExpanded;

  toggleBacterialCankerOfTomatoControlExpanded(){
    _BacterialCankerOfTomatoExpanded=!_BacterialCankerOfTomatoExpanded;
    notifyListeners();
  }

  bool _BacterialCankerOfTomatoControlExpanded=false;
  bool get BacterialCankerOfTomatoControlExpanded=>_BacterialCankerOfTomatoControlExpanded;

  toggleBacterialCankerOfTomatoControlControlExpanded(){
    _BacterialCankerOfTomatoControlExpanded=!_BacterialCankerOfTomatoControlExpanded;
    notifyListeners();
  }

  bool _BacterialWiltOfTomatoExpanded=false;
  bool get BacterialWiltOfTomatoExpanded=>_BacterialWiltOfTomatoExpanded;

  toggleBacterialWiltOfTomatoExpanded(){
    _BacterialWiltOfTomatoExpanded=!_BacterialWiltOfTomatoExpanded;
    notifyListeners();
  }
  bool _BacterialWiltOfTomatoControlExpanded=false;
  bool get BacterialWiltOfTomatoControlExpanded=>_BacterialWiltOfTomatoControlExpanded;

  toggleBacterialWiltOfTomatoControlExpanded(){
    _BacterialWiltOfTomatoControlExpanded=!_BacterialWiltOfTomatoControlExpanded;
    notifyListeners();
  }
  bool _TomatoYellowLeafCurlExpanded=false;
  bool get TomatoYellowLeafCurlExpanded=>_TomatoYellowLeafCurlExpanded;

  toggleTomatoYellowLeafCurlExpanded(){
    _TomatoYellowLeafCurlExpanded=!_TomatoYellowLeafCurlExpanded;
    notifyListeners();
  }
  bool _TomatoYellowLeafCurlControlExpanded=false;
  bool get TomatoYellowLeafCurlControlExpanded=>_TomatoYellowLeafCurlControlExpanded;

  toggleTomatoYellowLeafCurlControlExpanded(){
    _TomatoYellowLeafCurlControlExpanded=!_TomatoYellowLeafCurlControlExpanded;
    notifyListeners();
  }
  List<String> LateBlightOfTomatoList=[
    "Late blight is a common disease of tomato crops grown in the tropical, subtropical and temperate regions.",
    "Late blight may infect either young (upper) or old (lower) leaves.",
    "It first appears as water-soaked areas that enlarge rapidly, forming irregular, greenish black blotches.",
    "The margins of these spots are pale green or water soaked.",
    " Infection of green or ripe fruit produces large, irregularly shaped brown blotches.",
    "The leaf spots may enlarge quickly until the entire leaflet is killed.",
  ];
  List<String> ControlMeasuresTomatoList=[
   "Remove and destroy blighted tomato plants.",
   "Avoid Over fertilization of nitrogen.",
   "Spray Allitte (Posytyle Aluminium) @ 250gm/acre, Acrobat MZ (Dimethomorph and Mancozeb) @500g/acre, Amistor Top (Azxystrobin+ Difenoconazole) @ 200ml/acre and Antracal (Propanib) @500 g/acre and Champion (Copper hydroxychloride), Revus (Mandipropamid) etc.",
  ];
  List<String> FusariumWiltTomatoList=[
   "Plants infected by this soil-dwelling fungus show leaf yellowing and wilting that progress upward from the base of the stem.",
   "Initially, only one side of a leaf midrib, one branch, or one side of a plant will be affected.",
   "The symptoms soon spread to the remainder of the plant.",
   "Wilted leaves usually drop premature.",
    "Affected plants die early and produce few, if any, fruit.",
    "Splitting open an infected stem reveals brownish streaks extending up and down the stem .",
    "These discolored streaks are the water-conducting tissue, which becomes plugged during attack by the fungus, leading to wilting of the leaves.",
    "Use clean equipment to avoid infesting new fields",
    "Prevent the introduction of infested soil into production fields via contaminated tools, hands, clothing or shoes of farm workers.",
    "Spray Kocide (Copper Oxychloride), Nativo, Carbendazim and Antracal.",
  ];
  List<String> FUSARIUMCROWNANDROOTROTTomatoList=[
"Symptoms include a yellowing of the oldest leaves that gradually progresses to the youngest leaves. When Fusarium crown and root rot is severe, plants may wilt quickly and die.",
"As disease progresses the entire root system of affected plants turns brown and the tap root often rots away. Brown lesions develop at or near the soil line and extend into the vascular system.",
"This brown vascular discoloration typically does not extend more than 25 cm above the soil line, which helps to distinguish this disease from Fusarium wilt.",
"Flood Density and Alliete. Remove the infect plants.",
  ];
  List<String> POWDERYMILDEWTomatoList=[
    "Symptoms first appear as small, powdery white colonies on the upper surface of the leaves.",
    "The lower surface of the foliage may also be affected during later stages when the disease is severe .",
    "The severely affected leaves turn yellow, then brown, and later become shriveled.",
    "Generally, the lower leaves are affected first and the disease gradually moves up the plant.",

  ];
  List<String> POWDERYMILDEWControlTomatoList=[
    "Avoid high rates of nitrogen, which make plants more susceptible to infection.",
    "Avoid crowding and shading, which lead to the development of leaf wetness and conditions that promote infection.",
    "Spray Topas (Penoconazole) Or Amistor Top.",
    "Spray Topsin-M (Thiophenate Methyle) Or Bayton Foliar (Tridaminol) etc.",


  ];
  List<String> BacterialSpotOfTomatoList=[
    "Spots that appear on leaves and stems are small, circular to irregular in shape.",
    "Bacterial spot develops on seedlings and mature plants. On seedlings, infections may cause severe defoliation.",
    "On older plants, infections occur primarily on older leaves and appear as water-soaked areas.",
    "Leaf spots turn from yellow or light green to black or dark brown. Older spots are black, slightly raised.",
    "If spots are numerous, they begin to grow together, and leaves wither and turn brown .",
    "Fruit symptoms are more distinctive than leaf or stem symptoms. Spots on green fruit first appear as black, raised, pimple-like dots surrounded by water-soaked areas.",



  ];
  List<String> BacterialSpotOfTomatoControlList=[
   "Use pathogen-free seed and disease-free transplants.",
   "Avoiding sprinkler irrigation.",
   "Practice Crop rotation.",
   "Spray Copper oxychloride + Radiomill gold.",
   "Kasumin (Kasugymcin) with Mancozeb.",
   "Or Kocide Or Copride (Copper oxychloride).",
   "Or Champion (Copper hydroxychloride).",


  ];
  List<String> BacterialCankerOfTomatoList=[
   "Young transplants may wilt suddenly and completely.",
   "In the infections of mature plants, leaflets of the oldest leaves curl, yellow, wilt, and finally turn brown and collapse.",
   "Plants grow poorly and wilt.",
   "Pith of stems becomes yellow and later reddish brown. The pith may later become somewhat hollow.",
   "Light and later dark streaks may develop on stems.",
   "Branches break off easily. Plants may die.",


  ];
  List<String> BacterialCankerOfTomatoControlList=[
"Planting clean transplants is the most important control measure.",
"Spray Kasumin (Kasugymcin) Or TopCop (Sulphur+Copper), Copride (Copper oxychloride) Or Kocide (Copper oxychloride) Or Champion (Copper hydroxychloride) along with Diathane Or Mincozeb.",



  ];
  List<String> BacterialWiltOfTomatoList=[
"The first symptom is wilting of a few leaves.",
"This often goes unnoticed. Soon thereafter, the entire plant wilts suddenly and dies.",
"Such dramatic symptoms occur when the weather is hot, and soil moisture is plentiful.",
"In this, a brownish discoloration is present, first in the vascular system, and in advanced cases, spreading into the pith and cortex.",
"The roots will exhibit varying degrees of decay",


  ];
  List<String> BacterialWiltOfTomatoControlList=[
"Consider an effective weed control in and around tomato fields.",
"Use well drained and levelled fields and do not use low-lying areas of the field.",
"Kasumin (Kasugymcin) Or Copride (Copper oxychloride) Or Kocide (Copper oxychloride).",
"Spray TOP COP (Elemental Sulpher and Copper).",



  ];
  List<String> TomatoYellowLeafCurlList=[
"Plants are severely stunted with shoots becoming erect.",
"Leaflets are reduced in size. Leaflets curl upwards, become distorted, and have prominent yellowing along margins or interveinal regions.",
"Flowers wither. Plants will set very few fruit after infection occurs; therefore any plants infected before flowering stage will produce extremely low yields.",
"The virus is not seed-borne.",
"It is only transmitted by the whitefly",



  ];
  List<String> TomatoYellowLeafCurlControlList=[
"Consider an effective weed control in and around tomato fields.",
"Use well drained and levelled fields and do not use low-lying areas of the field.",
"Several insecticide like Confidor (Imidacloprid) @ of 5ml/litre of water, applications should be made at 5-day intervals to significantly reduce the whitelfly and thrips infestation. ",


  ];
}