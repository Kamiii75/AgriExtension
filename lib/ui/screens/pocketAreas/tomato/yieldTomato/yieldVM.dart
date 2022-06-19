import 'package:flutter/material.dart';


class YieldTomatoProvider extends ChangeNotifier{
  bool _descExpanded=false;
  bool get descExpanded=>_descExpanded;
  setFirstExpanded(bool val){
    _descExpanded=val;
    notifyListeners();
  }
  toggleDescExpanded(){
    _descExpanded=!_descExpanded;
    notifyListeners();
  }
  bool _usesExpanded=false;
  bool get usesExpanded=>_usesExpanded;

  toggleUsesExpanded(){
    _usesExpanded=!_usesExpanded;
    notifyListeners();
  }

  String _selectedValueDesc="";
  String get selectedValueDesc=>_selectedValueDesc;
  setSelectedValueDesc(String val){
    _selectedValueDesc=val;
    notifyListeners();
  }


  List<String> descList=[
    "Its botanical name: Lycopersicon esculentum.",
    "Family: Solanaceae.",
    "Tomato is warm season annual crop required long season for fruiting.",
  "It is a frost intolerant crop and day neutral and self-pollinated plant."

  ];

  List<String> usesList=[
  "Tomatoes are used for soup, salad, pickles, ketchup, sauces and in many other ways.",
  "They can be used directly in fresh form as a salad vegetable.",
  "It is used for taste in meat or fish dishes.",
  "They can be processed into juices and ketchup.",
  "Canned and dried tomatoes are economically important processed products.",

  ];
  //
  //
  //
  // List<String> itemsDesc = [
  //   '1',
  //   '2',
  //   '3',
  //   '4',
  //   '5',
  //   '6',
  //   '7',
  //   '8',
  //   '9',
  //   '10',
  // ];
  // List<List<String>> tableDataDesc = [
  //   [
  //     "Date/Time",
  //     "TRANSACTION\nID",
  //     "TRANSACTION\nDESCRIPTION",
  //     "DEBIT",
  //     "CREDIT",
  //     "Available \nBalance",
  //     "status"
  //   ],
  //   [
  //     "20/03/2022 \n11:43  PM",
  //     "9999999999",
  //     "Opening \nBalance",
  //     "0000000.00",
  //     "0000000.00",
  //     "0000000.00",
  //     "Executed"
  //   ],
  //   [
  //     "20/03/2022 \n11:43 PM",
  //     "9999999999",
  //     "New Account",
  //     "0000000.00",
  //     "0000000.00",
  //     "0000000.00",
  //     "Executed"
  //   ],
  //   [
  //     "30/03/2022 \n04:07 PM",
  //     "9999999999",
  //     "Closing \nBalance",
  //     "0000000.00",
  //     "0000000.00",
  //     "0000000.00",
  //     "Executed"
  //   ],
  // ];
  //

}