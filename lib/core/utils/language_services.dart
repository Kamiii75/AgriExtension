import 'package:app/core/utils/shared_preference_services.dart';

class LanguageServices {


  late String _userLangCode;
  String get userLangCode=>_userLangCode;


  SharedPreferenceServices sharedPrefsService = SharedPreferenceServices();

  LanguageServices() {
    init();
  }

  init() async {
    try {
     // isLogin = await sharedPrefsService.getIsUserLogin();

      _userLangCode = await sharedPrefsService.getUserLangCode();

    } catch (e, s) {
      print("AuthenticationServices init() Exception $e");
      print(s);
    }
  }


  updateLanguage(String langCode) {
    _userLangCode = langCode;
  }

}
