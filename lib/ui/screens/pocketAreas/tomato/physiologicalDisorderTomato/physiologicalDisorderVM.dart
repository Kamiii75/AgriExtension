import 'package:agri_app/core/models/cardModel.dart';
import 'package:flutter/material.dart';


class PhysiologicalDisorderProvider extends ChangeNotifier{





  PhysiologicalDisorderProvider(){
    mainStrings.add(blossomEndRotList);
    mainStrings.add(blossomEndRotControlList);
    mainStrings.add(fruitCrackingList);
    mainStrings.add(SunscaldList);
    mainStrings.add(SunscaldControlList);
    mainStrings.add(PhysiologicalleafrollList);



  }

  List<CardModel> cardModel = [
    CardModel(title: "Blossom End Rot", image: "assets/images/tomato/disorder/blossom_end_rot.png"),
    CardModel(title: "Control", image: "assets/images/tomato/disorder/blossom_end_rot_c.png"),
    CardModel(title: "Fruit Cracking", image: "assets/images/tomato/disorder/fruit_cracking.png"),
    CardModel(title: "Sunscald", image: "assets/images/tomato/disorder/sunscald.png"),
    CardModel(title: "Control Management", image: "assets/images/tomato/disorder/sunscald_c.png"),
    CardModel(title: "Physiological leafroll", image: "assets/images/tomato/disorder/leafroll.png"),

  ];

  List<List<String>> mainStrings=[

  ];
  bool _blossomEndRotExpanded=false;
  bool get blossomEndRotExpanded=>_blossomEndRotExpanded;

  toggleblossomEndRotExpanded(){
    _blossomEndRotExpanded=!_blossomEndRotExpanded;
    notifyListeners();
  }

  List<String> blossomEndRotList =
    [
      "Blossom end rot is a very common problem on green and ripe tomatoes.",
      "It first appears as a sunken, brownish black spot 1 ⁄2 to 1 inch in diameter on the blossom end of the fruit.",
      "These spots may gradually increase in size .",
      "Blossom end rot is caused by a calcium deficiency that is related to wide fluctuations in available moisture.",
      "To prevent blossom end rot, maintain a steady rate of plant growth without stress.",

  ];




  bool _blossomEndRotControlExpanded=false;
  bool get blossomEndRotControlExpanded=>_blossomEndRotControlExpanded;

  toggleblossomEndRotControlExpanded(){
    _blossomEndRotControlExpanded=!_blossomEndRotControlExpanded;
    notifyListeners();
  }

  List<String> blossomEndRotControlList =
    [
   "If blossom end rot occurs, remove the affected fruit so that later-maturing fruit will develop normally.",
   "Mulching and avoiding heavy applications of nitrogen fertilizer may help reduce.",
   "Can be controlled with the application calcium fertilizers.",
   "Spray Quantis Or Nanocal Or Calcium Chloride.",
   "A consistent and ample supply of moisture can reduce the problem by helping to maintain a steady flow of calcium from the soil to the fruit.",
   "Blossom end rot is more serious when an excess of nitrogen fertilizer has been applied.",
  ];


  bool _fruitCrackingExpanded=false;
  bool get fruitCrackingExpanded=>_fruitCrackingExpanded;

  togglefruitCrackingExpanded(){
    _fruitCrackingExpanded=!_fruitCrackingExpanded;
    notifyListeners();
  }

  List<String> fruitCrackingList =
    [
  "Cracks may develop on tomato fruit.",
  "Similar to blossom end rot, cracking is associated with rapid fruit development and wide fluctuations in water availability to the plant.",
  "Fruit that has reached the ripening stage during dry weather may show considerable cracking if the dry period is followed by heavy rains and high temperatures.",
  "Tomato varieties differ considerably in the amount and severity of cracking under climatic conditions.",
  "As with blossom end rot, mulching and avoiding heavy applications of nitrogen fertilizer should help reduce fruit cracking.",

   ];



  bool _SunscaldExpanded=false;
  bool get SunscaldExpanded=>_SunscaldExpanded;

  toggleSunscaldExpanded(){
    _SunscaldExpanded=!_SunscaldExpanded;
    notifyListeners();
  }

  List<String> SunscaldList =
    [
 "Sunscald occurs when tomatoes or peppers are exposed to the direct rays of the sun during hot weather",
 "The initial symptom is a whitish, shiny area that appears blistered.",
 "The killed tissues gradually collapse, forming a slightly sunken area that may become pale yellowish and wrinkled as the fruit ripens.",
 "The killed tissue is quickly invaded by secondary organisms and the fruit decays.",

   ];

  bool _SunscaldControlExpanded=false;
  bool get SunscaldControlExpanded=>_SunscaldControlExpanded;

  toggleSunscaldControlExpanded(){
    _SunscaldControlExpanded=!_SunscaldControlExpanded;
    notifyListeners();
  }

  List<String> SunscaldControlList =
    [
 "To prevent sunscald on tomato fruit, control foliar diseases and avoid heavy pruning or shoot removal.",
 "Don’t over-prune tomato plants, especially in hot climates.",
 "Spray biostimulant and Potassium (Katalyst Or Naya Potash).",

   ];

  bool _PhysiologicalleafrollExpanded=false;
  bool get PhysiologicalleafrollExpanded=>_PhysiologicalleafrollExpanded;

  togglePhysiologicalleafrollExpanded(){
    _PhysiologicalleafrollExpanded=!_PhysiologicalleafrollExpanded;
    notifyListeners();
  }

  List<String> PhysiologicalleafrollList =
    [
 "Physiological leafroll occurs when the edges of the leaves roll upward and inward.",
 "Sometimes the curling continues until the leaf margins from either side touch or overlap.",
 "Some leaves on the plant may not exhibit rolling.",
"Leafroll does not reduce plant growth, yield, or fruit quality.",
"It is believed to result from irregular water supply, and may be intensified following pruning.",
"The symptoms are sometimes temporary, disappearing after a few days, but can persist throughout the growing season.",
"Spray Isabion Or Asahi Star Or Quantis Or multipro Or Amino X.",

   ];




}