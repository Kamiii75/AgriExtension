import 'package:agri_app/core/constants/styles.dart';
import 'package:agri_app/ui/screens/detailDistricts/detailDistrictsPage.dart';
import 'package:agri_app/ui/screens/main/mainVM.dart';
import 'package:agri_app/ui/screens/weather/service/get_location_data.dart';
import 'package:agri_app/ui/widgets/main_card.dart';
import 'package:flutter/cupertino.dart';
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
      final geo=Provider.of<GetLocation>(context, listen: false);
      return Scaffold(
        body: Container(
          padding: EdgeInsets.all(20.h),
          decoration:const BoxDecoration(
          gradient: gradient,
        ),
          child: Column(
            children: [
             
              Expanded(
                flex: 2,
                child: SafeArea(
                  child: Stack(
                    children: [

                      Row(children: [
                        CircleAvatar(radius: 22,child: Image.asset("assets/image/monogram.png")),
                       SizedBox(width: 10,),
                        CircleAvatar(radius: 20,child: Image.asset("assets/images/ext.png")),
                      ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "English",
                            style: latoTextStyle.copyWith(
                              fontSize: 12.sp,
                            ),
                          ),
                          CupertinoSwitch(
                            activeColor: primaryColor,
                            value: main.isUrdu,
                            onChanged: main.changeValue,
                          ),
                          Text(
                            "اُردُو",
                            style: latoTextStyle.copyWith(
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: GridView.builder(
                  itemCount: main.cardModel.length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(

                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: defaultPadding,
                    crossAxisSpacing: defaultPadding,
                  ),
                  itemBuilder: (context, index) =>
                      MainCard(
                        cardModel: main.cardModel[index],
                        press: () {
                          main.setType(index==0?"m":"b");

                          String cityX=index==0?"Mohmand":"Bajaur";
                          String countryX="Pakistan";
                          double latX=index==0?34.48526109953763:34.72956933841069;
                          double lonX=index==0?71.31168996835557:71.51322157420198;
                          geo.setCity(cityX);
                          geo.setCountry(countryX);
                          geo.setLat(latX);
                          geo.setLong(lonX);
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
                                      cardModel: main.cardModel[index],

                                    ),
                                  ),
                            ),
                          );
                        },
                      ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
