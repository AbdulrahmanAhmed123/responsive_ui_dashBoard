import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';
import 'package:responsive_ui_dashboard/widgets/ranage_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'AllExpenses',
          style: StylesTextApp.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RanageOptions(),
      ],
    );
  }
}
