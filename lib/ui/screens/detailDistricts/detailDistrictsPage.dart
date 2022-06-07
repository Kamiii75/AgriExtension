import 'package:app/core/constants/constants.dart';
import 'package:app/core/models/districtModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../widgets/main_card.dart';
import 'detailDistrictsVM.dart';

class DetailDistrictPage extends StatelessWidget {
  final DistrictModel district;

  const DetailDistrictPage({Key? key, required this.district})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => DetailDistrictProvider(), child:
    Consumer<DetailDistrictProvider>(
        builder: (context, detail, child) {
          return Scaffold(

            backgroundColor: Colors.white,

            body: Container(
              decoration: const BoxDecoration(
                gradient: gradient,
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ListTile(

                      leading: const BackButton(
                        color: Colors.white,

                      ),


                      title: Text(
                        district.title,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontWeight: FontWeight.w600,color: Colors.white),
                      ),


                    ),),
                  Expanded(
                    flex: 4,
                    child: AspectRatio(
                    aspectRatio: 1.37,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: double.infinity,

                          child: Hero(
                            tag: district.title,
                            child: Image.asset(district.image),
                          ),
                        ),

                      ],
                    ),
                ),
                  ),
                Expanded(
                  flex: 12,
                  child: Container(
                    padding: EdgeInsets.all(20.h),

                    child:
                    GridView.builder(
                      itemCount: detail.district.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(

                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        mainAxisSpacing: defaultPadding,
                        crossAxisSpacing: defaultPadding,
                      ),
                      itemBuilder: (context, index) =>
                          MainCard(
                            district: detail.district[index],
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
                                          district: detail.district[index],

                                        ),
                                      ),
                                ),
                              );
                            },
                          ),
                    ),


                  ),
                ),
                ]
                ),
              ),
            ),
          );
        }),);
  }
}
