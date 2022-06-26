import 'package:agri_app/core/constants/constants.dart';
import 'package:agri_app/core/models/cardModel.dart';
import 'package:agri_app/ui/widgets/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../widgets/buildTableStatic.dart';
import '../../../../widgets/buildTables.dart';
import '../../../../widgets/expandedTile.dart';
import 'areasTomatoVM.dart';


class AreasTomatoPage extends StatelessWidget {
  final CardModel cardModel;

  const AreasTomatoPage({Key? key, required this.cardModel})
      : super(key: key);




 @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
      create: (context) => AreasTomatoProvider(), child:
    Consumer<AreasTomatoProvider>(
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
                              detail.toggleArea1Expanded();
                            },

                            child: ExpandedTile(title:"Major Pocket Areas/Tehsils" ,isExp: detail.area1Expanded,),
                          ),
                          SizedBox(height: 10.h),
                          Visibility(
                            visible: detail.area1Expanded,
                            child:  SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: TableStatic(columnWidths: const  {

                                    0: FractionColumnWidth(.20),
                                     1: FractionColumnWidth(.80),



                                  },tableHeader: detail.tableDataArea1H,tableData: detail.tableDataArea1,),

                                // child: Column(
                                //   crossAxisAlignment: CrossAxisAlignment.start,
                                //   children: buildRows(detail.tableDataArea1.length,detail.tableDataArea1,context),
                                // ),
                              ),
                            ),

                          ),
                          GestureDetector(
                            onTap: () {
                              detail.toggleArea2Expanded();
                            },

                            child: ExpandedTile(title:"No. Growers for tomato " ,isExp: detail.area2Expanded,),
                          ),
                          SizedBox(height: 10.h),
                          Visibility(
                            visible: detail.area2Expanded,
                            child:  SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: TableStatic(columnWidths: const  {

                                  0: FractionColumnWidth(.20),
                                  1: FractionColumnWidth(.50),
                                  2: FractionColumnWidth(.30),



                                },tableHeader: detail.tableDataArea2H,tableData: detail.tableDataArea2,),

                                // child: Column(
                                //   crossAxisAlignment: CrossAxisAlignment.start,
                                //   children: buildRows(detail.tableDataArea2.length,detail.tableDataArea2,context),
                                // ),
                              ),
                            ),

                          ),
                          GestureDetector(
                            onTap: () {
                              detail.toggleArea3Expanded();
                            },

                            child: ExpandedTile(title:"Cultivated areas for tomato" ,isExp: detail.area3Expanded,),
                          ),
                          SizedBox(height: 10.h),
                          Visibility(
                            visible: detail.area3Expanded,
                            child:  SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: TableStatic(columnWidths: const  {

                                  0: FractionColumnWidth(.20),
                                  1: FractionColumnWidth(.50),
                                  2: FractionColumnWidth(.30),



                                },tableHeader: detail.tableDataArea3H,tableData: detail.tableDataArea3,),

                                // child: Column(
                                //   crossAxisAlignment: CrossAxisAlignment.start,
                                //   children: buildRows(detail.tableDataArea3.length,detail.tableDataArea3,context),
                                // ),
                              ),
                            ),

                          ),





                          GestureDetector(
                            onTap: () {
                              detail.toggleGrowingSeasonsExpanded();
                            },

                            child: ExpandedTile(title:"Growing Seasons" ,isExp: detail.growingSeasonsExpanded,),
                          ),
                          SizedBox(height: 10.h),
                          Visibility(
                            visible: detail.growingSeasonsExpanded,
                            child:  Container(
                              height: detail.growingSeasonsList.length*70,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  // shrinkWrap: true,
                                  itemCount: detail.growingSeasonsList.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.all(5.h),
                                    child: Container(
                                        child: Padding(
                                          padding:  EdgeInsets.all( 10.r),
                                          child: Text(detail.growingSeasonsList[index],maxLines: 3,
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
                              detail.toggleTransplantationExpanded();
                            },

                            child: ExpandedTile(title:"Transplantation" ,isExp: detail.transplantationExpanded,),
                          ),
                          SizedBox(height: 10.h),
                          Visibility(
                            visible: detail.transplantationExpanded,
                            child:  Container(
                              height: detail.transplantationList.length*80,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  // shrinkWrap: true,
                                  itemCount: detail.transplantationList.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.all(5.h),
                                    child: Container(
                                        // decoration: BoxDecoration(
                                        //   borderRadius: BorderRadius.circular(5),
                                        //   border: Border.all(color:Colors.blueGrey, width: 2),
                                        //   color: Colors.blueGrey.shade400,
                                        //   shape: BoxShape.rectangle,
                                        // ),
                                        child: Padding(
                                          padding:  EdgeInsets.all( 10.r),
                                          child: Text(detail.transplantationList[index],maxLines: 3,
                                            // overflow: TextOverflow.ellipsis,
                                            style:const TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                                            // softWrap: false,
                                          ),
                                        )),
                                  )),
                            ),

                          ),
                          GestureDetector(
                            onTap: () {
                              detail.toggleIrrigationExpanded();
                            },

                            child: ExpandedTile(title:"Irrigation" ,isExp: detail.irrigationExpanded,),
                          ),
                          SizedBox(height: 10.h),
                          Visibility(
                            visible: detail.irrigationExpanded,
                            child:  Container(
                              height: detail.irrigationList.length*60,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  // shrinkWrap: true,
                                  itemCount: detail.irrigationList.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.all(5.h),
                                    child: Container(

                                        child: Padding(
                                          padding:  EdgeInsets.all( 10.r),
                                          child: Text(detail.irrigationList[index],maxLines: 3,
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
                              detail.toggleManureFertilizersExpanded();
                            },

                            child: ExpandedTile(title:"Manure and Fertilizers" ,isExp: detail.manureFertilizersExpanded,),
                          ),
                          SizedBox(height: 10.h),
                          Visibility(
                            visible: detail.manureFertilizersExpanded,
                            child:  Container(
                              height: detail.manureFertilizersList.length*80,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  // shrinkWrap: true,
                                  itemCount: detail.manureFertilizersList.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.all(5.h),
                                    child: Container(

                                        child: Padding(
                                          padding:  EdgeInsets.all( 10.r),
                                          child: Text(detail.manureFertilizersList[index],maxLines: 3,
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
