import 'package:app/core/models/cardModel.dart';
import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier{

  List<CardModel> cardModel = [
    CardModel(title: "Mohmand", image: "assets/images/mohmand.png"),
    CardModel(title: "Bajour", image: "assets/images/bajour.png"),
  ];
}