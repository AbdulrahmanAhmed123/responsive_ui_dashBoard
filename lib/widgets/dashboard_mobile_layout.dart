import 'package:flutter/cupertino.dart';
import 'package:responsive_ui_dashboard/widgets/allexpenses_quickinvoice.dart';
import 'package:responsive_ui_dashboard/widgets/income_section.dart';

import 'card__transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesQuickInvoice(),
           MyCardTransactionHistorySection(),
      SizedBox(
        height: 24,
      ),
      IncomeSection(),
        ],
      ),
     
    );
  }
}
