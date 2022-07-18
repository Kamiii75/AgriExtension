import 'package:agri_app/core/models/cardModel.dart';
import 'package:flutter/material.dart';


class InsectsTomatoProvider extends ChangeNotifier{



  InsectsTomatoProvider(){
    mainStrings.add(AphidsList);
    mainStrings.add(AphidsControlsList);
    mainStrings.add(WhitefliesList);
    mainStrings.add(WhitefliesControlsList);
    mainStrings.add(ThripsList);
    mainStrings.add(ThripsControlsList);
    mainStrings.add(TomatoFruitwormList);
    mainStrings.add(SpiderMitesList);
    mainStrings.add(TomatoleafminerList);
    mainStrings.add(TomatoleafminerControlList);
    mainStrings.add(RootKnotNematodeList);


  }

  List<CardModel> cardModel = [
    CardModel(title: "Aphids", image: "assets/images/tomato/insects/aphids.png"),
    CardModel(title: "Aphids Controls", image: "assets/images/tomato/insects/aphids_c.png"),
    CardModel(title: "Whiteflies", image: "assets/images/tomato/insects/whiteflies.png"),
    CardModel(title: "Whiteflies Controls", image: "assets/images/tomato/insects/whiteflies_c.png"),
    CardModel(title: "Thrips", image: "assets/images/tomato/insects/thrips.png"),
    CardModel(title: "Thrips Controls", image: "assets/images/tomato/insects/thrips_c.png"),
    CardModel(title: "Tomato Fruitworm", image: "assets/images/tomato/insects/fruitworm.png"),
    CardModel(title: "Spider Mites", image: "assets/images/tomato/insects/spider_mites.png"),
    CardModel(title: "Tomato leafminer", image: "assets/images/tomato/insects/leafminer.png"),
    CardModel(title: "leafminer Control", image: "assets/images/tomato/insects/leafminer_c.png"),
    CardModel(title: "Root Knot Nematode", image: "assets/images/tomato/insects/nematode.png"),
   ];

  List<List<String>> mainStrings=[

  ];


  bool _AphidsExpanded=false;
  bool get AphidsExpanded=>_AphidsExpanded;

  toggleAphidsExpanded(){
    _AphidsExpanded=!_AphidsExpanded;
    notifyListeners();
  }

  List<String> AphidsList =
    [
   "Aphids are tiny, soft-bodied chewing insects usually found on the underside of leaves and feeding on new, soft growth.",
   "They can be green, pink, purple, gray, or black in color. They are common insects that can be often found on the underside of leaves.",
   "They usually transmit viruses rapidly.",
   "Weed control is critical because aphids pick up viruses from weeds and also build up populations before entry into the crop.",

  ];
  bool _AphidsControlsExpanded=false;
  bool get AphidsControlsExpanded=>_AphidsControlsExpanded;

  toggleAphidsControlsExpanded(){
    _AphidsControlsExpanded=!_AphidsControlsExpanded;
    notifyListeners();
  }

  List<String> AphidsControlsList =
    [
  "There are a number of natural enemies such as ladybird beetles and syrphid larvae.",
  "Spray Confidar Or Imidacloprid.",
  "Talstar (Bifenthrin)@ 250ml/acre",
  "Novastar (Bifenthrin+Abamictin) 250ml/acre",
  "Acetamiprid @ 250 gm/acre",
      "Advantage (Carbosulfan)",

  ];
  bool _WhitefliesExpanded=false;
  bool get WhitefliesExpanded=>_WhitefliesExpanded;

  toggleWhitefliesExpanded(){
    _WhitefliesExpanded=!_WhitefliesExpanded;
    notifyListeners();
  }

  List<String> WhitefliesList =
    [
  "These are small, soft-bodied sucking insects that look like tiny white triangles, that often rest on the undersides of plants.",
  "Feeding is concentrated on the leaf undersides, where whiteflies remove so much plant sap that the plants are seriously weakened.",
  "Infested leaves have numerous chlorotic spots. Some leaves appear completely brown and dried. Wilting and leaf drop may occur",
  "Active adult insects are responsible for almost all virus spread into and within crops.",


  ];
  bool _WhitefliesControlsExpanded=false;
  bool get WhitefliesControlsExpanded=>_WhitefliesControlsExpanded;

  toggleWhitefliesControlsExpanded(){
    _WhitefliesControlsExpanded=!_WhitefliesControlsExpanded;
    notifyListeners();
  }

  List<String> WhitefliesControlsList =
    [
 "Timely control is important.",
 "Spray Polo (Difenthuron)",
 "Polytrin C (Profenofos+ Cypermethrin)",
 "Acelan (Acetamiprid)",
 "Mospilan (Acetamiprid)",
 "Admiral (Pyriproxyfen)",

  ];
  bool _ThripsExpanded=false;
  bool get ThripsExpanded=>_ThripsExpanded;

  toggleThripsExpanded(){
    _ThripsExpanded=!_ThripsExpanded;
    notifyListeners();
  }

  List<String> ThripsList =
    [
"Thrips are small, narrow-bodied insects that are common but often overlooked on plants.",
"Thrips are most attracted to flowers, but can also be found on the underside of leaves and on developing fruit, close to where the fruit attaches to the plant.",
"They cause damage by direct feeding, causing silvering and malformation of leaves and marking of fruit.",
"Their greatest damage is caused through the vectoring of the Tomato Spotted Wilt Virus (TSWV), a global disease.",


  ];
  bool _ThripsControlsExpanded=false;
  bool get ThripsControlsExpanded=>_ThripsControlsExpanded;

  toggleThripsControlsExpanded(){
    _ThripsControlsExpanded=!_ThripsControlsExpanded;
    notifyListeners();
  }

  List<String> ThripsControlsList =
    [
"Keep Weed control in the field for reducing the thrips.",
"Spray Confidar (Acetamiprid)",
"Movento (Spirotetramat)",
"Imidacloprid",
"Commando (Acephate)",
"Solvigo",


  ];
  bool _TomatoFruitwormExpanded=false;
  bool get TomatoFruitwormExpanded=>_TomatoFruitwormExpanded;

  toggleTomatoFruitwormExpanded(){
    _TomatoFruitwormExpanded=!_TomatoFruitwormExpanded;
    notifyListeners();
  }

  List<String> TomatoFruitwormList =
    [
      "Tomato fruitworms feed on leaves, stems, and fruit.",
      "The larvae can be different colors (e.g. brown, green or pink)",
      "They make holes. ",
      "Worms (larvae) enter fruit and can work their way through the entire tomato.",
      "Use Karate (Lambda-cylohathrin).",
      "Or Cypermethrin.",
      "Or Deltamethrin.",
      "Or Emamictin",
      "Or Match (Lefenuron)",
      "Coragin",

  ];
  bool _SpiderMitesExpanded=false;
  bool get SpiderMitesExpanded=>_SpiderMitesExpanded;

  toggleSpiderMitesExpanded(){
    _SpiderMitesExpanded=!_SpiderMitesExpanded;
    notifyListeners();
  }

  List<String> SpiderMitesList =
    [
      "These small pests can be a serious problem under hot, dry conditions.",
      "They are pale in color with dark patches but can also turn red.",
      "At high populations of the mites produce a webbing on the plant.",
      "Their feeding activity causes a whitening of the leaves and loss of chlorophyll for photosynthesis.",
      "Weed control is also critical to prevent entry into the field.",
      "Spray Oberon (Spiromesifen).",
      "Squadron (Chlorofenapyr).",
      "Nissoran Or Decode",


  ];

  bool _TomatoleafminerExpanded=false;
  bool get TomatoleafminerExpanded=>_TomatoleafminerExpanded;

  toggleTomatoleafminerExpanded(){
    _TomatoleafminerExpanded=!_TomatoleafminerExpanded;
    notifyListeners();
  }

  List<String> TomatoleafminerList =
    [

      "Tomato leafminer cause great demage to tomato crop.",
      "Larvae feed on leaves, shoots, flowers, and fruit creating conspicuous mines as they tunnel.",
      "The larvae reduce crop yield and fruit quality in two ways: directly, through their feeding; and indirectly, by providing a pathway for disease causing micro-organisms to enter the plant.",
      "The female moth of the tomato leaf miner lays about 260 eggs. The eggs of the tomato leaf miner are cylindrical, varies from creamy white to bright yellow",
      "Usually laid on under side of Leaves, buds, stems and calyx of unripe fruits.",
      "Adult moths are small. They are brown or Silver color with Black spots on the wings.",


  ];

  bool _TomatoleafminerControlExpanded=false;
  bool get TomatoleafminerControlExpanded=>_TomatoleafminerControlExpanded;

  toggleTomatoleafminerControlExpanded(){
    _TomatoleafminerControlExpanded=!_TomatoleafminerControlExpanded;
    notifyListeners();
  }

  List<String> TomatoleafminerControlList =
    [

      "Use Sticky trap Yellow Delta-traps @ 2-4 per jerib.",
      "Pick Up and destroy damaged plants and plant parts.",
      "Remove and destroy infested plants after harvest.",
      "Implement wide crop rotation.",
      "Spray Diptrex (Trichlorfon)@250g/acre.",
      "Radiant (Spinotoram).",
      "Voliam Flexi (Thiamethoxam+ Chlorantraniliprol).",
      "Match (Lefenuron)",

  ];
  bool _RootKnotNematodeExpanded=false;
  bool get RootKnotNematodeExpanded=>_RootKnotNematodeExpanded;

  toggleRootKnotNematodeExpanded(){
    _RootKnotNematodeExpanded=!_RootKnotNematodeExpanded;
    notifyListeners();
  }

  List<String> RootKnotNematodeList =
    [
"These are microscopic, worm-like, soil organisms.",
"This pest attacks many different crops and damages them by causing swollen root nodules that prevents normal root function.",
"Wilting of the plant, during the heat of the day is a sign that the crop is infested.",
"The root damage also allows diseases to enter the plant.",
"Rotation with non-host crops is recommend.",
"Chemical control",
"Apply Rugby or Carbofuran or Furadon in irrigation.",

  ];

}