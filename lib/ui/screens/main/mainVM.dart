import 'package:agri_app/core/enums/view_state.dart';
import 'package:agri_app/core/models/cardModel.dart';
import 'package:agri_app/core/utils/base_view_model.dart';
import 'package:agri_app/core/utils/language_services.dart';
import 'package:agri_app/core/utils/locator.dart';
import 'package:agri_app/core/utils/shared_preference_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainProvider extends BaseViewModel{


  MainProvider(){
    setList();
  }
  String _type="b";
  String get type=>_type;
  setType(String t){
    _type=t;
    notifyListeners();
  }

  List<CardModel> get cardModel=>_cardModel;
  setList(){
    _cardModel.add(CardModel(title: "mohmand".tr, image: "assets/images/mohmand.png"));
    _cardModel.add(CardModel(title: "bajaur".tr, image: "assets/images/bajour.png"));

    notifyListeners();
  }
  List<CardModel> _cardModel = [];


  final authServices = locator<LanguageServices>();
  SharedPreferenceServices sharedPreferenceServices =
  SharedPreferenceServices();
  bool isUrdu = false;


  changeValue(bool val) {
    setState(ViewState.busy);
    isUrdu = val;
    if (val) {
      Locale locale = const Locale("ur");
      Get.updateLocale(locale);
      sharedPreferenceServices.saveUserLangCode("ur");
      authServices.updateLanguage("ur");
    } else {
      Locale locale = const Locale("en");
      Get.updateLocale(locale);
      sharedPreferenceServices.saveUserLangCode("en");
      authServices.updateLanguage("en");
    }

    _cardModel.clear();
    setList();
    setState(ViewState.idle);
  }

}