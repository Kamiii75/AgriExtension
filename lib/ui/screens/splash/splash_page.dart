// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:app/core/utils/language_services.dart';
import 'package:app/core/utils/locator.dart';
import 'package:app/ui/screens/main/mainPage.dart';
import 'package:app/ui/screens/weather/service/get_location_data.dart';
import 'package:app/ui/screens/weather/service/get_weather_data.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class SpalashPage extends StatefulWidget {
  const SpalashPage({Key? key}) : super(key: key);

  @override
  State<SpalashPage> createState() => _SpalashPageState();
}

class _SpalashPageState extends State<SpalashPage> {
  final langService = locator<LanguageServices>();
  @override
  void initState() {

    testing();
    super.initState();
  }


  testing() async{


    await Future.delayed(Duration(seconds: 1));
    Locale locale =   Locale(langService.userLangCode);
    Get.updateLocale(locale);


    Provider.of<GetLocation>(context, listen: false)
        .GetLocationData()
        .whenComplete(() => {
      Provider.of<GetWeatherData>(context, listen: false).getData(
          Provider.of<GetLocation>(context, listen: false).getcity)
    })
        .whenComplete(() => {
      Timer(
        Duration(milliseconds: 5000),
            () => {
            // Get.offAll(()=> SwipeablePageRoute(
            // transitionDuration: Duration(milliseconds: 870),
            // canOnlySwipeFromEdge: false,
            // canSwipe: false,
            // builder: (BuildContext context) => MainPage()))


          Navigator.of(context).push(SwipeablePageRoute(
              transitionDuration: Duration(milliseconds: 870),
              canOnlySwipeFromEdge: false,
              canSwipe: false,
              builder: (BuildContext context) => MainPage()))
        },
      )
    });

    // if(authService.isLogin){
    //   userType = authService.userType;
    //   await Provider.of<DashboardViewModel>(context, listen: false).init1();
    //   Get.offAll(DashboardScreen());
    // }else{
    //   Get.offAll(()=> UserTypeScreen());
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: DefaultTextStyle(
              style: TextStyle(
                  color: Color.fromRGBO(242, 82, 135, 1),
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  height: 1,
                  letterSpacing: 6),
              child: AnimatedTextKit(
                pause: Duration(milliseconds: 8),
                isRepeatingAnimation: true,
                repeatForever: true,
                animatedTexts: [
                  RotateAnimatedText('WEATHER'),
                  RotateAnimatedText('WIND SPEED'),
                  RotateAnimatedText('TEMPERATURE'),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 330),
          Center(
            child: Lottie.asset(
              'assets/lottie/rain.json',
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
