// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:agri_app/core/utils/language_services.dart';
import 'package:agri_app/core/utils/locator.dart';
import 'package:agri_app/ui/screens/main/mainPage.dart';
import 'package:agri_app/ui/screens/weather/service/get_location_data.dart';
import 'package:agri_app/ui/screens/weather/service/get_weather_data.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../../core/constants/constants.dart';

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

      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20.h),
    decoration:const BoxDecoration(
    gradient: gradient,
    ),
      child: Center(child: Image.asset("assets/image/monogram.png"),),),
    );
  }
}
