import 'package:app/core/utils/language_services.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;


setupLocator() {
  locator.registerSingleton(LanguageServices());

}