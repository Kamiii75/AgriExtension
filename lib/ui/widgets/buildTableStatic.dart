import 'package:agri_app/ui/widgets/buildRowStatic.dart';
import 'package:flutter/material.dart';

class TableStatic extends StatelessWidget {
  List<String> tableHeader;
  List<List<String>> tableData;
  Map<int, TableColumnWidth> columnWidths;
  TableStatic({Key? key,required this.tableHeader,required this.tableData,required this.columnWidths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.2,
      child:

    Table(
      border: TableBorder.all(),

      columnWidths: columnWidths,
      // {
      //
      //   0: FractionColumnWidth(.20),
      //   1: FractionColumnWidth(.20),
      //   2: FractionColumnWidth(.45),
      //   3: FractionColumnWidth(.15),
      // },
      children: [

        buildRowStatic(tableHeader,
            isHeader: true),
        for ( var tbl in tableData )
        buildRowStatic(tbl),
        // buildRowStatic(tableData[1]),
        // buildRowStatic(tableData[2], isGrey: true),
        // buildRowStatic(tableData[3]),
        // buildRowStatic(tableData[4], isGrey: true),
        // buildRowStatic(tableData[5]),

      ],
    ),
      );
  }
}



