import 'package:app/core/models/cardModel.dart';
import 'package:flutter/material.dart';


class PocketAreasProvider extends ChangeNotifier{
  List<CardModel> cardModel = [
    CardModel(title: "Onion", image: "assets/images/onion.png"),
    CardModel(title: "Tomato", image: "assets/images/tomato.png"),
  ];
}