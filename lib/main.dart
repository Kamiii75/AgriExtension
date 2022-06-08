import 'package:app/ui/screens/main/mainPage.dart';
import 'package:app/ui/screens/main/mainVM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'core/constants/constants.dart';

void main() {
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
        ChangeNotifierProvider(
            create: (context) => MainProvider()),
      ],
      child:  ScreenUtilInit(
    designSize: const Size(428, 926),
    builder: (context,child) =>MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'AgriExtension',
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
        home:const MainPage(),

      ),
      ),
    );
  }
}
