import 'package:flutter/material.dart';

const kContainerCornerStyle = BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  ),
  color: Color(0xffffffff),
);

const kElevatedButtonStyle = ButtonStyle(
  fixedSize: MaterialStatePropertyAll(Size(0, 50.0)),
  backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
);

const kPrimaryColor = Colors.lightBlueAccent;

List<BoxShadow> kContainerBoxShadow = [
  BoxShadow(
    color: const Color(0x00000000).withOpacity(0.79),
    offset: const Offset(0, -5.0),
    blurRadius: 5,
    spreadRadius: -5,
  ),
];
