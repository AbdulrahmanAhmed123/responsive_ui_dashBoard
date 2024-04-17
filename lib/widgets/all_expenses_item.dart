import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_ui_dashboard/widgets/all_expenses_active_inactive_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isActive});
  final AllExpensesItemModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? AllExpensesActiveItem(itemModel: itemModel)
        : AllExpensesINActiveItem(itemModel: itemModel);
  }
}
