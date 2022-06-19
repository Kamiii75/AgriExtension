import 'package:flutter/material.dart';

List<Widget> buildCells(List<String> data,bool isHeader,int count) {

  return List.generate(
    count,
        (index) => Container(

      color: Colors.black,
      child: Container(
        alignment: Alignment.center,
        width: 120.0,
        height: 60.0,
        color: isHeader?Colors.blueGrey:Colors.white,
        margin: const EdgeInsets.all(2.0),
        child: Center(child: Text("${data[index]}")),
      ),
    ),
  );
}