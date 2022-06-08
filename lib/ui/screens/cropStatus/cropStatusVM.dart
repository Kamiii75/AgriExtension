import 'package:flutter/material.dart';

import '../../../core/models/cardModel.dart';

class CropStatusProvider extends ChangeNotifier{
  List<CardModel> cardModel = [
    CardModel(title: "MKTS", image: "assets/images/onion.png"),
    CardModel(title: "IPM", image: "assets/images/tomato.png"),
    CardModel(title: "Production", image: "assets/images/tomato.png"),
  ];
}