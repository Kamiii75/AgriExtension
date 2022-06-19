import 'package:agri_app/core/constants/constants.dart';
import 'package:agri_app/core/models/cardModel.dart';
import 'package:agri_app/ui/widgets/buildTables.dart';
import 'package:agri_app/ui/widgets/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'areasVM.dart';


class AreasOnionPage extends StatefulWidget {
  final CardModel cardModel;

  const AreasOnionPage({Key? key, required this.cardModel})
      : super(key: key);

  @override
  State<AreasOnionPage> createState() => _AreasOnionPageState();
}

class _AreasOnionPageState extends State<AreasOnionPage> {

  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
      create: (context) => AreasOnionProvider(), child:
    Consumer<AreasOnionProvider>(
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
                        widget.cardModel.title,
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
                            tag: widget.cardModel.title,
                            child: Image.asset(widget.cardModel.image),
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


                    child: Column(children: [

                      GestureDetector(
                        onTap: () {
                          detail.toggleDescExpanded();
                        },
                        child: Container(
                          height: 50,
                          color:  Colors.blueGrey,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                     const Flexible(
                                      flex: 4,
                                      child:  Text(
                                        "Description",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                     Flexible(
                                      flex: 1,
                                      child: Icon(
                                          detail.descExpanded
                                              ? Icons.keyboard_arrow_up_outlined
                                              : Icons.keyboard_arrow_down_outlined,
                                          size: 25),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                       SizedBox(height: 10.h),
                      Visibility(
                          visible: detail.descExpanded,
                          child:  SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: buildRows(detail.tableDataDesc.length,detail.tableDataDesc),
                              ),
                            ),
                          ),

                      ),
                    ],),
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
