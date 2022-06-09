import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceServices{
  // ignore: prefer_typing_uninitialized_variables
  var sharedPrefsRef;

  SharedPreferenceServices() {
    init();
  }

  init() async {
    sharedPrefsRef ??= await SharedPreferences.getInstance();
  }



  ///
  /// Set To check app is first Time Run on Phone
  ///
  setIsUserLogin(bool isLogin) async{
    await init();
    await sharedPrefsRef.setBool('isLogin', isLogin);
  }

  ///
  /// get of First Time App Run Check
  ///
  Future<bool> getIsUserLogin() async{
    await init();
    return sharedPrefsRef.getBool('isLogin') ?? false;
  }


  ///
  /// Save Notification Anniversary
  ///
  saveUserData(String userData) async{
    await init();
    await sharedPrefsRef.setString("userData", userData);
  }

  ///
  /// get getLastTimeAppliedDate
  ///
  Future<String> getUserData()async{
    await init();
    return await sharedPrefsRef.getString("userData") ?? "";
  }


  ///
  /// Save Group
  ///
  saveAppUserGroup(String group) async{
    await init();
    await sharedPrefsRef.setString("group", group);
  }

  ///
  /// get getAppUserGroup
  ///
  Future<String> getAppUserGroup()async{
    await init();
    return await sharedPrefsRef.getString("group") ?? "";
  }


  ///
  /// Save App User Type
  ///
  saveUserType(String userType) async{
    await init();
    await sharedPrefsRef.setString("userType", userType);
  }

  ///
  /// get APp User Type
  ///
  Future<String> getUserType()async{
    await init();
    return await sharedPrefsRef.getString("userType") ?? "Hajji";
  }

  ///
  /// Save App User Language Code
  ///
  saveUserLangCode(String langCode) async{
    await init();
    await sharedPrefsRef.setString("langCode", langCode);
  }

  ///
  /// get APp User Language Code
  ///
  Future<String> getUserLangCode()async{
    await init();
    return await sharedPrefsRef.getString("langCode") ?? "en";
  }


  ///
  /// Save App User Info List
  ///
  saveUserInfoList(String infoList) async{
    await init();
    await sharedPrefsRef.setString("infoList", infoList);
  }

  ///
  /// get APp User Language Code
  ///
  Future<String> getUserInfoList()async{
    await init();
    return await sharedPrefsRef.getString("infoList") ?? "";
  }




}