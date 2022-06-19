import 'package:agri_app/core/constants/constants.dart';
import 'package:agri_app/core/models/cardModel.dart';
import 'package:agri_app/ui/widgets/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'areasVM.dart';


class AreasTomatoPage extends StatefulWidget {
  final CardModel cardModel;

  const AreasTomatoPage({Key? key, required this.cardModel})
      : super(key: key);

  @override
  State<AreasTomatoPage> createState() => _AreasTomatoPageState();
}

class _AreasTomatoPageState extends State<AreasTomatoPage> {
  bool firstExpanded=false;
  String? selectedValue;
  List<String> items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];
  List<List<String>> tableData = [
    [
      "Date/Time",
      "TRANSACTION\nID",
      "TRANSACTION\nDESCRIPTION",
      "DEBIT",
      "CREDIT",
      "Available \nBalance",
      "status"
    ],
    [
      "20/03/2022 \n11:43  PM",
      "9999999999",
      "Opening \nBalance",
      "0000000.00",
      "0000000.00",
      "0000000.00",
      "Executed"
    ],
    [
      "20/03/2022 \n11:43 PM",
      "9999999999",
      "New Account",
      "0000000.00",
      "0000000.00",
      "0000000.00",
      "Executed"
    ],
    [
      "30/03/2022 \n04:07 PM",
      "9999999999",
      "Closing \nBalance",
      "0000000.00",
      "0000000.00",
      "0000000.00",
      "Executed"
    ],
  ];



  List<Widget> _buildCells(List<String> data,bool isHeader,int count) {

    return List.generate(
      count,
          (index) => Container(

        color: Colors.black,
        child: Container(
          alignment: Alignment.center,
          width: 120.0,
          height: 60.0,
          color: isHeader?Colors.amber:Colors.white,
          margin: EdgeInsets.all(2.0),
          child: Center(child: Text("${data[index]}")),
        ),
      ),
    );
  }

  List<Widget> _buildRows(int count,List<List<String>> tableData) {

    return List.generate(
      count,
          (index) => Row(
        children: _buildCells(tableData[index],index==0,tableData[index].length),
      ),
    );
  }
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
                          setState(() {
                            firstExpanded = !firstExpanded;
                          });
                        },
                        child: Container(
                          height: 50,
                          color:  Colors.grey,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Flexible(
                                      child: Text(
                                        "Specific Account - Statement",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      flex: 4,
                                    ),
                                    new Flexible(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: firstExpanded
                                                ? Icon(Icons.edit_outlined, size: 20)
                                                : SizedBox(width: 20),
                                          ),
                                          SizedBox(width: 20),
                                          Icon(
                                              firstExpanded
                                                  ? Icons.keyboard_arrow_up_outlined
                                                  : Icons.keyboard_arrow_down_outlined,
                                              size: 25),
                                        ],
                                      ),
                                      flex: 1,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Visibility(
                          visible: firstExpanded,
                          child:  SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: _buildRows(tableData.length,tableData),
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
