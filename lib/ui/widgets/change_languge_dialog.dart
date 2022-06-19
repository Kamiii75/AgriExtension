// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:agri_app/core/constants/styles.dart';
import 'package:agri_app/core/utils/locator.dart';
import 'package:agri_app/core/utils/shared_preference_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/utils/language_services.dart';


class ChangeLanguageDialog extends StatelessWidget {
  SharedPreferenceServices sharedPreferenceServices = SharedPreferenceServices();
  final authServices = locator<LanguageServices>();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        height: 100.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: (){
                  Locale locale =  const Locale("en");
                  Get.updateLocale(locale);
                  sharedPreferenceServices.saveUserLangCode("en");
                  authServices.updateLanguage("en");
                  Navigator.pop(context);
                },
                child: Text("English", style: latoTextStyle.copyWith(fontSize: 15.sp),),
              ),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: (){
                  Locale locale =  const Locale("ur");
                  Get.updateLocale(locale);
                  sharedPreferenceServices.saveUserLangCode("ur");
                  authServices.updateLanguage("ur");
                  Navigator.pop(context);
                },
                child: Text("اُردُو", style: latoTextStyle.copyWith(fontSize: 15.sp),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
