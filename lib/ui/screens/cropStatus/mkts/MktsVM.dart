import 'package:agri_app/core/models/cardModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';





class MktsProvider extends ChangeNotifier{

  List<CardModel> get cardModel=>_cardModel;
  setList(){
    _cardModel.add(CardModel(title: "MKTS List", image: "assets/images/crops.png"));
    _cardModel.add(CardModel(title: "V. Chain", image: "assets/images/weather.png"));
    _cardModel.add(CardModel(title: "High Ends", image: "assets/images/crop_status.png"));
  }
  List<CardModel> _cardModel = [];



}