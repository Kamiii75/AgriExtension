import 'package:app/core/models/cardModel.dart';
import 'package:flutter/material.dart';





class MktsProvider extends ChangeNotifier{
  List<CardModel> cardModel = [
    CardModel(title: "MKTS List", image: "assets/images/crops.png"),
    CardModel(title: "V. Chain", image: "assets/images/weather.png"),
    CardModel(title: "High Ends", image: "assets/images/crop_status.png"),
  ];
}