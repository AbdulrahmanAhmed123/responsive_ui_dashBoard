import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';
import 'package:responsive_ui_dashboard/widgets/ranage_options.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

      Text(
        'Income',
        style: StylesTextApp.styleSemiBold20(context),
      ),
    
      const RanageOptions(),
    
    ],);
  }
}