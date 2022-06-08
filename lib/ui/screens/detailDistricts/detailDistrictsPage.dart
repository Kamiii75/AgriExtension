import 'package:app/core/constants/constants.dart';
import 'package:app/core/models/cardModel.dart';
import 'package:app/ui/screens/pocketAreas/pocketAreasPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../widgets/main_card.dart';
import '../cropStatus/cropStatusPage.dart';
import '../services/servicesPage.dart';
import '../weather/weatherPage.dart';
import 'detailDistrictsVM.dart';

class DetailDistrictPage extends StatelessWidget {
  final CardModel cardModel;

  const DetailDistrictPage({Key? key, required this.cardModel})
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
                        cardModel.title,
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
                            tag: cardModel.title,
                            child: Image.asset(cardModel.image),
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
                      itemCount: detail.cardModel.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(

                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        mainAxisSpacing: defaultPadding,
                        crossAxisSpacing: defaultPadding,
                      ),
                      itemBuilder: (context, index) =>
                          MainCard(
                            cardModel: detail.cardModel[index],
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
                                        child:index==0? PocketAreasPage(
                                          cardModel: detail.cardModel[index],

                                        ):index==1?WeatherPage(
                                          cardModel: detail.cardModel[index],

                                        ):index==2?CropStatusPage(
                                          cardModel: detail.cardModel[index],

                                        ):ServicesPage(
                                          cardModel: detail.cardModel[index],

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
