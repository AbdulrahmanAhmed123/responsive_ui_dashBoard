import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/widgets/all_expenses.dart';
import 'package:responsive_ui_dashboard/widgets/quick_invoice.dart';

class AllExpensesQuickInvoice extends StatelessWidget {
  const AllExpensesQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
