import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/widgets/my_transaction_history_header.dart';
import 'package:responsive_ui_dashboard/widgets/my_transaction_history_item_list.dart';

class MyTransactionHistorySection extends StatelessWidget {
  const MyTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MyTransactionHistoryHeader(),
        MyTransactionHistoryItemList(),
      ],
    );
  }
}
