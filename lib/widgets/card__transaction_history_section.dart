import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/widgets/custom_container_back_ground.dart';
import 'package:responsive_ui_dashboard/widgets/my_card_section.dart';
import 'package:responsive_ui_dashboard/widgets/my_transaction_history_section.dart';

class MyCardTransactionHistorySection extends StatelessWidget {
  const MyCardTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackGround(
    
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyCardSection(),
        Divider(
          height: 40,
          color: Color(0xfff1f1f1),
        ),
        MyTransactionHistorySection(),
      ],
    ));
  }
}
