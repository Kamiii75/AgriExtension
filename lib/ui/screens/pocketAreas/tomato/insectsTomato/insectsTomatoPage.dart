import 'package:agri_app/core/constants/constants.dart';
import 'package:agri_app/core/models/cardModel.dart';
import 'package:agri_app/ui/screens/pocketAreas/tomato/insectsTomato/insectsDetailPage.dart';
import 'package:agri_app/ui/widgets/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../widgets/buildTableStatic.dart';
import '../../../../widgets/buildTables.dart';
import '../../../../widgets/expandedTile.dart';
import 'insectsTomatoVM.dart';


class InsectsTomatoPage extends StatelessWidget {
  final CardModel cardModel;

  const InsectsTomatoPage({Key? key, required this.cardModel})
      : super(key: key);




 @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
      create: (context) => InsectsTomatoProvider(), child:
    Consumer<InsectsTomatoProvider>(
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
                                            child:InsectsTomatoDetailPage(
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
                                detail.toggleAphidsExpanded();
                              },

                              child: ExpandedTile(title:"Aphids" ,isExp: detail.AphidsExpanded,),
                            ),
                            SizedBox(height: 10.h),
                            Visibility(
                              visible: detail.AphidsExpanded,
                              child:  Container(
                                height: detail.AphidsList.length*70,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    // shrinkWrap: true,
                                    itemCount: detail.AphidsList.length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.all(5.h),
                                      child: Container(
                                          child: Padding(
                                            padding:  EdgeInsets.all( 10.r),
                                            child: Text(detail.AphidsList[index],maxLines: 3,
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
                                detail.toggleAphidsControlsExpanded();
                              },

                              child: ExpandedTile(title:"Controls" ,isExp: detail.AphidsControlsExpanded,),
                            ),
                            SizedBox(height: 10.h),
                            Visibility(
                              visible: detail.AphidsControlsExpanded,
                              child:  Container(
                                height: detail.AphidsControlsList.length*70,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    // shrinkWrap: true,
                                    itemCount: detail.AphidsControlsList.length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.all(5.h),
                                      child: Container(
                                          child: Padding(
                                            padding:  EdgeInsets.all( 10.r),
                                            child: Text(detail.AphidsControlsList[index],maxLines: 3,
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
                                detail.toggleWhitefliesExpanded();
                              },

                              child: ExpandedTile(title:"Whiteflies" ,isExp: detail.WhitefliesExpanded,),
                            ),
                            SizedBox(height: 10.h),
                            Visibility(
                              visible: detail.WhitefliesExpanded,
                              child:  Container(
                                height: detail.WhitefliesList.length*70,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    // shrinkWrap: true,
                                    itemCount: detail.WhitefliesList.length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.all(5.h),
                                      child: Container(
                                          child: Padding(
                                            padding:  EdgeInsets.all( 10.r),
                                            child: Text(detail.WhitefliesList[index],maxLines: 3,
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
                                detail.toggleWhitefliesControlsExpanded();
                              },

                              child: ExpandedTile(title:"Controls" ,isExp: detail.WhitefliesControlsExpanded,),
                            ),
                            SizedBox(height: 10.h),
                            Visibility(
                              visible: detail.WhitefliesControlsExpanded,
                              child:  Container(
                                height: detail.WhitefliesControlsList.length*70,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    // shrinkWrap: true,
                                    itemCount: detail.WhitefliesControlsList.length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.all(5.h),
                                      child: Container(
                                          child: Padding(
                                            padding:  EdgeInsets.all( 10.r),
                                            child: Text(detail.WhitefliesControlsList[index],maxLines: 3,
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
                                detail.toggleThripsExpanded();
                              },

                              child: ExpandedTile(title:"Thrips" ,isExp: detail.ThripsExpanded,),
                            ),
                            SizedBox(height: 10.h),
                            Visibility(
                              visible: detail.ThripsExpanded,
                              child:  Container(
                                height: detail.ThripsList.length*70,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    // shrinkWrap: true,
                                    itemCount: detail.ThripsList.length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.all(5.h),
                                      child: Container(
                                          child: Padding(
                                            padding:  EdgeInsets.all( 10.r),
                                            child: Text(detail.ThripsList[index],maxLines: 3,
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
                                detail.toggleThripsControlsExpanded();
                              },

                              child: ExpandedTile(title:"Thrips Controls" ,isExp: detail.ThripsControlsExpanded,),
                            ),
                            SizedBox(height: 10.h),
                            Visibility(
                              visible: detail.ThripsControlsExpanded,
                              child:  Container(
                                height: detail.ThripsControlsList.length*70,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    // shrinkWrap: true,
                                    itemCount: detail.ThripsControlsList.length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.all(5.h),
                                      child: Container(
                                          child: Padding(
                                            padding:  EdgeInsets.all( 10.r),
                                            child: Text(detail.ThripsControlsList[index],maxLines: 3,
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
                                detail.toggleSpiderMitesExpanded();
                              },

                              child: ExpandedTile(title:"Spider Mites" ,isExp: detail.SpiderMitesExpanded,),
                            ),
                            SizedBox(height: 10.h),
                            Visibility(
                              visible: detail.SpiderMitesExpanded,
                              child:  Container(
                                height: detail.SpiderMitesList.length*70,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    // shrinkWrap: true,
                                    itemCount: detail.SpiderMitesList.length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.all(5.h),
                                      child: Container(
                                          child: Padding(
                                            padding:  EdgeInsets.all( 10.r),
                                            child: Text(detail.SpiderMitesList[index],maxLines: 3,
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
                                detail.toggleTomatoleafminerExpanded();
                              },

                              child: ExpandedTile(title:"Tomato leafminer (Tuta absoluta)" ,isExp: detail.TomatoleafminerExpanded,),
                            ),
                            SizedBox(height: 10.h),
                            Visibility(
                              visible: detail.TomatoleafminerExpanded,
                              child:  Container(
                                height: detail.TomatoleafminerList.length*70,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    // shrinkWrap: true,
                                    itemCount: detail.TomatoleafminerList.length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.all(5.h),
                                      child: Container(
                                          child: Padding(
                                            padding:  EdgeInsets.all( 10.r),
                                            child: Text(detail.TomatoleafminerList[index],maxLines: 3,
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
                                detail.toggleTomatoleafminerControlExpanded();
                              },

                              child: ExpandedTile(title:"Tomato leafminer Control" ,isExp: detail.TomatoleafminerControlExpanded,),
                            ),
                            SizedBox(height: 10.h),
                            Visibility(
                              visible: detail.TomatoleafminerControlExpanded,
                              child:  Container(
                                height: detail.TomatoleafminerControlList.length*70,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    // shrinkWrap: true,
                                    itemCount: detail.TomatoleafminerControlList.length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.all(5.h),
                                      child: Container(
                                          child: Padding(
                                            padding:  EdgeInsets.all( 10.r),
                                            child: Text(detail.TomatoleafminerControlList[index],maxLines: 3,
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
                                detail.toggleRootKnotNematodeExpanded();
                              },

                              child: ExpandedTile(title:"Root Knot Nematode" ,isExp: detail.RootKnotNematodeExpanded,),
                            ),
                            SizedBox(height: 10.h),
                            Visibility(
                              visible: detail.RootKnotNematodeExpanded,
                              child:  Container(
                                height: detail.RootKnotNematodeList.length*70,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    // shrinkWrap: true,
                                    itemCount: detail.RootKnotNematodeList.length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.all(5.h),
                                      child: Container(
                                          child: Padding(
                                            padding:  EdgeInsets.all( 10.r),
                                            child: Text(detail.RootKnotNematodeList[index],maxLines: 3,
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
