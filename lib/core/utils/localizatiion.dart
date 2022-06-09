import 'package:get/get.dart';

class LocalizationClass extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    const Map<String, String> lang_en = {

      "appTitle": "Agriculture Extension",
      "bajaur": "Bajaur",
      "mohmand": "Mohmand",

    };

    const Map<String, String> lang_ur = {

      "appTitle": "Agriculture Extension",
      "bajaur": "باجوړ",
      "mohmand": "مومند",

    };

    return {
      'en': lang_en,
      'ur': lang_ur,
    };
  }
}
