import 'package:agri_app/ui/widgets/buildRows.dart';
import 'package:flutter/material.dart';
List<Widget> buildRows(int count,List<List<String>> tableData) {

  return List.generate(
    count,
        (index) => Row(
      children: buildCells(tableData[index],index==0,tableData[index].length),
    ),
  );
}