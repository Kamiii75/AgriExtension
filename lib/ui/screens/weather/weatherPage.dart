import 'package:app/core/constants/constants.dart';
import 'package:app/core/models/cardModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../widgets/main_card.dart';
import 'weatherVM.dart';

class WeatherPage extends StatelessWidget {
  final CardModel cardModel;

  const WeatherPage({Key? key, required this.cardModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(), child:
    Consumer<WeatherProvider>(
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
