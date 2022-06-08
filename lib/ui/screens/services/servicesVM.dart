import 'package:flutter/material.dart';

import '../../../core/models/cardModel.dart';

class ServicesProvider extends ChangeNotifier{
  List<CardModel> cardModel = [
    CardModel(title: "Extension", image: "assets/images/extension.png"),
    CardModel(title: "Credit", image: "assets/images/credit.png"),
  ];
}