import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';

class RanageOptions extends StatelessWidget {
  const RanageOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child:  Row(
        children: [
          const Text(
            'Monthly',
            style: StylesTextApp.styleMedium16,
          ),
          const  SizedBox(width: 1,),
          Transform.rotate(
            angle: -1.571 ,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(
                0xff064061,
              ),
            ),
          )
        ],
      ),
    );
  }
}
