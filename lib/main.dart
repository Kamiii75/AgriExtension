import 'package:app/core/utils/locator.dart';
import 'package:app/ui/screens/main/mainPage.dart';
import 'package:app/ui/screens/main/mainVM.dart';
import 'package:app/ui/screens/splash/splash_page.dart';
import 'package:app/ui/screens/weather/service/get_location_data.dart';
import 'package:app/ui/screens/weather/service/get_weather_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'core/constants/constants.dart';
import 'core/utils/localizatiion.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
   static final navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GetWeatherData()),
        ChangeNotifierProvider(create: (_) => GetLocation()),
        ChangeNotifierProvider(
            create: (context) => MainProvider()),
      ],
      child:  ScreenUtilInit(
    designSize: const Size(428, 926),
    builder: (context,child) => GetMaterialApp(

      translations: LocalizationClass(),
      locale: Locale("en"),

      debugShowCheckedModeBanner: false,
        title: 'appTitle'.tr,
        theme: ThemeData(
          primarySwatch: Colors.blue,

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(
              padding:const EdgeInsets.all(defaultPadding * 0.75),
              shape:const StadiumBorder(),
              backgroundColor: primaryColor,
            ),
          ),
        ),
        navigatorKey: navigatorKey,
        home:const SpalashPage(),

      ),
      ),
    );
  }
}
