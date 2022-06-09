import 'package:flutter/material.dart';

import '../../../core/models/cardModel.dart';

class DetailDistrictProvider extends ChangeNotifier{



  List<CardModel> get cardModel=>_cardModel;
  setList(){
    _cardModel.add(CardModel(title: "Pocket Area", image: "assets/images/crops.png"));
    _cardModel.add(CardModel(title: "Weather Updates", image: "assets/images/weather.png"));
    _cardModel.add(CardModel(title: "Crop Status", image: "assets/images/crop_status.png"));
    _cardModel.add(CardModel(title: "Services", image: "assets/images/services.png"));
  }
  List<CardModel> _cardModel = [];


}