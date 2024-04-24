import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/utlies/sizeconfig.dart';

abstract class StylesTextApp {
  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xffAAAAAA),
    );
  }//14

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
        color: const Color(0xff064061));
  } //16

 static   TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }//16

  static  TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }//16

 static   TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }//20

   static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xffAAAAAA),
    );
  }//12

   static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff4EB7F2),
    );
  }//24

 static  TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xffFFFFFF),
    );
  }//18

   static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      fontFamily: 'Montserrat',
      color: const Color(0xff4EB7F2),
    );
  }//16

  static  TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xffFFFFFF),
    );
  }//20
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.6;
  double upperLimit = fontSize * 1;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletlayoutWidth) {
    return width / 500;
  } else if (width < SizeConfig.desktoblayoutWidth) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}
