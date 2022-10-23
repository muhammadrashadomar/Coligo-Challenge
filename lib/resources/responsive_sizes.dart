// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

enum ScreenSize {
  phone,
  smallTablet,
  mediumTablet,
  largeTablet,
  desktop,
}

//
Size kSize(BuildContext context) => MediaQuery.of(context).size;
double kWidth(BuildContext context) => MediaQuery.of(context).size.width;
double kHeight(BuildContext context) {
  return (MediaQuery.of(context).size.height -
      MediaQuery.of(context).padding.top);
}

//
bool kPhoneWidth(BuildContext context) =>
    MediaQuery.of(context).size.width < 500 ? true : false;
bool kTabletWidth(BuildContext context) =>
    MediaQuery.of(context).size.width < 950 ? true : false;

bool kWebWidth(BuildContext context) =>
    MediaQuery.of(context).size.width >= 950 ? true : false;

//
class ResponsiveSc extends StatelessWidget {
  const ResponsiveSc({
    Key? key,
    required this.mobile,
    required this.smallTablet,
    required this.largeTablet,
    required this.mediumTablet,
    required this.desktop,
  }) : super(key: key);

  final Widget mobile;
  final Widget smallTablet;
  final Widget largeTablet;
  final Widget mediumTablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 700) {
      return mobile;
      //
    } else if (width >= 500 && width < 700) {
      return smallTablet;
      //
    } else if (width >= 700 && width < 1000) {
      return mediumTablet;
      //
    } else if (width >= 1000 && width < 1200) {
      return largeTablet;
      //
    } else {
      return desktop;
    }
  }
}
