import 'package:flutter/material.dart';

List<Widget> buildCells(List<String> data,bool isHeader,int count,BuildContext context) {
 int c=count+1;
  return List.generate(
    count,
        (index) => Container(

      color: Colors.black,
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 50.0,
        color: isHeader?Colors.blueGrey:Colors.white,
        margin: const EdgeInsets.all(2.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text("${data[index]}")),
        ),
      ),
    ),
  );
}