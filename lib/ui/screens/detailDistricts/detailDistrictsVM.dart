import 'package:flutter/material.dart';

import '../../../core/models/districtModel.dart';

class DetailDistrictProvider extends ChangeNotifier{
  List<DistrictModel> district = [
    DistrictModel(title: "Pocket Area", image: "assets/images/mohmand.png"),
    DistrictModel(title: "Weather Updates", image: "assets/images/bajour.png"),
    DistrictModel(title: "Crop Status", image: "assets/images/bajour.png"),
    DistrictModel(title: "Services", image: "assets/images/bajour.png"),
  ];
}