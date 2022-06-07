import 'package:app/core/models/districtModel.dart';
import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier{

  List<DistrictModel> district = [
    DistrictModel(title: "Mohmand", image: "assets/images/mohmand.png"),
    DistrictModel(title: "Bajour", image: "assets/images/bajour.png"),
  ];
}