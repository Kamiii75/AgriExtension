import 'package:flutter/material.dart';
TableRow buildRowStatic(List<String> cells, {isHeader = false, isGrey = false}) =>
    TableRow(
      decoration: BoxDecoration(
        color: isHeader
            ? Colors.greenAccent
            : isGrey
            ? Colors.blueGrey.shade50
            : Colors.transparent,
      ),
      children: cells.map((cell) {
        final style = TextStyle(
            fontSize: 9,
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal);
        return InkWell(
          onTap: (){
            // setState(() {
            //   dateTime=cells[0];
            //   from=cells[1];
            //   subject=cells[2];
            //
            //   isMain=false;
            // });
          },
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                    cell,
                    style: style,
                  )),
            ),
          ),
        );
      }).toList(),
    );