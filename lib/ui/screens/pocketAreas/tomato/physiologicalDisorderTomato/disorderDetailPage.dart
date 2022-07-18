import 'package:agri_app/core/constants/constants.dart';
import 'package:agri_app/core/models/cardModel.dart';
import 'package:agri_app/ui/screens/pocketAreas/tomato/physiologicalDisorderTomato/physiologicalDisorderVM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../widgets/expandedTile.dart';


class DisorderTomatoDetailPage extends StatelessWidget {
  final CardModel cardModel;
  final List<String> cardModelList;

  const DisorderTomatoDetailPage({Key? key, required this.cardModel, required this.cardModelList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => PhysiologicalDisorderProvider(), child:
    Consumer<PhysiologicalDisorderProvider>(
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
                    decoration: BoxDecoration(
                      color: const Color(0xFFF7F7F7).withOpacity(.2),
                      borderRadius:const  BorderRadius.all(
                        Radius.circular(defaultPadding * 1.25),
                      ),
                    ),
                  child: ListView.builder(
                      
                      itemCount: cardModelList.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.all(5.h),
                        child: Padding(
                          padding:  EdgeInsets.all( 10.r),
                          child: Text(cardModelList[index],maxLines: 5,
                            // overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 16),
                            // softWrap: false,
                          ),
                        ),
                      )),


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
