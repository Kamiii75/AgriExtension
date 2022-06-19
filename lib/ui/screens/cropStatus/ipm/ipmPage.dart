import 'package:agri_app/core/constants/constants.dart';
import 'package:agri_app/core/models/cardModel.dart';
import 'package:agri_app/ui/widgets/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'ipmVM.dart';

class IpmPage extends StatelessWidget {
  final CardModel cardModel;

  const IpmPage({Key? key, required this.cardModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IpmProvider(),
      child: Consumer<IpmProvider>(builder: (context, detail, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            decoration: const BoxDecoration(
              gradient: gradient,
            ),
            child: SafeArea(
              child: Column(children: [
                Expanded(
                  flex: 1,
                  child: ListTile(
                    leading: const BackButton(
                      color: Colors.white,
                    ),
                    title: Text(
                      cardModel.title,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                  ),
                ),
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
                    child: ListView.builder(
                        itemCount: detail.ipmList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.all(5.h),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color:Colors.blueGrey, width: 2),
                              color: Colors.blueGrey.shade400,
                              shape: BoxShape.rectangle,
                            ),
                                  child: Padding(
                                    padding:  EdgeInsets.all( 10.r),
                                    child: Text(detail.ipmList[index],maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                                      softWrap: false,),
                                  )),
                        )),
                  ),
                ),
              ]),
            ),
          ),
        );
      }),
    );
  }
}
