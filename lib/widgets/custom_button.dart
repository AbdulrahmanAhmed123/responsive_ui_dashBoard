import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,  this.backGroundCOlor,  this.color, required this.title});
final Color? backGroundCOlor,color;
final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          backgroundColor:backGroundCOlor?? const Color(
            0xff4EB7F2,
          ),
        ),
        onPressed: () {},
        child:  FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: StylesTextApp.styleSemiBold18(context).copyWith(color: color),
          ),
        ),
      ),
    );
  }
}
