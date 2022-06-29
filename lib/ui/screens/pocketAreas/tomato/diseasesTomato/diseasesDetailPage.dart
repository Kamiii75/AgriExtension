import 'package:agri_app/core/constants/constants.dart';
import 'package:agri_app/core/models/cardModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../widgets/expandedTile.dart';
import '../../../../widgets/main_card.dart';
import 'diseasesVM.dart';


class DiseasesTomatoDetailPage extends StatelessWidget {
  final CardModel cardModel;
  final List<String> cardModelList;

  const DiseasesTomatoDetailPage({Key? key, required this.cardModel, required this.cardModelList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => DiseasesTomatoProvider(), child:
    Consumer<DiseasesTomatoProvider>(
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
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color:Colors.blueGrey, width: 2),

                            ),
                            child: Padding(
                              padding:  EdgeInsets.all( 10.r),
                              child: Text(cardModelList[index],maxLines: 5,
                                // overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 16),
                                // softWrap: false,
                              ),
                            )),
                      )),


                  ),
                ),


                    Visibility(
                      visible: false,
                      child: Expanded(
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
                            detail.toggleLateBlightOfTomatoExpanded();
                          },

                          child: ExpandedTile(title:"Late Blight Of Tomato" ,isExp: detail.LateBlightOfTomatoExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.LateBlightOfTomatoExpanded,
                          child:  Container(
                            height: detail.LateBlightOfTomatoList.length*60,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.LateBlightOfTomatoList.length,
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
                                        child: Text(detail.LateBlightOfTomatoList[index],maxLines: 3,
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
                            detail.toggleLateBlightOfTomatoExpanded();
                          },

                          child: ExpandedTile(title:"Control measures" ,isExp: detail.ControlMeasuresTomatoExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.ControlMeasuresTomatoExpanded,
                          child:  Container(
                            height: detail.ControlMeasuresTomatoList.length*60,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.ControlMeasuresTomatoList.length,
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
                                        child: Text(detail.ControlMeasuresTomatoList[index],maxLines: 3,
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
                            detail.toggleFusariumWiltTomatoExpanded();
                          },

                          child: ExpandedTile(title:"Fusarium Wilt" ,isExp: detail.FusariumWiltTomatoExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.FusariumWiltTomatoExpanded,
                          child:  Container(
                            height: detail.FusariumWiltTomatoList.length*60,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.FusariumWiltTomatoList.length,
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
                                        child: Text(detail.FusariumWiltTomatoList[index],maxLines: 3,
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
                            detail.toggleFUSARIUMCROWNANDROOTROTTomatoExpanded();
                          },

                          child: ExpandedTile(title:"FUSARIUM CROWN AND ROOT ROT" ,isExp: detail.FUSARIUMCROWNANDROOTROTTomatoExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.FUSARIUMCROWNANDROOTROTTomatoExpanded,
                          child:  Container(
                            height: detail.FUSARIUMCROWNANDROOTROTTomatoList.length*60,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.FUSARIUMCROWNANDROOTROTTomatoList.length,
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
                                        child: Text(detail.FUSARIUMCROWNANDROOTROTTomatoList[index],maxLines: 3,
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
                            detail.togglePOWDERYMILDEWTomatoExpanded();
                          },

                          child: ExpandedTile(title:"Control" ,isExp: detail.POWDERYMILDEWControlTomatoExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.POWDERYMILDEWControlTomatoExpanded,
                          child:  Container(
                            height: detail.POWDERYMILDEWControlTomatoList.length*60,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.POWDERYMILDEWControlTomatoList.length,
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
                                        child: Text(detail.POWDERYMILDEWControlTomatoList[index],maxLines: 3,
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
                            detail.toggleBacterialSpotOfTomatoExpanded();
                          },

                          child: ExpandedTile(title:"Bacterial spot of tomato" ,isExp: detail.BacterialSpotOfTomatoExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.BacterialSpotOfTomatoExpanded,
                          child:  Container(
                            height: detail.BacterialSpotOfTomatoList.length*60,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.BacterialSpotOfTomatoList.length,
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
                                        child: Text(detail.BacterialSpotOfTomatoList[index],maxLines: 3,
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
                            detail.toggleBacterialSpotOfTomatoControlExpanded();
                          },

                          child: ExpandedTile(title:"Control" ,isExp: detail.BacterialSpotOfTomatoControlExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.BacterialSpotOfTomatoControlExpanded,
                          child:  Container(
                            height: detail.BacterialSpotOfTomatoControlList.length*60,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.BacterialSpotOfTomatoControlList.length,
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
                                        child: Text(detail.BacterialSpotOfTomatoControlList[index],maxLines: 3,
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
                            detail.toggleBacterialCankerOfTomatoControlExpanded();
                          },

                          child: ExpandedTile(title:"Bacterial canker of tomato" ,isExp: detail.BacterialCankerOfTomatoExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.BacterialCankerOfTomatoExpanded,
                          child:  Container(
                            height: detail.BacterialCankerOfTomatoList.length*60,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.BacterialCankerOfTomatoList.length,
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
                                        child: Text(detail.BacterialCankerOfTomatoList[index],maxLines: 3,
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
                            detail.toggleBacterialCankerOfTomatoControlControlExpanded();
                          },

                          child: ExpandedTile(title:"Control" ,isExp: detail.BacterialCankerOfTomatoControlExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.BacterialCankerOfTomatoControlExpanded,
                          child:  Container(
                            height: detail.BacterialCankerOfTomatoControlList.length*60,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.BacterialCankerOfTomatoControlList.length,
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
                                        child: Text(detail.BacterialCankerOfTomatoControlList[index],maxLines: 3,
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
                            detail.toggleBacterialWiltOfTomatoExpanded();
                          },

                          child: ExpandedTile(title:"Bacterial wilt of tomato " ,isExp: detail.BacterialWiltOfTomatoExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.BacterialWiltOfTomatoExpanded,
                          child:  Container(
                            height: detail.BacterialWiltOfTomatoList.length*60,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.BacterialWiltOfTomatoList.length,
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
                                        child: Text(detail.BacterialWiltOfTomatoList[index],maxLines: 3,
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
                            detail.toggleBacterialWiltOfTomatoControlExpanded();
                          },

                          child: ExpandedTile(title:"Control" ,isExp: detail.BacterialWiltOfTomatoControlExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.BacterialWiltOfTomatoControlExpanded,
                          child:  Container(
                            height: detail.BacterialWiltOfTomatoControlList.length*60,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.BacterialWiltOfTomatoControlList.length,
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
                                        child: Text(detail.BacterialWiltOfTomatoControlList[index],maxLines: 3,
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
                            detail.toggleTomatoYellowLeafCurlExpanded();
                          },

                          child: ExpandedTile(title:"Tomato Yellow Leaf Curl" ,isExp: detail.TomatoYellowLeafCurlExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.TomatoYellowLeafCurlExpanded,
                          child:  Container(
                            height: detail.TomatoYellowLeafCurlList.length*60,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.TomatoYellowLeafCurlList.length,
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
                                        child: Text(detail.TomatoYellowLeafCurlList[index],maxLines: 3,
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
                            detail.toggleTomatoYellowLeafCurlControlExpanded();
                          },

                          child: ExpandedTile(title:"Control" ,isExp: detail.TomatoYellowLeafCurlControlExpanded,),
                        ),
                        SizedBox(height: 10.h),
                        Visibility(
                          visible: detail.TomatoYellowLeafCurlControlExpanded,
                          child:  Container(
                            height: detail.TomatoYellowLeafCurlControlList.length*60,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                                itemCount: detail.TomatoYellowLeafCurlControlList.length,
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
                                        child: Text(detail.TomatoYellowLeafCurlControlList[index],maxLines: 3,
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
                    ),
                ]
                ),
              ),
            ),
          );
        }),);
  }
}
