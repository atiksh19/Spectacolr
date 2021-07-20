import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

setActive(int ac) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt('active', ac);
}

setApply(bool ap) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('apply', ap);
}

getActive() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int intValue = prefs.getInt('active') ?? 0;
  return intValue;
}

getApply() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool boolValue = prefs.getBool('apply') ?? false;
  return boolValue;
}

List <ColorFilter> filterz = [normal, protanomaly, protanopia,  deuteranomaly, deuteranopia, tritanomaly, tritanopia];

//index 0
const ColorFilter normal = ColorFilter.matrix([
  1, 0, 0, 0, 0,
  0, 1, 0, 0, 0,
  0, 0, 1, 0, 0,
  0, 0, 0, 1, 0,
]);

//index 1
const ColorFilter protanomaly = ColorFilter.matrix([
  1.5, -.25, -.25, 0, 0,
  0, 1, 0, 0, 0,
  0, 0, 1, 0, 0,
  0, 0, 0, 1, 0,
]);

//index 2
const ColorFilter protanopia = ColorFilter.matrix([
  2, -.5, -.5, 0, 0,
  0, 1, 0, 0, 0,
  0, 0, 1, 0, 0,
  0, 0, 0, 1, 0,
]);

//index 3
const ColorFilter deuteranomaly = ColorFilter.matrix([
  1, 0, 0, 0, 0,
  -0.25, 1.5, -.25, 0, 0,
  0, 0, 1, 0, 0,
  0, 0, 0, 1, 0,
]);

//index 4
const ColorFilter deuteranopia = ColorFilter.matrix([
  1, 0, 0, 0, 0,
  -.5, 2, -.5, 0, 0,
  0, 0, 1, 0, 0,
  0, 0, 0, 1, 0,
]);

//index 5
const ColorFilter tritanomaly = ColorFilter.matrix([
  1, 0, 0, 0, 0,
  0, 1, 0, 0, 0,
  -.25, -.25, 1.5, 0, 0,
  0, 0, 0, 1, 0,
]);

//index 6
const ColorFilter tritanopia = ColorFilter.matrix([
  1, 0, 0, 0, 0,
  0, 1, 0, 0, 0,
  -.5, -.5, 2, 0, 0,
  0, 0, 0, 1, 0,
]);