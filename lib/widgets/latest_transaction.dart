import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';
import 'package:responsive_ui_dashboard/widgets/latest_transaction_item_listview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: StylesTextApp.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransactionItemListView(),
      ],
    );
  }
}
