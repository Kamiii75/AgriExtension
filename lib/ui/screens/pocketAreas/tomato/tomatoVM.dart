import 'package:agri_app/core/models/cardModel.dart';
import 'package:flutter/material.dart';


class TomatoProvider extends ChangeNotifier{
  List<CardModel> cardModel = [
    CardModel(title: "Area", image: "assets/images/market_list.png"),
    CardModel(title: "Yield", image: "assets/images/crops.png"),
    CardModel(title: "Diseases", image: "assets/images/crops.png"),
  ];
}