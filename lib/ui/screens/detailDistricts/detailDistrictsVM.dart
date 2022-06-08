import 'package:flutter/material.dart';

import '../../../core/models/cardModel.dart';

class DetailDistrictProvider extends ChangeNotifier{
  List<CardModel> cardModel = [
    CardModel(title: "Pocket Area", image: "assets/images/crops.png"),
    CardModel(title: "Weather Updates", image: "assets/images/weather.png"),
    CardModel(title: "Crop Status", image: "assets/images/crop_status.png"),
    CardModel(title: "Services", image: "assets/images/services.png"),
  ];
}