import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/widgets/my_card_section.dart';

class MyCardTransactionHistorySection extends StatelessWidget {
  const MyCardTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SizedBox(
        height: 40,
      ),MyCardSection(), 
    ],);
  }
}