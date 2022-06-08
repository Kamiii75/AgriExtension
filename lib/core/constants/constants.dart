import 'package:flutter/material.dart';

const defaultPadding = 20.0;
const cartBarHeight = 100.0;
const headerHeight = 85.0;

const bgColor = Color(0xFFF6F5F2);
const primaryColor = Color(0xFF40A944);

const panelTransition = Duration(milliseconds: 500);


const LinearGradient gradient=LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment(0.8, 1),
  colors: <Color>[
    Color(0xff954066),
    Color(0xffd094af),
    Color(0xffc57b9c),
    Color(0xffbb6289),
    Color(0xffae4b77),
  ], // Gradient from https://learnui.design/tools/gradient-generator.html
  tileMode: TileMode.mirror,
);
