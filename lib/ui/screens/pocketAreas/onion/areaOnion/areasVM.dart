import 'package:agri_app/core/models/cardModel.dart';
import 'package:flutter/material.dart';


class AreasOnionProvider extends ChangeNotifier{
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

  String _selectedValueDesc="";
  String get selectedValueDesc=>_selectedValueDesc;
  setSelectedValueDesc(String val){
    _selectedValueDesc=val;
    notifyListeners();
  }



  List<String> itemsDesc = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];
  List<List<String>> tableDataDesc = [
    [
      "Date/Time",
      "TRANSACTION\nID",
      "TRANSACTION\nDESCRIPTION",
      "DEBIT",
      "CREDIT",
      "Available \nBalance",
      "status"
    ],
    [
      "20/03/2022 \n11:43  PM",
      "9999999999",
      "Opening \nBalance",
      "0000000.00",
      "0000000.00",
      "0000000.00",
      "Executed"
    ],
    [
      "20/03/2022 \n11:43 PM",
      "9999999999",
      "New Account",
      "0000000.00",
      "0000000.00",
      "0000000.00",
      "Executed"
    ],
    [
      "30/03/2022 \n04:07 PM",
      "9999999999",
      "Closing \nBalance",
      "0000000.00",
      "0000000.00",
      "0000000.00",
      "Executed"
    ],
  ];





}