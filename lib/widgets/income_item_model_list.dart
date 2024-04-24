import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/models/income_item_model.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';

class IncomeItemDetailsModel extends StatelessWidget {
  const IncomeItemDetailsModel({super.key, required this.incomeItemModel});
  final IncomeItemModel incomeItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 0,
      minVerticalPadding: 0,
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 8,
        height: 8,
        decoration: ShapeDecoration(
          color: incomeItemModel.dotsIndecatorColor,
          shape: const OvalBorder(),
        ),
      ),
      title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            incomeItemModel.title,
            style: StylesTextApp.styleRegular16(context),
          )),
      trailing: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerRight,
          child: Text(
            incomeItemModel.amount,
            style: StylesTextApp.styleMedium16(context),
          )),
    );
  }
}
