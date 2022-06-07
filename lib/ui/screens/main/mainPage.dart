import 'package:app/ui/screens/detailDistricts/detailDistrictsPage.dart';
import 'package:app/ui/screens/main/mainVM.dart';
import 'package:app/ui/widgets/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/constants.dart';
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer<MainProvider>(
        builder: (context, main, child)
    {
      return Scaffold(
        body: Container(
          padding: EdgeInsets.all(20.h),
          decoration:const BoxDecoration(
          gradient: gradient,
        ),
          child: GridView.builder(
            itemCount: main.district.length,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount: 2,
              childAspectRatio: 0.75,
              mainAxisSpacing: defaultPadding,
              crossAxisSpacing: defaultPadding,
            ),
            itemBuilder: (context, index) =>
                MainCard(
                  district: main.district[index],
                  press: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration:
                        const Duration(milliseconds: 500),
                        reverseTransitionDuration:
                        const Duration(milliseconds: 500),
                        pageBuilder: (context, animation,
                            secondaryAnimation) =>
                            FadeTransition(
                              opacity: animation,
                              child: DetailDistrictPage(
                                district: main.district[index],

                              ),
                            ),
                      ),
                    );
                  },
                ),
          ),
        ),
      );
    });
  }
}
