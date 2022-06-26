import 'package:agri_app/core/constants/constants.dart';
import 'package:agri_app/core/models/cardModel.dart';
import 'package:agri_app/ui/screens/pocketAreas/tomato/yieldTomato/yieldVM.dart';
import 'package:agri_app/ui/widgets/expandedTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


class YieldTomatoPage extends StatelessWidget {
  final CardModel cardModel;

  const YieldTomatoPage({Key? key, required this.cardModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => YieldTomatoProvider(), child:
    Consumer<YieldTomatoProvider>(
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
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 5),

                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7F7F7).withOpacity(.2),
                          borderRadius:const  BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),



                        child: Column(children: [

                          GestureDetector(
                            onTap: () {
                              detail.toggleDescExpanded();
                            },

                            child: ExpandedTile(title:"Description" ,isExp: detail.descExpanded,),
                          ),
                          SizedBox(height: 10.h),
                          Visibility(
                            visible: detail.descExpanded,
                            child:  Container(
                              height: detail.descList.length*60,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                  itemCount: detail.descList.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.all(5.h),
                                    child: Container(

                                        child: Padding(
                                          padding:  EdgeInsets.all( 10.r),
                                          child: Text(detail.descList[index],maxLines: 3,
                                            // overflow: TextOverflow.ellipsis,
                                            style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                                            softWrap: false,),
                                        )),
                                  )),
                            ),

                          ),


                          GestureDetector(
                            onTap: () {
                              detail.toggleUsesExpanded();
                            },

                            child: ExpandedTile(title:"Uses" ,isExp: detail.usesExpanded,),
                          ),
                          SizedBox(height: 10.h),
                          Visibility(
                            visible: detail.usesExpanded,
                            child:  Container(
                              height: detail.usesList.length*60,
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                  itemCount: detail.usesList.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.all(5.h),
                                    child: Container(

                                        child: Padding(
                                          padding:  EdgeInsets.all( 10.r),
                                          child: Text(detail.usesList[index],maxLines: 3,
                                            // overflow: TextOverflow.ellipsis,
                                            style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                                            // softWrap: false,
                                          ),
                                        )),
                                  )),
                            ),

                          ),
                        ],),
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
