import 'package:agri_app/core/constants/constants.dart';
import 'package:agri_app/core/models/cardModel.dart';
import 'package:agri_app/ui/widgets/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../widgets/buildTableStatic.dart';
import '../../../../widgets/buildTables.dart';
import '../../../../widgets/expandedTile.dart';
import 'disorderDetailPage.dart';
import 'physiologicalDisorderVM.dart';


class PhysiologicalDisorderPage extends StatelessWidget {
  final CardModel cardModel;

  const PhysiologicalDisorderPage({Key? key, required this.cardModel})
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

                        child:
                        GridView.builder(
                          itemCount: detail.cardModel.length,
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(

                            crossAxisCount: 3,
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
                                            child:DisorderTomatoDetailPage(
                                              cardModel: detail.cardModel[index],
                                              cardModelList: detail.mainStrings[index],

                                            ),
                                          ),
                                    ),
                                  );
                                },
                              ),
                        ),


                      ),
                    ),
                    Visibility(
                      visible: false,
                      child: Column(children: [
                        GestureDetector(
                          onTap: () {
                            detail.toggleblossomEndRotExpanded();
                          },

                          child: ExpandedTile(title:"Blossom End Rot" ,isExp: detail.blossomEndRotExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.blossomEndRotExpanded,
                          child:  Container(
                            height: detail.blossomEndRotList.length*70,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.blossomEndRotList.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.all(5.h),
                                  child: Container(
                                      child: Padding(
                                        padding:  EdgeInsets.all( 10.r),
                                        child: Text(detail.blossomEndRotList[index],maxLines: 3,
                                          // overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                                          // softWrap: false,
                                        ),
                                      )),
                                )),
                          ),

                        ),
                        GestureDetector(
                          onTap: () {
                            detail.toggleblossomEndRotControlExpanded();
                          },

                          child: ExpandedTile(title:"Control" ,isExp: detail.blossomEndRotControlExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.blossomEndRotControlExpanded,
                          child:  Container(
                            height: detail.blossomEndRotControlList.length*70,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.blossomEndRotControlList.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.all(5.h),
                                  child: Container(
                                      child: Padding(
                                        padding:  EdgeInsets.all( 10.r),
                                        child: Text(detail.blossomEndRotControlList[index],maxLines: 3,
                                          // overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                                          // softWrap: false,
                                        ),
                                      )),
                                )),
                          ),

                        ),
                        GestureDetector(
                          onTap: () {
                            detail.togglefruitCrackingExpanded();
                          },

                          child: ExpandedTile(title:"Fruit Cracking" ,isExp: detail.fruitCrackingExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.fruitCrackingExpanded,
                          child:  Container(
                            height: detail.fruitCrackingList.length*70,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.fruitCrackingList.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.all(5.h),
                                  child: Container(
                                      child: Padding(
                                        padding:  EdgeInsets.all( 10.r),
                                        child: Text(detail.fruitCrackingList[index],maxLines: 3,
                                          // overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                                          // softWrap: false,
                                        ),
                                      )),
                                )),
                          ),

                        ),
                        GestureDetector(
                          onTap: () {
                            detail.toggleSunscaldExpanded();
                          },

                          child: ExpandedTile(title:"Sunscald" ,isExp: detail.SunscaldExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.SunscaldExpanded,
                          child:  Container(
                            height: detail.SunscaldList.length*70,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.SunscaldList.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.all(5.h),
                                  child: Container(
                                      child: Padding(
                                        padding:  EdgeInsets.all( 10.r),
                                        child: Text(detail.SunscaldList[index],maxLines: 3,
                                          // overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                                          // softWrap: false,
                                        ),
                                      )),
                                )),
                          ),

                        ),
                        GestureDetector(
                          onTap: () {
                            detail.toggleSunscaldControlExpanded();
                          },

                          child: ExpandedTile(title:"Control Management" ,isExp: detail.SunscaldControlExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.SunscaldControlExpanded,
                          child:  Container(
                            height: detail.SunscaldControlList.length*70,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.SunscaldControlList.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.all(5.h),
                                  child: Container(
                                      child: Padding(
                                        padding:  EdgeInsets.all( 10.r),
                                        child: Text(detail.SunscaldControlList[index],maxLines: 3,
                                          // overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                                          // softWrap: false,
                                        ),
                                      )),
                                )),
                          ),

                        ),
                        GestureDetector(
                          onTap: () {
                            detail.togglePhysiologicalleafrollExpanded();
                          },

                          child: ExpandedTile(title:"Physiological leafroll" ,isExp: detail.PhysiologicalleafrollExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.PhysiologicalleafrollExpanded,
                          child:  Container(
                            height: detail.PhysiologicalleafrollList.length*70,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.PhysiologicalleafrollList.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.all(5.h),
                                  child: Container(
                                      child: Padding(
                                        padding:  EdgeInsets.all( 10.r),
                                        child: Text(detail.PhysiologicalleafrollList[index],maxLines: 3,
                                          // overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                                          // softWrap: false,
                                        ),
                                      )),
                                )),
                          ),

                        ),
                        // Visibility(
                        //   visible: detail.area1Expanded,
                        //   child:  SingleChildScrollView(
                        //     scrollDirection: Axis.horizontal,
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(8),
                        //       child: TableStatic(columnWidths: const  {
                        //
                        //         0: FractionColumnWidth(.20),
                        //         1: FractionColumnWidth(.80),
                        //
                        //
                        //
                        //       },tableHeader: detail.tableDataArea1H,tableData: detail.tableDataArea1,),
                        //
                        //       // child: Column(
                        //       //   crossAxisAlignment: CrossAxisAlignment.start,
                        //       //   children: buildRows(detail.tableDataArea1.length,detail.tableDataArea1,context),
                        //       // ),
                        //     ),
                        //   ),
                        //
                        // ),
                      ],),
                    ),
                ]
                ),
              ),
            ),
          );
        }),);
  }
}
